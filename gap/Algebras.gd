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
#! @Section Algebras
#! @Arguments CC
#! @Returns A
#! @Description
#!	Returns the intersection algebra $A$ of a homogeneous coherent configuration.
DeclareOperation( "IntersectionAlgebra", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Algebras
#! @Arguments CC
#! @Returns A
#! @Description
#!	Returns the Bose-Mesner algebra $A$ of a homogeneous coherent configuration.
DeclareOperation( "BoseMesnerAlgebra", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Algebras
#! @Arguments CC
#! @Returns A
#! @Description
#!	Returns the adjacency algebra $A$ of a homogeneous coherent configuration.
#!	This is an alias for BoseMesnerAlgebra.
DeclareOperation( "AdjacencyAlgebra", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Algebras
#! @Arguments CC, p
#! @Returns T
#! @Description
#!	Returns the Terwilliger algebra $T$ of a homogeneous coherent configuration with respect to the point p.
DeclareOperation( "TerwilligerAlgebra", [IsHomogeneousCoherentConfiguration, IsInt]);

#! @Chapter Functionality
#! @Section Algebras
#! @Arguments CC
#! @Returns T
#! @Description
#!	Returns the Terwilliger algebra $T$ of a homogeneous coherent configuration with respect to the first point.
DeclareOperation( "TerwilligerAlgebra", [IsHomogeneousCoherentConfiguration]);


