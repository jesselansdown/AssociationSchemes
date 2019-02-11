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
DeclareCategory( "IsCoherentConfiguration", IsObject );

DeclareRepresentation( "IsCoherentConfigurationRep",
                       IsCoherentConfiguration and IsAttributeStoringRep,
                       [ ] );

BindGlobal( "CoherentConfigurationFamily",
        NewFamily( "CoherentConfigurationFamily" ) );

BindGlobal( "TheTypeCoherentConfiguration",
        NewType( CoherentConfigurationFamily,
                IsCoherentConfigurationRep ) );

#BindGlobal("TheTypeAssociationScheme", NewType( AssociationSchemeFamily, IsAssociationScheme ));

DeclareOperation( "CoherentConfigurationNC", [ IsMatrix ] );
DeclareOperation( "CoherentConfiguration", [ IsMatrix ] );
DeclareOperation( "RelationMatrix", [ IsCoherentConfiguration ] );
DeclareProperty( "IsHomogeneous", IsCoherentConfiguration );
DeclareProperty( "IsCommutative", IsCoherentConfiguration );
DeclareProperty( "IsSymmetricCoherentConfiguration", IsCoherentConfiguration );


DeclareOperation( "HomogeneousCoherentConfiguration", [ IsPosInt, IsPosInt ] );
DeclareOperation( "AdjacencyMatricesOfMatrix", [IsMatrix] );

DeclareAttribute( "ClassOfAssociationScheme", IsCoherentConfiguration );
DeclareAttribute( "AdjacencyMatrices", IsCoherentConfiguration );
DeclareOperation( "IsAssociationSchemeMatrix", [ IsMatrix ]);
DeclareOperation( "IsHomogeneousCoherentConfigurationMatrix", [ IsMatrix ]);
DeclareOperation( "IsCoherentConfigurationMatrix", [ IsMatrix ]);

DeclareAttribute( "NrVertices", IsCoherentConfiguration );

DeclareOperation( "FusionScheme", [IsCoherentConfiguration, IsList]);


#! @Description
#!   Insert documentation for your function here
DeclareAttribute( "Valencies", IsCoherentConfiguration );
DeclareAttribute("IntersectionMatrices", IsCoherentConfiguration);

DeclareAttribute( "MatrixOfEigenvalues", IsCoherentConfiguration );
DeclareAttribute( "DualMatrixOfEigenvalues", IsCoherentConfiguration );
DeclareAttribute( "MinimalIdempotents", IsCoherentConfiguration );

DeclareOperation("IsGenerouslyTransitive", [IsPermGroup]);
DeclareOperation("BinaryExpansion", [IsPosInt]);
DeclareAttribute( "AutomorphismGroup", IsCoherentConfiguration );
