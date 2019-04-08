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
#! @Section Methods
#! @Arguments n, k
#! @Returns P
#! @Description
#!	Returns the matrix of eigenvalues $P$ of the Johnson scheme $J(n, k)$.
DeclareOperation("MatrixOfEigenvaluesOfJohnsonScheme", [IsPosInt, IsPosInt]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n, k
#! @Returns homogeneous coherent configuration
#! @Description
#!	Returns the Johnson scheme, $J(n, k)$.
DeclareOperation("JohnsonScheme", [IsPosInt, IsPosInt]);
