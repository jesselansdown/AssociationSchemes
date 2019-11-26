#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
##  This program is free software; you can redistribute it and/or
##  modify it under the terms of the GNU General Public License
##  as published by the Free Software Foundation; either version 2
##  of the License, or (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License
##  along with this program; if not, write to the Free Software
##  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
##
#############################################################################

# Take a matrix and return a TheTypeAssociationScheme object.
# Does not perform any checks, other than that a matrix is given as input.

InstallMethod(HomogeneousCoherentConfigurationNC,
			[IsMatrix],
	function(mat)
		local m, assoc_rec;
		m := MakeImmutable(StructuralCopy(mat));;
		assoc_rec := rec( matrix := m);
		return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration);
	end );

#######################################################
#	Here we put a check that the association scheme is valid
#######################################################

InstallMethod(HomogeneousCoherentConfiguration,
			[IsMatrix],
	function(M)
		local mat, i, symmetric, assoc_rec, CanonicallyLabelRelationMatrix;

		CanonicallyLabelRelationMatrix := function(mat)
			local rels, mat2, i, j, row;
			rels := [];;
			for row in mat do
				rels := Union(rels, Set(row));;
			od;
			if rels = [0 .. Size(rels)-1] then
				return mat;
			fi;
			Remove(rels, Position(rels, mat[1][1]));
			rels:=Concatenation([mat[1][1]], rels);;
			mat2:=NullMat(Size(mat), Size(mat[1]));
			for i in [1 .. Size(mat)] do
				for j in [1 .. Size(mat[1])] do
					mat2[i][j]:=Position(rels, mat[i][j]) -1;
				od;
			od;
			return mat2;
		end;

		mat := MakeImmutable(CanonicallyLabelRelationMatrix(M));
		for i in [1 .. Size(mat)] do
			if mat[i, i] <> mat[1,1] then
				Print("Relation matrix does not define a homogeneous coherent configuration\n");
				return fail;
			fi;
		od;
		assoc_rec := rec( matrix := mat);
		if Size(mat) < 10000 then
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
		else
			# This version doesn't create any adjacency matrices and so uses less memory for big schemes
			if IsHomogeneousCoherentConfigurationMatrix2(mat) then
				return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration);					
			else
				Print("Must give a valid matrix\n");
				return fail;
			fi;
		fi;
	end );

InstallMethod(AssociationSchemeNC,
			[IsMatrix],
	function(mat)
		local m, assoc_rec;
		m := MakeImmutable(StructuralCopy(mat));;
		assoc_rec := rec( matrix := m);
		return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration, IsCommutative, true, IsSymmetricCoherentConfiguration, true);
	end );

InstallMethod(AssociationScheme,
			[IsMatrix],
	function(M)
		local mat, i, symmetric, assoc_rec, CanonicallyLabelRelationMatrix;

		CanonicallyLabelRelationMatrix := function(mat)
			local rels, mat2, i, j;
			rels := Set(Flat(mat));
			if rels = [0 .. Size(rels)-1] then
				Print("!\n");
				return mat;
			fi;
			Remove(rels, Position(rels, mat[1][1]));
			rels:=Concatenation([mat[1][1]], rels);;
			mat2:=NullMat(Size(mat), Size(mat[1]));
			for i in [1 .. Size(mat)] do
				for j in [1 .. Size(mat[1])] do
					mat2[i][j]:=Position(rels, mat[i][j]) -1;
				od;
			od;
			return mat2;
		end;

		mat := MakeImmutable(CanonicallyLabelRelationMatrix(M));
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
			Error("Must give a symmetric relation matrix for an association scheme.\n");
		fi;
	end );


InstallMethod(ReorderRelations,
            [IsHomogeneousCoherentConfiguration, IsList],
    function( a, L )
        local mat, m, i, j, m2, d, n, L2;
        d:=NumberOfClasses(a);;
        n:=Order(a);
        if not Set(L) =[0..d] then
            return fail;
        fi;
        if not L[1]=0 then
            return fail;
        fi;
        L2 := [0 .. d];;
        for i in [0 .. d] do
        	L2[i+1] := Position(L, i)-1;
        od;
        mat :=  NullMat(n, n);
        m:=RelationMatrix(a);;
        for i in [1 .. n] do
            for j in [1 .. n] do
                mat[i][j]:=L2[m[i][j]+1];
            od;
        od;
        m2 := HomogeneousCoherentConfigurationNC(mat);
        return m2;
    end);

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

InstallMethod( Relation,
			 [IsHomogeneousCoherentConfiguration, IsPosInt, IsPosInt],
	function(A,x,y)
		return RelationMatrix(A)[x][y];
	end);

InstallMethod( Neighbours,
			 [IsHomogeneousCoherentConfiguration, IsPosInt, IsInt],
	 function(A, p, k)
	    local R, i, ans, n;
	    
	    R := RelationMatrix(A);;
	    ans := [];
	    n := Order(A);
	    for i in [1..n] do
	        if R[p][i] = k then
	            AddSet(ans, i);
	        fi;
	    od;
	    return ans;
	end);

InstallMethod(Neighbours,
            [IsHomogeneousCoherentConfiguration, IsInt, IsList],
    function(A, p, L)
        local R, i, ans, n;
        ans := [];
        n := Order(A);
        R := RelationMatrix(A);
        for i in [1..n] do
            if R[p][i] in L then
                AddSet(ans, i);
            fi;
        od;
        return ans;
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

InstallMethod(NumberOfClasses,
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
		return NumberOfClasses(a)=2;
	end );

InstallMethod(AdjacencyMatrices,
			[IsHomogeneousCoherentConfiguration],
	function(a)
		local d, n, adjMats, i, j, mat;
		d := NumberOfClasses(a);;
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
		if fail in markers then
			return false;
		fi;
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

InstallMethod(IsHomogeneousCoherentConfigurationMatrix2,
			[IsMatrix],
	function(M)
		local ComputeEntryOfAiAjAtXY, InterNum, ComputeAllEntriesOfAiAjAtXY, n, map, i, pos,
		inters, d, row, m, j, k, sym, x, y, vals;

 		ComputeEntryOfAiAjAtXY := function(M, i, j, x, y)
			local z, val, n;
			val := 0;
			n := Size(M);
			for z in [1 .. n] do
				if M[x, z] = i and M[z, y] = j then
					val := val+1;
				fi;
			od;
			return val;
		end;

		InterNum := function(M, i, j, k)
			local n, x, y;
			n:=Size(M);
			x:=1;
			y := First([1 .. n], t -> M[x,t]=k);
			return ComputeEntryOfAiAjAtXY(M, i, j, x, y);
		end;

		ComputeAllEntriesOfAiAjAtXY := function(M, d, i, j, x, y)
			local z, vals, n;
			vals := NullMat(d+1, d+1);
			n := Size(M);
			for z in [1 .. n] do
				vals[M[x, z]+1, M[z, y]+1] := vals[M[x, z]+1, M[z, y]+1] +1;
			od;
			return vals;
		end;

		d := Maximum(M[1]);
		for row in M do
			if d <> Maximum(row) then
				return false;
			fi;
		od;

		n:=Size(M);
		map:=ListWithIdenticalEntries(d+1, 0);
		for i in [0 .. d] do
			pos := First([1 .. n], t -> M[1,t]= i);
			map[i+1] := M[pos, 1];
		od;

		inters := List([0 .. d], t -> NullMat(d+1, d+1));;
		for i in [0 .. d] do
			for j in [0 .. d] do
				for k in [0 .. d] do
					inters[i+1,j+1][k+1] := InterNum(M, i, j, k);;
				od;
			od;
		od;

		sym := true;
		for x in [1 .. n] do
		      for y in [1 .. n] do
		              k := M[x,y]; # since we have a partition - there can be only one k value in any entry
		              # The identity should be a relation.
		              if k = 0 and x <> y then
		                      return false; #
		              fi;
		              if x = y and k <> 0 then
		                      return false;
		              fi;
		              # Transposition must be a relation
		              if M[y, x] <> map[M[x,y]+1] then
		                      return false;
		              fi;
		              if M[x,y] <> M[y,x] then
		                      sym:=false;
		              fi;
		              vals := ComputeAllEntriesOfAiAjAtXY(M, d, i, j, x, y);;
		              for i in [0 .. d] do
		                      for j in [0 .. d] do
		                              if vals[i+1][j+1] <> inters[i+1, j+1][k+1] then
		                                      return false;
		                              fi;
		                      od;
		              od;
		      od;
		od;
		return true;
	end);



InstallMethod(IntersectionNumber,
			[IsHomogeneousCoherentConfiguration, IsInt,  IsInt,  IsInt],
	function( a, i, j, k )
		return IntersectionMatrices(a)[j+1][i+1, k+1];;
	end);

InstallMethod(Valencies, " ", [IsHomogeneousCoherentConfiguration], 
	function(a)
		local d, valencies, i;
		d := NumberOfClasses(a);
		valencies:=ListWithIdenticalEntries(d+1, 0);;
		for i in [1 .. d+1] do
			valencies[i]:=Number(RelationMatrix(a)[1], t -> t=i-1);
		od;
		return valencies;
	end);

# InstallMethod(IntersectionMatrices, " ", [IsHomogeneousCoherentConfiguration],
#  	function(m)
# 		local sz, d, relations, markers, intersectionMatrices, i, j, k, mult, ps, M;
# 	 	M:=RelationMatrix(m);
# 		sz := Size(M);
# 		d := NumberOfClasses(m);
# 		relations := AdjacencyMatrices(m);;
# 		intersectionMatrices:=List([1..d+1], t-> NullMat(d+1, d+1));
# 		markers := List([0 .. d], t -> First([1 .. sz], x -> relations[t+1][1][x] <>0));
# 		for i in [0 .. d] do
# 			for j in [0 .. d] do
# 				mult := relations[j+1][1] * relations[i+1];
# 				for k in [0 .. d] do
# 					intersectionMatrices[i+1][j+1, k+1] :=  mult[markers[k+1]];;
# 				od;
# 			od;
# 		od;
# 		return intersectionMatrices;
# end);



InstallMethod(IntersectionMatrices, " ", [IsHomogeneousCoherentConfiguration],
 	function(m)
 		local ComputeEntryOfAiAjAtXY, InterNum, M, d, intersectionMatrices, i, j, k;

 		ComputeEntryOfAiAjAtXY := function(M, i, j, x, y)
			local z, val, n;
			val := 0;
			n := Size(M);
			for z in [1 .. n] do
				if M[x, z] = i and M[z, y] = j then
					val := val+1;
				fi;
			od;
			return val;
		end;

		InterNum := function(M, i, j, k)
			local n, x, y;
			n:=Size(M);
			x:=1;
			y := First([1 .. n], t -> M[x,t]=k);
			return ComputeEntryOfAiAjAtXY(M, i, j, x, y);
		end;

	 	M:=RelationMatrix(m);
		d := NumberOfClasses(m);
		intersectionMatrices:=List([1..d+1], t-> NullMat(d+1, d+1));
		for i in [0 .. d] do
			for j in [0 .. d] do
				for k in [0 .. d] do
					intersectionMatrices[i+1][j+1, k+1] :=  InterNum(M, i, j, k);;
				od;
			od;
		od;
		return intersectionMatrices;
end);





InstallMethod(IsCommutative,
			[IsHomogeneousCoherentConfiguration],
	function(a)
		local d, i, j, k;
		d:=NumberOfClasses(a);;
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

 InstallMethod( NumberOfCharacters, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
		local i, j, k, l, m, n, AM, v, d, AM1, V, VB, U, P, C;
		d := NumberOfClasses(A) + 1;
		if IsCommutative(A) then
		    return d;
		fi;
		n := Order(A);
		AM := AdjacencyMatrices(A);
		v := List(AM, x -> Sum(x[1]));
		AM1 := List([1..Length(AM)], x -> AM[x][1]);
		V := VectorSpace(Rationals, AM1);
		VB := Basis(V, AM1);
		P := NullMat(d, d);
		for i in [1..d] do
		    for j in [1..d] do
		        for k in [1..d] do
		            U := TransposedMat(AM[k]) * AM[i] * AM[k];
		            C := Coefficients(VB, U[1]);
		            P[i][j] := P[i][j] + C[j]/v[k];
		        od;
		    od;
		od;    
	    return Rank(P);
	end);

 InstallMethod( MatrixOfEigenvalues, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
		if NumberOfCharacters(A) = NumberOfClasses(A) +1 then
			return MatrixOfEigenvaluesSquare(A);
		else
			return MatrixOfEigenvaluesNonSquare(A);
		fi;
	end);

 InstallMethod( MatrixOfEigenvaluesSquare, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
		# This method assumes that the number of characters is d+1. This is true for commutative CCs.
		local inter, alg, idems, reps, P1, k, i, valencies, d, P2, polys, n, CyclotomicLimit, trigger, n2, f, mult, FieldLimit;
		inter:=IntersectionMatrices(A);
		d:=NumberOfClasses(A);;
		polys := Filtered(Set(Union(List(inter, t -> Factors(MinimalPolynomial(t))))), t -> Degree(t)=2);
		n:=1;
		CyclotomicLimit := 100;
		# Perhaps make a global variable to initiate CyclotomicLimit?
		# It may be that people want to work with schemes with larger limits and are happy to wait
		# Such as in the classification of schemes of order 32 for example.
		# Give the option to also have no limit? Like CosetTableDefaultMaxLimit
		# If this is done, then put a comment in the error statement that this is done
		# locally, but can be set globally by ... Must first quit the break loop.
		trigger := false;
		while n <= CyclotomicLimit do
			if ForAll(polys, t -> RootsOfPolynomial(CF(n),t) <> []) then
				break;
			fi;
			if n = CyclotomicLimit then
				Error("Reached cyclotomic field limit.\n\n You can increase this limit and continue by typing 'return;'\n\n");
				CyclotomicLimit := CyclotomicLimit*2;
				trigger := true;
			fi;
			n:=n+1;
		od;
		if trigger then
			# This is printed only if the error message is displaayed and the field is large
			# warns the user that it will be slow, but also indicates that it is doing something productive.
			Print("Field found: CT(", n,"). Attempting to construct character table. This may be slow.\n");
		fi;
		# If polys is empty, then all are reducible polynomials, and this returns 1.
		mult:=1;
		n2:=n*mult;
		alg:=Algebra(CF(n2), inter);;
		idems:=CentralIdempotentsOfAlgebra(alg);;
	    FieldLimit := 10;
	    while Size(idems) <> d+1 and mult <= FieldLimit do
	        mult:=mult+1;;
	        n2:=n*mult;
	        alg:=Algebra(CF(n2), inter);;
	        idems:=CentralIdempotentsOfAlgebra(alg);;
	        if mult = FieldLimit then
	            Error("Reached cyclotomic field limit.\n\n You can increase this limit and continue by typing 'return;'\n\n");
	            FieldLimit := FieldLimit + 5;
	        fi;
		od;
		reps:=List(inter, t -> t[1]);;
		P1:=Inverse(TransposedMat(List(idems, t -> SolutionMat(reps, t[1]))));
		# The central idempotents are linear combinations of intersection matrices, defined by
		# the Q matrix.
		valencies:=Valencies(A);
		P2:=[valencies];; # By convention the valencies form the first row, so we reorder
		k:=First([1 .. d+1], t -> P1[t]=valencies);
		for i in Difference([1 .. d+1], [k]) do
			Add(P2, P1[i]);
		od;
		if IsCharacterTableOfHomogeneousCoherentConfiguration(A, P2) then
			return P2;
		else
			return fail;
		fi;
	end);


 InstallMethod( MatrixOfEigenvaluesNonSquare, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
	    local nc, ct, d, i, j, k, am, n, Val, ct2, im, alg, idems, inter, valencies, polys, CyclotomicLimit, trigger, n2, mult, f, B, FieldLimit;

	        inter:=IntersectionMatrices(A);
	        d:=NumberOfClasses(A)+1;;
	        polys := Filtered(Set(Union(List(inter, t -> Factors(MinimalPolynomial(t))))), t -> Degree(t)=2);
	        f:=1;
	        CyclotomicLimit := 100;
	        # Perhaps make a global variable to initiate CyclotomicLimit?
	        # It may be that people want to work with schemes with larger limits and are happy to wait
	        # Such as in the classification of schemes of order 32 for example.
	        # Give the option to also have no limit? Like CosetTableDefaultMaxLimit
	        # If this is done, then put a comment in the error statement that this is done
	        # locally, but can be set globally by ... Must first quit the break loop.
	        trigger := false;
	        while f <= CyclotomicLimit do
	            if ForAll(polys, t -> RootsOfPolynomial(CF(f),t) <> []) then
	                break;
	            fi;
	            if f = CyclotomicLimit then
	                Error("Reached cyclotomic field limit.\n\n You can increase this limit and continue by typing 'return;'\n\n");
	                CyclotomicLimit := CyclotomicLimit*2;
	                trigger := true;
	            fi;
	            f:=f+1;
	        od;
	        if trigger then
	            # This is printed only if the error message is displaayed and the field is large
	            # warns the user that it will be slow, but also indicates that it is doing something productive.
	            Print("Field found: CT(", f,"). Attempting to construct character table. This may be slow.\n");
	        fi;
	        # If polys is empty, then all are reducible polynomials, and this returns 1.
	        mult:=1;
	        n2:=f*mult;
	        alg:=Algebra(CF(n2), inter);;
	        idems:=CentralIdempotentsOfAlgebra(alg);;
	        nc := NumberOfCharacters(A);
	        FieldLimit := 10;
	        while Size(idems) <> nc and mult <= FieldLimit do
	            mult:=mult+1;;
	            n2:=f*mult;
	            alg:=Algebra(CF(n2), inter);;
	            idems:=CentralIdempotentsOfAlgebra(alg);;
	            if mult = FieldLimit then
	                Error("Reached cyclotomic field limit.\n\n You can increase this limit and continue by typing 'return;'\n\n");
	                FieldLimit := FieldLimit + 5;
	            fi;
	            # Sometimes n fails, and we need a multiple. Is this just n^(#irreducibles) ?
	        od;
	  
	        ct := NullMat(nc, d + 1);
	        am := AdjacencyMatrices(A);
	        n := Order(A);
	        Val := Valencies(A);
	        for i in [1..nc] do
	            ct[i][1] := Sqrt(Trace(idems[i])); # degree
	            B := NullMat(n, n);
	            for j in [1..d] do
	                B := B + am[j] * idems[i][1][j];
	            od;
	            ct[i][d + 1] := Trace(B) / ct[i][1]; # multiplicity
	            for j in [2..d] do
	                ct[i][j] := idems[i][1][j] * n * Val[j] / ct[i][d + 1];
	            od;
	        od;

	        ct2 := NullMat(nc, d + 1);
	        for j in [1..d] do
	            ct2[1][j] := Val[j];
	        od;
	        ct2[1][d + 1] := 1;
	        k := 2;
	        for i in [1..nc] do
	            if ct[i] <> ct2[1] then
	                for j in [1..d+1] do
	                    ct2[k][j] := ct[i][j];
	                od;
	                k := k + 1;
	            fi;
	        od;

	        for i in [2..nc] do
	            for j in [nc, nc-1..i+1] do
	                if ct2[j][d+1] / ct2[j][1] < ct2[j-1][d+1] / ct2[j-1][1] then
	                    k := ct2[j]; ct2[j] := ct2[j-1]; ct2[j-1] := k;
	                fi;
	            od;
	        od;
	    
	        for i in [1..nc] do
	            Unbind(ct2[i][d + 1]);
	        od;
	    
	    return ct2;
	end);

InstallMethod( CharacterTable, [IsHomogeneousCoherentConfiguration],
	function(R)
	    return MatrixOfEigenvalues(R);
	end);



 # InstallMethod( MatrixOfEigenvalues, 
 # 	"for IsAssociationScheme",
 # 	[ IsHomogeneousCoherentConfiguration ],
	# function(m)
	# 	local orthogonality_check, inter, eigs, d, feasiblerows, posvals, stopvals, i, row, valencies, wow, stack, options, P, P2, current;;

	# 	orthogonality_check := function(thing, valencies)
	# 		local i;
	# 		for i in [1 .. Size(thing)-1] do
	# 			if not Sum(List([1..Size(thing[1])], t -> thing[i][t]*thing[Size(thing)][t]/valencies[t] ))=-1 then
	# 				return false;
	# 			fi;
	# 		od;
	# 		# also put the orthogonal relation with itself? This requires m_i
	# 		return true;
	# 	end;

	# 	d:=NumberOfClasses(m);
	# 	inter:=IntersectionMatrices(m);
	# 	if Size(CentralIdempotentsOfAlgebra(Algebra(Rationals, inter))) <> d then
	# 		# This method only works for rational eigenvalues, with d characters.
	# 		# I.e some non-commutative schemes, or schemes with non-rational eigenvalues
	# 		# must be tackled with a different method
	# 		return fail;
	# 	fi;

	# 	valencies:=ShallowCopy(Valencies(m));
	# 	Remove(valencies, 1);;

	# 	eigs:=List(inter, t ->  Eigenvalues(Rationals,t));
	# 	Remove(eigs,1);

	# 	feasiblerows:=[];

	# 	posvals := ListWithIdenticalEntries(d, 1);;
	# 	stopvals := List(eigs, Size);;
	#     posvals[1]:=0;
	# 	while posvals <> stopvals do
	# 		posvals[1]:=posvals[1]+1;
	# 		for i in [1.. d] do
	# 			if posvals[i] > Size(eigs[i]) then
	# 				posvals[i]:=1;
	# 				posvals[i+1]:=posvals[i+1]+1;
	# 			fi;
	# 		od;
	# 		row:=ListWithIdenticalEntries(d,1);
	# 		for i in [1 .. d] do
	# 			row[i]:=eigs[i][posvals[i]];
	# 			if Sum(row)=-1 then
	# 				Add(feasiblerows, row);;
	# 			fi;
	# 		od;
	# 	od;

	# 	stack := List(feasiblerows, t -> [t]);;
	# 	while stack <> [] do
	# 		current:=Remove(stack);;
	# 		if Size(current) < d then
	# 		# 	if correct size, then check that for all i, eigs[i] in current{[1..d]}[i] - just take transpose
	# 		#	if ok, then check the column orthogonality
	# 		#	Any other checks? Gives a valid Q matrix?
	# 		options:=List(feasiblerows, t -> Concatenation(current, [t]) );;
	# 		options:=Filtered(options, t -> orthogonality_check(t, valencies));
	# 		Append(stack, options);
	# 		else
	# 			P:=NullMat(d+1, d+1);
	# 			P:=P+1;;
	# 			P[1]{[2..d+1]}:=valencies;
	# 			P{[2..d+1]}{[2..d+1]}:=current;
	# 			P2 := TransposedMat(P);;
	# 			if ForAll([1 .. d], t -> ForAll(eigs[t], x -> x in P2[t+1])) then
	# 	         	if IsCharacterTableOfHomogeneousCoherentConfiguration(m, P) then
	# 					return P;
	# 			 	fi;
	# 			fi;
	# 		fi;
	# 	od;
	# 	return fail	;
	# end);




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
		d := NumberOfClasses(a);
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
# 	c := NumberOfClasses(sch);
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
	c := NumberOfClasses(sch); 	# c <= 2^d-1
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

# InstallMethod( IsPPolynomial, [IsHomogeneousCoherentConfiguration],
# 	function(R)
# 	    local i, m, d, gr, n, x, y, g;

# 	    n := Order(R);
# 	    m := RelationMatrix(R);
# 	    d := NumberOfClasses(R);
# 	    g := Group(());
# 	    if HasConstructorGroup(R) then
# 	    	g := ConstructorGroup(R);
# 	    elif HasAutomorphismGroup(R) then
# 	    	g := AutomorphismGroup(R);
# 	    fi;
# 	    for i in [1..d] do
# 	        gr := Graph(g, [1..n], OnPoints, function(x,y) return m[x][y] = i; end);
# 	        if IsDistanceRegular(gr) then
# 	            if Diameter(gr) = d then
# 	                return true;
# 	            fi;
# 	        fi;
# 	    od;
	    
# 	    return false;
# 	end);

InstallMethod( IsPPolynomial, [IsHomogeneousCoherentConfiguration],
	function(A)
		local stack, current, children, checknext;

		checknext := function(A, ord)

			local m;
			if Size(ord)=1 and ord[1]=0 then
				return true;
			fi;
			if IntersectionNumber(A, ord[2], ord[Size(ord)-1], ord[Size(ord)]) = 0 then
				return false;
			fi;
			for m in [1 .. Size(ord)-2] do
				if IntersectionNumber(A, ord[2], ord[m], ord[Size(ord)]) <> 0 then
					return false;
				fi;
			od;
			return true;
		end;

		if not IsAssociationScheme(A) then
			return false;
		fi;
		stack := [[0]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			if checknext(A, current) then
				if Size(current)=NumberOfClasses(A)+1 then
					return true;
				else
					children:=Difference([1..NumberOfClasses(A)], current);
					Append(stack, List(children, t -> Concatenation(current, [t])));;
				fi;
			fi;
		od;
		return false;
	end);

InstallMethod( IsMetric, [IsHomogeneousCoherentConfiguration],
	function(R)
	    return IsPPolynomial(R);
	end);

# InstallMethod(AllPPolynomialOrderings,
#             [IsHomogeneousCoherentConfiguration],
#     function(R)
#     local i, mat, d, gr, n, x, y, ans, PPolynomialOrdering, g;

#         PPolynomialOrdering := function(R, a)
#             local ord, i, j, d;
            
#             d := NumberOfClasses(R);
#             ord := [0,a];
#             for j in [1..d-1] do
#                 for i in [1..d] do
#                     if not (i in ord) then
#                         if IntersectionNumber(R, a, ord[Length(ord)], i) <> 0 then
#                             Add(ord, i);
#                         fi;
#                     fi;
#                 od;
#             od;
            
#             return ord;
#         end;


# 	    g := Group(());
# 	    if HasConstructorGroup(R) then
# 	    	g := ConstructorGroup(R);
# 		elif HasAutomorphismGroup(R) then
# 	    	g := AutomorphismGroup(R);
# 	    fi;

#         ans := [];
#         n := Order(R);
#         mat := RelationMatrix(R);
#         d := NumberOfClasses(R);
#         for i in [1..d] do
#             gr := Graph(g, [1..n], OnPoints, function(x,y) return mat[x][y]=i; end);
#             if IsDistanceRegular(gr) then
#                 if Diameter(gr) = d then
#                     Add(ans, PPolynomialOrdering(R, i));
#                 fi;
#             fi;
#         od;

#         return ans;
#     end);

InstallMethod(AllPPolynomialOrderings,
            [IsHomogeneousCoherentConfiguration],
	function(A)
		local stack, current, children, checknext, keep;

		checknext := function(A, ord)

			local m;
			if Size(ord)=1 and ord[1]=0 then
				return true;
			fi;
			if IntersectionNumber(A, ord[2], ord[Size(ord)-1], ord[Size(ord)]) = 0 then
				return false;
			fi;
			for m in [1 .. Size(ord)-2] do
				if IntersectionNumber(A, ord[2], ord[m], ord[Size(ord)]) <> 0 then
					return false;
				fi;
			od;
			return true;
		end;

		if not IsAssociationScheme(A) then
			return [];
		fi;
		stack := [[0]];
		keep := [];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			if checknext(A, current) then
				if Size(current)=NumberOfClasses(A)+1 then
					Add(keep, current);
				else
					children:=Difference([1..NumberOfClasses(A)], current);
					Append(stack, List(children, t -> Concatenation(current, [t])));;
				fi;
			fi;
		od;
		return Set(keep);
	end);

InstallMethod(KreinParameter,
            [IsHomogeneousCoherentConfiguration, IsInt, IsInt, IsInt],
	function(A, i, j, k)
		local P, Q, n, d, s, l;
		if not IsCommutative(A) then
			return fail;
		fi;
		P:=MatrixOfEigenvalues(A);
		Q:=DualMatrixOfEigenvalues(A);;

		n := Order(A);
		d:=NumberOfClasses(A);;
		s:=0;
		for l in [0 .. d] do
			s := s + ((ComplexConjugate( P[i+1,l+1] ) * ComplexConjugate( P[j+1,l+1] ) *  P[k+1,l+1])/P[1,l+1]^2);
		od;
		s := s*Q[1, i+1]*Q[1, j+1]/n;
		return s;
	end);

InstallMethod(KreinParameters,
            [IsHomogeneousCoherentConfiguration],
	function(A)
		local K, i, j, k, d;
		if not IsCommutative(A) then
			return fail;
		fi;
		d:=NumberOfClasses(A);;
		K:=List([1 .. d+1], t -> NullMat(d+1, d+1));;
		for i in [0 .. d] do
			for j in [0 .. d] do
				for k in [0 .. d] do
					K[i+1][j+1,k+1] := KreinParameter(A, i, j, k);
				od;
			od;
		od;
		return K;
	end);

# InstallMethod( IsQPolynomial, [IsHomogeneousCoherentConfiguration],
# 	function(T)
#     	local L, i, d, K, ord, TridiagonalOrdering;
    
# 	    TridiagonalOrdering := function(M)
# 	        local rest, pres, x, L, LT, d;
	    
# 	        d := Length(M);
# 	        rest := [2..d];
# 	        LT := [1];
# 	        pres := 1;
# 	        while rest <> [] do
# 	            L := Filtered(rest, x-> M[pres][x] <> 0);
# 	            if Length(L) <> 1 then
# 	                return false;
# 	            fi;
# 	            pres := L[1];
# 	            Add(LT, pres);
# 	            rest := Difference(rest, [pres]);
# 	        od;
	      
# 	        return LT;
# 	    end;

# 	    K := KreinParameters(T);
# 	    if K = false then
# 	        return [];
# 	    fi;
	    
# 	    d := NumberOfClasses(T)+1;
# 	    L := [];
# 	    for i in [2..d] do
# 	        ord := TridiagonalOrdering(K[i]);
# 	        if ord <> false then
# 	            return true;
# 	        fi;
# 	    od;
	    
# 	    return false;
# 	end);

InstallMethod( IsQPolynomial, [IsHomogeneousCoherentConfiguration],
	function(A)
		local stack, current, children, checknext;

		checknext := function(A, ord)

			local m;
			if Size(ord)=1 and ord[1]=0 then
				return true;
			fi;
			if KreinParameter(A, ord[2], ord[Size(ord)-1], ord[Size(ord)]) = 0 then
				return false;
			fi;
			for m in [1 .. Size(ord)-2] do
				if KreinParameter(A, ord[2], ord[m], ord[Size(ord)]) <> 0 then
					return false;
				fi;
			od;
			return true;
		end;

		if not IsAssociationScheme(A) then
			return false;
		fi;
		stack := [[0]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			if checknext(A, current) then
				if Size(current)=NumberOfClasses(A)+1 then
					return true;
				else
					children:=Difference([1..NumberOfClasses(A)], current);
					Append(stack, List(children, t -> Concatenation(current, [t])));;
				fi;
			fi;
		od;
		return false;
	end);

InstallMethod( IsCometric, [IsHomogeneousCoherentConfiguration],
	function(R)
	    return IsQPolynomial(R);
	end);



# InstallMethod( AllQPolynomialOrderings, [IsHomogeneousCoherentConfiguration],
# 	function(T)
# 	    local L, i, d, K, ord, TridiagonalOrdering;
	    
# 	    TridiagonalOrdering := function(M)
# 	        local rest, pres, x, L, LT, d;
	    
# 	        d := Length(M);
# 	        rest := [2..d];
# 	        LT := [1];
# 	        pres := 1;
# 	        while rest <> [] do
# 	            L := Filtered(rest, x-> M[pres][x] <> 0);
# 	            if Length(L) <> 1 then
# 	                return false;
# 	            fi;
# 	            pres := L[1];
# 	            Add(LT, pres);
# 	            rest := Difference(rest, [pres]);
# 	        od;
	      
# 	        return LT;
# 	    end;

# 	    K := KreinParameters(T);
# 	    if K = false then
# 	        return [];
# 	    fi;
	    
# 	    d := NumberOfClasses(T)+1;
# 	    L := [];
# 	    for i in [2..d] do
# 	        ord := TridiagonalOrdering(K[i]);
# 	        if ord <> false then
# 	            Add(L, ord-1);
# 	        fi;
# 	    od;
	    
# 	    return Set(L);
# 	end);


InstallMethod(AllQPolynomialOrderings,
            [IsHomogeneousCoherentConfiguration],
	function(A)
		local stack, current, children, checknext, keep;

		checknext := function(A, ord)

			local m;
			if Size(ord)=1 and ord[1]=0 then
				return true;
			fi;
			if KreinParameter(A, ord[2], ord[Size(ord)-1], ord[Size(ord)]) = 0 then
				return false;
			fi;
			for m in [1 .. Size(ord)-2] do
				if KreinParameter(A, ord[2], ord[m], ord[Size(ord)]) <> 0 then
					return false;
				fi;
			od;
			return true;
		end;

		if not IsAssociationScheme(A) then
			return [];
		fi;
		stack := [[0]];
		keep := [];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			if checknext(A, current) then
				if Size(current)=NumberOfClasses(A)+1 then
					Add(keep, current);
				else
					children:=Difference([1..NumberOfClasses(A)], current);
					Append(stack, List(children, t -> Concatenation(current, [t])));;
				fi;
			fi;
		od;
		return Set(keep);
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
        d := NumberOfClasses(a);
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

InstallMethod(IsThin,
			[IsHomogeneousCoherentConfiguration],
	function(A)
		return Length(Set(Valencies(A))) = 1;
	end);

InstallMethod(IsQuasiThin,
			[IsHomogeneousCoherentConfiguration],
	function(A)
		return Set(Valencies(A)) = [1, 2];
	end);

InstallMethod(IsPrimitive,
			[IsHomogeneousCoherentConfiguration],
	function(A)
	    local i, d, _ToOne, _Mat2List, e, m;

		_ToOne := function(M)
		    local i, j, n, M2;
		    
		    M2 := M * 0;
		    n := Length(M);
		    for i in [1..n] do
		        for j in [1..n] do
		            if M[i][j] <> 0 then
		                M2[i][j] := 1;
		            else
		                M2[i][j] := 0;
		            fi;
		        od;
		    od;
		    
		    return M2;
		end;

		_Mat2List := function(R, M)
		    local e, ans, n, i;
		    
		    ans := [];
		    n := Length(M);
		    e := _ToOne(M);
		    for i in [1..n] do
		        if e[1][i] <> 0 then
		            AddSet(ans, R[1][i]);
		        fi;
		    od;
		    
		    return ans;
		end;

	    d := NumberOfClasses(A);

		for i in [1 .. d] do
		    e := AdjacencyMatrices(A)[1] + AdjacencyMatrices(A)[i+1];
		    m := Sum(e[1]);
		    while (e^2 <> m * e) do
		        e := _ToOne(MutableCopyMat(e^2));    
		        m := Sum(e[1]);
		    od;
	    
		    if _Mat2List(RelationMatrix(A), MutableCopyMat(e)) <> [0..d] then
		    	return false;
		    fi;
		od;
		return true;
	end);

################################################################################################################
#
# Reading and writing CCs
#
################################################################################################################

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

################################################################################################################
#
# Display methods
#
################################################################################################################


 InstallMethod( ViewObj, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration],
 	function( a )
 		if HasIsSymmetricCoherentConfiguration(a) and IsSymmetricCoherentConfiguration(a) then
 			Print( NumberOfClasses(a), "-class association scheme of order ", Order(a));
 		else
 			Print( NumberOfClasses(a), "-class homogeneous coherent configuration of order ", Order(a));
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
 			Print( NumberOfClasses(a), "-class association scheme of order ", Order(a), ".\n");
 		else
 			Print( NumberOfClasses(a), "-class homogeneous coherent configuration of order ", Order(a), ".\n");
 		fi;
 		if HasIsSymmetricCoherentConfiguration(a) then
 			Print("  Symmetric: ", IsSymmetricCoherentConfiguration(a), "\n");
 		fi;
 		if HasIsCommutative(a) then
 			Print("  Commutative: ", IsCommutative(a), "\n");
 		fi;
 		if HasIsThin(a) then
 			Print("  Thin: ", IsThin(a), "\n");
 		fi;
 		if HasIsQuasiThin(a) then
 			Print("  Quasi-thin: ", IsQuasiThin(a), "\n");
 		fi;
 		if HasIsPrimitive(a) then
 			Print("  Primitive: ", IsPrimitive(a), "\n");
 		fi;
 		if HasIsPPolynomial(a) then
 			Print("  P-polynomial: ", IsPPolynomial(a), "\n");
 		fi;
 		if HasIsQPolynomial(a) then
 			Print("  Q-polynomial: ", IsQPolynomial(a), "\n");
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

