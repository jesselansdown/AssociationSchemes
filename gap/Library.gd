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
#! @Section Library
#! @Arguments n, k
#! @Returns homogeneous coherent configuration
#! @Description
#!	Returns the $k$-th homogeneous coherent configuration of order $n$. Library is complete for $5 \le n \le 38$ excluding
#!	$n \in \{35, 36, 37\}$, corresponding to <Cite Key="Hanaki"/>. Thin schemes are are assigned numbers after those in <Cite Key="Hanaki"/>.
DeclareOperation( "HomogeneousCoherentConfiguration", [ IsPosInt, IsPosInt ] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Library
#! @Arguments n
#! @Returns m
#! @Description
#!	Returns the number $m$ of homogeneous coherent configuration of order $n$ contained in the library.
DeclareOperation( "NumberOfHomogeneousCoherentConfigurations", [ IsPosInt ] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Library
#! @Arguments 
#! @Returns L
#! @Description
#!	Returns a list $L$ of the orders for which the library contains homogeneous coherent configurations.
DeclareOperation( "AvailableHomogeneousCoherentConfigurations", [  ] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Library
#! @Arguments n
#! @Returns L
#! @Description
#!	Returns a list $L$ of all homogeneous coherent configuration of order $n$.
DeclareOperation( "AllHomogeneousCoherentConfigurations", [ IsPosInt ] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Library
#! @Arguments CC
#! @Returns id
#! @Description
#!	Returns the identification, id, of the homogeneous coherent configuration in the library which is is isomorphic to CC. Thus HomogeneousCoherentConfiguration(n, id) will be isomorphic to CC, where n is the order of CC.
DeclareAttribute( "SmallSchemeIdentification", IsHomogeneousCoherentConfiguration );