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

DeclareRepresentation( "IsAssociationSchemeRep",
                       IsAssociationScheme and IsAttributeStoringRep,
                       [ ] );

BindGlobal( "AssociationSchemeFamily",
        NewFamily( "AssociationSchemeFamily" ) );

BindGlobal( "TheTypeAssociationScheme",
        NewType( AssociationSchemeFamily,
                IsAssociationSchemeRep ) );

#BindGlobal("TheTypeAssociationScheme", NewType( AssociationSchemeFamily, IsAssociationScheme ));

DeclareOperation( "AssociationSchemeNC", [ IsMatrix ] );
DeclareOperation( "AssociationScheme", [ IsMatrix ] );

DeclareOperation( "ClassOfAssociationScheme", [ IsMatrix ] );
DeclareOperation( "AdjacencyMatrices", [ IsMatrix ] );
DeclareOperation( "IsAssociationSchemeMatrix", [ IsMatrix ]);

DeclareAttribute( "NrVertices", IsAssociationScheme );

DeclareOperation( "SchurianScheme", [IsPermGroup]);

DeclareProperty( "IsSchurian", IsAssociationScheme );
DeclareAttribute( "SchurianSchemeGroup", IsAssociationScheme );

#! @Description
#!   Insert documentation for your function here
DeclareGlobalFunction( "AssociationSchemes_Example" );
DeclareOperation( "AdjacencyMatrices", [ IsAssociationScheme ] );
DeclareAttribute( "AdjMats", IsAssociationScheme );
DeclareAttribute("IntersectionMatrices", IsAssociationScheme);
DeclareAttribute( "Pmatrix", IsAssociationScheme );
DeclareAttribute( "Qmatrix", IsAssociationScheme );
DeclareAttribute( "MinimalIdempotents", IsAssociationScheme );

