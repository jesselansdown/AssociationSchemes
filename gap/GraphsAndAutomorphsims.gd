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
#! @Section Graphs, automorphisms, and maps
#! @Arguments CC, k
#! @Returns homogeneous coherent configuration
#! @Description
#!	Returns the digraph object associated with the k-th relation of a homogeneous coherent configuration CC. Note that the identity relation is excluded.
DeclareOperation( "Digraph", [ IsHomogeneousCoherentConfiguration, IsPosInt ] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Graphs, automorphisms, and maps
#! @Arguments CC, S
#! @Returns homogeneous coherent configuration
#! @Description
#!	Returns the digraph object which is a union of the relations of a homogeneous coherent configuration CC given by the set S. Note that the identity relation is excluded.
DeclareOperation( "Digraph", [ IsHomogeneousCoherentConfiguration, IsList ] );

DeclareOperation("SchemeToGraph", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Graphs, automorphisms, and maps
#! @Arguments CC
#! @Returns G
#! @Description
#!	Returns the automorphism group $G$ of the coherent configuration CC.
#!	$G$ is a permutation group acting on the index set of the vertices.
DeclareAttribute( "AutomorphismGroup", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Graphs, automorphisms, and maps
#! @Arguments CC, p, $\sigma$
#! @Returns true or false
#! @Description
#!	For a $d$-class homogeneous coherent configuration with relation matrix $M$ and order $n$, takes a permutation $p$ on the set
#!		$\{1 .. n\}$ and permutation $\sigma$ on the set $\{1 .. d\}$ and returns the $d$-class homogenous coherent configuration with
#!		relation matrix $P^{-1} M^\sigma P$, where $P$ is the permutation matrix defined by $\sigma$.
DeclareOperation("ImageOfHomogeneousCoherentConfiguration", [IsHomogeneousCoherentConfiguration, IsPerm, IsPerm]);

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Graphs, automorphisms, and maps
#! @Arguments A, B
#! @Returns true or false
#! @Description
#! If there exists a permutation matrix $P$ and permutation $\sigma$ such that if $M$ is the relation matrix of $A$, then 
#!	$P^{-1} M^\sigma P$ is the relation matrix of $B$, then the operation will return $[p, \sigma]$, where $p$ is the permutation
#!	defining $P$. If no such $P$ and $\sigma$ exist, then the operation will return fail.
DeclareOperation("IsomorphismHomogeneousCoherentConfigurations", [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration]);

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Graphs, automorphisms, and maps
#! @Arguments A, B
#! @Returns true or false
#! @Description
#! If there exists a permutation matrix $P$ and permutation $\sigma$ such that if $M$ is the relation matrix of $A$, then 
#!	$P^{-1} M^\sigma P$ is the relation matrix of $B$, then the operation will return true. Returns false otherwise.
DeclareOperation("AreIsomorphicHomogeneousCoherentConfigurations", [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration]);

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Graphs, automorphisms, and maps
#! @Arguments CC
#! @Returns [perm1, perm2]
#! @Description
#!	Returns two permutations which will produce the canonical form of the homogeneous coherent configuration CC.
#!	The canonical form can be obtained by ImageOfHomogeneousCoherentConfiguration(CC, perm1, perm2)
#!  Any homogenouse coherent configuration which is isomorphic to CC will the same canonical form.
DeclareAttribute( "CanonisingMap", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Graphs, automorphisms, and maps
#! @Arguments CC
#! @Returns CC2
#! @Description
#!	Returns the canonical form, CC2, of the homogeneous coherent configuration CC.
#!	Any homogenouse coherent configuration which is isomorphic to CC will have CC2 as the canonical form.
DeclareOperation("CanonicalFormOfHomogeneousCoherentConfiguration", [IsHomogeneousCoherentConfiguration]);
