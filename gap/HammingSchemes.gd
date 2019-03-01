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
#! @Section Constructor Methods
#! @Arguments n, q
#! @Returns Hamming scheme
#! @Description
#!	Returns the Hamming scheme, $H(n, q)$.
DeclareOperation("HammingScheme", [IsPosInt, IsPosInt]);
