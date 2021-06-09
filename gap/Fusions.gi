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



InstallMethod(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function(A)
	    local iter, fuse, all, map, rels, i, x, y;
	    if IsAssociationScheme(A) then
	    	return FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A);
	    fi;

	    rels := [1 .. NumberOfClasses(A)];;
  		map:=[];;
		IsSet(rels);
		for i in [1 .. Order(A)] do
			x := RelationMatrix(A)[1][i];;
			if x in rels then
				y := RelationMatrix(A)[i][1];;
				Add(map, Set([x,y]));;
				rels:=Filtered(rels, t -> t <> x and t <> y);;
				IsSet(rels);;
			fi;
			if IsEmpty(rels) then
				break;
			fi;
		od;

	    IsCommutative(A);
	    all:=[];
	    iter := IteratorOfPartitionsSet(map);
	    while not IsDoneIterator(iter) do
	        fuse := NextIterator(iter);
	        fuse := List(fuse, Flat);
	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
	                Add(all, Concatenation([[0]], fuse));
	            fi;
	        fi;
	    od;
	    return all;
	end );


InstallOtherMethod(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsInt],
	function(A, k)
	    local iter, fuse, all, map, rels, i, x, y;
	    if IsAssociationScheme(A) then
	    	return FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A, k);
	    fi;

	    if k < 1 then
	    	Error("Fusion must have at least 1 class!\n");
	    fi;
	    if k > NumberOfClasses(A) then
	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
	    fi;
	    if HasFeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A) then
	    	return Filtered(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)=k+1);
	    fi;

	    rels := [1 .. NumberOfClasses(A)];;
  		map:=[];;
		IsSet(rels);
		for i in [1 .. Order(A)] do
			x := RelationMatrix(A)[1][i];;
			if x in rels then
				y := RelationMatrix(A)[i][1];;
				Add(map, Set([x,y]));;
				rels:=Filtered(rels, t -> t <> x and t <> y);;
				IsSet(rels);;
			fi;
			if IsEmpty(rels) then
				break;
			fi;
		od;

	    IsCommutative(A);
	    all:=[];
	    iter := IteratorOfPartitionsSet(map, k);
	    while not IsDoneIterator(iter) do
	        fuse := NextIterator(iter);
	        fuse := List(fuse, Flat);
	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
	                Add(all, Concatenation([[0]], fuse));
	            fi;
	        fi;
	    od;
	    return all;
	end );


InstallOtherMethod(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsInt, IsBool],
	function(A, k, flag)
	    local iter, fuse, all, map, rels, i, x, y;
	    if IsAssociationScheme(A) then
	    	return FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A, k, flag);
	    fi;

	    if k < 1 then
	    	Error("Fusion must have at least 1 class!\n");
	    fi;
	    if k > NumberOfClasses(A) then
	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
	    fi;
	    if HasFeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A) then
	    	return Filtered(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)<=k+1);
	    fi;

	    rels := [1 .. NumberOfClasses(A)];;
  		map:=[];;
		IsSet(rels);
		for i in [1 .. Order(A)] do
			x := RelationMatrix(A)[1][i];;
			if x in rels then
				y := RelationMatrix(A)[i][1];;
				Add(map, Set([x,y]));;
				rels:=Filtered(rels, t -> t <> x and t <> y);;
				IsSet(rels);;
			fi;
			if IsEmpty(rels) then
				break;
			fi;
		od;

	    IsCommutative(A);
	    all:=[];
	    iter := IteratorOfPartitionsSet(map, k, flag);
	    while not IsDoneIterator(iter) do
	        fuse := NextIterator(iter);
	        fuse := List(fuse, Flat);
	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
	                Add(all, Concatenation([[0]], fuse));
	            fi;
	        fi;
	    od;
	    return all;
	end );


InstallMethod(AllNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function(A)
	    local all, fusions;
			fusions := FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A);
			all := List(fusions, t -> FusionOfHomogeneousCoherentConfiguration(A, t));;
	    return all;
	end);

InstallOtherMethod(AllNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsInt],
	function(A, k)
	    local all, fusions;
			fusions := FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A, k);
			all := List(fusions, t -> FusionOfHomogeneousCoherentConfiguration(A, t));;
	    return all;
	end);

InstallOtherMethod(AllNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsInt, IsBool],
	function(A, k, flag)
	    local all, fusions;
			fusions := FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A, k, flag);
			all := List(fusions, t -> FusionOfHomogeneousCoherentConfiguration(A, t));;
	    return all;
	end);

InstallMethod(AllSymmetricFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function(A)
	    local all, fusions;
			fusions := FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A);
			all := List(fusions, t -> FusionOfHomogeneousCoherentConfiguration(A, t));;
	    return Concatenation([FusionOfHomogeneousCoherentConfiguration(A, [[0], [1 .. NumberOfClasses(A)]])], all, [A]);
	end);
