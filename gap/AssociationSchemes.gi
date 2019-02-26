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

InstallMethod(HomogeneousCoherentConfigurationNC,
			[IsMatrix],
	function(mat)
		local m, assoc_rec;
		m := StructuralCopy(mat);;
		assoc_rec := rec( matrix := m);
		return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration);
	end );

#######################################################
#	Here we put a check that the association scheme is valid
#######################################################

InstallMethod(HomogeneousCoherentConfiguration,
			[IsMatrix],
	function(mat)
		local i, symmetric, assoc_rec;
		for i in [1 .. Size(mat)] do
			if mat[i, i] <> mat[1,1] then
				Print("Relation matrix does not define a homogeneous coherent configuration\n");
				return fail;
			fi;
		od;
		assoc_rec := rec( matrix := mat);
		symmetric := TransposedMat(mat) = mat;
		if symmetric then
			if IsAssociationSchemeMatrix(mat) then
				return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration, IsCommutative, true, IsSymmetricCoherentConfiguration, true);
			else
				Print("Must give a valid matrix\n");
				return fail;
			fi;
		else
			if IsHomogeneousCoherentConfigurationMatrix(mat) then
				return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration, IsSymmetricCoherentConfiguration, false);					
			else
				Print("Must give a valid matrix\n");
				return fail;
			fi;
		fi;
	end );


InstallMethod(RelationMatrix,
			[IsHomogeneousCoherentConfiguration],
	function(a)
		return a!.matrix;
	end );

InstallMethod( \=,
			 [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(a,b)
		return RelationMatrix(a)=RelationMatrix(b);
	end);


InstallMethod(IsSymmetricCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function(a)
		local mat;
		mat:=RelationMatrix(a);;
		if TransposedMat(mat)=mat then
			return true;
		fi;
		return false;
	end );

InstallMethod(IsAssociationScheme,
			[IsHomogeneousCoherentConfiguration],
			IsSymmetricCoherentConfiguration );

InstallMethod( Order, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration ],
	function( a )
		local n;
		n := Size(RelationMatrix(a));
		if n <> Size(RelationMatrix(a)[1]) then
			return fail;
		fi;
		return n;
	end );

InstallMethod(ClassOfAssociationScheme,
			[IsHomogeneousCoherentConfiguration],
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

InstallMethod(IsStronglyRegularGraph,
			[IsHomogeneousCoherentConfiguration],
	function(a)
		return ClassOfAssociationScheme(a)=2;
	end );

InstallMethod(AdjacencyMatrices,
			[IsHomogeneousCoherentConfiguration],
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




InstallMethod(FusionScheme,
			[IsHomogeneousCoherentConfiguration, IsList],
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
		m2 := HomogeneousCoherentConfiguration(mat);
		# set IsFusionScheme := true;
		return m2;
	end);

InstallMethod(IntersectionNumber,
			[IsHomogeneousCoherentConfiguration, IsInt,  IsInt,  IsInt],
	function( a, i, j, k )
		return IntersectionMatrices(a)[j+1][i+1, k+1];;
	end);

InstallMethod(FusionScheme,
			[IsHomogeneousCoherentConfiguration and IsCommutative, IsList],
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
		m2 := ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration, AdjacencyMatrices, adjMats,
			IntersectionMatrices, NewIntersectionMatrices);
		# set IsFusionScheme := true;
		return m2;
	end);



InstallMethod(Valencies, " ", [IsHomogeneousCoherentConfiguration], 
	function(a)
		local d, valencies, i;
		d := ClassOfAssociationScheme(a);
		valencies:=ListWithIdenticalEntries(d+1, 0);;
		for i in [1 .. d+1] do
			valencies[i]:=Number(RelationMatrix(a)[1], t -> t=i-1);
		od;
		return valencies;
	end);

InstallMethod(IntersectionMatrices, " ", [IsHomogeneousCoherentConfiguration],
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
			[IsHomogeneousCoherentConfiguration],
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




 InstallMethod( MatrixOfEigenvalues, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(m)
		local orthogonality_check, inter, eigs, d, feasiblerows, posvals, stopvals, i, row, valencies, wow, stack, options, P, P2, current;;

		orthogonality_check := function(thing, valencies)
			local i;
			for i in [1 .. Size(thing)-1] do
				if not Sum(List([1..Size(thing[1])], t -> thing[i][t]*thing[Size(thing)][t]/valencies[t] ))=-1 then
					return false;
				fi;
			od;
			# also put the orthogonal relation with itself? This requires m_i
			return true;
		end;

		d:=ClassOfAssociationScheme(m);
		inter:=IntersectionMatrices(m);
		if Size(CentralIdempotentsOfAlgebra(Algebra(Rationals, inter))) <> d then
			# This method only works for rational eigenvalues, with d characters.
			# I.e some non-commutative schemes, or schemes with non-rational eigenvalues
			# must be tackled with a different method
			return fail;
		fi;

		valencies:=ShallowCopy(Valencies(m));
		Remove(valencies, 1);;

		eigs:=List(inter, t ->  Eigenvalues(Rationals,t));
		Remove(eigs,1);

		feasiblerows:=[];

		posvals := ListWithIdenticalEntries(d, 1);;
		stopvals := List(eigs, Size);;
	    posvals[1]:=0;
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
			options:=Filtered(options, t -> orthogonality_check(t, valencies));
			Append(stack, options);
			else
				P:=NullMat(d+1, d+1);
				P:=P+1;;
				P[1]{[2..d+1]}:=valencies;
				P{[2..d+1]}{[2..d+1]}:=current;
				P2 := TransposedMat(P);;
				if ForAll([1 .. d], t -> ForAll(eigs[t], x -> x in P2[t+1])) then
		         	if IsCharacterTableOfHomogeneousCoherentConfiguration(m, P) then
						return P;
				 	fi;
				fi;
			fi;
		od;
		return fail	;
	end);




InstallMethod( DualMatrixOfEigenvalues, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration ],
	function( a )
		return Inverse(MatrixOfEigenvalues(a))*Order(a);
	end );

InstallMethod( MinimalIdempotents, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration],
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


# InstallMethod( AutomorphismGroup, [IsHomogeneousCoherentConfiguration],
# function( sch )
#     local n, edges, colours, c, d, matrix, newedges, newedges2,  
#     		i, e, f, map, graph, aut, layers, enum, col;
#     if not "digraphs" in RecNames(GAPInfo.PackagesLoaded) then
#        Error("You must load the Digraphs package\n");
#     fi;
#     n := Order(sch);
# 	matrix := RelationMatrix(sch);;
# 	c := ClassOfAssociationScheme(sch);
# 	# c <= 2^d-1
# 	d := Log2Int(c)+1;
# 	# make d layers
# 	# map colour to layer
# 	f := function( colour )
# 		local ce, onesare;
# 		ce := CoefficientsQadic(colour, 2);
# 		onesare := Filtered([1..Length(ce)],i->IsOne(ce[i]));
# 		return onesare;
# 	end;
# 	map := Concatenation([[]],List([1..c], f));
# 	edges := EnumeratorOfTuples([1..n], 2);
# 	enum := EnumeratorOfCartesianProduct2([[1..d],[1..n]]);
# 	newedges := [];;
# 
# 	Print("making edges (slowest part?)\n");
# 	for i in [1..Size(edges)] do
# 		e := edges[i];
# 		col := matrix[e[1]][e[2]];		
# 		Append(newedges, List(map[col+1], j -> 
# 			[Position(enum,[j,e[1]]),Position(enum,[j,e[2]])]));	
# 	od;
#   
# 	# at a later date, we could ask the user to include
# 	# a `helper' group here
# 	
# 	# it would be faster if we gave outneighbourhoods ...
# 	
# 	Print("making digraph\n");
# 	graph := DigraphByEdges( newedges, d*n );
# 	layers := List([1..d], t ->[1..n]+(t-1)*n);;
#	Print("calling nauty\n");
#    aut := NautyAutomorphismGroup(graph, layers); 
#    	Print("computing perm group\n");
#    return Action(aut,[1..n]);
#end);


InstallMethod( SchemeToGraph, [IsHomogeneousCoherentConfiguration],
function( sch )
    local n, colours_for_layer, c, d, matrix, in_nhd, in_nhds,  
    		i, f, map, graph, aut, layers, enum, v, cycle, e;
    if not "digraphs" in RecNames(GAPInfo.PackagesLoaded) then
       Error("You must load the Digraphs package\n");
    fi;
    # The vertices are pairs {layer, i} where i is in {1...n}.
	# The binary expansion of each colour number tells us 
	# which layers contain edges. From n vertices, we make
	# a graph with n log_2(c) vertices, where c is the class
	# of the scheme. 
	# {l1, i1} -> {l2, i2} with colour c if
	# (1) binary expansion of c has ones in l1, l2 positions
	# (2) m[i1][i2] = c
	
    n := Order(sch);
	matrix := RelationMatrix(sch);;
	c := ClassOfAssociationScheme(sch); 	# c <= 2^d-1
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
	colours_for_layer := List([1..d], t ->
	 	PositionsProperty(map, u -> t in u) - 1);
	enum := EnumeratorOfCartesianProduct2([[1..d],[1..n]]);	
	
	in_nhds := List(enum, v -> Concatenation(List(colours_for_layer[v[1]], 
		t -> Positions(matrix[v[2]],t))));;
	# also need vertical edges (paths or cliques)
	for i in [1..n] do
		cycle := List([1..d-1], j -> [[j,i],[j+1,i]]);
		Add(cycle, [[d,i],[1,i]]);
		cycle := List(cycle, t -> [Position(enum,t[1]),Position(enum,t[2])]);
		for e in cycle do
			Add(in_nhds[e[1]], e[2]);
		od;
	od;
	
	# at a later date, we could ask the user to include
	# a `helper' group here
	
	graph := DigraphNC( in_nhds );
	layers := List([1..d], t ->[1..n]+(t-1)*n);;
	return[graph, layers];
end);

InstallMethod( AutomorphismGroup, [IsHomogeneousCoherentConfiguration],
function( sch )
	local n, gr, aut;
	    n := Order(sch);
		gr := SchemeToGraph(sch);;
	    aut := NautyAutomorphismGroup(gr[1], gr[2]); 
#    	Print("computing perm group\n");
    return Action(aut,[1..n]);
end);

InstallMethod(IsIsomorphicScheme, [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(A1, A2)
		local gr1, gr2;;
		if Order(A1) <> Order(A2) then
			return false;
		fi;
		if ClassOfAssociationScheme(A1) <> ClassOfAssociationScheme(A2) then
			return false;
		fi;
		gr1 := SchemeToGraph(A1);;
		gr2 := SchemeToGraph(A2);;
		return IsIsomorphicDigraph(gr1[1], gr2[1], gr1[2], gr2[2]);;
	end);

InstallOtherMethod( AutomorphismGroup, [IsHomogeneousCoherentConfiguration, IsChar],
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

# InstallOtherMethod( AutomorphismGroup, [IsHomogeneousCoherentConfiguration, IsPosInt],
# function( R , h)
#     local G, gp, gr, n, x, y, i, mat, s, edges;    
#     if not h = 1 then
#     	return fail;
#     fi;
#     mat:=RelationMatrix(R);;
#     n := Order(R);
#    	Print(".\n");
#    	edges:=[];
#    	for x in [1 .. n] do
# 		if IsSymmetricCoherentConfiguration(R) then
# 	   		s := x+1;
# 	   	else
# 	   		s := 1;
# 	   	fi;
#    		for y in [s .. n] do
#    			if mat[x][y] = 1 then
#    				Add(edges, [x,y]);
#    			fi;
#    		od;
#    	od;
#     Print("..\n");
# 	if IsSymmetricCoherentConfiguration(R) then
# 	    gr := NautyGraph(edges);;
# 	else
# 	    gr := NautyDiGraph(edges);;
# 	fi;
#     Print("...\n");
#     G := AutomorphismGroup(gr);
#     Print("....\n");
#     for i in [4..ClassOfAssociationScheme(R)+1] do
#     	Print(".\n");
# 	   	edges:=[];
# 	   	for x in [1 .. n] do
# 	   		if IsSymmetricCoherentConfiguration(R) then
# 	   			s := x+1;
# 	   		else
# 	   			s := 1;
# 	   		fi;
# 	   		for y in [s .. n] do
# 	   			if mat[x][y] = i-1 then
# 	   				Add(edges, [x,y]);
# 	   			fi;
# 	   		od;
# 	   	od;
# 	    Print("..\n");
# 		if IsSymmetricCoherentConfiguration(R) then
# 		    gr := NautyGraph(edges);;
# 		else
# 		    gr := NautyDiGraph(edges);;
# 		fi;
#     	Print("...\n");
#         gp := AutomorphismGroup(gr);
#     	Print("....\n");
#         G := Intersection(G, gp);
#     	Print(".....\n");
#     od;
#     return G;
# end);

# InstallMethod( AutomorphismGroup, [IsHomogeneousCoherentConfiguration and IsStronglyRegularGraph],
# function( R )
#     local G, mat, gr, n, i, gp;    
#     n := Order(R);
#     mat:=RelationMatrix(R);
#     i :=1;
#     if Valencies(R)[2]<Valencies(R)[1] then
#     	i:=2;
#     fi;
# #    if ConstructorGroup(R) <> false then
# #    	gp := ConstructorGroup(R);
# #    else
# #    	gp := Group(());;
# #    fi;
# #    gr := Graph(gp, [1..n], OnPoints, function(x,y) return mat[x][y]=i; end);
#     gr := Graph(Group(()), [1..n], OnPoints, function(x,y) return mat[x][y]=i; end);
#     G := AutomorphismGroup(gr);
#     return G;
# end);

InstallMethod( AutomorphismGroup, [IsHomogeneousCoherentConfiguration and IsStronglyRegularGraph],
function( R )
    local G, mat, gr, n, i, gp, x, y, s, edges;
    if not "nautytracesinterface" in RecNames(GAPInfo.PackagesLoaded) then
       Error("You must load the NautyTracesInterface package\n");
    fi;    
    n := Order(R);
    mat:=RelationMatrix(R);
    i :=1;
    if Valencies(R)[2]<Valencies(R)[1] then
    	i:=2;
    fi;
   	edges:=[];
   	for x in [1 .. n] do
		if IsSymmetricCoherentConfiguration(R) then
	   		s := x+1;
	   	else
	   		s := 1;
	   	fi;
   		for y in [s .. n] do
   			if mat[x][y] = 1 then
   				Add(edges, [x,y]);
   			fi;
   		od;
   	od;
	if IsSymmetricCoherentConfiguration(R) then
	    gr := NautyGraph(edges);;
	else
	    gr := NautyDiGraph(edges);;
	fi;
    G := AutomorphismGroup(gr);
    return G;
end);

InstallMethod( IsPPolynomial, [IsHomogeneousCoherentConfiguration],
	function(R)
	    local i, m, d, gr, n, x, y, g;

	    n := Order(R);
	    m := RelationMatrix(R);
	    d := ClassOfAssociationScheme(R);
	    g := Group(());
	    if HasConstructorGroup(R) then
	    	g := ConstructorGroup(R);
	    elif HasAutomorphismGroup(R) then
	    	g := AutomorphismGroup(R);
	    fi;
	    for i in [1..d] do
	        gr := Graph(g, [1..n], OnPoints, function(x,y) return m[x][y] = i; end);
	        if IsDistanceRegular(gr) then
	            if Diameter(gr) = d then
	                return true;
	            fi;
	        fi;
	    od;
	    
	    return false;
	end);

InstallMethod(AllPPolynomialOrderings,
            [IsHomogeneousCoherentConfiguration],
    function(R)
    local i, mat, d, gr, n, x, y, ans, PPolynomialOrdering, g;

        PPolynomialOrdering := function(R, a)
            local ord, i, j, d;
            
            d := ClassOfAssociationScheme(R);
            ord := [0,a];
            for j in [1..d-1] do
                for i in [1..d] do
                    if not (i in ord) then
                        if IntersectionNumber(R, a, ord[Length(ord)], i) <> 0 then
                            Add(ord, i);
                        fi;
                    fi;
                od;
            od;
            
            return ord;
        end;


	    g := Group(());
	    if HasConstructorGroup(R) then
	    	g := ConstructorGroup(R);
		elif HasAutomorphismGroup(R) then
	    	g := AutomorphismGroup(R);
	    fi;

        ans := [];
        n := Order(R);
        mat := RelationMatrix(R);
        d := ClassOfAssociationScheme(R);
        for i in [1..d] do
            gr := Graph(g, [1..n], OnPoints, function(x,y) return mat[x][y]=i; end);
            if IsDistanceRegular(gr) then
                if Diameter(gr) = d then
                    Add(ans, PPolynomialOrdering(R, i));
                fi;
            fi;
        od;

        return ans;
    end);



InstallMethod(IsCharacterTableOfHomogeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsMatrix],
	function(a, P)
        # Find minimal idempotents of the intersection matrix
        # Check that they are actually minimal idempotents
        # The intersection algebra is isomorphic to the Bose-Mesner algebra
        # The adjacency matrices are in bijection with the intersection matrices.
        # Note: This assumes that we can construct the Bose-Mesner algebra, i.e commutative
        local j, i, mat, idems, d, Q, adjacencymatrices;
        if not Size(P) = Size(P[1]) then
            Print("This method is only for square matrices (corresponding to commutative schemes)\n");
            return fail;
        fi;
        Q:=Inverse(P);
        if Q = fail then
        	Print("The character table is not invertible\n");
        	return fail;
        fi;
        idems:=[];
        d := ClassOfAssociationScheme(a);
        adjacencymatrices := IntersectionMatrices(a);;
        for j in [1 .. d+1] do
            mat:=Q[1][j]*adjacencymatrices[1];;
            for i in [2 .. d+1] do
                mat := mat + Q[i][j]*adjacencymatrices[i];;
            od;
            Add(idems, mat);
        od;
        for i in [1 .. d+1] do
            for j in [1 .. d+1] do
                if i <> j then
                    if not IsZero(idems[i]*idems[j]) then
                        return false;
                    fi;
                else
                    if not (idems[i]*idems[j]=idems[i]) then
                        return false;
                    fi;
                fi;
            od;
        od;
        return true;
   	end );


############################
#
# Reading and writing CCs
#
############################

InstallMethod(SaveHomogeneousCoherentConfigurationWithCertainAttributes,
			[IsString, IsHomogeneousCoherentConfiguration, IsList],
 	function(file, A, L)
		local out, p;
		out:=[RelationMatrix(A)];
		for p in L do
			if p in KnownAttributesOfObject(A) then
				Add(out, [p, EvalString(p)(A)]);
			else
				Error(p, " is not an attribute associated with A\n");
			fi;
		od;
		PrintTo(file, out);
		return true;
	end);

InstallMethod(ReadHomogeneousCoherentConfigurationWithCertainAttributes,
			[IsString],
	function(file)
		local strm, out, M, A, x;
		strm := InputTextFile(file);
		if strm = fail then
			Error("Must give a valid file");
		fi;
		out := EvalString(ReadAll(strm));
		CloseStream(strm);;
		M:=out[1];
		Remove(out, 1);
		A:=HomogeneousCoherentConfigurationNC(M);
		for x in out do
			Setter(EvalString(x[1]))(A, x[2]);;
		od;
		return A;
	end);

############################
#
# Display methods
#
############################


 InstallMethod( ViewObj, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration],
 	function( a )
 		if HasIsSymmetricCoherentConfiguration(a) and IsSymmetricCoherentConfiguration(a) then
 			Print( ClassOfAssociationScheme(a), "-class association scheme of order ", Order(a));
 		else
 			Print( ClassOfAssociationScheme(a), "-class homogeneous coherent configuration of order ", Order(a));
 		fi;
 	end );

InstallMethod( PrintObj, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration ],
	function( a )
		Print(RelationMatrix(a));;
	end );

InstallMethod( Display, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration],
	function( a )
 		if HasIsSymmetricCoherentConfiguration(a) and IsSymmetricCoherentConfiguration(a) then
 			Print( ClassOfAssociationScheme(a), "-class association scheme of order ", Order(a), ".\n");
 		else
 			Print( ClassOfAssociationScheme(a), "-class homogeneous coherent configuration of order ", Order(a), ".\n");
 		fi;
 		if HasIsSymmetricCoherentConfiguration(a) then
 			Print("  Symmetric: ", IsSymmetricCoherentConfiguration(a), "\n");
 		fi;
 		if HasIsCommutative(a) then
 			Print("  Commutative: ", IsCommutative(a), "\n");
 		fi;
 		if HasIsPPolynomial(a) then
 			Print("  P-polynomial: ", IsPPolynomial(a), "\n");
 		fi;
 		if HasIsSchurian(a) then
 			Print("  Schurian: ", IsSchurian(a), "\n");
 		fi;
 		if HasAutomorphismGroup(a) then
 			Print("  Automorphism group: ");
 			View(AutomorphismGroup(a));
 			Print("\n");
 		fi;
 		if HasMatrixOfEigenvalues(a) then
 			if MatrixOfEigenvalues(a) <> fail then
	 			Print("  Matrix of eigenvalues:\n");
	 			Display(MatrixOfEigenvalues(a));
	 			Print("  Dual matrix of eigenvalues:\n");
	 			Display(DualMatrixOfEigenvalues(a));
	 		fi;
 		fi;

	end );

