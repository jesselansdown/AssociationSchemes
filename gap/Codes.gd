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
#! @Arguments v, CC
#! @Returns a
#! @Description
#!	Returns the inner distribution $a$ of a vector v with respect to the adjacency matrices of
#!	the coherent configuration CC. Note that v must be a vector over R^n where n is
#!	the order of CC. CC must be commutative.
DeclareOperation( "InnerDistribution", [IsList, IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments v, CC
#! @Returns aQ
#! @Description
#!	Returns the MacWilliams transform $aQ$ of a vector $v$ with respect to a
#!	coherent confiiguration CC. Takes either a vector $v$ in $R^n$ and converts it to its
#!	inner distribution vector first, or takes the inner distribution directly.
DeclareOperation( "MacWilliamsTransform", [IsList, IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments CC, p
#! @Returns L
#! @Description
#!	Returns a list $L$ with the dual Bose-Mesner basis of a homogeneous coherent configuration with respect to the point p,
#!  such that $L_i = \tilde E_{i-1}$.
DeclareOperation( "DualBoseMesnerBasis", [IsHomogeneousCoherentConfiguration, IsPosInt]);

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list $L$ with the dual Bose-Mesner basis of a homogeneous coherent configuration with respect to the first point,
#!  such that $L_i = \tilde E_{i-1}$.
DeclareOperation( "DualBoseMesnerBasis", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments v, CC
#! @Returns B
#! @Description
#!	Returns the outer distribution $B$ of a vector $v$ with respect to the adjacency matrices of
#!	the coherent configuration CC. Note that $v$ must be a vector over $R^n$ where n is
#!	the order of CC. CC must be commutative.
DeclareOperation( "OuterDistribution", [IsList, IsHomogeneousCoherentConfiguration]);
