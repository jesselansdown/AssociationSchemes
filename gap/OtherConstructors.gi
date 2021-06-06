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

InstallMethod(IsFusionOfHomogeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsList],
	function(A, fuse)
		local l, m, o, k, h, p, x, y, rels;
		if not [0] in fuse then
			return false;
		fi;
		rels := Flat(fuse);;
		if Size(Set(rels)) <> Size(rels) then
			return false;
		fi;
		if Set(rels) <> [0 .. NumberOfClasses(A)] then
			return false;
		fi;
		p:=Size(fuse);
		for l in [1 .. p] do
			for m in [1 .. p] do
				for o in [1 .. p] do
					for x in [1 .. Size(fuse[o])] do
						k:=fuse[o][x];;
						for y in [x .. Size(fuse[o])] do
							h:=fuse[o][y];;
							if Sum(fuse[l], i -> Sum(fuse[m], j -> IntersectionNumber(A, i, j, k))) <> Sum(fuse[l], i -> Sum(fuse[m], j -> IntersectionNumber(A, i, j, h))) then
								return false;
							fi;
						od;
					od;
				od;
			od;
		od;
		return true;
	end);

InstallMethod(FusionOfHomogeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsList],
	function( a, fuse1 )
		local mat, m, i, j, m2, d, inds, S, PS, newP, fuse;

		if not IsFusionOfHomogeneousCoherentConfiguration(a, fuse1) then
			Error("Must give a valid fusion!\n");
		fi;

		fuse:=MutableCopyMat(fuse1);;
		Sort(fuse);
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

		m2 := HomogeneousCoherentConfigurationNC(mat);

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

		return m2;
	end);

InstallMethod(FusingPartitionOfHomogeneousCoherentConfigurations,
			[IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function( A, B )
		local adj1, adj2, j, i, sol, fuse;
	
		if NumberOfClasses(A)<NumberOfClasses(B) then
			return fail;
		fi;
		adj1 := NullMat(NumberOfClasses(A)+1, Order(A));;
		for j in [1 .. Order(A)] do
			i := RelationMatrix(A)[1][j];;
			adj1[i+1][j]:=1;
		od;
		adj2 := NullMat(NumberOfClasses(B)+1, Order(B));;
		for j in [1 .. Order(B)] do
			i := RelationMatrix(B)[1][j];;
			adj2[i+1][j]:=1;
		od;
		fuse:=[];;
		for j in [1 .. NumberOfClasses(B)+1] do
			sol := SolutionMat(adj1, adj2[j]);;
			if sol = fail then
				return fail;
			fi;
			sol := Filtered([1 .. NumberOfClasses(A)+1], t -> sol[t]=1);;
			sol := sol - 1;;
			Add(fuse, sol);;
		od;
		if not IsFusionOfHomogeneousCoherentConfiguration(A, fuse) then
			return fail;
		fi;
		if FusionOfHomogeneousCoherentConfiguration(A, fuse) = B then
			return fuse;
		else
			return fail;
		fi;
	end);


# InstallMethod(FusionOfHomogeneousCoherentConfiguration,
# 			[IsHomogeneousCoherentConfiguration and IsCommutative, IsList],
# 	function( a, fuse )
# 		local mat, m, i, j, m2, d, inds, s, NewIntersectionMatrices,
# 		u, v, w, h, check, inter, adjMats, rel, assoc_rec, S, PS, newP;
# 		if not IsFusionOfHomogeneousCoherentConfiguration(a, fuse) then
# 			Error("Must give a valid fusion!\n");
# 		fi;

# 		s := Size(fuse) - 1;;

# 		NewIntersectionMatrices := List([0 .. s], t -> NullMat(s+1, s+1));;
# 		for u in [0 .. s] do
# 			for v in [0 .. s] do
# 				for w in [0 .. s] do
# 					check := [];
# 					for h in fuse[w+1] do
# 						inter := 0;
# 						for i in fuse[u+1] do
# 							for j in fuse[v+1] do
# 								inter := inter + IntersectionNumber(a, i, j, h);
# 							od;
# 						od;
# 						Add(check, inter);;
# 						check:=Set(check);;
# 						if Size(check) <> 1 then
# 							return fail;
# 						fi;
# 					od;
# 					NewIntersectionMatrices[v+1][u+1, w+1] := check[1];
# 				od;
# 			od;
# 		od;

# 		mat :=  NullMat(Order(a), Order(a));
# 		m:=RelationMatrix(a);;
# 		d:=NumberOfClasses(a);;
# 		inds := ListWithIdenticalEntries(d+1,0);;
# 		for i in [1.. Size(fuse)] do
# 			for j in fuse[i] do
# 				inds[j+1]:=i-1;
# 			od;
# 		od;
# 		for i in [1 .. Order(a)] do
# 			for j in [1 .. Order(a)] do
# 				mat[i][j]:=inds[m[i][j]+1];
# 			od;
# 		od;

# 		adjMats := AdjacencyMatricesOfMatrix(mat);;
# 		for rel in adjMats do
# 			if not TransposedMat(rel) in adjMats then
# 				return fail;
# 			fi;
# 		od;
# 		assoc_rec := rec( matrix := mat);
# 		m2 := ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration, AdjacencyMatrices, adjMats,
# 			IntersectionMatrices, NewIntersectionMatrices);
# 		if HasMatrixOfEigenvalues(a) then
# 			S:=NullMat(NumberOfClasses(a)+1, Size(fuse));
# 			for i in [1 .. Size(fuse)] do
# 				for j in [1 .. Size(fuse[i])] do
# 					S[fuse[i][j]+1][i] := 1;
# 				od;
# 			od;
# 			PS:=MatrixOfEigenvalues(a)*S;
# 			newP :=[Remove(PS, 1)];
# 			Append(newP, Set(PS));
# 			if IsMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(m2), newP) then
# 				SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(m2), newP);
# 			fi;
# 		fi;
# 		# set IsFusionOfHomogeneousCoherentConfiguration := true;
# 		return m2;
# 	end);

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
	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
	                Add(all, Concatenation([[0]], fuse));
	            fi;
	        fi;
	    od;
	    return all;
	end );


InstallOtherMethod(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsInt],
	function(A, k)
	    local iter, fuse, all;
	    if k < 1 then
	    	Error("Fusion must have at least 1 class!\n");
	    fi;
	    if k > NumberOfClasses(A) then
	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
	    fi;
	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) then
	    	return Filtered(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)=k+1);
	    fi;
	    IsCommutative(A);
	    all:=[];
	    iter := IteratorOfPartitionsSet([1 .. NumberOfClasses(A)], k);
	    while not IsDoneIterator(iter) do
	        fuse := NextIterator(iter);
	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
	                Add(all, Concatenation([[0]], fuse));
	            fi;
	        fi;
	    od;
	    return all;
	end );


InstallOtherMethod(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsInt, IsBool],
	function(A, k, flag)
	    local iter, fuse, all;
	    if k < 1 then
	    	Error("Fusion must have at least 1 class!\n");
	    fi;
	    if k > NumberOfClasses(A) then
	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
	    fi;
	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) then
	    	return Filtered(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)<=k+1);
	    fi;
	    IsCommutative(A);
	    all:=[];
	    iter := IteratorOfPartitionsSet([1 .. NumberOfClasses(A)], k, flag);
	    while not IsDoneIterator(iter) do
	        fuse := NextIterator(iter);
	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
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
			all := List(fusions, t -> FusionOfHomogeneousCoherentConfiguration(A, t));;
	    return all;
	end);

InstallOtherMethod(AllNonTrivialFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsInt],
	function(A, k)
	    local all, fusions;
			fusions := FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A, k);
			all := List(fusions, t -> FusionOfHomogeneousCoherentConfiguration(A, t));;
	    return all;
	end);

InstallOtherMethod(AllNonTrivialFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsInt, IsBool],
	function(A, k, flag)
	    local all, fusions;
			fusions := FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A, k, flag);
			all := List(fusions, t -> FusionOfHomogeneousCoherentConfiguration(A, t));;
	    return all;
	end);

InstallMethod(AllFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function(A)
	    local all, fusions;
			fusions := FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A);
			all := List(fusions, t -> FusionOfHomogeneousCoherentConfiguration(A, t));;
	    return Concatenation([FusionOfHomogeneousCoherentConfiguration(A, [[0], [1 .. NumberOfClasses(A)]])], all, [A]);
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


InstallMethod(BipartiteDoubleOfAssociationScheme,
			[IsHomogeneousCoherentConfiguration],
# cf. Martin, Muzychuk, Williford, "Imprimitive cometric association schemes: Constructions and analysis"
	function(A)
	local M, B, Pmat, i, r;
		if not IsAssociationScheme(A) then
			return Error("Must give an association scheme, that is, a symmetric coherent configuration\n");
		fi;
		M:=NullMat(2*Order(A), 2*Order(A));;
		M{[1 .. Order(A)]}{[1 .. Order(A)]} := RelationMatrix(A);;
		M{[Order(A)+1 .. 2*Order(A)]}{[Order(A)+1 .. 2*Order(A)]} := RelationMatrix(A);;
		M{[1 .. Order(A)]}{[Order(A)+1 .. 2*Order(A)]} := RelationMatrix(A)+NumberOfClasses(A)+1;;
		M{[Order(A)+1 .. 2*Order(A)]}{[1 .. Order(A)]} := RelationMatrix(A)+NumberOfClasses(A)+1;;
		B := AssociationSchemeNC(M);
		if HasMatrixOfEigenvalues(A) then
			Pmat:=NullMat(2*(NumberOfClasses(A)+1), 2*(NumberOfClasses(A)+1));
			for i in [1 .. NumberOfClasses(A)+1] do
				r:=MatrixOfEigenvalues(A)[i];
				Pmat[i]{[1 .. Size(r)]}:=r;
				Pmat[i]{[Size(r)+1 .. 2*Size(r)]}:=r;
				Pmat[i+NumberOfClasses(A)+1]{[1 .. Size(r)]}:=r;
				Pmat[i+NumberOfClasses(A)+1]{[Size(r)+1 .. 2*Size(r)]}:=-r;
			od;
			SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(B), Pmat);
		fi;
		return B;
	end);

InstallMethod(ExtendedQBipartiteDouble,
			[IsHomogeneousCoherentConfiguration],
	# See Martin, Muzychuk, Williford "Imprimitive cometric association schemes: Constructions and analysis"
	function(A)
	local Aplus, Aminus, x, y, B, d, mats, i;

	if not IsAssociationScheme(A) then
		Error("Must give an association scheme!\n");
	fi;
	if not IsCometric(A) then
		Error("Extended Q-bipartite doubles can only be computed for cometric association schemes!\n");
	fi;
	if Size(Set(Sum(KreinArray(A)))) <> 1 then
		Error("Krein conditions not met! We require b_j^* + c_{j+1}^* = m + 1 for 0 =< j < d\n");
	fi;

	Aplus := function(A, val)
		local M;
		M:=NullMat(2*Order(A), 2*Order(A));
		M{[1 .. Order(A)]}{[1 .. Order(A)]}:=AdjacencyMatrices(A)[val+1];
		M{[Order(A)+1 .. 2*Order(A)]}{[Order(A)+1 .. 2*Order(A)]}:=AdjacencyMatrices(A)[val+1];
		return M;
	end;

	Aminus := function(A, val)
		local M;
		M:=NullMat(2*Order(A), 2*Order(A));
		M{[Order(A)+1 .. 2*Order(A)]}{[1 .. Order(A)]}:=AdjacencyMatrices(A)[val+1];
		M{[1 .. Order(A)]}{[Order(A)+1 .. 2*Order(A)]}:=AdjacencyMatrices(A)[val+1];
		return M;
	end;

	x:=TransposedMat(DualMatrixOfEigenvalues(A))[2];
	y:=List([1 .. Size(x)], t -> [x[t], t-1]);
	Sort(y, function(u, v) return u[1]>v[1];end);
	y:=List(y, t -> t[2]);
	B:=ReorderRelations(A, y);

	d:=NumberOfClasses(B);
	mats:=[];;
	Add(mats, Aplus(B, 0));
	for i in [1 .. d] do
		Add(mats, Aplus(B, i)+Aminus(B, d+1-i));
	od;
	Add(mats, Aminus(B, 0));
	return HomogeneousCoherentConfiguration(Sum(List([1..5], t -> (t-1)*mats[t])));
end);

InstallMethod(SymmetrisationOfHomogeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function( A )
		local fuse, rels, i, x, y;

		if IsAssociationScheme(A) then
			return A;
		fi;

		fuse:=[];;
		rels := [0 .. NumberOfClasses(A)];;
		IsSet(rels);
		for i in [1 .. Order(A)] do
			x := RelationMatrix(A)[1][i];;
			if x in rels then
				y := RelationMatrix(A)[i][1];;
				Add(fuse, Set([x,y]));;
				rels:=Filtered(rels, t -> t <> x and t <> y);;
				IsSet(rels);;
			fi;
			if IsEmpty(rels) then
				break;
			fi;
		od;

		if IsCommutative(A) then
			return FusionOfHomogeneousCoherentConfiguration(A, fuse);
		fi;

		if IsFusionOfHomogeneousCoherentConfiguration(A, fuse) then
			return FusionOfHomogeneousCoherentConfiguration(A, fuse);
		else
			return fail;
		fi;

	end);