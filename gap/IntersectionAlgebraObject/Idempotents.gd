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



#
# AssociationSchemes: A GAP package for working with association schemes
#

#! @Chapter Functionality
#! @Section Attributes Of Intersection Algebras
#! @Arguments I
#! @Returns M
#! @Description
#!    Takes an intersection algebra object, I, and returns a matrix, M, which maps the intersection matrices to
#!    the central idempotents of the intersection algebra.
#!    The central idempotent $F_i = \Sum_{i=1}^d+1$ M_{ij} #! B_j$.
DeclareAttribute( "MapFromIntersectionMatricesToCentralIdempotents", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Attributes Of Intersection Algebras
#! @Arguments I
#! @Returns M
#! @Description
#!    Takes an intersection algebra object, I, and returns a matrix, M, which maps the intersection matrices to
#!    the central idempotents of the intersection algebra over the rationals.
#!    The central idempotent $F_i = \Sum_{i=1}^d+1$ M_{ij} #! B_j$.
DeclareAttribute( "MapFromIntersectionMatricesToCentralIdempotentsOverRationals", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Attributes Of Intersection Algebras
#! @Arguments I
#! @Returns central idempotents
#! @Description
#!    Returns the central idempotents of the intersection algebra.
DeclareAttribute( "CentralIdempotentsOfIntersectionAlgebra", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Attributes Of Intersection Algebras
#! @Arguments I
#! @Returns central idempotents
#! @Description
#!    Returns the central idempotents of the intersection algebra over the rationals.
DeclareAttribute( "CentralIdempotentsOfIntersectionAlgebraOverRationals", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns Q
#! @Description
#!      Returns a the dual matrix of eigenvalues, $Q$, for a homogeneous coherent configuration CC.
DeclareAttribute( "MatrixOfDualEigenvalues", IsIntersectionAlgebraObject );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns P
#! @Description
#!      Returns a the matrix of eigenvalues (or character table), $P$, for the intersection algebra of a homogeneous coherent configuration CC.
DeclareAttribute( "MatrixOfEigenvalues", IsIntersectionAlgebraObject );

DeclareOperation( "MatrixOfEigenvaluesForMetricScheme", [ IsIntersectionAlgebraObject and AdmitsPPolynomialOrdering] );
DeclareOperation( "IsMatrixOfEigenvalues", [ IsIntersectionAlgebraObject, IsMatrix ] );
DeclareOperation( "MatrixOfEigenvaluesViaBacktrack", [ IsIntersectionAlgebraObject ] );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments A, P
#! @Returns P2
#! @Description
#!   Checks if P is the matrix of eigenvalues of intersection algebra A, upto some reordering of the columns.
#!   In such a case, P2, the reordered matrix is returned. If not, returns fail.
DeclareOperation( "FitMatrixOfEigenvalues", [ IsIntersectionAlgebraObject, IsMatrix ] );
