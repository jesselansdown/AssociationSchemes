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

InstallMethod(MatrixOfEigenvaluesOfHammingScheme,
            [IsPosInt, IsPosInt],
    function( n, q )
    	local T, k, i, j;
	    T := NullMat(n+1, n+1);
	    
	    for k in [0..n] do
	        for i in [0..n] do
	            for j in [0..k] do
	                T[i+1][k+1] := T[i+1][k+1] + (-1)^j * (q-1)^(k-j) 
	                               * Binomial(i, j) * Binomial(n-i, k-j);
	            od;
	        od;
	    od;	    
	    return T;
	end);


InstallMethod(HammingScheme,
			[IsPosInt, IsPosInt],
	function( n, q)
		local A;
		A := SchurianAssociationScheme( WreathProductProductAction(SymmetricGroup(q),SymmetricGroup(n)));;
		SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A), MatrixOfEigenvaluesOfHammingScheme(n, q));
		return A;
	end);
