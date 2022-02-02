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

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments B
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes a list of intersection matrices, B, and returns the Intersection Algebra. The intersection matrix $(B_i)_{jk} = p_{ij}^k$ must be for valid
#!  intersection numbers $p_{ij}^k$ for some homogeneous coherent configuration.
DeclareOperation( "IntersectionAlgebra", [ IsList ] );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of the intersection matrices of an intersecgion algebra object, $CC$, where the $i$-th entry of $L$
#!	is $B_{i-1}$ and $(B_{i})_{jk} = p_{ij}^k$.
DeclareAttribute("IntersectionMatrices", IsIntersectionAlgebraObject);

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC, i, j, k
#! @Returns $p_{ij}^k$
#! @Description
#!	Returns the intersection number $p_{ij}^k$ for a intersection algebra.
DeclareOperation( "IntersectionNumber", [IsIntersectionAlgebraObject, IsInt, IsInt, IsInt]);

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns d
#! @Description
#!	Returns $d$ for a $d$-class intersection algebra.
DeclareAttribute( "NumberOfClasses", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of valencies of a coherent configuration CC. The $i$-th entry of $L$ is $k_{i-1}$.
DeclareAttribute( "Valencies", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns n
#! @Description
#!	Returns the order $n$ (number of vertices) of the intersection algebra.
DeclareAttribute( "Order", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns F
#! @Description
#!	Returns the splitting field of the CC
DeclareAttribute( "SplittingField", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns true if the splitting field is the rationals, false otherwise.
DeclareProperty( "HasRationalSplittingField", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC, i, j, k
#! @Returns $q_{i,j}^k$
#! @Description
#!	Compute the krein parameter $q_{i,j}^k$ of a commutative intersection algebra.
DeclareOperation( "KreinParameter", [ IsIntersectionAlgebraObject, IsInt, IsInt, IsInt ] );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns L
#! @Description
#!	Return a list $L$ of all Krein parameters of a commutative intersection algebra,
#!	where $L[i][j,k] = q_{i,j}^k$.
DeclareAttribute( "KreinParameters", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the intersection algebra CC is Q-bipartite.
DeclareProperty( "IsQBipartite", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the intersection algebra CC is bipartite.
DeclareProperty( "IsPBipartite", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the intersection algebra CC is Q-antipodal.
DeclareProperty( "IsQAntipodal", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the intersection algebra CC is antipodal.
DeclareProperty( "IsPAntipodal", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC, L
#! @Returns coherent configuration
#! @Description
#!	Takes a intersection algebra CC and a list L, where L is a reordering of the relations.
#!	Returns an intersection algebra where the $i$-th relation of the CC becomes the $j$-th relation in 
#!	the intersection algebra, where $j = L_i$. Note that $L_i$ must be equal to $\{0, \ldots, d \}$
#!	as a set, and additionally requires that $L_1 = 0$.
DeclareOperation( "ReorderRelations", [ IsIntersectionAlgebraObject, IsList ] );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC, L
#! @Returns coherent configuration
#! @Description
#!	Takes an intersection algebra CC and a list L, where L is a reordering of the minimal idempotents.
#!	Returns an intersection algebra where the $i$-th idempotent of the CC becomes the $j$-th idempotent in 
#!	the new intersection algebra, where $j = L_i$. Note that $L_i$ must be equal to $\{0, \ldots, d \}$
#!	as a set, and additionally requires that $L_1 = 0$.
DeclareOperation( "ReorderMinimalIdempotents", [ IsIntersectionAlgebraObject, IsList ] );


#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns true (Displays relation distribution diagram)
#! @Description
#!	Take a CC and display the relation-distribution diagram with respect to $R_1$.
DeclareOperation( "ViewRelationDistributionDiagram", [ IsIntersectionAlgebraObject ] );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a commutative intersection algebra.
DeclareProperty( "IsCommutative", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a symmetric intersection algebra.
DeclareProperty( "IsSymmetricIntersectionAlgebra", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Core functionality
#! @Arguments CC
#! @Returns n
#! @Description
#!	Returns the number $n$ of characters of CC.
DeclareAttribute("NumberOfCharacters", IsIntersectionAlgebraObject);
