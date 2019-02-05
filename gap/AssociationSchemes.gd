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



DeclareCategory( "IsAssociationScheme", IsObject );


AssociationSchemeFamily := NewFamily( "AssociationSchemeFamily" );

BindGlobal("TheTypeAssociationScheme", NewType( AssociationSchemeFamily, IsAssociationScheme ));


DeclareOperation( "AssociationSchemeNC", [ IsMatrix ] );

DeclareOperation( "AssociationScheme", [ IsMatrix ] );


#DeclareProperty( "IsSchurian", IsAssociationScheme );
#DeclareAttribute( "Group", IsAssociationScheme );


#! @Description
#!   Insert documentation for your function here
DeclareGlobalFunction( "AssociationSchemes_Example" );
