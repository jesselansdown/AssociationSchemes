#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##
#############################################################################

# Take a matrix and return a TheTypeAssociationScheme object.
# Does not perform any checks, other than that a matrix is given as input.

InstallMethod(AssociationSchemeNC,
			[IsMatrix],
	function(mat)
		local m, assoc_rec;
		m := StructuralCopy(mat);;
		assoc_rec := rec( matrix := m);
		return ObjectifyWithAttributes(assoc_rec, TheTypeAssociationScheme, IsSchurian, false, AutomorphismGroup, Group(()));
	end );

#######################################################
#	Here we put a check that the association scheme is valid
#######################################################

InstallMethod(AssociationScheme,
			[IsMatrix],
	function(mat)
		local m, assoc_rec;
		if not IsAssociationSchemeMatrix(mat) then
			Print("Must give a valid matrix\n");
			return fail;
		fi;
		m := StructuralCopy(mat);;
		assoc_rec := rec( matrix := m);
		return ObjectifyWithAttributes(assoc_rec, TheTypeAssociationScheme, IsSchurian, false, AutomorphismGroup, Group(()));
	end );

# Returns the class for the matrix of a d-class association scheme

InstallMethod( NrVertices, 
	"for IsAssociationScheme",
	[ IsAssociationScheme ],
	function( a )
		local n;
		n := Size(a!.matrix);
		if n <> Size(a!.matrix[1]) then
			return fail;
		fi;
		return n;
	end );

InstallMethod(ClassOfAssociationScheme,
			[IsAssociationScheme],
	function(a)
		local d, row, mat, m;
		mat:=a!.matrix;
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
			[IsAssociationScheme],
	function(a)
		local d, n, adjMats, i, j, mat;
		d := ClassOfAssociationScheme(a);;
		mat := a!.matrix;
		n := Size(mat);
		adjMats := List([0 .. d], t ->	NullMat(n,n));;
		for i in [1 .. n] do
			for j in [1 .. n] do
				adjMats[mat[i][j]+1][i][j]:=1;
			od;
		od;
		return adjMats;
	end);

InstallMethod( AdjacencyMatrices, 
	"for IsAssociationScheme",
	[ IsAssociationScheme and IsSchurian],
	function( a )
		local g_perm, Q, row1, stab, sz, points, d, i, charvec, rts, pos, mat, mats, j, row, rows, id;
		g_perm := AutomorphismGroup(a);
		row1 := a!.matrix[1];
		stab := Stabiliser(g_perm, 1);
		rts := RightTransversal(g_perm, stab);;
		sz := DegreeAction(g_perm);
		points := [1 .. sz];
		d := Maximum(row1);
		rows := [];
		for i in [0 .. d] do
			charvec := ListWithIdenticalEntries(sz, 0);
			for j in [1 .. Size(row1)] do
				if row1[j] = i then
					charvec[j]:=1;
				fi;
			od;
			Add(rows, charvec);
		od;
		mats := [];
		for i in [1 .. d+1] do
			mat := ListWithIdenticalEntries(sz, 0);
			for j in rts do
				pos := 1^j;
				mat[pos]:=Permuted(rows[i], j);
			od;
			Add(mats, mat);
#			Print(i, ".\c");
		od;
		return mats;
	end );

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
			if not TransposedMat(mat)=mat then
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

InstallMethod(SchurianScheme,
			[IsPermGroup],
	function( g_perm )
		local stab, sz, points, orbs, row1, i, charvec, rts, pos, mat, assoc_rec;
		 # NOTE: This should actually be generously transitive
		stab := Stabiliser(g_perm, 1);
		sz := DegreeAction(g_perm);
		points := [2 .. sz];
		orbs := Orbits(stab, points);
		row1 := ListWithIdenticalEntries(sz, 0);
		for i in [1 .. Size(orbs)] do
			charvec := ListWithIdenticalEntries(sz, 0);
			charvec{orbs[i]}:=ListWithIdenticalEntries(Size(orbs[i]), i);
			row1 := row1 + charvec;
		od;
		rts := RightTransversal(g_perm, stab);;
		mat :=ListWithIdenticalEntries(sz, []);
		for i in rts do
			pos := 1^i;
			mat[pos]:=Permuted(row1, i);
		od;
		assoc_rec := rec( matrix := mat);
		return ObjectifyWithAttributes(assoc_rec, TheTypeAssociationScheme, IsSchurian, true, AutomorphismGroup, g_perm);;
	end);

InstallMethod(FusionScheme,
			[IsAssociationScheme, IsList],
	function( a, fuse )
		local mat, m, i, j, m2, d, inds;
		if not [0] in fuse then
			return fail;
		fi;
		mat :=  NullMat(NrVertices(a), NrVertices(a));
		m:=a!.matrix;;
		d:=ClassOfAssociationScheme(a);;
		inds := ListWithIdenticalEntries(d+1,0);;
		for i in [1.. Size(fuse)] do
			for j in fuse[i] do
				inds[j+1]:=i-1;
			od;
		od;
		for i in [1 .. NrVertices(a)] do
			for j in [1 .. NrVertices(a)] do
				mat[i][j]:=inds[m[i][j]+1];
			od;
		od;
		m2 := AssociationScheme(mat);
		# set IsFusionScheme := true;
		return m2;
	end);


InstallMethod(Valencies, " ", [IsAssociationScheme], 
	function(a)
		local d, valencies, i;
		d := ClassOfAssociationScheme(a);
		valencies:=ListWithIdenticalEntries(d+1, 0);;
		for i in [1 .. d+1] do
			valencies[i]:=Number(a!.matrix[1], t -> t=i-1);
		od;
		return valencies;
	end);

InstallMethod(IntersectionMatrices, " ", [IsAssociationScheme],
 	function(m)
		local sz, d, relations, markers, intersectionMatrices, i, j, k, mult, ps, M;
	 	M:=m!.matrix;
		sz := Size(M);
		d := ClassOfAssociationScheme(m);
		relations := AdjacencyMatrices(m);;
		intersectionMatrices:=List([1..d+1], t-> NullMat(d+1, d+1));
		markers := List([0 .. d], t -> First([1 .. sz], x -> relations[t+1][1][x] <>0));
		for i in [0 .. d] do
			for j in [0 .. d] do
					# Clearly the product with the identity is a linear combination, so no need to check...
				mult := relations[i+1][1] * relations[j+1];
				for k in [0 .. d] do
					intersectionMatrices[j+1][i+1][k+1] :=  mult[markers[k+1]];;
					intersectionMatrices[i+1][j+1][k+1] :=  mult[markers[k+1]];;
				od;
			od;
		od;
		return intersectionMatrices;
end);


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
 	[ IsAssociationScheme ],
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
	[ IsAssociationScheme ],
	function( a )
		return Inverse(MatrixOfEigenvalues(a))*NrVertices(a);
	end );


InstallMethod( MinimalIdempotents, 
	"for IsAssociationScheme",
	[ IsAssociationScheme and IsSchurian],
	function( a )
		local g_perm, Q, row1, stab, sz, points, d, i, charvec, rts, pos, mat, mats, j, row, rows, id;
		g_perm := AutomorphismGroup(a);
		Q := DualMatrixOfEigenvalues(a);
		row1 := a!.matrix[1];
		stab := Stabiliser(g_perm, 1);
		rts := RightTransversal(g_perm, stab);;
		sz := DegreeAction(g_perm);
		points := [1 .. sz];
		d := Maximum(row1);
		rows := [];
		for i in [0 .. d] do
			charvec := ListWithIdenticalEntries(sz, 0);
			for j in [1 .. Size(row1)] do
				if row1[j] = i then
					charvec[j]:=1;
				fi;
			od;
			Add(rows, charvec);
		od;
		id:=[];
		for j in [1 .. d+1] do
			row:=Q[1][j]*rows[1];;
			for i in [2 .. d+1] do
				row := row + Q[i][j]*rows[i];;
			od;
			Add(id, row);
		od;
		mats := [];
		for i in [1 .. d+1] do
			mat := ListWithIdenticalEntries(sz, 0);
			for j in rts do
				pos := 1^j;
				mat[pos]:=Permuted(id[i], j);
			od;
			Add(mats, mat);
#			Print(i, ".\c");
		od;
		return mats;
	end );

InstallMethod( MinimalIdempotents, 
	"for IsAssociationScheme",
	[ IsAssociationScheme],
	function(a)
		local j, i, mat, idems, d, Q, adjacencymatrices;
		idems:=[];
		d := ClassOfAssociationScheme(a);
		Q := DualMatrixOfEigenvalues(a);
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


 InstallMethod( ViewObj, 
 	"for IsAssociationScheme",
 	[ IsAssociationScheme],
 	function( a )
 		Print( ClassOfAssociationScheme(a), "-class association scheme on ", NrVertices(a), " vertices.");
# 		Print( a!.class, "-class association scheme on ", a!.n, " vertices.");
 	end );

InstallMethod( PrintObj, 
	"for IsAssociationScheme",
	[ IsAssociationScheme ],
	function( a )
 		Print( ClassOfAssociationScheme(a), "-class association scheme on ", NrVertices(a), " vertices.");
#		Print( a!.class, "-class association scheme on ", a!.n, " vertices.");
	end );

InstallMethod( Display, 
	"for IsAssociationScheme",
	[ IsAssociationScheme],
	function( a )
 		Print( ClassOfAssociationScheme(a), "-class association scheme on ", NrVertices(a), " vertices.");
 		if HasMatrixOfEigenvalues(a) then
 			Print("\nMatrixOfEigenvalues:\n");
 			Display(MatrixOfEigenvalues(a));
 		fi;
 		if HasMatrixOfEigenvalues(a) then
 			Print("\nDualMatrixOfEigenvalues:\n");
 			Display(DualMatrixOfEigenvalues(a));
 		fi;
#		Print( a!.class, "-class association scheme on ", a!.n, " vertices.");
	end );

