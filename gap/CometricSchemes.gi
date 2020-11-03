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

InstallMethod( AdmitsQPolynomialOrdering, [IsHomogeneousCoherentConfiguration],
  function(A)
    if not IsAssociationScheme(A) then
      return false;
    fi;
    return AdmitsQPolynomialOrdering(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
  end);

InstallMethod( AdmitsCometricOrdering, [IsHomogeneousCoherentConfiguration],
  function(R)
      return AdmitsQPolynomialOrdering(R);
  end);

InstallMethod( IsQPolynomial, [IsHomogeneousCoherentConfiguration],
  function(A)
    local d, i, checknext;
    return IsQPolynomial(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
  end);

InstallMethod( IsCometric, [IsHomogeneousCoherentConfiguration],
  function(R)
      return IsQPolynomial(R);
  end);


InstallMethod(AllQPolynomialOrderings,
            [IsHomogeneousCoherentConfiguration],
  function(A)
    if not IsAssociationScheme(A) then
      return fail;
    fi;
    return AllQPolynomialOrderings(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
  end);

InstallMethod( AllCometricOrderings, [IsHomogeneousCoherentConfiguration],
  function(R)
      return AllQPolynomialOrderings(R);
  end);

InstallMethod(KreinArray,
            [IsHomogeneousCoherentConfiguration],
  function( A )
    return KreinArray(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
  end);

InstallMethod(DualIntersectionArray,
      [IsHomogeneousCoherentConfiguration],
  function(a)
    return KreinArray(a);
  end );


