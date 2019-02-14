#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################

# Take a matrix and return a TheTypeAssociationScheme object.
# Does not perform any checks, other than that a matrix is given as input.

InstallMethod(CoherentConfigurationNC,
			[IsMatrix],
	function(mat)
		local m, assoc_rec;
		m := StructuralCopy(mat);;
		assoc_rec := rec( matrix := m);
		return ObjectifyWithAttributes(assoc_rec, TheTypeCoherentConfiguration);
	end );

#######################################################
#	Here we put a check that the association scheme is valid
#######################################################

InstallMethod(CoherentConfiguration,
			[IsMatrix],
	function(mat)
		local homogeneous, i, symmetric, assoc_rec;
		homogeneous := true;
		for i in [1 .. Size(mat)] do
			if mat[i, i] <> mat[1,1] then
				homogeneous := false;
				break;
			fi;
		od;
		assoc_rec := rec( matrix := mat);
		if homogeneous then
			symmetric := TransposedMat(mat) = mat;
			if symmetric then
				if IsAssociationSchemeMatrix(mat) then
					return ObjectifyWithAttributes(assoc_rec, TheTypeCoherentConfiguration, IsHomogeneous, true, IsCommutative, true, IsSymmetricCoherentConfiguration, true);
				else
					Print("Must give a valid matrix\n");
					return fail;
				fi;
			else
				if IsHomogeneousCoherentConfigurationMatrix(mat) then
					return ObjectifyWithAttributes(assoc_rec, TheTypeCoherentConfiguration, IsHomogeneous, true, IsSymmetricCoherentConfiguration, false);					
				else
					Print("Must give a valid matrix\n");
					return fail;
				fi;
			fi;
		else
			if IsCoherentConfigurationMatrix(mat) then
				return ObjectifyWithAttributes(assoc_rec, TheTypeCoherentConfiguration, IsHomogeneous, false, IsCommutative, false, IsSymmetricCoherentConfiguration, false);					
			else
				Print("Must give a valid matrix\n");
				return fail;
			fi;
		fi;
	end );


InstallMethod(RelationMatrix,
			[IsCoherentConfiguration],
	function(a)
		return a!.matrix;
	end );

InstallMethod( \=,
			 [IsCoherentConfiguration, IsCoherentConfiguration],
	function(a,b)
		return RelationMatrix(a)=RelationMatrix(b);
	end);

InstallMethod(IsHomogeneous,
			[IsCoherentConfiguration],
	function(a)
		local mat, i;
		mat:=RelationMatrix(a);;
		for i in [1 .. Size(mat)] do
			if mat[i, i] <> mat[1,1] then
				return false;
			fi;
		od;
		return true;
	end );


InstallMethod(IsSymmetricCoherentConfiguration,
			[IsCoherentConfiguration],
	function(a)
		local mat;
		mat:=RelationMatrix(a);;
		if TransposedMat(mat)=mat then
			return true;
		fi;
		return false;
	end );

InstallMethod(HomogeneousCoherentConfiguration,
			[IsPosInt, IsPosInt],
	function(n, k)
		local filename, path, allpaths, strm, mat;
		filename := Concatenation("AssociationSchemeWithSmallVertices_", String(n), "_", String(k), ".g");
		path := "pkg/AssociationSchemes/library/";
        allpaths := List( GAPInfo.RootPaths, p -> Concatenation(p, path) );
        allpaths := Filtered( allpaths, IsDirectoryPath );
		for path in allpaths do
			strm :=InputTextFile(Concatenation(path, filename));;
			if not strm <> fail then
				break;
			fi;
		od;
		if strm = fail then
			Print("No such association scheme at position ", String(k), " in the library for oder ", String(n), "\n");
			return fail;
		fi;
		mat:=EvalString(ReadAll(strm));;
		CloseStream(strm);;
		return CoherentConfiguration(mat);
	end );


# Returns the class for the matrix of a d-class association scheme

InstallMethod( Order, 
	"for IsAssociationScheme",
	[ IsCoherentConfiguration ],
	function( a )
		local n;
		n := Size(RelationMatrix(a));
		if n <> Size(RelationMatrix(a)[1]) then
			return fail;
		fi;
		return n;
	end );

InstallMethod(ClassOfAssociationScheme,
			[IsCoherentConfiguration],
	function(a)
		local d, row, mat, m;
		mat:=RelationMatrix(a);
		d := 0;
		for row in mat do
			m := Maximum(row);
			if d < m then
				d := m;
			fi;
		od;
		return d;
	end );
# Need to check if integers
# Neet to check if square matrix

InstallMethod(AdjacencyMatrices,
			[IsCoherentConfiguration],
	function(a)
		local d, n, adjMats, i, j, mat;
		d := ClassOfAssociationScheme(a);;
		mat := RelationMatrix(a);
		n := Size(mat);
		adjMats := List([0 .. d], t ->	NullMat(n,n));;
		for i in [1 .. n] do
			for j in [1 .. n] do
				adjMats[mat[i][j]+1][i][j]:=1;
			od;
		od;
		return adjMats;
	end);

InstallMethod(AdjacencyMatricesOfMatrix,
			[IsMatrix],
	function(mat)
		local d, n, adjMats, i, j, row, m;
		d := 0;
		for row in mat do
			m := Maximum(row);
			if d < m then
				d := m;
			fi;
		od;
		n := Size(mat);
		adjMats := List([0 .. d], t ->	NullMat(n,n));;
		for i in [1 .. n] do
			for j in [1 .. n] do
				adjMats[mat[i][j]+1][i][j]:=1;
			od;
		od;
		return adjMats;
	end);


# InstallMethod(AdjacencyMatrices,
# 			[IsAssociationScheme],
# 	function(a)
# 		return AdjacencyMatrices(a!.matrix);
# 	end);


InstallMethod(IsAssociationSchemeMatrix,
			[IsMatrix],
	function(M)
		local sz, numberOfRelations, relations, markers, mat, i, j, k, mult, ps, temp, identitypos, m, row;
		sz := Size(M);
		numberOfRelations := 0;
		if TransposedMat(M) <> M then
			return false;
		fi;
		for row in M do
			m := Maximum(row);
			if numberOfRelations < m then
				numberOfRelations := m;
			fi;
		od;
		numberOfRelations:=numberOfRelations+1;
#		Print("There are ", numberOfRelations -1, " (non-identity) relations\n");
		relations := AdjacencyMatricesOfMatrix(M);
		markers := List([1 .. numberOfRelations], t -> First([1 .. sz], x -> relations[t][1][x] <>0));
		identitypos := Position(relations, IdentityMat(sz));
		if identitypos = fail then
			return false;
		fi;
#		Print("     Contains the identity\n");
		# for mat in relations do
		# 	if not TransposedMat(mat)=mat then
		# 		return false;
		# 	fi;
		# od;
#		Print("     Relations are symmetric\n");
		if not Set(Set(Sum(relations)))= [ListWithIdenticalEntries(sz,1)] then
			return false;
		fi;
#		Print("     Relations sum to one\n");
		for i in [1 .. numberOfRelations] do
			if i <> identitypos then
				for j in [i .. numberOfRelations] do
					if j <> identitypos then
						# Clearly the product with the identity is a linear combination, so no need to check...
						mult := relations[i] * relations[j];
						ps :=[1 .. numberOfRelations];
						for k in [1 .. numberOfRelations] do
							ps[k] := mult[1][markers[k]];;
						od;
						temp := NullMat(sz, sz);;
						for k in [1 .. numberOfRelations] do
							temp := temp + ps[k]*relations[k];
						od;
						if mult <> temp then
							return false;
						fi;
#						Print("        A", i-1, ".A", j-1, " is a linear combination of the others\n");
						# sufficient, since transpose of sum is sum of transposes, and each Ai is symmetric,
						# so it follows that A_j A_i is also the same sum.
						# A_j A_i = A_j^T A_i^T = (A_i B_i)^T = (Sum \pi_i,j^k A_k) )^T
						# = Sum \pi_i,j^k A_k)^T = Sum \pi_i,j^k A_k) = A_i A_j
					fi;
				od;
			fi;
		od;
		return true;
	end);

InstallMethod(IsHomogeneousCoherentConfigurationMatrix,
			[IsMatrix],
	function(M)
		local sz, numberOfRelations, relations, markers, mat, i, j, k, mult, ps, temp, identitypos, m, row;
		sz := Size(M);
		numberOfRelations := 0;
		for row in M do
			m := Maximum(row);
			if numberOfRelations < m then
				numberOfRelations := m;
			fi;
		od;
		numberOfRelations:=numberOfRelations+1;
#		Print("There are ", numberOfRelations -1, " (non-identity) relations\n");
		relations := AdjacencyMatricesOfMatrix(M);
		markers := List([1 .. numberOfRelations], t -> First([1 .. sz], x -> relations[t][1][x] <>0));
		identitypos := Position(relations, IdentityMat(sz));
		if identitypos = fail then
			return false;
		fi;
#		Print("     Contains the identity\n");
		for mat in relations do
			if not TransposedMat(mat) in relations then
				return false;
			fi;
		od;
#		Print("     Relations are symmetric\n");
		if not Set(Set(Sum(relations)))= [ListWithIdenticalEntries(sz,1)] then
			return false;
		fi;
#		Print("     Relations sum to one\n");
		for i in [1 .. numberOfRelations] do
			if i <> identitypos then
				for j in [1 .. numberOfRelations] do
					if j <> identitypos then
						# Clearly the product with the identity is a linear combination, so no need to check...
						mult := relations[i] * relations[j];
						ps :=[1 .. numberOfRelations];
						for k in [1 .. numberOfRelations] do
							ps[k] := mult[1][markers[k]];;
						od;
						temp := NullMat(sz, sz);;
						for k in [1 .. numberOfRelations] do
							temp := temp + ps[k]*relations[k];
						od;
						if mult <> temp then
							return false;
						fi;
					fi;
				od;
			fi;
		od;
		return true;
	end);


InstallMethod(IsCoherentConfigurationMatrix,
			[IsMatrix],
	function(M)
		Print("This method needs to be implemented - The p_ij^k values must first be properly computed\n");
		return fail;
	end);
# InstallMethod(IsCoherentConfigurationMatrix,
# 			[IsMatrix],
# 	function(M)
# 		local sz, numberOfRelations, relations, markers, mat, i, j, k, mult, ps, temp, identitypos, m, idvals, row;
# 		sz := Size(M);
# 		numberOfRelations := 0;
# 		for row in M do
# 			m := Maximum(row);
# 			if numberOfRelations < m then
# 				numberOfRelations := m;
# 			fi;
# 		od;
# 		numberOfRelations:=numberOfRelations+1;
# #		Print("There are ", numberOfRelations -1, " (non-identity) relations\n");
# 		relations := AdjacencyMatricesOfMatrix(M);
# 		idvals := Set(List([1..sz], t -> M[t][t])) +1;;
# 		for i in idvals do
# 			for row in relations[i] do
# 				if Number(row, t -> t=1)>1 then
# 					return false;
# 				fi;
# 			od;
# 		od;

# 		markers := List([1 .. numberOfRelations], t -> First([1 .. sz], x -> relations[t][1][x] <>0));
# #		Print("     Contains the identity\n");
# 		for mat in relations do
# 			if not TransposedMat(mat) in relations then
# 				return false;
# 			fi;
# 		od;
# #		Print("     Relations are symmetric\n");
# 		if not Set(Set(Sum(relations)))= [ListWithIdenticalEntries(sz,1)] then
# 			return false;
# 		fi;
# #		Print("     Relations sum to one\n");
# 		for i in [1 .. numberOfRelations] do
# 				for j in [1 .. numberOfRelations] do
# 						# Clearly the product with the identity is a linear combination, so no need to check...
# 						mult := relations[i] * relations[j];
# 						ps :=[1 .. numberOfRelations];
# 						for k in [1 .. numberOfRelations] do
# 							ps[k] := mult[1][markers[k]];;
# 						od;
# 						temp := NullMat(sz, sz);;
# 						for k in [1 .. numberOfRelations] do
# 							temp := temp + ps[k]*relations[k];
# 						od;
# 						if mult <> temp then
# 							return false;
# 						fi;
# 				od;
# 		od;
# 		return true;
# 	end);


InstallMethod(FusionScheme,
			[IsCoherentConfiguration, IsList],
	function( a, fuse )
		local mat, m, i, j, m2, d, inds;
		if not [0] in fuse then
			return fail;
		fi;
		mat :=  NullMat(Order(a), Order(a));
		m:=RelationMatrix(a);;
		d:=ClassOfAssociationScheme(a);;
		inds := ListWithIdenticalEntries(d+1,0);;
		for i in [1.. Size(fuse)] do
			for j in fuse[i] do
				inds[j+1]:=i-1;
			od;
		od;
		for i in [1 .. Order(a)] do
			for j in [1 .. Order(a)] do
				mat[i][j]:=inds[m[i][j]+1];
			od;
		od;
		m2 := CoherentConfiguration(mat);
		# set IsFusionScheme := true;
		return m2;
	end);

InstallMethod(IntersectionNumber,
			[IsCoherentConfiguration, IsInt,  IsInt,  IsInt],
	function( a, i, j, k )
		return IntersectionMatrices(a)[j+1][i+1, k+1];;
	end);

InstallMethod(FusionScheme,
			[IsCoherentConfiguration and IsCommutative, IsList],
	function( a, fuse )
		local mat, m, i, j, m2, d, inds, s, NewIntersectionMatrices,
		u, v, w, h, check, inter, adjMats, rel, assoc_rec;
		if not [0] in fuse then
			return fail;
		fi;

		s := Size(fuse) - 1;;

		NewIntersectionMatrices := List([0 .. s], t -> NullMat(s+1, s+1));;
		for u in [0 .. s] do
			for v in [0 .. s] do
				for w in [0 .. s] do
					check := [];
					for h in fuse[w+1] do
						inter := 0;
						for i in fuse[u+1] do
							for j in fuse[v+1] do
								inter := inter + IntersectionNumber(a, i, j, h);
							od;
						od;
						Add(check, inter);;
						check:=Set(check);;
						if Size(check) <> 1 then
							return fail;
						fi;
					od;
					NewIntersectionMatrices[v+1][u+1, w+1] := check[1];
				od;
			od;
		od;

		mat :=  NullMat(Order(a), Order(a));
		m:=RelationMatrix(a);;
		d:=ClassOfAssociationScheme(a);;
		inds := ListWithIdenticalEntries(d+1,0);;
		for i in [1.. Size(fuse)] do
			for j in fuse[i] do
				inds[j+1]:=i-1;
			od;
		od;
		for i in [1 .. Order(a)] do
			for j in [1 .. Order(a)] do
				mat[i][j]:=inds[m[i][j]+1];
			od;
		od;

		adjMats := AdjacencyMatricesOfMatrix(mat);;
		for rel in adjMats do
			if not TransposedMat(rel) in adjMats then
				return fail;
			fi;
		od;
		assoc_rec := rec( matrix := mat);
		m2 := ObjectifyWithAttributes(assoc_rec, TheTypeCoherentConfiguration, AdjacencyMatrices, adjMats,
			IntersectionMatrices, NewIntersectionMatrices);
		# set IsFusionScheme := true;
		return m2;
	end);



InstallMethod(Valencies, " ", [IsCoherentConfiguration], 
	function(a)
		local d, valencies, i;
		d := ClassOfAssociationScheme(a);
		valencies:=ListWithIdenticalEntries(d+1, 0);;
		for i in [1 .. d+1] do
			valencies[i]:=Number(RelationMatrix(a)[1], t -> t=i-1);
		od;
		return valencies;
	end);

InstallMethod(IntersectionMatrices, " ", [IsCoherentConfiguration],
 	function(m)
		local sz, d, relations, markers, intersectionMatrices, i, j, k, mult, ps, M;
	 	M:=RelationMatrix(m);
		sz := Size(M);
		d := ClassOfAssociationScheme(m);
		relations := AdjacencyMatrices(m);;
		intersectionMatrices:=List([1..d+1], t-> NullMat(d+1, d+1));
		markers := List([0 .. d], t -> First([1 .. sz], x -> relations[t+1][1][x] <>0));
		for i in [0 .. d] do
			for j in [0 .. d] do
				mult := relations[j+1][1] * relations[i+1];
				for k in [0 .. d] do
					intersectionMatrices[i+1][j+1, k+1] :=  mult[markers[k+1]];;
				od;
			od;
		od;
		return intersectionMatrices;
end);


InstallMethod(IsCommutative,
			[IsCoherentConfiguration],
	function(a)
		local d, i, j, k;
		d:=ClassOfAssociationScheme(a);;
		for i in [0 .. d] do
			for j in [0 .. d] do
				for k in [0 .. d] do
					if IntersectionMatrices(a)[j+1][i+1,k+1] <> IntersectionMatrices(a)[i+1][j+1,k+1] then
						return false;
					fi;
				od;
			od;
		od;
		return true;
	end );

__orthogonality_check := function(thing, valencies)
	local i;
	for i in [1 .. Size(thing)-1] do
		if not Sum(List([1..Size(thing[1])], t -> thing[i][t]*thing[Size(thing)][t]/valencies[t] ))=-1 then
			return false;
		fi;
	od;
	# also put the orthogonal relation with itself? This requires m_i
	return true;
end;


 InstallMethod( MatrixOfEigenvalues, 
 	"for IsAssociationScheme",
 	[ IsCoherentConfiguration ],
	function(m)
		local inter, eigs, d, feasiblerows, posvals, stopvals, i, row, valencies, wow, stack, options, P, P2, current;;

		d:=ClassOfAssociationScheme(m);
		valencies:=ShallowCopy(Valencies(m));
		Remove(valencies, 1);;

		inter:=IntersectionMatrices(m);
		eigs:=List(inter, t ->  Eigenvalues(Rationals,t));
		Remove(eigs,1);

		feasiblerows:=[];

		posvals := ListWithIdenticalEntries(d, 1);;
		stopvals := List(eigs, Size);;
		stopvals[d]:=stopvals[d];
		while posvals <> stopvals do
			posvals[1]:=posvals[1]+1;
			for i in [1.. d] do
				if posvals[i] > Size(eigs[i]) then
					posvals[i]:=1;
					posvals[i+1]:=posvals[i+1]+1;
				fi;
			od;
			row:=ListWithIdenticalEntries(d,1);
			for i in [1 .. d] do
				row[i]:=eigs[i][posvals[i]];
				if Sum(row)=-1 then
					Add(feasiblerows, row);;
				fi;
			od;
		od;

		stack := List(feasiblerows, t -> [t]);;
		while stack <> [] do
			current:=Remove(stack);;
			if Size(current) < d then
			# 	if correct size, then check that for all i, eigs[i] in current{[1..d]}[i] - just take transpose
			#	if ok, then check the column orthogonality
			#	Any other checks? Gives a valid Q matrix?
			options:=List(feasiblerows, t -> Concatenation(current, [t]) );;
			options:=Filtered(options, t -> __orthogonality_check(t, valencies));
			Append(stack, options);
			else
				P:=NullMat(d+1, d+1);
				P:=P+1;;
				P[1]{[2..d+1]}:=valencies;
				P{[2..d+1]}{[2..d+1]}:=current;
				P2 := TransposedMat(P);;
				if ForAll([1 .. d], t -> ForAll(eigs[t], x -> x in P2[t+1])) then
					return P;
				fi;
			fi;
		od;
		return fail	;
	end);




InstallMethod( DualMatrixOfEigenvalues, 
	"for IsAssociationScheme",
	[ IsCoherentConfiguration ],
	function( a )
		return Inverse(MatrixOfEigenvalues(a))*Order(a);
	end );

InstallMethod( MinimalIdempotents, 
	"for IsAssociationScheme",
	[ IsCoherentConfiguration],
	function(a)
		local j, i, mat, idems, d, Q, adjacencymatrices;
		idems:=[];
		d := ClassOfAssociationScheme(a);
		Q := DualMatrixOfEigenvalues(a)/Order(a);
		adjacencymatrices := AdjacencyMatrices(a);;
		for j in [1 .. d+1] do
			mat:=Q[1][j]*adjacencymatrices[1];;
			for i in [2 .. d+1] do
				mat := mat + Q[i][j]*adjacencymatrices[i];;
			od;
			Add(idems, mat);
		od;
		return idems;
	end);

# not needed
#InstallMethod(BinaryExpansion, [IsPosInt],
#function(n)
#	local vec, number, pos;
#	vec := ListWithIdenticalEntries(Log2Int(n)+1, 0);
#	number := n;
#	while number > 0 do
#		pos := Log2Int(number);
#		vec[pos+1] := 1;
#		number := number - 2^pos;
#	od;
#	return Reversed(vec);
#end);

# InstallMethod( AutomorphismGroup, [IsCoherentConfiguration],
# function( sch )
#     local n, edges, colours, c, d, newedges, newvertices, 
#     		i, e, ce, onesare, j, graph, aut, layers;
#     if not "digraphs" in RecNames(GAPInfo.PackagesLoaded) then
#        Error("You must load the Digraphs package\n");
#     fi;
#     n := Order(sch);
# 	edges := Filtered(Tuples([1..n], 2),t->t[1]<>t[2]);;
# 	colours := List(edges, t -> RelationMatrix(sch)[t[1]][t[2]]);;
# 	c := Length(Set(colours));
# 	# c <= 2^d-1
# 	d := Log2Int(c)+1;
# 	# make d layers
# 	newedges := [];;
# 	newvertices := Cartesian([1..d],[1..n]);
# 	for i in [1..Size(edges)] do
# 		e := edges[i];
# 		ce := CoefficientsQadic(colours[i], 2);
# 		onesare := Filtered([1..Length(ce)],i->IsOne(ce[i]));
# 		# put edge in layer according to where 1's are
# 		for j in onesare do
# 			Add(newedges, [[j,e[1]],[j,e[2]]]);
# 		od;
# 	od;
# 	# at a later date, we could ask the user to include
# 	# a `helper' group here
# 	graph := Digraph(Group(()), newvertices, OnTuples,
# 		function(x,y) return [x,y] in newedges; end);;	
# 	layers := List([1..d], t ->[1..n]+(t-1)*n);;
#     aut := AutomorphismGroup(graph, layers); 
#     return Action(aut,[1..n]);
# end);

InstallMethod( AutomorphismGroup, [IsCoherentConfiguration],
function( sch )
    local n, edges, colours, c, d, matrix, newedges, newedges2,  
    		i, e, f, map, graph, aut, layers, enum, col;
    if not "digraphs" in RecNames(GAPInfo.PackagesLoaded) then
       Error("You must load the Digraphs package\n");
    fi;
    n := Order(sch);
	matrix := RelationMatrix(sch);;
	c := ClassOfAssociationScheme(sch);
	# c <= 2^d-1
	d := Log2Int(c)+1;
	# make d layers
	# map colour to layer
	f := function( colour )
		local ce, onesare;
		ce := CoefficientsQadic(colour, 2);
		onesare := Filtered([1..Length(ce)],i->IsOne(ce[i]));
		return onesare;
	end;
	map := Concatenation([[]],List([1..c], f));
	edges := EnumeratorOfTuples([1..n], 2);
	enum := EnumeratorOfCartesianProduct2([[1..d],[1..n]]);
	newedges := [];;

	Print("making edges (slowest part?)\n");
	for i in [1..Size(edges)] do
		e := edges[i];
		col := matrix[e[1]][e[2]];		
		Append(newedges, List(map[col+1], j -> 
			[Position(enum,[j,e[1]]),Position(enum,[j,e[2]])]));	
	od;
  
	# at a later date, we could ask the user to include
	# a `helper' group here
	
	# it would be faster if we gave outneighbourhoods ...
	
	Print("making digraph\n");
	graph := DigraphByEdges( newedges, d*n );
	layers := List([1..d], t ->[1..n]+(t-1)*n);;
	Print("calling nauty\n");
    aut := NautyAutomorphismGroup(graph, layers); 
    	Print("computing perm group\n");
    return Action(aut,[1..n]);
end);


InstallOtherMethod( AutomorphismGroup, [IsCoherentConfiguration, IsChar],
function( R , h)
    local G, adj, gp, gr, n, x, y, i;    
    if not h = 'H' then
    	return fail;
    fi;
    adj := AdjacencyMatrices(R);
    n := Order(R);
    G := SymmetricGroup(n);
    for i in [2..(Length(adj) - 1)] do
        gr := Graph(Group(()), [1..n], OnPoints, function(x,y) return adj[i][x][y]=1; end);
        gp := AutomorphismGroup(gr);
        G := Intersection(G, gp);
    od;
    return G;
end);

InstallOtherMethod( AutomorphismGroup, [IsCoherentConfiguration, IsPosInt],
function( R , h)
    local G, adj, gp, gr, n, x, y, i, mat;    
    if not h = 1 then
    	return fail;
    fi;
    mat:=RelationMatrix(R);;
    n := Order(R);
   	Print(".\n");
   	edges:=[];
   	for x in [1 .. n] do
   		for y in [1 .. n] do
   			if mat[x][y] = 2 then
   				Add(edges, [x,y]);
   			fi;
   		od;
   	od;
    Print("..\n");
    gr := NautyGraph(edges);;
    Print("...\n");
    G := AutomorphismGroup(gr);
    Print("....\n");
    for i in [4..ClassOfAssociationScheme(R)+1] do
    	Print(".\n");
	   	edges:=[];
	   	for x in [1 .. n] do
	   		for y in [1 .. n] do
	   			if mat[x][y] = 2 then
	   				Add(edges, [x,y]);
	   			fi;
	   		od;
	   	od;
	    Print("..\n");
	    gr := NautyGraph(edges);;
    	Print("...\n");
        gp := AutomorphismGroup(gr);
    	Print("....\n");
        G := Intersection(G, gp);
    	Print(".....\n");
    od;
    return G;
end);

###################
#
# Display methods
#
###################


 InstallMethod( ViewObj, 
 	"for IsAssociationScheme",
 	[ IsCoherentConfiguration],
 	function( a )
 		Print( ClassOfAssociationScheme(a), "-class association scheme of order ", Order(a), ".");
 	end );

InstallMethod( PrintObj, 
	"for IsAssociationScheme",
	[ IsCoherentConfiguration ],
	function( a )
		Print(RelationMatrix(a));;
	end );

InstallMethod( Display, 
	"for IsAssociationScheme",
	[ IsCoherentConfiguration],
	function( a )
 		Print( ClassOfAssociationScheme(a), "-class association scheme of order ", Order(a), ".");
 		if HasMatrixOfEigenvalues(a) then
 			Print("\nMatrixOfEigenvalues:\n");
 			Display(MatrixOfEigenvalues(a));
 		fi;
 		if HasMatrixOfEigenvalues(a) then
 			Print("\nDualMatrixOfEigenvalues:\n");
 			Display(DualMatrixOfEigenvalues(a));
 		fi;
	end );

