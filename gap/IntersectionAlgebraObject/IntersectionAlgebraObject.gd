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
#! @Section Methods
#! @Arguments CC, i, j, k
#! @Returns $p_{ij}^k$
#! @Description
#!	Returns the intersection number $p_{ij}^k$ for a intersection algebra.
DeclareOperation( "IntersectionNumber", [IsIntersectionAlgebraObject, IsInt, IsInt, IsInt]);

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns d
#! @Description
#!	Returns $d$ for a $d$-class association scheme.
DeclareAttribute( "NumberOfClasses", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of valencies of a coherent configuration CC. The $i$-th entry of $L$ is $k_{i-1}$.
DeclareAttribute( "Valencies", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns n
#! @Description
#!	Returns the order $n$ (number of vertices) of the coherent configuration.
DeclareAttribute( "Order", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns F
#! @Description
#!	Returns the splitting field of the CC
DeclareAttribute( "SplittingField", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns P
#! @Description
#!	Returns a the matrix of eigenvalues (or character table), $P$, for a homogeneous coherent configuration CC.
DeclareAttribute( "MatrixOfEigenvalues", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns Q
#! @Description
#!	Returns a the dual matrix of eigenvalues, $Q$, for a homogeneous coherent configuration CC.
DeclareAttribute( "DualMatrixOfEigenvalues", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Methods
#! @Arguments CC, i, j, k
#! @Returns $q_{i,j}^k$
#! @Description
#!	Compute the krein parameter $q_{i,j}^k$ of a commutative homogeneous coherent configuration.
DeclareOperation( "KreinParameter", [ IsIntersectionAlgebraObject, IsInt, IsInt, IsInt ] );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Return a list $L$ of all Krein parameters of a commutative homogeneous coherent configuration,
#!	where $L[i][j,k] = q_{i,j}^k$.
DeclareAttribute( "KreinParameters", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC is Q-bipartite.
DeclareProperty( "IsQBipartite", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC is bipartite.
DeclareProperty( "IsPBipartite", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC is Q-antipodal.
DeclareProperty( "IsQAntipodal", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC is antipodal.
DeclareProperty( "IsPAntipodal", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC, L
#! @Returns coherent configuration
#! @Description
#!	Takes a homogeneous coherent configuration CC and a list L, where L is a reordering of the relations.
#!	Returns a homogeneous coherent configuration where the $i$-th relation of the CC becomes the $j$-th relation in 
#!	the new homogeneous coherent configuration, where $j = L_i$. Note that $L_i$ must be equal to $\{0, \ldots, d \}$
#!	as a set, and additionally requires that $L_1 = 0$.
DeclareOperation( "ReorderRelations", [ IsIntersectionAlgebraObject, IsList ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC, L
#! @Returns coherent configuration
#! @Description
#!	Takes a homogeneous coherent configuration CC and a list L, where L is a reordering of the minimal idempotents.
#!	Returns a homogeneous coherent configuration where the $i$-th idempotent of the CC becomes the $j$-th idempotent in 
#!	the new homogeneous coherent configuration, where $j = L_i$. Note that $L_i$ must be equal to $\{0, \ldots, d \}$
#!	as a set, and additionally requires that $L_1 = 0$.
DeclareOperation( "ReorderMinimalIdempotents", [ IsIntersectionAlgebraObject, IsList ] );


#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC
#! @Returns true (Displays relation diistribution diagram)
#! @Description
#!	Take a CC and display the relation-distribution diagram with respect to $R_1$.
DeclareOperation( "ViewRelationDistributionDiagram", [ IsIntersectionAlgebraObject ] );

