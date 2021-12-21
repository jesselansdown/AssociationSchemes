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
#! @Section Approximations
#! @Arguments CC, i
#! @Returns approximation of $E_i$
#! @Description
#!	Returns the $i$-th idempotent with entries approximated by floats. All entries must be real values.
DeclareOperation( "ApproximateRealMinimalIdempotent", [ IsHomogeneousCoherentConfiguration, IsInt ] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Approximations
#! @Arguments CC
#! @Returns approximation of minimal idempotents
#! @Description
#!	Returns a list of idempotents with entries approximated by floats. All entries must be real values.
DeclareOperation( "ApproximateRealMinimalIdempotents", [ IsHomogeneousCoherentConfiguration ] );

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Approximations
#! @Arguments CC
#! @Returns approximation of matrix of eigenvalues
#! @Description
#!	Returns the matrix of eigenvalues with entries approximated by floats. All entries must be real values.
DeclareOperation( "ApproximateRealMatrixOfEigenvalues", [ IsHomogeneousCoherentConfiguration ] );
