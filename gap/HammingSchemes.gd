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
#! @Returns homogeneous coherent configuration
#! @Description
#!	Returns the Hamming scheme, $H(n, q)$.
DeclareOperation("HammingScheme", [IsPosInt, IsPosInt]);

#! @Chapter Functionality
#! @Section Methods
#! @Arguments n, q
#! @Returns P
#! @Description
#!	Returns matrix of eigenvalue $P$ for the Hamming scheme, $H(n, q)$.
DeclareOperation("MatrixOfEigenvaluesOfHammingScheme", [IsPosInt, IsPosInt]);
