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

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Constructor methods
#! @Arguments n, q
#! @Returns homogeneous coherent configuration
#! @Description
#!	Returns the Hamming scheme, $H(n, q)$.
DeclareOperation("HammingScheme", [IsPosInt, IsPosInt]);

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Bose-Mesner algebra
#! @Arguments n, q
#! @Returns P
#! @Description
#!	Returns matrix of eigenvalue $P$ for the Hamming scheme, $H(n, q)$.
DeclareOperation("MatrixOfEigenvaluesOfHammingScheme", [IsPosInt, IsPosInt]);
