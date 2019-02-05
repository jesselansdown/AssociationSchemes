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
		return Objectify(TheTypeAssociationScheme, assoc_rec);
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
		return ObjectifyWithAttributes(assoc_rec, TheTypeAssociationScheme, IsSchurian, false, SchurianSchemeGroup, Group(()));
	end );

# Returns the class for the matrix of a d-class association scheme

InstallMethod(ClassOfAssociationScheme,
			[IsMatrix],
	function(mat)
		local d, row, m;
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
			[IsMatrix],
	function(mat)
		local d, n, adjMats, i, j;
		d := ClassOfAssociationScheme(mat);;
		n := Size(mat);
		adjMats := List([0 .. d], t ->	NullMat(n,n));;
		for i in [1 .. n] do
			for j in [1 .. n] do
				adjMats[mat[i][j]+1][i][j]:=1;
			od;
		od;
		return adjMats;
	end);

InstallMethod(AdjacencyMatrices,
			[IsAssociationScheme],
	function(a)
		return AdjacencyMatrices(a!.matrix);
	end);


InstallMethod(IsAssociationSchemeMatrix,
			[IsMatrix],
	function(M)
		local sz, numberOfRelations, relations, markers, mat, i, j, k, mult, ps, temp, identitypos;
		sz := Size(M);
		numberOfRelations := ClassOfAssociationScheme(M);
#		Print("There are ", numberOfRelations -1, " (non-identity) relations\n");
		relations := AdjacencyMatrices(M);
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
		if Transitivity(g_perm)<2 then # NOTE: This should actually be generously transitive
			return fail;
		fi;
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
		return ObjectifyWithAttributes(assoc_rec, TheTypeAssociationScheme, IsSchurian, true, SchurianSchemeGroup, g_perm);;
	end);

InstallMethod(AdjMats, " ", [IsAssociationScheme], AdjacencyMatrices);


 InstallMethod( ViewObj, 
 	"for IsAssociationScheme",
 	[ IsAssociationScheme],
 	function( a )
 		Print( ClassOfAssociationScheme(a!.matrix), "-class association scheme.");
# 		Print( a!.class, "-class association scheme on ", a!.n, " vertices.");
 	end );

InstallMethod( PrintObj, 
	"for IsAssociationScheme",
	[ IsAssociationScheme],
	function( a )
 		Print( ClassOfAssociationScheme(a!.matrix), "-class association scheme.");
#		Print( a!.class, "-class association scheme on ", a!.n, " vertices.");
	end );

InstallMethod( Display, 
	"for IsAssociationScheme",
	[ IsAssociationScheme ],
	function( a )
 		Print( ClassOfAssociationScheme(a!.matrix), "-class association scheme.");
#		Print( a!.class, "-class association scheme on ", a!.n, " vertices.");
	end );


InstallGlobalFunction( AssociationSchemes_Example,
function()
	Print( "This is a placeholder function, replace it with your own code.\n" );
end );

