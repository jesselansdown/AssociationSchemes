#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##
#############################################################################



#
# AssociationSchemes: A GAP package for working with association schemes
#
#! @Chapter Introduction
#!
#! AssociationSchemes is a package which does some
#! interesting and cool things
#!
#! @Chapter Functionality
#!
#!
#! @Section Example Methods
#!
#! This section will describe the example
#! methods of AssociationSchemes

DeclareProperty( "IsSchurian", IsCoherentConfiguration );
DeclareOperation( "SchurianScheme", [IsPermGroup]);
