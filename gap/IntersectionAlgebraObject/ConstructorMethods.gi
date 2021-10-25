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

InstallMethod(IntersectionAlgebraFromMatrixOfEigenvalues,
            [IsMatrix],
	function(P)
		local d, n, Q, intersection_number, A, i, j, k, intersection_matrices;

		d:=Size(P)-1;
		n:=Sum(P[1]);;
		Q:=Inverse(P)*n;;

		intersection_number := function(P , Q, n, d, i, j, k)
			local s,l;
			s := 0;
			for l in [0 .. d] do
				s := s + Q[1][l+1] * P[l+1][i+1] * P[l+1][j+1] * ComplexConjugate(P[l+1][k+1]);;
			od;
			return s / (n*P[1][k+1]) ;
		end;

		intersection_matrices := List([1 .. d+1], t -> NullMat(d+1, d+1));;
		for i in [0 .. d] do
			for j in [0 .. d] do
				for k in [0 .. d] do
					intersection_matrices[j+1][i+1, k+1]:=intersection_number(P, Q, n, d, i, j, k);
				od;
			od;
		od;
		A := IntersectionAlgebra(intersection_matrices);;
		SetMatrixOfEigenvalues(A, P);
		SetDualMatrixOfEigenvalues(A, Q);
		return A;
	end);

InstallMethod(HammingSchemeIntersectionAlgebra,
			[IsPosInt, IsPosInt],
	function( n, q)
		local A;
		return IntersectionAlgebraFromMatrixOfEigenvalues(MatrixOfEigenvaluesOfHammingScheme(n, q));
	end);

InstallMethod(GrassmanSchemeIntersectionAlgebra,
			[IsPosInt, IsPosInt, IsPosInt],
	function( n, k, q)
		return IntersectionAlgebraFromMatrixOfEigenvalues(MatrixOfEigenvaluesOfGrassmannScheme(n, k, q));
	end);

InstallMethod(CyclotomicSchemeIntersectionAlgebra,
			[IsPosInt, IsPosInt],
	function( n, d)
		return IntersectionAlgebraFromMatrixOfEigenvalues(MatrixOfEigenvaluesOfCyclotomicScheme(n, d));
	end);

InstallMethod(IntersectionAlgebraFromIntersectionArray,
			[IsList],
	function( inter )
		local intersection_number, a, b, c, i, j, k, d, k0, inter_mats;
		intersection_number := function(a, b, c, i, j, k)

			if i = 1 then
				if j = k then
					return a[k +1];
				elif j = k + 1 then
					return b[k +1];
				elif j = k -1 then
					return c[k +1];
				else
					return 0;
				fi;
			fi;
			if i = 0 then
				if j = k then
					return 1;
				else
					return 0;
				fi;
			fi;
			if k = 0 then
				if i = j then
					return intersection_number(a, b, c, i-1, i-1, k)*b[i]/c[i +1];
				else return
					0;
				fi;
			fi;
			if i > Size(a)-1 or j > Size(a)-1 or k>Size(a)-1 then
				return 0;
			fi;
			return 
			(
			intersection_number(a, b, c, i-1, j, k-1) * c[k +1] +
			intersection_number(a, b, c, i-1, j, k) * a[k +1] +
			intersection_number(a, b, c, i-1, j, k+1) * b[k +1] -
			intersection_number(a, b, c, i-2, j, k) * b[i-2 +1] -
			intersection_number(a, b, c, i-1, j, k) *  a[i-1 +1]
			)/c[i +1];

		end;

		d:=Size(inter[1]);
		b:= MutableCopyMat(inter[1]);;
		k0:=b[1];
		Add(b, 0);;
		c:= MutableCopyMat(inter[2]);;
		c:=Concatenation([0], c);;
		a := List([0 .. d], t -> k0 - b[t+1] - c[t+1]);;
		Add(a, 0);;
		Add(b, 0);;
		Add(c, 0);;

		inter_mats := List([0 .. d], t -> NullMat(d+1, d+1));
		for i in [0 .. d] do
			for j in [0 .. d] do
				for k in [0 .. d] do
					inter_mats[j+1][i+1, k+1] := intersection_number(a,b,c, i, j, k);
				od;
			od;
		od;
		return IntersectionAlgebra(inter_mats);
	end);


InstallMethod( IntersectionAlgebraFromClassicalParameters, [IsList],
  function(classical)
    local gauss, construct_array, inter;

    gauss := function(i, b)
      local o, j;
      o:=0;
      for j in [0 .. i-1] do
        o:=o+b^j;
      od;
      return o;
    end;

    construct_array := function(L)
      local out, i, bi, ci, d, b, alpha, beta;
      d:=L[1];
      b:=L[2];
      alpha:=L[3];
      beta:=L[4];;
      out :=[[], []];
      for i in [0 .. d-1] do
        bi:= (gauss(d, b)-gauss(i,b))*(beta - alpha*gauss(i,b));;
        Add(out[1], bi);;
      od;
      for i in [1 .. d] do
        ci:= gauss(i, b)*(1+alpha*gauss(i-1, b));;
        Add(out[2], ci);
      od;
      return out;
    end;

	inter := construct_array(classical);;
	return IntersectionAlgebraFromIntersectionArray(inter);;
  end);

InstallMethod( IntersectionAlgebraFromStronglyRegularGraphParameters, [IsPosInt, IsPosInt, IsInt, IsInt],
  function(n, k, L, U)
	local P;
		P:=NullMat(3,3);;
		P[1][1]:=1;
		P[2][1]:=1;
		P[3][1]:=1;
		P[1][2]:=k;
		P[1][3]:=n-k-1;
		P[2][2]:=((L-U)+Sqrt((L-U)^2 + 4*(k-U)))/2;
		P[2][3]:= -P[2][2]-1;
		P[3][2]:=((L-U)-Sqrt((L-U)^2 + 4*(k-U)))/2;
		P[3][3]:= -P[3][2]-1;
		return IntersectionAlgebraFromMatrixOfEigenvalues(P);
  end);

InstallMethod(IsFusionOfHomogeneousCoherentConfiguration,
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