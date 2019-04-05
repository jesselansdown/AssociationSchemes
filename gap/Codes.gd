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
#! @Section Codes
#! @Arguments v, CC
#! @Returns inner distribution
#! @Description
#!	Returns the inner distribution of a vector v with respect to the adjacency matrices of
#!	the coherent configuration CC. Note that v must be a vector over R^n where n is
#!	the order of CC. CC must be commutative.
DeclareOperation( "InnerDistribution", [IsList, IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Codes
#! @Arguments v, CC
#! @Returns inner distribution
#! @Description
#!	Returns the MacWilliams transform of a vector v with respect to a
#!	coherent confiiguration CC. Takes either a vector v in R^n and converts it to its
#!	inner distribution vector first, or takes the inner distribution directly.
DeclareOperation( "MacWilliamsTransform", [IsList, IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC, p
#! @Returns dual Bose-Mesner basis
#! @Description
#!	Returns the dual Bose-Mesner basis of a homogeneous coherent configuration with respect to the point p.
DeclareOperation( "DualBoseMesnerBasis", IsHomogeneousCoherentConfiguration, IsPosInt);

#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC
#! @Returns dual Bose-Mesner basis
#! @Description
#!	Returns the dual Bose-Mesner basis of a homogeneous coherent configuration with respect to the point 1.
DeclareOperation( "DualBoseMesnerBasis", IsHomogeneousCoherentConfiguration);
