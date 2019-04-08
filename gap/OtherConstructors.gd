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
#! @Arguments CC, L
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes a $d$-class homogeneous coherent configuration CC and returns a fusion scheme corresponding to L,
#!	where L is a partion of $\{0, \ldots, d\}$. Returns fail if $L$ is not a valid partition.
DeclareOperation( "FusionScheme", [IsHomogeneousCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC1, CC2
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes two homogeneous coherent configurations CC1 and CC2 and returns their direct product.
DeclareOperation( "DirectProductScheme", [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC1, CC2
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes two homogeneous coherent configurations CC1 and CC2 and returns their wreath product.
DeclareOperation( "WreathProductScheme", [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments q, d
#! @Returns homogeneous coherent configuration
#! @Description
#!	Let $q$ be a prime power, and $d$ a divisor of $q-1$. Returns the cyclotomic scheme $Cyc(q,d)$.
DeclareOperation( "CyclotomicScheme", [IsPosInt, IsPosInt]);
