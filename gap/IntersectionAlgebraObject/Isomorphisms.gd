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
#! @Arguments $A$, $\sigma$
#! @Returns true $A^\sigma$
#! @Description
#!	Take a $d$-class intersection algebra $A$ and return its image under the permutation $\sigma \in Sym([1 .. d])$.
#!  If $p_{ij}^k$ is an intersection number of $A$, then in the image the intersection number is $p_{i^\sigma j^\sigma}^{k^\sigma}$
DeclareOperation( "ImageOfIntersectionAlgebra", [ IsIntersectionAlgebraObject, IsPerm ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments $A$, $B$
#! @Returns $\sigma$
#! @Description
#!	Take two $d$-class intersection algebras $A$ and $B$ and return $\sigma \in Sym([1 .. d])$ such that $A^\sigma = B$.
DeclareOperation( "AreIsomorphicIntersectionAlgebras", [ IsIntersectionAlgebraObject, IsPerm ] );
