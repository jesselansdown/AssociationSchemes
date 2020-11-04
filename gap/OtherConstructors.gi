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

InstallMethod(FusionOfHomogeneousCoherentConfigurations,
			[IsHomogeneousCoherentConfiguration, IsList],
	function( a, fuse )
		local mat, m, i, j, m2, d, inds;
		if not [0] in fuse then
			return fail;
		fi;
		mat :=  NullMat(Order(a), Order(a));
		m:=RelationMatrix(a);;
		d:=NumberOfClasses(a);;
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
		# set IsFusionOfHomogeneousCoherentConfigurations := true;
		return m2;
	end);

InstallMethod(FusionOfHomogeneousCoherentConfigurations,
			[IsHomogeneousCoherentConfiguration and IsCommutative, IsList],
	function( a, fuse )
		local mat, m, i, j, m2, d, inds, s, NewIntersectionMatrices,
		u, v, w, h, check, inter, adjMats, rel, assoc_rec, S, PS, newP;
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
		d:=NumberOfClasses(a);;
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
		if HasMatrixOfEigenvalues(a) then
			S:=NullMat(NumberOfClasses(a)+1, Size(fuse));
			for i in [1 .. Size(fuse)] do
				for j in [1 .. Size(fuse[i])] do
					S[fuse[i][j]+1][i] := 1;
				od;
			od;
			PS:=MatrixOfEigenvalues(a)*S;
			newP :=[Remove(PS, 1)];
			Append(newP, Set(PS));
			if IsMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(m2), newP) then
				SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(m2), newP);
			fi;
		fi;
		# set IsFusionOfHomogeneousCoherentConfigurations := true;
		return m2;
	end);

InstallMethod(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function(A)
	    local iter, fuse, all;
	    IsCommutative(A);
	    all:=[];
	    iter := IteratorOfPartitionsSet([1 .. NumberOfClasses(A)]);
	    while not IsDoneIterator(iter) do
	        fuse := NextIterator(iter);
	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
	            if FusionOfHomogeneousCoherentConfigurations(A, Concatenation([[0]], fuse)) <> fail then
	                Add(all, Concatenation([[0]], fuse));
	            fi;
	        fi;
	    od;
	    return all;
	end );

InstallMethod(AllNonTrivialFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function(A)
	    local all, fusions;
			fusions := FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A);
			all := List(fusions, t -> FusionOfHomogeneousCoherentConfigurations(A, t));;
	    return all;
	end);

InstallMethod(AllFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function(A)
	    local all, fusions;
			fusions := FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A);
			all := List(fusions, t -> FusionOfHomogeneousCoherentConfigurations(A, t));;
	    return Concatenation([FusionOfHomogeneousCoherentConfigurations(A, [[0], [1 .. NumberOfClasses(A)]])], all, [A]);
	end);

InstallMethod(DirectProductOfHomogeneousCoherentConfigurations,
			[IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(M, N)
	    local L, i, j, MM, NM, A;
	    
	    MM := AdjacencyMatrices(M);
	    NM := AdjacencyMatrices(N);
	    A := [];
	    for i in MM do
	        for j in NM do
	            Add(A, KroneckerProduct(i, j));
	        od;
	    od;

	    L := A[1] * 0;
	    for i in [1..Length(A)] do
	        L := L + A[i] * (i-1);
	    od;
	  
	    return HomogeneousCoherentConfigurationNC(L);
	end);


InstallMethod(WreathProductOfHomogeneousCoherentConfigurations,
			[IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(M, N)
	    local L, i, j, MM, NM, A, J;

	    MM := AdjacencyMatrices(M);
	    NM := AdjacencyMatrices(N);
	    A := [];
	    for i in MM do
	        Add(A, KroneckerProduct(NM[1], i));
	    od;

	    J := NullMat(Order(M), Order(M));
	    for i in [1..Length(J)] do
	        for j in [1..Length(J)] do
	            J[i][j] := 1;
	        od;
	    od;

	    for i in [2..Length(NM)] do
	        Add(A, KroneckerProduct(NM[i], J));
	    od;

	    L := A[1] * 0;
	    for i in [1..Length(A)] do
	        L := L + A[i] * (i-1);
	    od;
	  
	    return HomogeneousCoherentConfigurationNC(L);
	end);



InstallMethod(CyclotomicScheme,
			[IsPosInt, IsPosInt],
	
	function(n, d)
	    local i, m, FEr, x, y, M, r, F, FE;

	    if (n-1) mod d <> 0 then
	    	Error("d must dived n-1\n");
	    fi;
	    m := (n - 1) / d;
	    F := GF(n);
	    FE := Elements(F);
	    FEr := [];
	    for i in [1..d] do
	        Add(FEr, Set(List([0..m], x -> Z(n)^(d*x+i))));
	    od;
	    Add(FEr, [0*Z(n)]);
	    FEr := Set(FEr);
	    M := NullMat(n, n);
	    for x in [1..n] do
	        for y in [1..n] do
	            for i in [1..d+1] do
	                if FE[x] - FE[y] in FEr[i] then
	                    M[x][y] := i - 1;
	                fi;
	            od;
	        od;
	    od;

	    return HomogeneousCoherentConfigurationNC(M);
	end);
