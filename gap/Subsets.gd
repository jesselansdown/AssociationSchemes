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
#! @Arguments Omega, X
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
#! @Chapter Functionality
#! @Section Subsets
#! @Arguments v, CC
#! @Returns a
#! @Description
#!	Returns the inner distribution $a$ of a vector v with respect to the adjacency matrices of
#!	the coherent configuration CC. Note that v must be a vector over R^n where n is
#!	the order of CC. CC must be commutative.
DeclareOperation( "InnerDistribution", [IsHomogeneousCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Subsets
#! @Arguments v, CC
#! @Returns aQ
#! @Description
#!	Returns the MacWilliams transform $aQ$ of a vector $v$ with respect to a
#!	coherent confiiguration CC. Takes either a vector $v$ in $R^n$ and converts it to its
#!	inner distribution vector first, or takes the inner distribution directly.
DeclareOperation( "MacWilliamsTransform", [IsHomogeneousCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Subsets
#! @Arguments CC, p
#! @Returns L
#! @Description
#!	Returns a list $L$ with the dual Bose-Mesner basis of a homogeneous coherent configuration with respect to the point p,
#!  such that $L_i = \tilde E_{i-1}$.
DeclareOperation( "DualBoseMesnerBasis", [IsHomogeneousCoherentConfiguration, IsPosInt]);

#! @Chapter Functionality
#! @Section Subsets
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list $L$ with the dual Bose-Mesner basis of a homogeneous coherent configuration with respect to the first point,
#!  such that $L_i = \tilde E_{i-1}$.
DeclareOperation( "DualBoseMesnerBasis", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Subsets
#! @Arguments v, CC
#! @Returns B
#! @Description
#!	Returns the outer distribution $B$ of a vector $v$ with respect to the adjacency matrices of
#!	the coherent configuration CC. Note that $v$ must be a vector over $R^n$ where n is
#!	the order of CC. CC must be commutative.
DeclareOperation( "OuterDistribution", [IsHomogeneousCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Subsets
#! @Arguments CC, S
#! @Returns T
#! @Description
#!	Returns T such that S is a Delsarte T-design, that is, $\chi_S E_i =0$ for all $i \in T$.
#!  S must be a subset of the vertices.
DeclareOperation( "DelsarteDesignType", [IsHomogeneousCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Subsets
#! @Arguments CC, S
#! @Returns T
#! @Description
#!	Returns T such that v is a (weighted) Delsarte T-design, that is, $v E_i =0$ for all $i \in T$.
#!  v must be a weighted characteristic vector with respect to the vertices.
DeclareOperation( "WeightedDelsarteDesignType", [IsHomogeneousCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Subsets
#! @Arguments CC, S
#! @Returns true or false
#! @Description
#!	Checks that S is a (weighted) Delsarte T-design, that is, $\chi_S E_i =0$ for all $i \in T$.
#!  S must be either a subset of the vertices, or a weighted characteristic vector with respect to the vertices.
DeclareOperation( "IsDelsarteTDesign", [IsHomogeneousCoherentConfiguration, IsList, IsList]);

#! @Chapter Functionality
#! @Section Subsets
#! @Arguments CC, S
#! @Returns K
#! @Description
#!	Returns the dual degree set K for a set S, that is, $\chi_S E_i \neq 0$ for all $i \in K$.
#!  S must be a subset of the vertices.
DeclareOperation( "DualDegreeSet", [IsHomogeneousCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Subsets
#! @Arguments CC, S
#! @Returns K
#! @Description
#!	Returns the dual degree set K for a set S, that is, $v E_i \neq 0$ for all $i \in K$.
#!  v must be a (weighted) characteristic vector with restpect to the vertices.
DeclareOperation( "WeightedDualDegreeSet", [IsHomogeneousCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Subsets
#! @Arguments CC, S1, S2
#! @Returns true or false
#! @Description
#!	If S1 and S2 are either subsets of vertices, or (weighted) characteristic vectors,
#!  this checks that they are design orthogonal, that is, their dual degree sets are disjoint.
DeclareOperation( "AreDesignOrthogonal", [IsHomogeneousCoherentConfiguration, IsList, IsList]);