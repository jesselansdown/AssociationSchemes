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



InstallMethod(MatrixOfEigenvaluesOfJohnsonScheme,
            [IsPosInt, IsPosInt],
    function( n, k )
    local i, j, T, a;
    
 
    T := NullMat(k+1, k+1);
    for i in [0..k] do
        for j in [0..k] do
            for a in [0..i] do
                T[j+1][i+1] := T[j+1][i+1] + (-1)^(i-a) * Binomial(k-a, i-a)
                               * Binomial(k-j, a) * Binomial(n-k+a-j, a);
            od;
        od;
    od;
     return T;
end);

# can also directly calculate valencies.

InstallMethod(JohnsonScheme,
			[IsPosInt, IsPosInt],
	function( n, k )
		local G, H, A;
	    G := SymmetricGroup(n);
	    H := Stabiliser(G, [1..k], OnSets);;
        A := HomogeneousCoherentConfigurationByOrbitals(G, H);
        SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A), MatrixOfEigenvaluesOfJohnsonScheme(n, k));
        SetDescription(A, [Concatenation("Johnson scheme, J(", String(n), ",", String(k), ")")]);
        return A;
	end);
