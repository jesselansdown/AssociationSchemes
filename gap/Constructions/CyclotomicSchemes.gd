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
#! @Arguments n, k, q
#! @Returns P
#! @Description
#!	Returns the matrix of eigenvalues $P$ of the scheme $Cyc(q,d)$.
DeclareOperation("MatrixOfEigenvaluesOfCyclotomicScheme", [IsPosInt, IsPosInt]);

#! @Chapter Homogeneous Coherent Configuration objects
#! @Section Constructor methods
#! @Arguments q, d
#! @Returns homogeneous coherent configuration
#! @Description
#!	Let $q$ be a prime power, and $d$ a divisor of $q-1$. Returns the cyclotomic scheme $Cyc(q,d)$.
DeclareOperation( "CyclotomicScheme", [IsPosInt, IsPosInt]);
