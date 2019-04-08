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
#! @Returns homogeneous coherent configuration
#! @Description
#!	Returns the $k$-th homogeneous coherent configuration of order $n$. Library is complete for $5 \le n \le 38$ excluding
#!	$n \in \{31, 35, 36, 37\}$, corresponding to <Cite Key="Hanaki"/>.
DeclareOperation( "HomogeneousCoherentConfiguration", [ IsPosInt, IsPosInt ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n
#! @Returns m
#! @Description
#!	Returns the number $m$ of homogeneous coherent configuration of order $n$ contained in the library.
DeclareOperation( "NumberOfHomogeneousCoherentConfigurations", [ IsPosInt ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n
#! @Returns L
#! @Description
#!	Returns a list $L$ of the orders for which the library contains homogeneous coherent configurations.
DeclareOperation( "AvailableHomogeneousCoherentConfigurations", [  ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n
#! @Returns L
#! @Description
#!	Returns a list $L$ of all homogeneous coherent configuration of order $n$.
DeclareOperation( "AllHomogeneousCoherentConfigurations", [ IsPosInt ] );
