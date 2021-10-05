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

InstallMethod( IsPPolynomial, [IsHomogeneousCoherentConfiguration],
  function(A)
    if not IsAssociationScheme(A) then
      return false;
    fi;
    return IsPPolynomial(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
  end);

InstallMethod( FirstPPolynomialOrdering, [IsHomogeneousCoherentConfiguration],
  function(A)
    if not IsAssociationScheme(A) then
      SetFirstPPolynomialOrdering(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A), fail);
      return fail;
    fi;
    return FirstPPolynomialOrdering(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
  end);

InstallMethod( AdmitsPPolynomialOrdering, [IsHomogeneousCoherentConfiguration],
  function(A)
      FirstPPolynomialOrdering(A);
      return AdmitsPPolynomialOrdering(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
  end);

InstallMethod( IsMetric, [IsHomogeneousCoherentConfiguration],
  function(R)
      return IsPPolynomial(R);
  end);

InstallMethod( FirstMetricOrdering, [IsHomogeneousCoherentConfiguration],
  function(R)
      return FirstPPolynomialOrdering(R);
  end);

InstallMethod( AdmitsMetricOrdering, [IsHomogeneousCoherentConfiguration],
  function(R)
      return AdmitsPPolynomialOrdering(R);
  end);

InstallMethod(AllPPolynomialOrderings,
            [IsHomogeneousCoherentConfiguration],
  function(A)
    if not IsAssociationScheme(A) then
      return fail;
    fi;
    return AllPPolynomialOrderings(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
  end);

InstallMethod( AllMetricOrderings, [IsHomogeneousCoherentConfiguration],
  function(R)
      return AllPPolynomialOrderings(R);
  end);

InstallMethod(IsStronglyRegularGraph,
      [IsHomogeneousCoherentConfiguration],
  function(a)
    return NumberOfClasses(a)=2 and IsAssociationScheme(a) and AdmitsPPolynomialOrdering(a);
  end );

InstallMethod(IntersectionArray,
            [IsHomogeneousCoherentConfiguration],
    function( A )
        if not IsMetric(A) then
          return fail;
        fi;
        return IntersectionArray(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
    end);

InstallMethod( ClassicalParameters, [IsHomogeneousCoherentConfiguration],
  function(A)
    if not IsMetric(A) then
      return fail;
    fi;
    return ClassicalParameters(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));;
  end);

InstallMethod( DistanceRegularGraphScheme, [IsMatrix],
  function(M)

    local RelationMatrixFromDRG;
    RelationMatrixFromDRG := function(A)

      local indep, bas, k, M, rel, i, j;
      indep := function(M, bas)
        local M2, i, pos, val, scale;
        M2:=StructuralCopy(M);;
        for i in [1 .. Size(bas)] do
          pos := First([1 .. Size(bas[i][1])], t -> bas[i][1][t] = 1);
          val := M2[1][pos];
          M2 := M2 - val*bas[i];
        od;
        scale:=First(M2[1], t -> t <> 0);
        if scale = fail then
          return fail;
        fi;
        M2:=M2/scale;;
        return M2;
      end;

      bas := [IdentityMat(Size(A)), A];
      k:=2;
      while true do
        M:=indep(A^k, bas);
        if M = fail then
          break;
        fi;
        Add(bas, M);
        k:=k+1;
      od;

      rel := NullMat(Size(A), Size(A[1]));;
      for i in [1 .. Size(A)] do
        for j in [1 .. Size(A[1])] do
          for k in [1 .. Size(bas)] do
            rel[i][j] := rel[i][j]+bas[k][i][j]*(k-1);
          od;
        od;
      od;
      return rel;
    end;

    return AssociationScheme(RelationMatrixFromDRG(M));;
  end);

InstallMethod( DistanceRegularGraphSchemeNC, [IsMatrix],
  function(M)

    local RelationMatrixFromDRG;
    RelationMatrixFromDRG := function(A)

      local indep, bas, k, M, rel, i, j;
      indep := function(M, bas)
        local M2, i, pos, val, scale;
        M2:=StructuralCopy(M);;
        for i in [1 .. Size(bas)] do
          pos := First([1 .. Size(bas[i][1])], t -> bas[i][1][t] = 1);
          val := M2[1][pos];
          M2 := M2 - val*bas[i];
        od;
        scale:=First(M2[1], t -> t <> 0);
        if scale = fail then
          return fail;
        fi;
        M2:=M2/scale;;
        return M2;
      end;

      bas := [IdentityMat(Size(A)), A];
      k:=2;
      while true do
        M:=indep(A^k, bas);
        if M = fail then
          break;
        fi;
        Add(bas, M);
        k:=k+1;
      od;

      rel := NullMat(Size(A), Size(A[1]));;
      for i in [1 .. Size(A)] do
        for j in [1 .. Size(A[1])] do
          for k in [1 .. Size(bas)] do
            rel[i][j] := rel[i][j]+bas[k][i][j]*(k-1);
          od;
        od;
      od;
      return rel;
    end;

    return AssociationSchemeNC(RelationMatrixFromDRG(M));;
  end);

InstallMethod( StronglyRegularGraphScheme, [IsMatrix],
  function(M)
    local srg_relmat;
    srg_relmat := function(x)
      local n, M, i;
      n:=Size(x);
      M:=(NullMat(n, n)+2)-x;;        
      for i in [1 .. n] do
        M[i][i]:=0;
      od;
      return M;
    end;
    return AssociationScheme(srg_relmat(M));;
  end);

InstallMethod( StronglyRegularGraphSchemeNC, [IsMatrix],
  function(M)
    local srg_relmat;
    srg_relmat := function(x)
      local n, M, i;
      n:=Size(x);
      M:=(NullMat(n, n)+2)-x;;        
      for i in [1 .. n] do
        M[i][i]:=0;
      od;
      return M;
    end;
    return AssociationSchemeNC(srg_relmat(M));;
  end);

InstallMethod( IsPBipartite, [IsHomogeneousCoherentConfiguration],
  function(A)
  local i, j, k, d;
    if not IsCometric(A) then
      Error("Homogeneous coherent configuration must be metric!\n");
    fi;
  d:=NumberOfClasses(A);
  for i in [0 .. d] do
    for j in [0 .. d] do
      for k in [0 .. d] do
        if IsOddInt(i+j+k) and IntersectionNumber(A, i, j, k)<>0 then
          return false;
        fi;
      od;
    od;
  od;
  return true;
  end);

InstallMethod( IsPAntipodal, [IsHomogeneousCoherentConfiguration],
  function(A)
    local j, d;
    if not IsCometric(A) then
      Error("Homogeneous coherent configuration must be metric!\n");
    fi;
    d:=NumberOfClasses(A);;
    for j in [1 .. d] do
      if j <> Int(Floor(Float(d/2))) + 1 and IntersectionArray(A)[1][j] <> Reversed(IntersectionArray(A)[2])[j] then
        return false;
      fi;
    od;
    return true;
  end);
