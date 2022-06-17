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


InstallMethod(ConverseRelationPairs,
			[IsHomogeneousCoherentConfiguration],
	function( A )
		local fuse, rels, i, x, y;

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
		return fuse;
	end);

InstallMethod(ConverseRelation,
			[IsHomogeneousCoherentConfiguration, IsInt],
	function( A, i )
		local fuse, x, j;

		if not i in [0 .. NumberOfClasses(A)] then
			Error("i must be in [0 .. d]\n");
		fi;
		fuse:=ConverseRelationPairs(A);;
		x := Filtered(fuse, t -> i in t)[1];
		if Size(x)=1 then
			return i;
		elif Size(x)=2 then
			j:=Filtered(x, t -> t<> i)[1];
			return j;
		else
			Error("This should not happen!\n");
		fi;
	end);

InstallMethod(IsStratifiable,
			[IsHomogeneousCoherentConfiguration],
	function( A )

		if IsCommutative(A) then
			return true;
		fi;

		if IsFusionOfHomogeneousCoherentConfiguration(A, ConverseRelationPairs(A)) then
			return true;
		else
			return false;
		fi;

	end);


InstallMethod(SymmetrisationOfHomogeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function( A )
		local A2;

		if IsAssociationScheme(A) then
			return A;
		fi;

		if IsStratifiable(A) then
			A2:=FusionOfHomogeneousCoherentConfiguration(A, ConverseRelationPairs(A));
			SetIsSymmetricCoherentConfiguration(A2, true);
			return A2;
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

# InstallMethod(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration,
# 			[IsHomogeneousCoherentConfiguration],
# 	function(A)
# 	    local iter, fuse, all;
# 	    IsCommutative(A);
# 	    all:=[];
# 	    iter := IteratorOfPartitionsSet([1 .. NumberOfClasses(A)]);
# 	    while not IsDoneIterator(iter) do
# 	        fuse := NextIterator(iter);
# 	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
# 	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
# 	                Add(all, Concatenation([[0]], fuse));
# 	            fi;
# 	        fi;
# 	    od;
# 	    return all;
# 	end );

InstallMethod(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function(A)
		local checkCell, findCell, checkPartialFusion, good, stack, current, S, children;

		checkCell := function(A, C)
			local k1, k2, y1, y2, i, j;
			for k1 in C do
				for k2 in C do
					y1:=0;
					y2:=0;
					for i in C do
						for j in C do
							y1:=y1+IntersectionNumber(A, i, j, k1);
							y2:=y2+IntersectionNumber(A, i, j, k2);
						od;
					od;
					if y1 <> y2 then
						return false;
					fi;
				od;
			od;
			return true;
		end;
		findCell := function(A, S)
			local x, good, stack, current, children;
			x:=Minimum(S);
			good :=[];
			stack :=[[x]];
			while stack <> [] do
				current:=Remove(stack, Size(stack));
				if checkCell(A, current) then
					Add(good, current);
				fi;
				children:=Filtered(S, t -> t > current[Size(current)]);
				children:=List(children, t -> Concatenation(current, [t]));
				Append(stack, children);
			od;
			return good;
		end;
		checkPartialFusion := function(A, fuse)
			local l, m, o, k1, k2, y1, y2, i, j;
			for l in [1 .. Size(fuse)] do
				for m in [1 .. Size(fuse)] do
					for o in [1 .. Size(fuse)] do
						if (Size(fuse) in [l, m, o]) and (not [l, m, o] = [Size(fuse), Size(fuse), Size(fuse)]) then
							# we want to make sure we are checking the newest cell, but we have already checked it by itself
							for k1 in fuse[o] do
								for k2 in fuse[o] do
									y1:=0;
									y2:=0;
									for i in fuse[l] do
										for j in fuse[m] do
											y1:=y1+IntersectionNumber(A, i, j, k1);
											y2:=y2+IntersectionNumber(A, i, j, k2);
										od;
									od;
									if y1 <> y2 then
										return false;
									fi;
								od;
							od;
						fi;
					od;
				od;
			od;
			return true;
		end;

		good :=[];
		stack :=[[[0]]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			S := Filtered([1 .. NumberOfClasses(A)], t -> not ForAny(current, x -> t in x));
			if IsEmpty(S) then
				if IsFusionOfHomogeneousCoherentConfiguration(A, current) then
					Add(good, Set(current, Set));
				fi;
			else
				children:=findCell(A, S);
				children:=List(children, t -> Concatenation(current, [t]));
				children:=Filtered(children, t -> checkPartialFusion(A, t));
				Append(stack, children);
			fi;
		od;
		good := Filtered(good, t -> not Size(t) in [2, NumberOfClasses(A)+1]);
		return good;
	end );


# InstallOtherMethod(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration,
# 			[IsHomogeneousCoherentConfiguration, IsInt],
# 	function(A, k)
# 	    local iter, fuse, all;
# 	    if k < 1 then
# 	    	Error("Fusion must have at least 1 class!\n");
# 	    fi;
# 	    if k > NumberOfClasses(A) then
# 	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
# 	    fi;
# 	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) then
# 	    	return Filtered(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)=k+1);
# 	    fi;
# 	    IsCommutative(A);
# 	    all:=[];
# 	    iter := IteratorOfPartitionsSet([1 .. NumberOfClasses(A)], k);
# 	    while not IsDoneIterator(iter) do
# 	        fuse := NextIterator(iter);
# 	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
# 	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
# 	                Add(all, Concatenation([[0]], fuse));
# 	            fi;
# 	        fi;
# 	    od;
# 	    return all;
# 	end );

InstallOtherMethod(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsInt],
	function(A, r)
		local checkCell, findCell, checkPartialFusion, good, stack, current, S, children, fuse;

		checkCell := function(A, C)
			local k1, k2, y1, y2, i, j;
			for k1 in C do
				for k2 in C do
					y1:=0;
					y2:=0;
					for i in C do
						for j in C do
							y1:=y1+IntersectionNumber(A, i, j, k1);
							y2:=y2+IntersectionNumber(A, i, j, k2);
						od;
					od;
					if y1 <> y2 then
						return false;
					fi;
				od;
			od;
			return true;
		end;
		findCell := function(A, S)
			local x, good, stack, current, children;
			x:=Minimum(S);
			good :=[];
			stack :=[[x]];
			while stack <> [] do
				current:=Remove(stack, Size(stack));
				if checkCell(A, current) then
					Add(good, current);
				fi;
				children:=Filtered(S, t -> t > current[Size(current)]);
				children:=List(children, t -> Concatenation(current, [t]));
				Append(stack, children);
			od;
			return good;
		end;
		checkPartialFusion := function(A, fuse)
			local l, m, o, k1, k2, y1, y2, i, j;
			for l in [1 .. Size(fuse)] do
				for m in [1 .. Size(fuse)] do
					for o in [1 .. Size(fuse)] do
						if (Size(fuse) in [l, m, o]) and (not [l, m, o] = [Size(fuse), Size(fuse), Size(fuse)]) then
							# we want to make sure we are checking the newest cell, but we have already checked it by itself
							for k1 in fuse[o] do
								for k2 in fuse[o] do
									y1:=0;
									y2:=0;
									for i in fuse[l] do
										for j in fuse[m] do
											y1:=y1+IntersectionNumber(A, i, j, k1);
											y2:=y2+IntersectionNumber(A, i, j, k2);
										od;
									od;
									if y1 <> y2 then
										return false;
									fi;
								od;
							od;
						fi;
					od;
				od;
			od;
			return true;
		end;

 	    if r < 1 then
 	    	Error("Fusion must have at least 1 class!\n");
 	    fi;
 	    if r > NumberOfClasses(A) then
 	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
 	    fi;
 	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) then
 	    	return Filtered(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)=r+1);
 	    fi;

		good :=[];
		stack :=[[[0]]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			if Size(current) <= (r+1) then
				S := Filtered([1 .. NumberOfClasses(A)], t -> not ForAny(current, x -> t in x));
				if IsEmpty(S) then
					if Size(current)=(r+1) and IsFusionOfHomogeneousCoherentConfiguration(A, current) then
						Add(good, Set(current, Set));
					fi;
				elif Size(current)=r then
					fuse := Concatenation(current, [S]);;
					if IsFusionOfHomogeneousCoherentConfiguration(A, fuse) then
						Add(good, Set(fuse, Set));
					fi;
				else
					children:=findCell(A, S);
					children:=List(children, t -> Concatenation(current, [t]));
					children:=Filtered(children, t -> checkPartialFusion(A, t));
					Append(stack, children);
				fi;
			fi;
		od;
		good := Filtered(good, t -> not Size(t) in [2, NumberOfClasses(A)+1]);
		return good;
	end );

# InstallOtherMethod(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration,
# 			[IsHomogeneousCoherentConfiguration, IsInt, IsBool],
# 	function(A, k, flag)
# 	    local iter, fuse, all;
# 	    if k < 1 then
# 	    	Error("Fusion must have at least 1 class!\n");
# 	    fi;
# 	    if k > NumberOfClasses(A) then
# 	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
# 	    fi;
# 	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) then
# 	    	return Filtered(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)<=k+1);
# 	    fi;
# 	    IsCommutative(A);
# 	    all:=[];
# 	    iter := IteratorOfPartitionsSet([1 .. NumberOfClasses(A)], k, flag);
# 	    while not IsDoneIterator(iter) do
# 	        fuse := NextIterator(iter);
# 	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
# 	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
# 	                Add(all, Concatenation([[0]], fuse));
# 	            fi;
# 	        fi;
# 	    od;
# 	    return all;
# 	end );

InstallOtherMethod(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsInt, IsBool],
	function(A, r, flag)
		local checkCell, findCell, checkPartialFusion, good, stack, current, S, children, fuse;

		checkCell := function(A, C)
			local k1, k2, y1, y2, i, j;
			for k1 in C do
				for k2 in C do
					y1:=0;
					y2:=0;
					for i in C do
						for j in C do
							y1:=y1+IntersectionNumber(A, i, j, k1);
							y2:=y2+IntersectionNumber(A, i, j, k2);
						od;
					od;
					if y1 <> y2 then
						return false;
					fi;
				od;
			od;
			return true;
		end;
		findCell := function(A, S)
			local x, good, stack, current, children;
			x:=Minimum(S);
			good :=[];
			stack :=[[x]];
			while stack <> [] do
				current:=Remove(stack, Size(stack));
				if checkCell(A, current) then
					Add(good, current);
				fi;
				children:=Filtered(S, t -> t > current[Size(current)]);
				children:=List(children, t -> Concatenation(current, [t]));
				Append(stack, children);
			od;
			return good;
		end;
		checkPartialFusion := function(A, fuse)
			local l, m, o, k1, k2, y1, y2, i, j;
			for l in [1 .. Size(fuse)] do
				for m in [1 .. Size(fuse)] do
					for o in [1 .. Size(fuse)] do
						if (Size(fuse) in [l, m, o]) and (not [l, m, o] = [Size(fuse), Size(fuse), Size(fuse)]) then
							# we want to make sure we are checking the newest cell, but we have already checked it by itself
							for k1 in fuse[o] do
								for k2 in fuse[o] do
									y1:=0;
									y2:=0;
									for i in fuse[l] do
										for j in fuse[m] do
											y1:=y1+IntersectionNumber(A, i, j, k1);
											y2:=y2+IntersectionNumber(A, i, j, k2);
										od;
									od;
									if y1 <> y2 then
										return false;
									fi;
								od;
							od;
						fi;
					od;
				od;
			od;
			return true;
		end;

 	    if r < 1 then
 	    	Error("Fusion must have at least 1 class!\n");
 	    fi;
 	    if r > NumberOfClasses(A) then
 	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
 	    fi;
 	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) then
 	    	return Filtered(FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)<=r+1);
 	    fi;

		good :=[];
		stack :=[[[0]]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			if Size(current) <= (r+1) then
				S := Filtered([1 .. NumberOfClasses(A)], t -> not ForAny(current, x -> t in x));
				if IsEmpty(S) then
					if flag = true then
						Add(good, Set(current, Set));
					else
						if Size(current)=(r+1) and IsFusionOfHomogeneousCoherentConfiguration(A, current) then
							Add(good, Set(current, Set));
						fi;
					fi;
				elif Size(current)=r then
					fuse := Concatenation(current, [S]);;
					if IsFusionOfHomogeneousCoherentConfiguration(A, fuse) then
						Add(good, Set(fuse, Set));
					fi;
				else
					children:=findCell(A, S);
					children:=List(children, t -> Concatenation(current, [t]));
					children:=Filtered(children, t -> checkPartialFusion(A, t));
					Append(stack, children);
				fi;
			fi;
		od;
		good := Filtered(good, t -> not Size(t) in [2, NumberOfClasses(A)+1]);
		return good;
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
		local checkCell, findCell, checkPartialFusion, good, stack, current, S, children, fuse, map;
		checkCell := function(A, C1, map)
			local k1, k2, y1, y2, i, j, C;
			C:=Concatenation(List(C1, t -> map[t]));;
			for k1 in C do
				for k2 in C do
					y1:=0;
					y2:=0;
					for i in C do
						for j in C do
							y1:=y1+IntersectionNumber(A, i, j, k1);
							y2:=y2+IntersectionNumber(A, i, j, k2);
						od;
					od;
					if y1 <> y2 then
						return false;
					fi;
				od;
			od;
			return true;
		end;
		findCell := function(A, S, map)
			local x, good, stack, current, children;
			x:=Minimum(S);
			good :=[];
			stack :=[[x]];
			while stack <> [] do
				current:=Remove(stack, Size(stack));
				if checkCell(A, current, map) then
					Add(good, current);
				fi;
				children:=Filtered(S, t -> t > current[Size(current)]);
				children:=List(children, t -> Concatenation(current, [t]));
				Append(stack, children);
			od;
			return good;
		end;
		checkPartialFusion := function(A, fuse, map)
			local l, m, o, k1, k2, y1, y2, i, j, i2, j2, k3, k4;
			for l in [1 .. Size(fuse)] do
				for m in [1 .. Size(fuse)] do
					for o in [1 .. Size(fuse)] do
						if (Size(fuse) in [l, m, o]) and (not [l, m, o] = [Size(fuse), Size(fuse), Size(fuse)]) then
							# we want to make sure we are checking the newest cell, but we have already checked it by itself
							for k1 in fuse[o] do
								for k2 in fuse[o] do
									y1:=0;
									y2:=0;
									for i in fuse[l] do
										for j in fuse[m] do
											for i2 in map[i] do
												for j2 in map[j] do
													for k3 in map[k1] do
														for k4 in map[k2] do
															y1:=y1+IntersectionNumber(A, i2, j2, k3);
															y2:=y2+IntersectionNumber(A, i2, j2, k4);
														od;
													od;
												od;
											od;
										od;
									od;
									if y1 <> y2 then
										return false;
									fi;
								od;
							od;
						fi;
					od;
				od;
			od;
			return true;
		end;

		map:=MutableCopyMat(ConverseRelationPairs(A));
 	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) then
 	    	good:=[];
 	    	for current in FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) do
 	    		if ForAll(map, x -> ForAny(current, t -> IsSubset(t, x))) then
 	    			Add(good, current);
 	    		fi;
 	    	od;
 	    	return good;
 	    fi;
		Remove(map, 1);
		good :=[];
		stack :=[[]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			S := Filtered([1 .. Size(map)], t -> not ForAny(current, x -> t in x));
			if IsEmpty(S) then
				fuse := List(current, t -> Concatenation(List(t, x -> map[x])));;
				fuse := Concatenation([[0]], fuse);
				fuse := Set(fuse, Set);;
				if IsFusionOfHomogeneousCoherentConfiguration(A, fuse) then
					Add(good, fuse);
				fi;
			else
				children:=findCell(A, S, map);
				children:=List(children, t -> Concatenation(current, [t]));
				children:=Filtered(children, t -> checkPartialFusion(A, t, map));
				Append(stack, children);
			fi;
		od;
		good := Filtered(good, t -> not Size(t) in [2, NumberOfClasses(A)+1]);
		return good;
	end );


InstallOtherMethod(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsPosInt],
	function(A, r)
		local checkCell, findCell, checkPartialFusion, good, stack, current, S, children, fuse, map;
		checkCell := function(A, C1, map)
			local k1, k2, y1, y2, i, j, C;
			C:=Concatenation(List(C1, t -> map[t]));;
			for k1 in C do
				for k2 in C do
					y1:=0;
					y2:=0;
					for i in C do
						for j in C do
							y1:=y1+IntersectionNumber(A, i, j, k1);
							y2:=y2+IntersectionNumber(A, i, j, k2);
						od;
					od;
					if y1 <> y2 then
						return false;
					fi;
				od;
			od;
			return true;
		end;
		findCell := function(A, S, map)
			local x, good, stack, current, children;
			x:=Minimum(S);
			good :=[];
			stack :=[[x]];
			while stack <> [] do
				current:=Remove(stack, Size(stack));
				if checkCell(A, current, map) then
					Add(good, current);
				fi;
				children:=Filtered(S, t -> t > current[Size(current)]);
				children:=List(children, t -> Concatenation(current, [t]));
				Append(stack, children);
			od;
			return good;
		end;
		checkPartialFusion := function(A, fuse, map)
			local l, m, o, k1, k2, y1, y2, i, j, i2, j2, k3, k4;
			for l in [1 .. Size(fuse)] do
				for m in [1 .. Size(fuse)] do
					for o in [1 .. Size(fuse)] do
						if (Size(fuse) in [l, m, o]) and (not [l, m, o] = [Size(fuse), Size(fuse), Size(fuse)]) then
							# we want to make sure we are checking the newest cell, but we have already checked it by itself
							for k1 in fuse[o] do
								for k2 in fuse[o] do
									y1:=0;
									y2:=0;
									for i in fuse[l] do
										for j in fuse[m] do
											for i2 in map[i] do
												for j2 in map[j] do
													for k3 in map[k1] do
														for k4 in map[k2] do
															y1:=y1+IntersectionNumber(A, i2, j2, k3);
															y2:=y2+IntersectionNumber(A, i2, j2, k4);
														od;
													od;
												od;
											od;
										od;
									od;
									if y1 <> y2 then
										return false;
									fi;
								od;
							od;
						fi;
					od;
				od;
			od;
			return true;
		end;

	    if r < 1 then
 	    	Error("Fusion must have at least 1 class!\n");
 	    fi;
 	    if r > NumberOfClasses(A) then
 	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
 	    fi;
 	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) and not HasFeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A) then
 	    	FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A);
 	    fi;
 	    if HasFeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A) then
 	    	return Filtered(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)=r+1);
 	    fi;

		map:=MutableCopyMat(ConverseRelationPairs(A));
		Remove(map, 1);
		good :=[];
		stack :=[[]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			if Size(current) <= r then
				S := Filtered([1 .. Size(map)], t -> not ForAny(current, x -> t in x));
				if IsEmpty(S) then
					fuse := List(current, t -> Concatenation(List(t, x -> map[x])));;
					fuse := Concatenation([[0]], fuse);
					fuse := Set(fuse, Set);;
					if Size(fuse) = (r+1) and IsFusionOfHomogeneousCoherentConfiguration(A, fuse) then
						Add(good, fuse);
					fi;
				elif Size(current)=(r-1) then
					fuse := Concatenation(current, [S]);;
					fuse := List(fuse, t -> Concatenation(List(t, x -> map[x])));;
					fuse := Concatenation([[0]], fuse);
					fuse := Set(fuse, Set);;
					if IsFusionOfHomogeneousCoherentConfiguration(A, fuse) then
						Add(good, Set(fuse, Set));
					fi;
				else
					children:=findCell(A, S, map);
					children:=List(children, t -> Concatenation(current, [t]));
					children:=Filtered(children, t -> checkPartialFusion(A, t, map));
					Append(stack, children);
				fi;
			fi;
		od;
		good := Filtered(good, t -> not Size(t) in [2, NumberOfClasses(A)+1]);
		return good;
	end );

InstallOtherMethod(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration, IsPosInt, IsBool],
	function(A, r, flag)
		local checkCell, findCell, checkPartialFusion, good, stack, current, S, children, fuse, map;
		checkCell := function(A, C1, map)
			local k1, k2, y1, y2, i, j, C;
			C:=Concatenation(List(C1, t -> map[t]));;
			for k1 in C do
				for k2 in C do
					y1:=0;
					y2:=0;
					for i in C do
						for j in C do
							y1:=y1+IntersectionNumber(A, i, j, k1);
							y2:=y2+IntersectionNumber(A, i, j, k2);
						od;
					od;
					if y1 <> y2 then
						return false;
					fi;
				od;
			od;
			return true;
		end;
		findCell := function(A, S, map)
			local x, good, stack, current, children;
			x:=Minimum(S);
			good :=[];
			stack :=[[x]];
			while stack <> [] do
				current:=Remove(stack, Size(stack));
				if checkCell(A, current, map) then
					Add(good, current);
				fi;
				children:=Filtered(S, t -> t > current[Size(current)]);
				children:=List(children, t -> Concatenation(current, [t]));
				Append(stack, children);
			od;
			return good;
		end;
		checkPartialFusion := function(A, fuse, map)
			local l, m, o, k1, k2, y1, y2, i, j, i2, j2, k3, k4;
			for l in [1 .. Size(fuse)] do
				for m in [1 .. Size(fuse)] do
					for o in [1 .. Size(fuse)] do
						if (Size(fuse) in [l, m, o]) and (not [l, m, o] = [Size(fuse), Size(fuse), Size(fuse)]) then
							# we want to make sure we are checking the newest cell, but we have already checked it by itself
							for k1 in fuse[o] do
								for k2 in fuse[o] do
									y1:=0;
									y2:=0;
									for i in fuse[l] do
										for j in fuse[m] do
											for i2 in map[i] do
												for j2 in map[j] do
													for k3 in map[k1] do
														for k4 in map[k2] do
															y1:=y1+IntersectionNumber(A, i2, j2, k3);
															y2:=y2+IntersectionNumber(A, i2, j2, k4);
														od;
													od;
												od;
											od;
										od;
									od;
									if y1 <> y2 then
										return false;
									fi;
								od;
							od;
						fi;
					od;
				od;
			od;
			return true;
		end;

	    if r < 1 then
 	    	Error("Fusion must have at least 1 class!\n");
 	    fi;
 	    if r > NumberOfClasses(A) then
 	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
 	    fi;
 	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) and not HasFeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A) then
 	    	FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A);
 	    fi;
 	    if HasFeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A) then
 	    	return Filtered(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)<=r+1);
 	    fi;

		map:=MutableCopyMat(ConverseRelationPairs(A));
		Remove(map, 1);
		good :=[];
		stack :=[[]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			if Size(current) <= r then
				S := Filtered([1 .. Size(map)], t -> not ForAny(current, x -> t in x));
				if IsEmpty(S) then
					fuse := List(current, t -> Concatenation(List(t, x -> map[x])));;
					fuse := Concatenation([[0]], fuse);
					fuse := Set(fuse, Set);;
					if flag = true then
						Add(good, fuse);
					else
						if Size(fuse) = (r+1) and IsFusionOfHomogeneousCoherentConfiguration(A, fuse) then
							Add(good, fuse);
						fi;
					fi;
				elif Size(current)=(r-1) then
					fuse := Concatenation(current, [S]);;
					fuse := List(fuse, t -> Concatenation(List(t, x -> map[x])));;
					fuse := Concatenation([[0]], fuse);
					fuse := Set(fuse, Set);;
					if IsFusionOfHomogeneousCoherentConfiguration(A, fuse) then
						Add(good, Set(fuse, Set));
					fi;
				else
					children:=findCell(A, S, map);
					children:=List(children, t -> Concatenation(current, [t]));
					children:=Filtered(children, t -> checkPartialFusion(A, t, map));
					Append(stack, children);
				fi;
			fi;
		od;
		good := Filtered(good, t -> not Size(t) in [2, NumberOfClasses(A)+1]);
		return good;
	end );

# InstallOtherMethod(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration,
# 			[IsHomogeneousCoherentConfiguration, IsInt],
# 	function(A, k)
# 	    local iter, fuse, all, map, rels, i, x, y;
# 	    if IsAssociationScheme(A) then
# 	    	return FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A, k);
# 	    fi;

# 	    if k < 1 then
# 	    	Error("Fusion must have at least 1 class!\n");
# 	    fi;
# 	    if k > NumberOfClasses(A) then
# 	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
# 	    fi;
# 	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) and not HasFeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A) then
# 	    	FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A);
# 	    fi;
# 	    if HasFeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A) then
# 	    	return Filtered(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)=k+1);
# 	    fi;

# 	    rels := [1 .. NumberOfClasses(A)];;
#   		map:=[];;
# 		IsSet(rels);
# 		for i in [1 .. Order(A)] do
# 			x := RelationMatrix(A)[1][i];;
# 			if x in rels then
# 				y := RelationMatrix(A)[i][1];;
# 				Add(map, Set([x,y]));;
# 				rels:=Filtered(rels, t -> t <> x and t <> y);;
# 				IsSet(rels);;
# 			fi;
# 			if IsEmpty(rels) then
# 				break;
# 			fi;
# 		od;

# 	    IsCommutative(A);
# 	    all:=[];
# 	    iter := IteratorOfPartitionsSet(map, k);
# 	    while not IsDoneIterator(iter) do
# 	        fuse := NextIterator(iter);
# 	        fuse := List(fuse, Flat);
# 	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
# 	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
# 	                Add(all, Concatenation([[0]], fuse));
# 	            fi;
# 	        fi;
# 	    od;
# 	    return all;
# 	end );


# InstallOtherMethod(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration,
# 			[IsHomogeneousCoherentConfiguration, IsInt, IsBool],
# 	function(A, k, flag)
# 	    local iter, fuse, all, map, rels, i, x, y;
# 	    if IsAssociationScheme(A) then
# 	    	return FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A, k, flag);
# 	    fi;

# 	    if k < 1 then
# 	    	Error("Fusion must have at least 1 class!\n");
# 	    fi;
# 	    if k > NumberOfClasses(A) then
# 	    	Error("Fusion cannot have more classes than original homogeneous coherent configuration!\n");
# 	    fi;
# 	    if HasFeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(A) and not HasFeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A) then
# 	    	FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A);
# 	    fi;
# 	    if HasFeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A) then
# 	    	return Filtered(FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A), t -> Size(t)<=k+1);
# 	    fi;

# 	    rels := [1 .. NumberOfClasses(A)];;
#   		map:=[];;
# 		IsSet(rels);
# 		for i in [1 .. Order(A)] do
# 			x := RelationMatrix(A)[1][i];;
# 			if x in rels then
# 				y := RelationMatrix(A)[i][1];;
# 				Add(map, Set([x,y]));;
# 				rels:=Filtered(rels, t -> t <> x and t <> y);;
# 				IsSet(rels);;
# 			fi;
# 			if IsEmpty(rels) then
# 				break;
# 			fi;
# 		od;

# 		if k >= Size(map) then
# 			return FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(A);
# 		fi;

# 	    IsCommutative(A);
# 	    all:=[];
# 	    iter := IteratorOfPartitionsSet(map, k, flag);
# 	    while not IsDoneIterator(iter) do
# 	        fuse := NextIterator(iter);
# 	        fuse := List(fuse, Flat);
# 	        if Size(fuse) <> 1 and Size(fuse) <> NumberOfClasses(A) then
# 	            if IsFusionOfHomogeneousCoherentConfiguration(A, Concatenation([[0]], fuse)) then
# 	                Add(all, Concatenation([[0]], fuse));
# 	            fi;
# 	        fi;
# 	    od;
# 	    return all;
# 	end );


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
	    	all := Concatenation([FusionOfHomogeneousCoherentConfiguration(A, [[0], [1 .. NumberOfClasses(A)]])], all);
	    	if IsAssociationScheme(A) then
	    		Add(all, A);
	    	fi;
	    return all;
	end);

InstallMethod(FirstFeasibleNonTrivialSymmetricFusionOfHomogeneousCoherentConfiguration,
			[IsHomogeneousCoherentConfiguration],
	function(A)
	    local all, fusions;
			return FirstFeasibleNonTrivialSymmetricFusionOfIntersectionAlgebra(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
	end);


InstallMethod(IsomorphismToFusionScheme,
			[IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(A, B)
		local fusions, f, C, map;

		if Rank(A)>Rank(B) then
			Error("The number of classes of A must be no larger than the number of classes of B\n");
		fi;
		if Order(A)<>Order(B) then
			return fail;
		fi;
		if Rank(A)=1 then
			return [(), (), [[0], [1 .. Rank(B)]]];
		fi;
		if Rank(A)=Rank(B) then
			map:=IsomorphismHomogeneousCoherentConfigurations(A, B);
			if map <> fail then
				return [map[1], map[2], List([0 .. Rank(A)], t -> [t])];
			fi;
		fi;
		f := FusingPartitionOfHomogeneousCoherentConfigurations(A, B);
		if f <> fail then
			return [(), (), f];
		fi;
		if IsAssociationScheme(A) then
			fusions:=FeasibleNonTrivialSymmetricFusionsOfHomgeneousCoherentConfiguration(B, Rank(A));;
		else
			fusions:=FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration(B, Rank(A));;
		fi;
		for f in fusions do
			C := FusionOfHomogeneousCoherentConfiguration(B, f);;
			map := IsomorphismHomogeneousCoherentConfigurations(A, C);
			if map <> fail then
				return [map[1], map[2], f];
			fi;
		od;
		return fail;
	end);

InstallMethod(IsIsomorphicToFusionScheme,
			[IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(A, B)
		if IsomorphismToFusionScheme(A, B) <> fail then
			return true;
		else
			return false;
		fi;
	end);