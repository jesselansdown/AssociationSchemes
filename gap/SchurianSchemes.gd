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
#! @Section Properties of coherent configurations
#! @Arguments G
#! @Returns true or false
#! @Description
#!	Checks if $G$ is generously transitive.
DeclareProperty("IsGenerouslyTransitive", IsPermGroup); 

#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments G, L
#! @Returns true or false
#! @Description
#!	Checks that the group $G$ acts generously transitive on the set $L$.
DeclareOperation("IsGenerouslyTransitive", [IsPermGroup, IsList]);

#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a Schurian coherent configuration, that is, if the automorphism group is generously transitive.
DeclareProperty( "IsSchurian", IsCoherentConfiguration );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments G
#! @Returns Schurian scheme
#! @Description
#!	Returns the Schurian scheme defined by $G$, where $G$ is a generously transitive permutation group.
#!	A Schurian scheme is a special case of CoherentConfigurationByOrbitals and is symmetric.
DeclareOperation( "SchurianScheme", [IsPermGroup]);
