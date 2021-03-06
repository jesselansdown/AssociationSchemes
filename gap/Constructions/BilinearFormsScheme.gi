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

InstallMethod(BilinearFormsScheme,
			[IsField, IsPosInt, IsPosInt],
	function( F, m, n )
		# m by n matrices A and B are i-related if
		# rank(A-B) = i
    local matrices, l, mat, i, j, cc;
    matrices := AsSet(FullMatrixModule(F, m, n));;
    l := Length(matrices);
	# we can use a group later
	mat := NullMat(l,l);;
	for i in [1..l] do
		for j in [i+1..l] do
			mat[i][j] := Rank(matrices[i]-matrices[j]);
			mat[j][i] := mat[i][j];
		od;
	od;
	cc := HomogeneousCoherentConfigurationNC( mat );
	SetIsSymmetricCoherentConfiguration(cc, true);
	SetDescription(cc, [Concatenation("Bilinear forms scheme, ", String(F), "^", String(m)," x ", String(F), "^", String(m), " -> ", String(F), "^", String(n))]);
	return cc;
end );
