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
#! @Section Attributes of coherent configurations
#! @Arguments n, k
#! @Returns  matrix of eigenvalues
#! @Description
#!	Returns the matrix of eigenvalues of the Johnson scheme $J(n, k)$.
DeclareOperation("MatrixOfEigenvaluesOfJohnsonScheme", [IsPosInt, IsPosInt]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n, k
#! @Returns Johnson scheme
#! @Description
#!	Returns the Johnson scheme, $J(n, k)$.
DeclareOperation("JohnsonScheme", [IsPosInt, IsPosInt]);
