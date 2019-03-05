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
#! @Returns intersection algebra
#! @Description
#!	Returns the intersection algebra of a homogeneous coherent configuration.
DeclareOperation( "IntersectionAlgebra", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Algebras
#! @Arguments CC
#! @Returns Bose-Mesner algebra
#! @Description
#!	Returns the Bose-Mesner algebra of a homogeneous coherent configuration.
DeclareOperation( "BoseMesnerAlgebra", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Algebras
#! @Arguments CC
#! @Returns adjacency algebra
#! @Description
#!	Returns the adjacency algebra of a homogeneous coherent configuration.
#!	This is an alias for BoseMesnerAlgebra.
DeclareOperation( "AdjacencyAlgebra", [IsHomogeneousCoherentConfiguration]);

#! @Chapter Functionality
#! @Section Algebras
#! @Arguments CC, p
#! @Returns Terwilliger algebra
#! @Description
#!	Returns the Terwilliger algebra of a homogeneous coherent configuration with respect to the point p.
DeclareOperation( "TerwilligerAlgebra", [IsHomogeneousCoherentConfiguration, IsInt]);

#! @Chapter Functionality
#! @Section Algebras
#! @Arguments CC, p
#! @Returns Terwilliger algebra
#! @Description
#!	Returns the Terwilliger algebra of a homogeneous coherent configuration with respect to the first point.
DeclareOperation( "TerwilligerAlgebra", [IsHomogeneousCoherentConfiguration]);


