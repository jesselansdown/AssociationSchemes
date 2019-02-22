#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################


DeclareOperation( "AllHomogeneousCoherentConfigurations", [ IsPosInt ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n, k
#! @Returns coherent configuration
#! @Description
#!	Returns the $k$-th homogeneous coherent configuration of order $n$. Library is complete for $5 \le n \le 38$ excluding
#!	$n \in \{31, 35, 36, 37\}$. (Put reference).
DeclareOperation( "HomogeneousCoherentConfiguration", [ IsPosInt, IsPosInt ] );

DeclareOperation( "NumberOfHomogeneousCoherentConfigurations", [ IsPosInt ] );

DeclareOperation( "AvailableHomogeneousCoherentConfigurations", [  ] );
