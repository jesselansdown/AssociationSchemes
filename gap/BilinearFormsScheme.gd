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
#! @Arguments F, n, k
#! @Returns homogeneous coherent configuration
#! @Description
#!	Returns the bilinear forms scheme over the field $F$ with 
DeclareOperation("BilinearFormsScheme", [IsField, IsPosInt, IsPosInt]);
