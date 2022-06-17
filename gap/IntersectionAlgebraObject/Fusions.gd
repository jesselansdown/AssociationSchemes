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
#! @Section Fusions
#! @Arguments CC, L
#! @Returns true or false
#! @Description
#!	Takes a $d$-class homogeneous coherent configuration CC, and checks if the partion 
#!	L of $\{0, \ldots, d\}$ corresponds to a valid fusion.
DeclareOperation( "IsFusionOfIntersectionAlgebra", [IsIntersectionAlgebraObject, IsList]);

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC, L
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes a $d$-class homogeneous coherent configuration CC and returns a fusion scheme corresponding to L,
#!	where L is a partion of $\{0, \ldots, d\}$. Note that the ordering of the cells of L is irrelevant.
#!  The method will sort the fused relations according to the smallest value in each cell.
DeclareOperation( "FusionOfIntersectionAlgebra", [IsIntersectionAlgebraObject, IsList]);

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of either tuples or singletons, corresponding to relations and their converses or symmetric relations.
DeclareAttribute( "ConverseRelationPairs", IsIntersectionAlgebraObject);

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC, i
#! @Returns j
#! @Description
#!	Returns j such that $R_j = R_i^\top$, the converse relation of $i$	.
DeclareOperation( "ConverseRelation", [IsIntersectionAlgebraObject, IsInt]);


#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	If the fusion of transposed relations produces a valid association scheme, then CC is stratifiable.
DeclareAttribute( "IsStratifiable", IsIntersectionAlgebraObject);

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC
#! @Returns Association scheme
#! @Description
#!	Given a homogeneous coherent configuration, CC, the symmetrisation is computed if possible, otherwise fail is returned.
#!	The symmetrisation of a homogeneous coherent configuration takes any non-symmetric relations and fuses them together.
#!	The result may or may not be a valid homogeneous coherent configuration. If it is valid, then it is an association scheme
#!  (Symmetric coherent configuration). If CC is commutative, then it can be symmetrised.
DeclareOperation( "SymmetrisationOfIntersectionAlgebra", [IsIntersectionAlgebraObject]);

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC [k [, flag ]]
#! @Returns list of feasibly fusionable relations
#! @Description
#!	Returns a list where each entry is a collection of relations which may be fused to form a feasible homogeneous coherent configuration
#!  Trivial means either no relations are fused, or all non-identity relations are fused.
#!  If the additional argument k is given, only fusions with k-classes are returned. If flag is also given
#! 	and is equal to true, then all fusions with at most k-classes are returned.
DeclareAttribute( "FeasibleNonTrivialFusionsOfIntersectionAlgebra", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC
#! @Returns List of all non-trivial fusions of CC
#! @Description
#!	Returns a list of all homogeneous coherent configurations such that each element of the list is a non-trivial fusion of CC.
#!  Trivial means either no relations are fused, or all non-identity relations are fused.
#!  If the additional argument k is given, only fusions with k-classes are returned. If flag is also given
#! 	and is equal to true, then all fusions with at most k-classes are returned.
DeclareOperation( "AllNonTrivialFusionsOfIntersectionAlgebra", [IsIntersectionAlgebraObject]);

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC
#! @Returns List of all fusions of CC
#! @Description
#!	Returns a list of all homogeneous coherent configurations such that each element of the list is a fusion of CC.
#!  Includes trivial fusions, i.e the original homogeneous coherent configuration, and the coherent configuration resulting
#!  from the fusion of all non-identity relations
DeclareOperation( "AllFusionsOfIntersectionAlgebra", [IsIntersectionAlgebraObject]);

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC
#! @Returns list of feasibly fusionable relations
#! @Description
#!	Returns a list where each entry is a collection of relations which may be fused to form a feasible association scheme (i.e. relations are symmetric)
#!  Trivial means either no relations are fused, or all non-identity relations are fused.
#!  If the additional argument k is given, only fusions with k-classes are returned. If flag is also given
#! 	and is equal to true, then all fusions with at most k-classes are returned.
DeclareAttribute( "FeasibleNonTrivialSymmetricFusionsOfIntersectionAlgebra", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC
#! @Returns List of all non-trivial fusions of CC
#! @Description
#!	Returns a list of all association schemes (i.e symmetric relations) such that each element of the list is a non-trivial fusion of CC.
#!  Trivial means either no relations are fused, or all non-identity relations are fused.
#!  If the additional argument k is given, only fusions with k-classes are returned. If flag is also given
#! 	and is equal to true, then all fusions with at most k-classes are returned.
DeclareOperation( "AllNonTrivialSymmetricFusionsOfIntersectionAlgebra", [IsIntersectionAlgebraObject]);

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC
#! @Returns List of all fusions of CC
#! @Description
#!	Returns a list of all association schemes (i.e symmetric relations) such that each element of the list is a fusion of CC.
#!  Includes trivial fusions, i.e the original homogeneous coherent configuration (if it is an association scheme), and the coherent configuration resulting
#!  from the fusion of all non-identity relations
DeclareOperation( "AllSymmetricFusionsOfIntersectionAlgebra", [IsIntersectionAlgebraObject]);

#! @Chapter Intersection Algebra objects
#! @Section Fusions
#! @Arguments CC
#! @Returns list of feasibly fusionable relations
#! @Description
#!	Returns a list of relations which may be fused to form a feasible association scheme (i.e. relations are symmetric), if possible.
#!  Returns fail if no nontrivial fusion exists.
#!  Trivial means either no relations are fused, or all non-identity relations are fused.
DeclareAttribute( "FirstFeasibleNonTrivialSymmetricFusionOfIntersectionAlgebra", IsIntersectionAlgebraObject );