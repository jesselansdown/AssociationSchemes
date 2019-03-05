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
#! @Arguments a field and two positive integers
#! @Returns the bilinear forms association scheme
#! @Description
#!	Returns the bilinear forms scheme.
DeclareOperation("BilinearFormsScheme", [IsField, IsPosInt, IsPosInt]);
