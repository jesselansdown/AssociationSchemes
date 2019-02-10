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
DeclareOperation( "AssociationScheme", [ IsPosInt, IsPosInt ] );
DeclareOperation( "AdjacencyMatricesOfMatrix", [IsMatrix] );
DeclareOperation( "MatrixOfAssociationScheme", [ IsAssociationScheme ] );

DeclareAttribute( "ClassOfAssociationScheme", IsAssociationScheme );
DeclareAttribute( "AdjacencyMatrices", IsAssociationScheme );
DeclareOperation( "IsAssociationSchemeMatrix", [ IsMatrix ]);

DeclareAttribute( "NrVertices", IsAssociationScheme );

DeclareOperation( "FusionScheme", [IsAssociationScheme, IsList]);

DeclareAttribute( "AutomorphismGroup", IsAssociationScheme );

#! @Description
#!   Insert documentation for your function here
DeclareAttribute( "Valencies", IsAssociationScheme );
DeclareAttribute("IntersectionMatrices", IsAssociationScheme);
DeclareAttribute( "MatrixOfEigenvalues", IsAssociationScheme );
DeclareAttribute( "DualMatrixOfEigenvalues", IsAssociationScheme );
DeclareAttribute( "MinimalIdempotents", IsAssociationScheme );

