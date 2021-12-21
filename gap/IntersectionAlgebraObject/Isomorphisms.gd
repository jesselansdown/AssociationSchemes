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

#! @Chapter Intersection Algebra objects
#! @Section Automorphisms and maps
#! @Arguments $A$, $\sigma$
#! @Returns true $A^\sigma$
#! @Description
#!	Take a $d$-class intersection algebra $A$ and return its image under the permutation $\sigma \in Sym([1 .. d])$.
#!  If $p_{ij}^k$ is an intersection number of $A$, then in the image the intersection number is $p_{i^\sigma j^\sigma}^{k^\sigma}$
DeclareOperation( "ImageOfIntersectionAlgebra", [ IsIntersectionAlgebraObject, IsPerm ] );

#! @Chapter Intersection Algebra objects
#! @Section Automorphisms and maps
#! @Arguments $A$, $B$
#! @Returns $\sigma$
#! @Description
#!	Take two $d$-class intersection algebras $A$ and $B$ and return $\sigma \in Sym([1 .. d])$ such that $A^\sigma = B$.
DeclareOperation( "IsomorphismIntersectionAlgebras", [ IsIntersectionAlgebraObject, IsIntersectionAlgebraObject ] );

#! @Chapter Intersection Algebra objects
#! @Section Automorphisms and maps
#! @Arguments $A$, $B$
#! @Returns $\sigma$
#! @Description
#!	Take two $d$-class intersection algebras $A$ and $B$ and return true if they are isomorphic. Return false otherwise.
DeclareOperation( "AreIsomorphicIntersectionAlgebras", [ IsIntersectionAlgebraObject, IsIntersectionAlgebraObject ] );

#! @Chapter Intersection Algebra objects
#! @Section Automorphisms and maps
#! @Arguments A
#! @Returns perm
#! @Description
#!	Returns two permutations which will produce the canonical form of the intersection algebra A.
#!	The canonical form can be obtained by ImageOfIntersectionAlgebra(A, perm)
#!  Any intersection algebra which is isomorphic to A will the same canonical form.
DeclareAttribute( "CanonisingMap", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Automorphisms and maps
#! @Arguments A
#! @Returns B
#! @Description
#!	Returns the canonical form, B, of the intersection algebra A.
#!	Any intersection algebra which is isomorphic to A will have B as the canonical form.
DeclareOperation("CanonicalFormOfIntersectionAlgebra", [IsIntersectionAlgebraObject]);

#! @Chapter Intersection Algebra objects
#! @Section Automorphisms and maps
#! @Arguments A
#! @Returns G
#! @Description
#!	Returns the automorphism group $G$ of the intersection algebra object A.
#!	$G$ is a permutation group acting on the relations, such that for all $g \in G$, $p_{i^g j^g}^{k^g} = p_{ij}^k$.
DeclareAttribute( "AutomorphismGroup", IsIntersectionAlgebraObject );
