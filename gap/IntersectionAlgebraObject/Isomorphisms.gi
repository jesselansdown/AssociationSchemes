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
		local d, L, i, j, k, i2, j2, k2;
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
					L[j+1][i+1, k+1]:= IntersectionNumber(A, i2, j2, k2);
				od;
			od;
		od;
		return IntersectionAlgebra(L);
	end);

InstallMethod( AreIsomorphicIntersectionAlgebras,
			 [IsIntersectionAlgebraObject, IsPerm],

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
			return false;
		fi;
		if Order(A) <> Order(B) then
			return false;
		fi;
		if Collected(Valencies(A)) <> Collected(Valencies(B)) then
			return false;
		fi;
		if IsCommutative(A) <> IsCommutative(B) then
			return false;
		fi;
		if Collected(Flat(IntersectionMatrices(A))) <> Collected(Flat(IntersectionMatrices(B))) then
			return false;
		fi;
		if AdmitsMetricOrdering(A) <> AdmitsMetricOrdering(B) then
			return false;
		fi;
		charpolysA := List(IntersectionMatrices(A), CharacteristicPolynomial);;
		charpolysB := List(IntersectionMatrices(A), CharacteristicPolynomial);;
		if Collected(charpolysA) <> Collected(charpolysB) then
			return false;
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
		return false;
	end);
