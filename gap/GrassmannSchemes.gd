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
#! @Arguments n, k, q
#! @Returns Grassmann scheme
#! @Description
#!	Returns the Grassman scheme, $J_q(n, k)$.
DeclareOperation("GrassmannScheme", [IsPosInt, IsPosInt, IsPosInt]);
