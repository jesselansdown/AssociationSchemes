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
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments G
#! @Returns true or false
#! @Description
#!	Checks if the permutation group $G$ is generously transitive.
DeclareProperty("IsGenerouslyTransitive", IsPermGroup); 

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments G, L
#! @Returns true or false
#! @Description
#!	Checks that the permutation group $G$ acts generously transitive on the set $L$.
DeclareOperation("IsGenerouslyTransitive", [IsPermGroup, IsList]);

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a Schurian scheme, that is, if the automorphism group is generously transitive.
DeclareProperty( "IsSchurian", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments G
#! @Returns homogeneous coherent configuration
#! @Description
#!	Returns the Schurian scheme defined by $G$, where $G$ is a generously transitive permutation group.
#!	A Schurian scheme is a special case of CoherentConfigurationByOrbitals and is symmetric.
DeclareOperation( "SchurianScheme", [IsPermGroup]);
