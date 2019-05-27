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

InstallMethod(MatrixOfEigenvaluesOfGrassmannScheme,
            [IsPosInt, IsPosInt, IsPosInt],
    function( n, k, q)
    	local P, j, i, d, p, s;
    	P:=NullMat(k+1, k+1);;
    	d := Minimum(k, n-k);
    	for j in [0 .. k] do
    		for i in [0 .. k] do
				p := 0;
				for s in [0 .. i] do
					p := p + (-1)^(i+s) * GaussianCoefficient(d-s, i-s, q) * GaussianCoefficient(d-j, s, q) * GaussianCoefficient(n-d+s-j,s, q) * q^(s*j+(i-s)*(i-s-1)/2);
				od;
				P[j+1,i+1]:=p;
			od;
		od;
		return P;
	end);

InstallMethod(GrassmannScheme,
			[IsPosInt, IsPosInt, IsPosInt],
	function( n, k, q)
		local pg, g, maximals, g_perm, A;;
		g:=GL(n,q);
		maximals := AsList(Subspaces(GF(q)^n, k));;
		maximals := List(maximals, GeneratorsOfLeftOperatorAdditiveGroup);;
		# order maximals with respect to CMat's ordering
		# FYI: CVEC_CVEC_LT is kernel code ... complicated!
		maximals := Set(maximals, t -> NewMatrix(IsCMatRep,GF(q),n,t) );;
		maximals := List(maximals, Unpack);;
		g_perm:=Action(g, maximals,OnSubspacesByCanonicalBasis);;
		A := SchurianScheme(g_perm);;
		SetMatrixOfEigenvalues(A, MatrixOfEigenvaluesOfGrassmannScheme(n, k, q));
		return A;
	end);
