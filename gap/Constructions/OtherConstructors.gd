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
#! @Arguments CC1, CC2
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes two homogeneous coherent configurations CC1 and CC2 and returns their direct product.
DeclareOperation( "DirectProductOfHomogeneousCoherentConfigurations", [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration]);

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Constructor methods
#! @Arguments CC1, CC2
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes two homogeneous coherent configurations CC1 and CC2 and returns their wreath product.
DeclareOperation( "WreathProductOfHomogeneousCoherentConfigurations", [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration]);

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Constructor methods
#! @Arguments A
#! @Returns Association scheme
#! @Description
#!	Returns the bipartite double of an associatiojn scheme.
DeclareOperation( "BipartiteDoubleOfAssociationScheme", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Constructor methods
#! @Arguments A
#! @Returns Association scheme
#! @Description
#!	Given a cometric association scheme satisfying $b_j^{*} + c_{j+1}^{*} = m +1$ for $0 \leq j \leq d-1 $, returns the extended Q-bipartite double.
DeclareOperation( "ExtendedQBipartiteDouble", [IsHomogeneousCoherentConfiguration]);
