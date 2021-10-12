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

InstallMethod( AdmitsQPolynomialOrdering, [IsIntersectionAlgebraObject],
  function(A)
    local stack, current, children, checknext;

    checknext := function(A, ord)

      local m;
      if Size(ord)=1 and ord[1]=0 then
        return true;
      fi;
      if KreinParameter(A, ord[2], ord[Size(ord)-1], ord[Size(ord)]) = 0 then
        return false;
      fi;
      for m in [1 .. Size(ord)-2] do
        if KreinParameter(A, ord[2], ord[m], ord[Size(ord)]) <> 0 then
          return false;
        fi;
      od;
      return true;
    end;

    if not IsSymmetricIntersectionAlgebra(A) then
      return false;
    fi;
    if IsQPolynomial(A) then
      return true;
    fi;
    stack := [[0]];
    while stack <> [] do
      current := Remove(stack, Size(stack));
      if checknext(A, current) then
        if Size(current)=NumberOfClasses(A)+1 then
          return true;
        else
          children:=Difference([1..NumberOfClasses(A)], current);
          Append(stack, List(children, t -> Concatenation(current, [t])));;
        fi;
      fi;
    od;
    return false;
  end);

InstallMethod( AdmitsCometricOrdering, [IsIntersectionAlgebraObject],
  function(R)
      return AdmitsQPolynomialOrdering(R);
  end);

InstallMethod( IsQPolynomial, [IsIntersectionAlgebraObject],
  function(A)
    local d, i, checknext;

    checknext := function(A, ord)

      local m;
      if Size(ord)=1 and ord[1]=0 then
        return true;
      fi;
      if KreinParameter(A, ord[2], ord[Size(ord)-1], ord[Size(ord)]) = 0 then
        return false;
      fi;
      for m in [1 .. Size(ord)-2] do
        if KreinParameter(A, ord[2], ord[m], ord[Size(ord)]) <> 0 then
          return false;
        fi;
      od;
      return true;
    end;

    if not IsSymmetricIntersectionAlgebra(A) then
      return false;
    fi;

    d := NumberOfClasses(A);
    for i in [0 .. d] do
      if not checknext(A, [0 .. i]) then
        return false;
      fi;
    od;
    return true;
  end);

InstallMethod( IsCometric, [IsIntersectionAlgebraObject],
  function(R)
      return IsQPolynomial(R);
  end);


InstallMethod(AllQPolynomialOrderings,
            [IsIntersectionAlgebraObject],
  function(A)
    local stack, current, children, checknext, keep;

    checknext := function(A, ord)

      local m;
      if Size(ord)=1 and ord[1]=0 then
        return true;
      fi;
      if KreinParameter(A, ord[2], ord[Size(ord)-1], ord[Size(ord)]) = 0 then
        return false;
      fi;
      for m in [1 .. Size(ord)-2] do
        if KreinParameter(A, ord[2], ord[m], ord[Size(ord)]) <> 0 then
          return false;
        fi;
      od;
      return true;
    end;

    if not IsSymmetricIntersectionAlgebra(A) then
      return false;
    fi;

    stack := [[0]];
    keep := [];
    while stack <> [] do
      current := Remove(stack, Size(stack));
      if checknext(A, current) then
        if Size(current)=NumberOfClasses(A)+1 then
          Add(keep, current);
        else
          children:=Difference([1..NumberOfClasses(A)], current);
          Append(stack, List(children, t -> Concatenation(current, [t])));;
        fi;
      fi;
    od;
    return Set(keep);
  end);

InstallMethod( AllCometricOrderings, [IsIntersectionAlgebraObject],
  function(R)
      return AllQPolynomialOrderings(R);
  end);

InstallMethod(KreinArray,
            [IsIntersectionAlgebraObject],
    function( A )
        local krein_array, d, i;
        krein_array:=[[],[]];
        d:=NumberOfClasses(A);
        if not IsCometric(A) then
          return fail;
        fi;
        for i in [0 .. d-1] do
            Add(krein_array[1], KreinParameter(A, 1, i+1, i));
        od;
        for i in [1 .. d] do
            Add(krein_array[2], KreinParameter(A, 1, i-1, i));
        od;
        return krein_array;
    end);

InstallMethod(DualIntersectionArray,
      [IsIntersectionAlgebraObject],
  function(a)
    return KreinArray(a);
  end );


