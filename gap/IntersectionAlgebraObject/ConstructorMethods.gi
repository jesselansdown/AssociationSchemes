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

InstallMethod(GrassmannSchemeIntersectionAlgebra,
			[IsPosInt, IsPosInt, IsPosInt],
	function( n, k, q)
		local A;
		return IntersectionAlgebraFromMatrixOfEigenvalues(MatrixOfEigenvaluesOfGrassmannScheme(n, k, q));
	end);

