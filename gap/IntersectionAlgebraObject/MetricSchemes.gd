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

#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC is P-polynomial.
DeclareProperty( "IsPPolynomial", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns P-polynomial ordering or fail
#! @Description
#!	Returns the first P-polynomial ordering admitted by the homogeneous coherent configuration CC, and fail otherwise.
DeclareAttribute( "FirstPPolynomialOrdering", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC admits a P-polynomial ordering.
DeclareProperty( "AdmitsPPolynomialOrdering", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for IsPPolynomial.
DeclareOperation( "IsMetric", [IsIntersectionAlgebraObject] );

#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns metric ordering or fail
#! @Description
#!	Alias for FirstPPolynomialOrdering.
DeclareOperation( "FirstMetricOrdering", [IsIntersectionAlgebraObject] );

#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for AdmitsPPolynomialOrdering.
DeclareOperation( "AdmitsMetricOrdering", [IsIntersectionAlgebraObject] );

#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns L
#! @Description
#!	Calculate the list $L$ of all P-polynomial orderings of a homogeneous coherent configuration.
DeclareAttribute( "AllPPolynomialOrderings", IsIntersectionAlgebraObject );


#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns L
#! @Description
#!	Alias for AllPPolynomialOrderings.
DeclareOperation( "AllMetricOrderings", [IsIntersectionAlgebraObject] );

#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns List
#! @Description
#!	Returns the intersection array if CC is P-polynomial.
DeclareAttribute( "IntersectionArray", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns [d, b, $\alpha$, $\beta$]
#! @Description
#!	Returns the classical parameters if the CC is metric with classical
#!  parameters.
DeclareAttribute( "ClassicalParameters", IsIntersectionAlgebraObject );

#! @Chapter Intersection Algebra objects
#! @Section Metric schemes
#! @Arguments CC
#! @Returns [d, b, $\alpha$, $\beta$]
#! @Description
#!	Returns the parameters $\{n, k; \lambda, \mu \}$ if the CC is an association scheme with 2 classes.
DeclareAttribute( "StronglyRegularGraphParameters", IsIntersectionAlgebraObject );