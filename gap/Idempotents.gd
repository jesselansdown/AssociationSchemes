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
#! @Section Bose-Mesner algebra
#! @Arguments CC
#! @Returns M
#! @Description
#!    Takes a homogeneous coherent configuration object, CC, and returns a matrix, M, which maps the adjacency matrices to
#!    the minimal idempotents of the adjacency algebra.
#!    The central idempotent $E_i = \sum_{i=0}^d M_{ij} A_j$.
DeclareAttribute( "MapFromAdjacencyMatricesToMinimalIdempotents", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Bose-Mesner algebra
#! @Arguments CC
#! @Returns M
#! @Description
#!    Takes a homogeneous coherent configuration, CC, and returns a matrix, M, which maps the adjacency matrices to
#!    the minimal idempotents of the adjacency algebra over the rationals.
#!    The minimal idempotent $E_i = \sum_{i=0}^d M_{ij} A_j$.
DeclareAttribute( "MapFromAdjacencyMatricesToMinimalIdempotentsOverRationals", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Bose-Mesner algebra
#! @Arguments CC
#! @Returns minimal idempotents
#! @Description
#!    Returns the minimal idempotents of the homogeneous coherent configuration.
DeclareAttribute( "MinimalIdempotents", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Bose-Mesner algebra
#! @Arguments CC
#! @Returns minimal idempotents
#! @Description
#!    Returns the minimal idempotents of the homogeneous coherent configuration over the rationals.
DeclareAttribute( "MinimalIdempotentsOverRationals", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Bose-Mesner algebra
#! @Arguments CC
#! @Returns P
#! @Description
#!	Returns a the matrix of eigenvalues (or character table), $P$, for a homogeneous coherent configuration CC.
DeclareAttribute( "MatrixOfEigenvalues", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Bose-Mesner algebra
#! @Arguments CC
#! @Returns Q
#! @Description
#!	Returns a the matrix of dual eigenvalues, $Q$, for a homogeneous coherent configuration CC.
DeclareAttribute( "MatrixOfDualEigenvalues", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Bose-Mesner algebra
#! @Arguments CC
#! @Returns n
#! @Description
#!      Returns the multiplicities of characters of CC.
DeclareAttribute("Multiplicities", IsHomogeneousCoherentConfiguration);

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Bose-Mesner algebra
#! @Arguments CC
#! @Returns P
#! @Description
#!	TODO.
DeclareAttribute( "CharacterTableOfHomogeneousCoherentConfiguration", IsHomogeneousCoherentConfiguration );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Bose-Mesner algebra
#! @Arguments CC, P
#! @Returns P2
#! @Description
#!   Checks if P is the matrix of eigenvalues of homogeneous coherent configuration CC, upto some reordering of the columns.
#!   In such a case, P2, the reordered matrix is returned. If not, returns fail.
DeclareOperation( "FitMatrixOfEigenvalues", [ IsHomogeneousCoherentConfiguration, IsMatrix ] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Bose-Mesner algebra
#! @Arguments CC, P
#! @Returns P2
#! @Description
#!   Computes the character table of a Schurian coherent configuration by using the group. The ordering of the columns does not respect
#!   the ordering of the coherent configuration, so "FitMatrixOfEigenvalues" must be used. Sometimes the group theoretic method is much faster and
#!   sometimes it is much slower than the other methods.
DeclareOperation( "CharacterTableOfSchurianHomogeneousCoherentConfiguration", [ IsHomogeneousCoherentConfiguration ] );
