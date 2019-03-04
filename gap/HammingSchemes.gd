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

#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments n, q
#! @Returns matrix of eigenvalues
#! @Description
#!	Returns matrix of eigenvalue for the Hamming scheme, $H(n, q)$.
DeclareOperation("MatrixOfEigenvaluesOfHammingScheme", [IsPosInt, IsPosInt]);
