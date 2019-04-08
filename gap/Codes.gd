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
#! @Section Subsets And Codes
#! @Arguments v, CC
#! @Returns a
#! @Description
#!	Returns the inner distribution $a$ of a vector v with respect to the adjacency matrices of
#!	the coherent configuration CC. Note that v must be a vector over R^n where n is
#!	the order of CC. CC must be commutative.
DeclareOperation( "InnerDistribution", [IsList, IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments v, CC
#! @Returns aQ
#! @Description
#!	Returns the MacWilliams transform $aQ$ of a vector $v$ with respect to a
#!	coherent confiiguration CC. Takes either a vector $v$ in $R^n$ and converts it to its
#!	inner distribution vector first, or takes the inner distribution directly.
DeclareOperation( "MacWilliamsTransform", [IsList, IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments CC, p
#! @Returns L
#! @Description
#!	Returns a list $L$ with the dual Bose-Mesner basis of a homogeneous coherent configuration with respect to the point p,
#!  such that $L_i = \tilde E_{i-1}$.
DeclareOperation( "DualBoseMesnerBasis", [IsHomogeneousCoherentConfiguration, IsPosInt]);

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list $L$ with the dual Bose-Mesner basis of a homogeneous coherent configuration with respect to the first point,
#!  such that $L_i = \tilde E_{i-1}$.
DeclareOperation( "DualBoseMesnerBasis", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments v, CC
#! @Returns B
#! @Description
#!	Returns the outer distribution $B$ of a vector $v$ with respect to the adjacency matrices of
#!	the coherent configuration CC. Note that $v$ must be a vector over $R^n$ where n is
#!	the order of CC. CC must be commutative.
DeclareOperation( "OuterDistribution", [IsList, IsHomogeneousCoherentConfiguration]);
