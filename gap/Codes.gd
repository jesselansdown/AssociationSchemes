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
DeclareOperation( "InnerDistribution", [IsList, IsCoherentConfiguration]);