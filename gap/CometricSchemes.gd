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

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Cometric schemes
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC admits a Q-polynomial ordering.
DeclareProperty( "AdmitsQPolynomialOrdering", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Cometric schemes
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for AdmitsQPolynomialOrdering.
DeclareOperation( "AdmitsCometricOrdering", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Cometric schemes
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the commutative coherent configuration CC is Q-polynomial.
DeclareProperty( "IsQPolynomial", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Cometric schemes
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for is Q-polynomial.
DeclareOperation( "IsCometric", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Cometric schemes
#! @Arguments CC
#! @Returns L
#! @Description
#!	Calculate a list $L$ of all Q-polynomial orderings of a homogeneous coherent configuration.
DeclareAttribute( "AllQPolynomialOrderings", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Cometric schemes
#! @Arguments CC
#! @Returns L
#! @Description
#!	Alias for AllQPolynomialOrderings.
DeclareOperation( "AllCometricOrderings", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Cometric schemes
#! @Arguments CC
#! @Returns List
#! @Description
#!	Returns the Krein (or dual intersection) array if CC is Q-polynomial.
DeclareAttribute( "KreinArray", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Cometric schemes
#! @Arguments CC
#! @Returns List
#! @Description
#!	Alias for KreinArray.
DeclareOperation( "DualIntersectionArray", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Cometric schemes
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC is Q-bipartite.
DeclareProperty( "IsQBipartite", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Cometric schemes
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC is Q-antipodal.
DeclareProperty( "IsQAntipodal", IsHomogeneousCoherentConfiguration );
