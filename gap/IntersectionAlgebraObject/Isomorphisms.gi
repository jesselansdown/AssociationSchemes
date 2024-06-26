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

InstallMethod( ImageOfIntersectionAlgebra,
			 [IsIntersectionAlgebraObject, IsPerm],

	function(A, perm)
		local d, L, i, j, k, i2, j2, k2, B, P, P2;
		d:=NumberOfClasses(A);
		L:=List([1 .. d+1], t -> NullMat(d+1, d+1));;
		for i in [0 .. d] do
			for j in [0 .. d] do
				for k in [0 .. d] do
					if i <> 0 then
						i2:=i^perm;
					else
						i2:=0;
					fi;
					if j <> 0 then
						j2:=j^perm;
					else
						j2:=0;
					fi;
					if k <> 0 then
						k2:=k^perm;
					else
						k2:=0;
					fi;
					L[i+1][j+1, k+1]:= IntersectionNumber(A, i2, j2, k2);
				od;
			od;
		od;
		B := IntersectionAlgebra(L);
		if HasMatrixOfEigenvalues(A) and MatrixOfEigenvalues(A) <> fail then
		    P:=MatrixOfEigenvalues(A);
			P2:=NullMat(Size(P), Size(P));;
			P2:=P2+1;;
			for i in [1 .. Size(P2)] do
				for j in [1 .. Size(P[1])-1] do
					P2[i][j+1]:=P[i][j^perm + 1];
				od;
			od;
#			if IntersectionAlgebraFromMatrixOfEigenvalues(P2)=B then
				SetMatrixOfEigenvalues(B, P2);
#			fi;
		fi;
		return B;
	end);

InstallMethod( IsomorphismIntersectionAlgebras,
			 [IsIntersectionAlgebraObject, IsIntersectionAlgebraObject],

	function(A, B)
		local check_mapped_intersection_numbers_to_depth, d, stack, current, perm, children, charpolysA, charpolysB;

		check_mapped_intersection_numbers_to_depth := function(A, B, perm, depth)
			local i, j, k;
			for i in [1 .. depth] do
				for j in [1 .. depth] do
					for k in [1 .. depth] do
						if IntersectionNumber(A, i^perm, j^perm, k^perm) <> IntersectionNumber(B, i, j, k) then
							return false;
						fi;
					od;
				od;
			od;
			return true;
		end;

		if NumberOfClasses(A) <> NumberOfClasses(B) then
			return fail;
		fi;
		if Order(A) <> Order(B) then
			return fail;
		fi;
		if Collected(Valencies(A)) <> Collected(Valencies(B)) then
			return fail;
		fi;
		if IsCommutative(A) <> IsCommutative(B) then
			return fail;
		fi;
		if Collected(Flat(IntersectionMatrices(A))) <> Collected(Flat(IntersectionMatrices(B))) then
			return fail;
		fi;
		charpolysA := List(IntersectionMatrices(A), CharacteristicPolynomial);;
		charpolysB := List(IntersectionMatrices(A), CharacteristicPolynomial);;
		if Collected(charpolysA) <> Collected(charpolysB) then
			return fail;
		fi;

		d:=NumberOfClasses(A);
		stack := [[]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			perm:=MappingPermListList([1 .. Size(current)], current);
			if check_mapped_intersection_numbers_to_depth(A, B, perm, Size(current)) then
				if Size(current)=d then
					return perm;
				else
					children:=Filtered([1 .. d], t -> not t in current);;
					children:=List(children, t -> Concatenation(current, [t]));;
					Append(stack, children);
				fi;
			fi;
		od;
		return fail;
	end);

InstallMethod( AreIsomorphicIntersectionAlgebras,
			 [IsIntersectionAlgebraObject, IsIntersectionAlgebraObject],
	function(A, B)
		local isom;
		# if they have canonical forms check them against one another first
		if HasCanonisingMap(A) and HasCanonisingMap(B) then
			if CanonicalFormOfIntersectionAlgebra(A) = CanonicalFormOfIntersectionAlgebra(B) then
				return true;
			else
				return false;
			fi;
		fi;
		isom := IsomorphismIntersectionAlgebras(A, B);
		if isom <> fail then
			if HasCanonisingMap(A) and not HasCanonisingMap(B) then
				SetCanonisingMap(B, CanonisingMap(A)*Inverse(isom));
			fi;
			if HasCanonisingMap(B) and not HasCanonisingMap(A) then
				SetCanonisingMap(A, CanonisingMap(B)*isom);
			fi;
			return true;
		else
			return false;
		fi;
	end);

InstallMethod( CanonisingMap, [IsIntersectionAlgebraObject],
	function(A)
		local check_mapped_intersection_numbers_to_depth_less_than_or_equal, check_mapped_intersection_numbers_to_depth_less_than, d, stack, B, best, current, perm, children, x, stab, rts, h, y, i;
		check_mapped_intersection_numbers_to_depth_less_than_or_equal := function(A, B, perm, depth)
			local i, j, k;
			for i in [1 .. depth] do
				for j in [1 .. depth] do
					for k in [1 .. depth] do
						if IntersectionNumber(A, i^perm, j^perm, k^perm) > IntersectionNumber(B, i, j, k) 	then
							return false;
						fi; 
						if IntersectionNumber(A, i^perm, j^perm, k^perm) < IntersectionNumber(B, i, j, k) 	then
							return true;
						fi; 
					od;
				od;
			od;
			return true;
		end;

		check_mapped_intersection_numbers_to_depth_less_than := function(A, B, perm, depth)
			local i, j, k;
			for i in [1 .. depth] do
				for j in [1 .. depth] do
					for k in [1 .. depth] do
						if IntersectionNumber(A, i^perm, j^perm, k^perm) > IntersectionNumber(B, i, j, k) then
							return false;
						fi;
						if IntersectionNumber(A, i^perm, j^perm, k^perm) < IntersectionNumber(B, i, j, k) then
							return true;
						fi;
					od;
				od;
			od;
			return false;
		end;


		if ForAny(Valencies(A), t -> Number(Valencies(A), s -> s =t)>7) then
			# We really only want to do this if we are partitioning certain relations into large groups
			x := Valencies(A){[2 .. NumberOfClasses(A)+1]};
			stab := SymmetricGroup(NumberOfClasses(A));;
			for i in Set(x) do
				y := Filtered([1 .. Size(x)], t -> x[t]=i);;
				stab := Stabiliser(stab, y, OnSets);;
			od;
#			stab := Stabiliser(SymmetricGroup(NumberOfClasses(A)), x, Permuted);	
			# check if the full group is the stabiliser first
			if ForAll(GeneratorsOfGroup(stab), t -> ImageOfIntersectionAlgebra(A, t)=A) then
				rts:=RightTransversal(SymmetricGroup(NumberOfClasses(A)), stab); 
				best := ();
				B := A;
				for h in rts do
					if check_mapped_intersection_numbers_to_depth_less_than_or_equal(A, B, Inverse(h), NumberOfClasses(A)) then
						B:=ImageOfIntersectionAlgebra(A, Inverse(h));
						best := Inverse(h);
					fi;
				od;
				return best;
			fi;
		fi;

		d:=NumberOfClasses(A);
		stack := [[]];
		B:=A;
		best:=();;
		while stack <> [] do
			current := Remove(stack, Size(stack));
			perm:=MappingPermListList([1 .. Size(current)], current);
			if check_mapped_intersection_numbers_to_depth_less_than_or_equal(A, B, perm, Size(current)) then
				if check_mapped_intersection_numbers_to_depth_less_than(A, B, perm, Size(current)) then
					B:=ImageOfIntersectionAlgebra(A, perm);
				fi;
				if Size(current)<d then
					children:=Filtered([1 .. d], t -> not t in current);;
					children:=List(children, t -> Concatenation(current, [t]));;
					Append(stack, children);
				else
					best:=perm;
				fi;
			fi;
		od;
		return best;
	end);



InstallMethod(CanonicalFormOfIntersectionAlgebra, [IsIntersectionAlgebraObject],
	function(A)
		local perm, B, P, P2, i, j;
		perm := CanonisingMap(A);;
	    B := ImageOfIntersectionAlgebra(A, perm);
	    if HasMatrixOfEigenvalues(A) and MatrixOfEigenvalues(A) <> fail then
		    P:=MatrixOfEigenvalues(A);
			P2:=NullMat(Size(P), Size(P));;
			P2:=P2+1;;
			for i in [1 .. Size(P2)] do
				for j in [1 .. Size(P[1])-1] do
					P2[i][j+1]:=P[i][j^perm + 1];
				od;
			od;
#			if IntersectionAlgebraFromMatrixOfEigenvalues(P2)=B then
				SetMatrixOfEigenvalues(B, P2);
#			fi;
		fi;
		return B;
	end);


InstallMethod( AutomorphismGroup,
			 [IsIntersectionAlgebraObject],
	function(A)
	local check_mapped_intersection_numbers_to_depth, d, stack, current, perm, children, auts, g, gens, x, stab, y, i;
		check_mapped_intersection_numbers_to_depth := function(A, perm, depth)
			local i, j, k;
			for i in [1 .. depth] do
				for j in [1 .. depth] do
					for k in [1 .. depth] do
						if IntersectionNumber(A, i^perm, j^perm, k^perm) <> IntersectionNumber(A, i, j, k) then
							return false;
						fi;
					od;
				od;
			od;
			return true;
		end;

		if ForAny(Valencies(A), t -> Number(Valencies(A), s -> s =t)>7) then
			# We really only want to do this if we are partitioning certain relations into large groups
#			x := Valencies(A){[2 .. NumberOfClasses(A)+1]};
#			stab := Stabiliser(SymmetricGroup(NumberOfClasses(A)), x, Permuted);
			x := Valencies(A){[2 .. NumberOfClasses(A)+1]};
			stab := SymmetricGroup(NumberOfClasses(A));;
			for i in Set(x) do
				y := Filtered([1 .. Size(x)], t -> x[t]=i);;
				stab := Stabiliser(stab, y, OnSets);;
			od;
			if ForAll(GeneratorsOfGroup(stab), t -> ImageOfIntersectionAlgebra(A, t)=A) then
				return stab; # check the obvious group first! The automorphism group must keep the valencies the same
			fi;
		fi;

		auts:=[];
		d:=NumberOfClasses(A);
		stack := [[]];
		while stack <> [] do
			current := Remove(stack, Size(stack));
			perm:=MappingPermListList([1 .. Size(current)], current);
			if check_mapped_intersection_numbers_to_depth(A, perm, Size(current)) then
				if Size(current)=d then
					if auts = [] then
						Add(auts, perm);
					elif not perm in Group(auts) then
						Add(auts, perm);
					fi;
				else
					children:=Filtered([1 .. d], t -> not t in current);;
					children:=List(children, t -> Concatenation(current, [t]));;
					Append(stack, children);
				fi;
			fi;
		od;
		return Group(auts);
	end);