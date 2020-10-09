#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
##  This program is free software; you can redistribute it and/or
##  modify it under the terms of the GNU General Public License
##  as published by the Free Software Foundation; either version 2
##  of the License, or (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License
##  along with this program; if not, write to the Free Software
##  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
##
#############################################################################

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


