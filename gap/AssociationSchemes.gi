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
#				Print("Relation matrix does not define a homogeneous coherent configuration\n");
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
#					Print("Must give a valid matrix\n");
					return fail;
				fi;
			else
				if IsHomogeneousCoherentConfigurationMatrix(mat) then
					return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration, IsSymmetricCoherentConfiguration, false);					
				else
#					Print("Must give a valid matrix\n");
					return fail;
				fi;
			fi;
		else
			# This version doesn't create any adjacency matrices and so uses less memory for big schemes
			if IsHomogeneousCoherentConfigurationMatrix2(mat) then
				return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration);					
			else
#				Print("Must give a valid matrix\n");
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
#				Print("Relation matrix does not define a homogeneous coherent configuration\n");
				return fail;
			fi;
		od;
		assoc_rec := rec( matrix := mat);
		symmetric := TransposedMat(mat) = mat;
		if symmetric then
			if IsAssociationSchemeMatrix(mat) then
				return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration, IsCommutative, true, IsSymmetricCoherentConfiguration, true);
			else
#				Print("Must give a valid matrix\n");
				return fail;
			fi;
		else
#			Error("Must give a symmetric relation matrix for an association scheme.\n");
			return fail;
		fi;
	end );


InstallMethod(ReorderRelations,
            [IsHomogeneousCoherentConfiguration, IsList],
    function( a, L )
        local mat, m, i, j, m2, d, n, L2, P, P2, Q, Q2;
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
        if HasMatrixOfEigenvalues(a) then
        	P:=TransposedMat(MatrixOfEigenvalues(a));
        	P2:=TransposedMat(List([0 .. d], t -> P[L[t+1]+1] ));;
        	SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(m2), P2);;
	        if HasDualMatrixOfEigenvalues(a) then
	        	Q:=DualMatrixOfEigenvalues(a);
		       	Q2:=List([0 .. d], t -> Q[L[t+1]+1] );;
		        SetDualMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(m2), Q2);;
		    fi;
        fi;
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

InstallMethod( \<,
			 [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(a,b)
		return RelationMatrix(a)<RelationMatrix(b);
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
		local mat, i;
		mat:=RelationMatrix(a);;
		for i in [1 .. Order(a)] do # Given a HCC, sufficient to check only one row/column
			if mat[1][i]<>mat[i][1] then
				return false;
			fi;
		od;
		return true;
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

InstallMethod(Rank,
			[IsHomogeneousCoherentConfiguration],
			NumberOfClasses );

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

InstallOtherMethod(AdjacencyMatrices,
			[IsHomogeneousCoherentConfiguration, IsInt],
	function(a, k)
		local d, n, adjMats, i, j, mat;
		if not k in [0 .. NumberOfClasses(a)] then
			Error("Must ask for adjacency matrix between 0 and ", NumberOfClasses(a), "\n");
		fi;
		if HasAdjacencyMatrices(a) then
			return AdjacencyMatrices(a)[k+1];
		fi;
		n := Order(a);;
		mat := NullMat(n, n);;
		for i in [1 .. n] do
			for j in [1 .. n] do
				if RelationMatrix(a)[i][j]=k then
					mat[i][j]:=1;
				fi;
			od;
		od;
		return mat;
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
		if not HasValencies(IntersectionAlgebraOfHomogeneousCoherentConfiguration(a)) then
			SetValencies(IntersectionAlgebraOfHomogeneousCoherentConfiguration(a), valencies);
		fi;
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

InstallMethod(IntersectionAlgebraOfHomogeneousCoherentConfiguration, " ", [IsHomogeneousCoherentConfiguration],
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
					intersectionMatrices[j+1][i+1, k+1] :=  InterNum(M, i, j, k);;
				od;
			od;
		od;
		return IntersectionAlgebra(intersectionMatrices);
end);

InstallMethod(IntersectionMatrices, " ", [IsHomogeneousCoherentConfiguration],
 	function(A)
 		local B;
 		B := IntersectionAlgebraOfHomogeneousCoherentConfiguration(A);
		return IntersectionMatrices(B);
end);

InstallMethod(IsCommutative,
			[IsHomogeneousCoherentConfiguration],
	function(A)
		local B;
		B := IntersectionAlgebraOfHomogeneousCoherentConfiguration(A);;
		return IsCommutative(B);
	end );

 InstallMethod( NumberOfCharacters, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
		local i, j, k, l, m, n, AM, v, d, AM1, V, VB, U, P, C, B;
		B := IntersectionAlgebraOfHomogeneousCoherentConfiguration(A);
		if HasNumberOfCharacters(B) then
			return NumberOfCharacters(B);
		else
			d := NumberOfClasses(A) + 1;
			if IsCommutative(A) then
				SetNumberOfCharacters(B, d);
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
			SetNumberOfCharacters(B, Rank(P));
		    return Rank(P);
		fi;
	end);

 InstallMethod( Multiplicities, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
		local ct, d;
		d:=NumberOfClasses(A);
		ct:=CharacterTableOfHomogeneousCoherentConfiguration(A);;
		return List(ct, x -> x[d+2]);
	end);

 InstallMethod( SplittingField, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
		local B;
		B := IntersectionAlgebraOfHomogeneousCoherentConfiguration(A);;
		return SplittingField(B);
	end);

 InstallMethod(HasRationalSplittingField,
			[IsHomogeneousCoherentConfiguration],
	function(A)
		local B;
		B := IntersectionAlgebraOfHomogeneousCoherentConfiguration(A);;
		return HasRationalSplittingField(B);;
	end);

InstallMethod( IsCometric, [IsHomogeneousCoherentConfiguration],
	function(R)
	    return IsQPolynomial(R);
	end);

InstallMethod(KreinParameter,
            [IsHomogeneousCoherentConfiguration, IsInt, IsInt, IsInt],
	function(A, i, j, k)
		local B;
		B := IntersectionAlgebraOfHomogeneousCoherentConfiguration(A);;
		return KreinParameter(B, i, j, k);
	end);

InstallMethod(KreinParameters,
            [IsHomogeneousCoherentConfiguration],
	function(A)
		local B;
		B := IntersectionAlgebraOfHomogeneousCoherentConfiguration(A);;
		return KreinParameters(B);
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
		if HasMatrixOfEigenvalues(A) then
			SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A), MatrixOfEigenvalues(A));;
		fi;
		return A;
	end);

InstallMethod(ReorderMinimalIdempotents,
            [IsHomogeneousCoherentConfiguration, IsList],
    function( a, L )
        local d, m2, Q, Q2, P, P2;
        d:=NumberOfClasses(a);;
        if not L[1]=0 then
            return fail;
        fi;
        m2 := HomogeneousCoherentConfigurationNC(RelationMatrix(a));
        Q:=TransposedMat(DualMatrixOfEigenvalues(a));
        Q2:=TransposedMat(List([0 .. d], t -> Q[L[t+1]+1] ));;
       	P:=MatrixOfEigenvalues(a);
       	P2:=List([0 .. d], t -> P[L[t+1]+1] );;
       	SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(m2), P2);;
       	SetDualMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(m2), Q2);;
#        P:=Inverse(Q2)*Order(a);;
#        SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(m2), P);;
        return m2;
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
 			Print( "< ", NumberOfClasses(a), "-class association scheme of order ", Order(a), " >");
 		elif HasIsCommutative(a) and IsCommutative(a) then
 			Print( "< ", NumberOfClasses(a), "-class commutative coherent configuration of order ", Order(a), " >");
 		elif HasIsStratifiable(a) and IsStratifiable(a) then
 			Print( "< ", NumberOfClasses(a), "-class stratifiable coherent configuration of order ", Order(a), " >");
 		else
 			Print( "< ", NumberOfClasses(a), "-class homogeneous coherent configuration of order ", Order(a), " >");
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
		local i;
		if HasMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(a)) then
			MatrixOfEigenvalues(a);
		fi;
 		if HasIsSymmetricCoherentConfiguration(a) and IsSymmetricCoherentConfiguration(a) then
 			Print( NumberOfClasses(a), "-class association scheme of order ", Order(a), ".\n");
 		elif HasIsCommutative(a) and IsCommutative(a) then
 			Print( "< ", NumberOfClasses(a), "-class commutative coherent configuration of order ", Order(a), " >");
 		elif HasIsStratifiable(a) and IsStratifiable(a) then
 			Print( "< ", NumberOfClasses(a), "-class stratifiable coherent configuration of order ", Order(a), " >");
 		else
 			Print( NumberOfClasses(a), "-class homogeneous coherent configuration of order ", Order(a), ".\n");
 		fi;
 		if HasDescription(a) then
 			Print("  Description: ", Description(a)[1], "\n");
 			for i in [2 .. Size(Description(a))] do
 				Print("               ", Description(a)[i], "\n");
 			od;
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
 		if HasIsPPolynomial(a) or HasAdmitsPPolynomialOrdering(a) then
 			Print("  Metric: ", IsMetric(a), "\n");
 			if IsMetric(a) = false and HasAdmitsPPolynomialOrdering(a) then
	 			Print("    Admits metric ordering: ", AdmitsPPolynomialOrdering(a), "\n");
	 		fi;
		 	if HasIsPBipartite(a) then
		 		Print("    Bipartite:", IsPBipartite(a), "\n");
		 	fi;
		 	if HasIsQAntipodal(a) then
		 		Print("    Antipodal:", IsPAntipodal(a), "\n");
		 	fi;
 		fi;
 		if HasIntersectionArray(a) and IntersectionArray(a) <> fail then
 			Print("  Intersection array: ");
 			Print(IntersectionArray(a), "\n");
 			if HasClassicalParameters(a) then
 				Print("    ClassicalParameters: ");
 				Print(ClassicalParameters(a), "\n");
 			fi;
 		fi;
 		if HasIsQPolynomial(a) or HasAdmitsQPolynomialOrdering(a) then
 			Print("  Cometric: ", IsCometric(a), "\n");
 			if IsCometric(a) = false and HasAdmitsQPolynomialOrdering(a) then
	 			Print("    Admits cometric ordering: ", AdmitsQPolynomialOrdering(a), "\n");
	 		fi;
		 	if HasIsQBipartite(a) then
		 		Print("    Q-bipartite:", IsQBipartite(a), "\n");
		 	fi;
		 	if HasIsQAntipodal(a) then
		 		Print("    Q-antipodal:", IsQAntipodal(a), "\n");
		 	fi;
 		fi;
 		if HasKreinArray(a) and KreinArray(a) <> fail then
 			Print("  Krein array: ");
 			Print(KreinArray(a), "\n");
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


InstallMethod( ViewRelationDistributionDiagram, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration],
	function( A )
			
			local d, i, j, k, graph;

			d:=NumberOfClasses(A);
			graph := "//dot\ndigraph { rankdir=LR\n";;
			for i in [0 .. d] do
				graph := Concatenation(graph, "node", String(i), " [label=\"",String(IntersectionNumber(A, i,i, 0)), "\"]\n");
			od;
			if IsCommutative(A) then
				for i in [0 .. d] do
					for j in [i+1 .. d] do
						if IntersectionNumber(A, i, 1, j) > 0 then
							graph:=Concatenation(graph, Concatenation(" node", String(i), " -> ", "node", String(j), "[color=black arrowhead=none, headlabel=\"", String(IntersectionNumber(A, i, 1, j)), "\", taillabel=\"", String(IntersectionNumber(A, j, 1, i)), "\"];\n"));
						fi;
					od;
				od;
			else 
				for i in [0 .. d] do
					for j in [i+1 .. d] do
						if IntersectionNumber(A, i, 1, j) > 0 or IntersectionNumber(A, j, 1, i) > 0 then
							graph:=Concatenation(graph, Concatenation(" node", String(i), " -> ", "node", String(j), "[color=black arrowhead=none, headlabel=\"", String(IntersectionNumber(A, i, 1, j)), "\", taillabel=\"", String(IntersectionNumber(A, j, 1, i)), "\"];\n"));
						fi;
					od;
				od;
				for i in [0 .. d] do
					for j in [i+1 .. d] do
						if IntersectionNumber(A, 1, i, j) > 0 or IntersectionNumber(A, 1, j, i) > 0 then
							graph:=Concatenation(graph, Concatenation(" node", String(i), " -> ", "node", String(j), "[color=blue arrowhead=none, headlabel=\"", String(IntersectionNumber(A, 1, i, j)), "\", taillabel=\"", String(IntersectionNumber(A, 1, j, i)), "\"];\n"));
						fi;
					od;
				od;
			fi;
			graph:=Concatenation(graph, "}");
			Splash(graph);
			return true;
		end);

InstallMethod( MatrixOfEigenvaluesViaBacktrack, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration],
	function( A )
			return MatrixOfEigenvaluesViaBacktrack(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));;
		end);
