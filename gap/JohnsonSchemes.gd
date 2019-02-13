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
#! @Arguments n, k
#! @Returns Johnson scheme
#! @Description
#!	Returns the Johnson scheme, $J(n, k)$.
DeclareOperation("JohnsonScheme", [IsPosInt, IsPosInt]);
