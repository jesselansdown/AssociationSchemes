#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns group or false
#! @Description
#!	Checks if the coherent configuration was constructed by a group and returns it if it was, or returns false otherwise.
DeclareAttribute( "ConstructorGroup", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the coherent configuration $CC$ can be constructed from relations defined by the orbitals of a
#!	group $G$ acting transitively on a set $X$.
DeclareProperty( "IsHomogeneousCoherentConfigurationByOrbitals", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments G
#! @Returns homogeneous coherent configuration
#! @Description
#!	Constructs a "group-case" coherent configuration, where the relations are defined by the orbitals
#!	of $G$ on $\{1, \ldots, n\} \times \{1, \ldots, n\}$.
#!	$G$ must be a permutation group which is transitive on $\{1, \ldots, n\}$.
DeclareOperation( "HomogeneousCoherentConfigurationByOrbitals", [IsPermGroup]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments G, H
#! @Returns homogeneous coherent configuration
#! @Description
#!	Constructs a "group-case" coherent configuration, where the relations are defined by the orbitals
#!	of $G$ on $G/H$. $G$ is a group, $H$ is a subgroup of $G$, $G/H$ is the set of right cosets of $G$ on $H$,
#!	and $G$ must be transitive on $G/H$.
DeclareOperation( "HomogeneousCoherentConfigurationByOrbitals", [IsGroup, IsGroup]);