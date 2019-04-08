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
#! @Arguments X, Omega
#! @Returns $\chi_X$
#! @Description
#!	Takes a subset X of Omega and returns the characteristic vector. The characteristic vector is a
#!	0,1-vector indexed by the entries of Omega, with a 1 at position x if x is in X, and 0 otherwise.
DeclareOperation( "CharacteristicVector", [IsList, IsList]);

#! @Chapter Functionality
#! @Section Subsets And Codes
#! @Arguments X, n
#! @Returns $\chi_X$
#! @Description
#!	Takes a subset X of of [1 .. n] and returns the characteristic vector $chi_X$.
DeclareOperation( "CharacteristicVector", [IsList, IsPosInt]);