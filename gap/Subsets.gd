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

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments X, Omega
#! @Returns $\chi_X$
#! @Description
#!	Takes a subset X of Omega and returns the characteristic vector. The characteristic vector is a
#!	0,1-vector indexed by the entries of Omega, with a 1 at position x if x is in X, and 0 otherwise.
DeclareOperation( "CharacteristicVector", [IsList, IsList]);

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments X, n
#! @Returns $\chi_X$
#! @Description
#!	Takes a subset X of of [1 .. n] and returns the characteristic vector $chi_X$.
DeclareOperation( "CharacteristicVector", [IsList, IsPosInt]);