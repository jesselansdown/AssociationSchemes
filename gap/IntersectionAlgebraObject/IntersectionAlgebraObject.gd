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



#
# AssociationSchemes: A GAP package for working with association schemes
#

DeclareCategory( "IsIntersectionAlgebraObject", IsObject );

DeclareRepresentation( "IsIntersectionAlgebraObjectRep",
                       IsIntersectionAlgebraObject and IsAttributeStoringRep,
                       [ ] );

BindGlobal( "TheTypeIntersectionAlgebraObject",
        NewType( HomogeneousCoherentConfigurationFamily,
                IsIntersectionAlgebraObjectRep ) );

#BindGlobal("TheTypeAssociationScheme", NewType( AssociationSchemeFamily, IsAssociationScheme ));

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments M
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes the relationship matrix, $M$, describing a homogensous coherent configuration and returns a HomogeneousCoherentConfiguration object.
#!	The matrix $M = \sum_{i=0}^d i A_i$, where $A_i$ are the adjacency matrices describing a coherent configuration.
#!	Checks that the matrix satisfies the axioms of a homogeneous coherent configuration. (Note that this accepts a matrix of the form
#!	$M = \sum_{i=0}^d a_i A_i$ where $a_i$ is not equal to $i$, however, it will first convert to the form $M = \sum_{i=0}^d i A_i$).
DeclareOperation( "IntersectionAlgebra", [ IsList ] );

#! @Chapter Functionality
#! @Section Matrices Describing Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of the intersection matrices of a homogeneous coherent configuration $CC$, where the $i$-th entry of $L$
#!	is $B_{i-1}$ and $(B_{i})_{jk} = p_{ji}^k$.
DeclareAttribute("IntersectionMatrices", IsIntersectionAlgebraObject);

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns d
#! @Description
#!	Returns $d$ for a $d$-class association scheme.
DeclareAttribute( "NumberOfClasses", IsIntersectionAlgebraObject );
