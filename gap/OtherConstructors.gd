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
#! @Section Constructor Methods
#! @Arguments CC, L
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes a $d$-class homogeneous coherent configuration CC and returns a fusion scheme corresponding to L,
#!	where L is a partion of $\{0, \ldots, d\}$. Returns fail if $L$ is not a valid partition.
DeclareOperation( "FusionOfHomogeneousCoherentConfiguration", [IsHomogeneousCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns list of feasibly fusionable relations
#! @Description
#!	Returns a list where each entry is a collection of relations which may be fused to form a feasible homogeneous coherent configuration
#!  Trivial means either no relations are fused, or all non-identity relations are fused.
DeclareAttribute( "FeasibleNonTrivialFusionsOfHomgeneousCoherentConfiguration", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC
#! @Returns List of all non-trivial fusions of CC
#! @Description
#!	Returns a list of all homogeneous coherent configurations such that each element of the list is a non-trivial fusion of CC.
#!  Trivial means either no relations are fused, or all non-identity relations are fused.
DeclareOperation( "AllNonTrivialFusionsOfHomgeneousCoherentConfiguration", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC
#! @Returns List of all fusions of CC
#! @Description
#!	Returns a list of all homogeneous coherent configurations such that each element of the list is a fusion of CC.
#!  Includes trivial fusions, i.e the original homogeneous coherent configuration, and the coherent configuration resulting
#!  from the fusion of all non-identity relations
DeclareOperation( "AllFusionsOfHomgeneousCoherentConfiguration", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC1, CC2
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes two homogeneous coherent configurations CC1 and CC2 and returns their direct product.
DeclareOperation( "DirectProductOfHomogeneousCoherentConfigurations", [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC1, CC2
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes two homogeneous coherent configurations CC1 and CC2 and returns their wreath product.
DeclareOperation( "WreathProductOfHomogeneousCoherentConfigurations", [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments A
#! @Returns Association scheme
#! @Description
#!	Returns the bipartite double of an associatiojn scheme.
DeclareOperation( "BipartiteDoubleOfAssociationScheme", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments A
#! @Returns Association scheme
#! @Description
#!	Given a cometric association scheme satisfying $b_j^* + c_{j+1}^* = m +1$ for $0 \leq j < d$, returns the extended Q-bipartite double.
DeclareOperation( "ExtendedQBipartiteDouble", [IsHomogeneousCoherentConfiguration]);