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
#! @Section Constructor Methods
#! @Arguments P
#! @Returns intersection algebra object
#! @Description
#!	Returns the intersection algebra determined by a matrix of eigenvalues.
DeclareOperation("IntersectionAlgebraFromMatrixOfEigenvalues", [IsMatrix]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n, q
#! @Returns intersection algebra objectn
#! @Description
#!	Returns the intersection algebra of the Hamming scheme, $H(n, q)$.
DeclareOperation("HammingSchemeIntersectionAlgebra", [IsPosInt, IsPosInt]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n, k, q
#! @Returns intersection algebra object
#! @Description
#!	Returns the intersection algebra of the Grassmann scheme, $J_q(n, k)$.
DeclareOperation("GrassmanSchemeIntersectionAlgebra", [IsPosInt, IsPosInt, IsPosInt]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n, d
#! @Returns intersection algebra object
#! @Description
#!	Returns the intersection algebra of the Cyclotomic scheme, $Cyc(n, d)$.
DeclareOperation("CyclotomicSchemeIntersectionAlgebra", [IsPosInt, IsPosInt]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n, k, q
#! @Returns intersection algebra object
#! @Description
#!	Returns the intersection algebra of a DRG given by its intersection array.
DeclareOperation("IntersectionAlgebraFromIntersectionArray", [IsList]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments n, k, q
#! @Returns intersection algebra object
#! @Description
#!	Returns the intersection algebra of a DRG given by its intersection array.
DeclareOperation("IntersectionAlgebraFromClassicalParameters", [IsList]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC, L
#! @Returns true or false
#! @Description
#!	Takes the intersection algebra object of a $d$-class homogeneous coherent configuration CC,
#!	and checks if the partion L of $\{0, \ldots, d\}$ corresponds to a valid fusion.
DeclareOperation( "IsFusionOfHomogeneousCoherentConfiguration", [IsIntersectionAlgebraObject, IsList]);
