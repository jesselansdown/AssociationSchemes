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
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments G
#! @Returns true or false
#! @Description
#!	Checks if the permutation group $G$ is generously transitive.
DeclareProperty("IsGenerouslyTransitive", IsPermGroup); 

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments G, L
#! @Returns true or false
#! @Description
#!	Checks that the permutation group $G$ acts generously transitive on the set $L$.
DeclareOperation("IsGenerouslyTransitive", [IsPermGroup, IsList]);

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a Schurian scheme, that is, if the automorphism group is generously transitive.
DeclareProperty( "IsSchurian", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments G
#! @Returns homogeneous coherent configuration
#! @Description
#!	Returns the Schurian scheme defined by $G$, where $G$ is a generously transitive permutation group.
#!	A Schurian scheme is a special case of CoherentConfigurationByOrbitals and is symmetric.
DeclareOperation( "SchurianScheme", [IsPermGroup]);
