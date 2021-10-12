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

InstallMethod(IsFusionOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsList],
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

InstallMethod(FusionOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsList],
	function( a, fuse1 )
		local fuse, d2, intersection_mats, u, v, w, s;

		if not IsFusionOfIntersectionAlgebra(a, fuse1) then
			Error("Must give a valid fusion!\n");
		fi;

		fuse:=MutableCopyMat(fuse1);;
		Sort(fuse);
		d2:=Size(fuse)-1;;
		intersection_mats := List([1 .. Size(fuse1)], t -> NullMat(Size(fuse1), Size(fuse1)));;
		for u in [0 .. d2] do
			for v in [0 .. d2] do
				for w in [0 .. d2] do
					s :=Sum(fuse[u+1], t -> Sum(fuse[v+1], x -> IntersectionNumber(a, t, x, fuse[w+1][1])));
					intersection_mats[u+1][v+1, w+1]:=s;
				od;
			od;
		od;
		return IntersectionAlgebra(intersection_mats);;
	end);


InstallMethod(ConverseRelationPairs,
			[IsIntersectionAlgebraObject],
	function( A )
		local fuse, rels, i, x, y;

		fuse:=[];;
		rels := [0 .. NumberOfClasses(A)];;
		IsSet(rels);
		for x in rels do
			y:=First([0 .. NumberOfClasses(A)], t -> IntersectionNumber(A, x, t, 0)<>0);
			Add(fuse, Set([x,y]));;
		od;
		return Set(fuse);
	end);

InstallMethod(ConverseRelation,
			[IsIntersectionAlgebraObject, IsInt],
	function( A, i )
		local fuse, x, j;

		if not i in [0 .. NumberOfClasses(A)] then
			Error("i must be in [0 .. d]\n");
		fi;
		return First([0 .. NumberOfClasses(A)], t -> IntersectionNumber(A, i, t, 0)<>0);
	end);

InstallMethod(IsStratifiable,
			[IsIntersectionAlgebraObject],
	function( A )

		if IsCommutative(A) then
			return true;
		fi;

		if IsFusionOfIntersectionAlgebra(A, ConverseRelationPairs(A)) then
			return true;
		else
			return false;
		fi;

	end);


InstallMethod(SymmetrisationOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject],
	function( A )
		local A2;

		if IsSymmetricIntersectionAlgebra(A) then
			return A;
		fi;

		if IsStratifiable(A) then
			A2:=FusionOfIntersectionAlgebra(A, ConverseRelationPairs(A));
			return A2;
		else
			return fail;
		fi;

	end);


InstallMethod(FeasibleNonTrivialFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject],
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
				if IsFusionOfIntersectionAlgebra(A, current) then
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


InstallOtherMethod(FeasibleNonTrivialFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsInt],
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
 	    if HasFeasibleNonTrivialFusionsOfIntersectionAlgebra(A) then
 	    	return Filtered(FeasibleNonTrivialFusionsOfIntersectionAlgebra(A), t -> Size(t)=r+1);
 	    fi;

		good :=[];
		stack :=[[[0]]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			if Size(current) <= (r+1) then
				S := Filtered([1 .. NumberOfClasses(A)], t -> not ForAny(current, x -> t in x));
				if IsEmpty(S) then
					if Size(current)=(r+1) and IsFusionOfIntersectionAlgebra(A, current) then
						Add(good, Set(current, Set));
					fi;
				elif Size(current)=r then
					fuse := Concatenation(current, [S]);;
					if IsFusionOfIntersectionAlgebra(A, fuse) then
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

InstallOtherMethod(FeasibleNonTrivialFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsInt, IsBool],
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
 	    if HasFeasibleNonTrivialFusionsOfIntersectionAlgebra(A) then
 	    	return Filtered(FeasibleNonTrivialFusionsOfIntersectionAlgebra(A), t -> Size(t)<=r+1);
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
						if Size(current)=(r+1) and IsFusionOfIntersectionAlgebra(A, current) then
							Add(good, Set(current, Set));
						fi;
					fi;
				elif Size(current)=r then
					fuse := Concatenation(current, [S]);;
					if IsFusionOfIntersectionAlgebra(A, fuse) then
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


InstallMethod(AllNonTrivialFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject],
	function(A)
	    local all, fusions;
			fusions := FeasibleNonTrivialFusionsOfIntersectionAlgebra(A);
			all := List(fusions, t -> FusionOfIntersectionAlgebra(A, t));;
	    return all;
	end);

InstallOtherMethod(AllNonTrivialFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsInt],
	function(A, k)
	    local all, fusions;
			fusions := FeasibleNonTrivialFusionsOfIntersectionAlgebra(A, k);
			all := List(fusions, t -> FusionOfIntersectionAlgebra(A, t));;
	    return all;
	end);

InstallOtherMethod(AllNonTrivialFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsInt, IsBool],
	function(A, k, flag)
	    local all, fusions;
			fusions := FeasibleNonTrivialFusionsOfIntersectionAlgebra(A, k, flag);
			all := List(fusions, t -> FusionOfIntersectionAlgebra(A, t));;
	    return all;
	end);

InstallMethod(AllFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject],
	function(A)
	    local all, fusions;
			fusions := FeasibleNonTrivialFusionsOfIntersectionAlgebra(A);
			all := List(fusions, t -> FusionOfIntersectionAlgebra(A, t));;
	    return Concatenation([FusionOfIntersectionAlgebra(A, [[0], [1 .. NumberOfClasses(A)]])], all, [A]);
	end);



InstallMethod(FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject],
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
 	    if HasFeasibleNonTrivialFusionsOfIntersectionAlgebra(A) then
 	    	good:=[];
 	    	for current in FeasibleNonTrivialFusionsOfIntersectionAlgebra(A) do
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
				if IsFusionOfIntersectionAlgebra(A, fuse) then
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


InstallOtherMethod(FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsPosInt],
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
 	    if HasFeasibleNonTrivialFusionsOfIntersectionAlgebra(A) and not HasFeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A) then
 	    	FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A);
 	    fi;
 	    if HasFeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A) then
 	    	return Filtered(FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A), t -> Size(t)=r+1);
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
					if Size(fuse) = (r+1) and IsFusionOfIntersectionAlgebra(A, fuse) then
						Add(good, fuse);
					fi;
				elif Size(current)=(r-1) then
					fuse := Concatenation(current, [S]);;
					fuse := List(fuse, t -> Concatenation(List(t, x -> map[x])));;
					fuse := Concatenation([[0]], fuse);
					fuse := Set(fuse, Set);;
					if IsFusionOfIntersectionAlgebra(A, fuse) then
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

InstallOtherMethod(FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsPosInt, IsBool],
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
 	    if HasFeasibleNonTrivialFusionsOfIntersectionAlgebra(A) and not HasFeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A) then
 	    	FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A);
 	    fi;
 	    if HasFeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A) then
 	    	return Filtered(FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A), t -> Size(t)<=r+1);
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
						if Size(fuse) = (r+1) and IsFusionOfIntersectionAlgebra(A, fuse) then
							Add(good, fuse);
						fi;
					fi;
				elif Size(current)=(r-1) then
					fuse := Concatenation(current, [S]);;
					fuse := List(fuse, t -> Concatenation(List(t, x -> map[x])));;
					fuse := Concatenation([[0]], fuse);
					fuse := Set(fuse, Set);;
					if IsFusionOfIntersectionAlgebra(A, fuse) then
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

InstallMethod(AllNonTrivialSymmetricFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject],
	function(A)
	    local all, fusions;
			fusions := FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A);
			all := List(fusions, t -> FusionOfIntersectionAlgebra(A, t));;
	    return all;
	end);

InstallOtherMethod(AllNonTrivialSymmetricFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsInt],
	function(A, k)
	    local all, fusions;
			fusions := FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A, k);
			all := List(fusions, t -> FusionOfIntersectionAlgebra(A, t));;
	    return all;
	end);

InstallOtherMethod(AllNonTrivialSymmetricFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsInt, IsBool],
	function(A, k, flag)
	    local all, fusions;
			fusions := FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A, k, flag);
			all := List(fusions, t -> FusionOfIntersectionAlgebra(A, t));;
	    return all;
	end);

InstallMethod(AllSymmetricFusionsOfIntersectionAlgebra,
			[IsIntersectionAlgebraObject],
	function(A)
	    local all, fusions;
			fusions := FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra(A);
			all := List(fusions, t -> FusionOfIntersectionAlgebra(A, t));; 
	    	all := Concatenation([FusionOfIntersectionAlgebra(A, [[0], [1 .. NumberOfClasses(A)]])], all);
	    	if IsAssociationScheme(A) then
	    		Add(all, A);
	    	fi;
	    return all;
	end);