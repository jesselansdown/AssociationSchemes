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
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns M
#! @Description
#!    Takes a homogeneous coherent configuration object, CC, and returns a matrix, M, which maps the adjacency matrices to
#!    the minimal idempotents of the adjacency algebra.
#!    The central idempotent $E_i = \Sum_{i=1}^d+1$ M_{ij} A_j$.
DeclareAttribute( "MapFromAdjacencyMatricesToMinimalIdempotents", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns M
#! @Description
#!    Takes a homogeneous coherent configuration, CC, and returns a matrix, M, which maps the adjacency matrices to
#!    the minimal idempotents of the adjacency algebra over the rationals.
#!    The minimal idempotent $E_i = \Sum_{i=1}^d+1$ M_{ij} A_j$.
DeclareAttribute( "MapFromAdjacencyMatricesToMinimalIdempotentsOverRationals", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns minimal idempotents
#! @Description
#!    Returns the minimal idempotents of the homogeneous coherent configuration.
DeclareAttribute( "MinimalIdempotents", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns minimal idempotents
#! @Description
#!    Returns the minimal idempotents of the homogeneous coherent configuration over the rationals.
DeclareAttribute( "MinimalIdempotentsOverRationals", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns P
#! @Description
#!	Returns a the matrix of eigenvalues (or character table), $P$, for a homogeneous coherent configuration CC.
DeclareAttribute( "MatrixOfEigenvalues", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns Q
#! @Description
#!	Returns a the dual matrix of eigenvalues, $Q$, for a homogeneous coherent configuration CC.
DeclareAttribute( "DualMatrixOfEigenvalues", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns n
#! @Description
#!      Returns the multiplicities of characters of CC.
DeclareAttribute("Multiplicities", IsHomogeneousCoherentConfiguration);

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns P
#! @Description
#!	TODO.
DeclareAttribute( "CharacterTableOfHomogeneousCoherentConfiguration", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC, P
#! @Returns P2
#! @Description
#!   Checks if P is the matrix of eigenvalues of homogeneous coherent configuration CC, upto some reordering of the columns.
#!   In such a case, P2, the reordered matrix is returned. If not, returns fail.
DeclareOperation( "FitMatrixOfEigenvalues", [ IsHomogeneousCoherentConfiguration, IsMatrix ] );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC, P
#! @Returns P2
#! @Description
#!   TODO.
DeclareOperation( "CharacterTableOfSchurianHomogeneousCoherentConfiguration", [ IsHomogeneousCoherentConfiguration ] );
