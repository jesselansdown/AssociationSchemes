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

# InstallMethod( IsPPolynomial, [IsHomogeneousCoherentConfiguration],
#   function(R)
#       local i, m, d, gr, n, x, y, g;

#       n := Order(R);
#       m := RelationMatrix(R);
#       d := NumberOfClasses(R);
#       g := Group(());
#       if HasConstructorGroup(R) then
#         g := ConstructorGroup(R);
#       elif HasAutomorphismGroup(R) then
#         g := AutomorphismGroup(R);
#       fi;
#       for i in [1..d] do
#           gr := Graph(g, [1..n], OnPoints, function(x,y) return m[x][y] = i; end);
#           if IsDistanceRegular(gr) then
#               if Diameter(gr) = d then
#                   return true;
#               fi;
#           fi;
#       od;
      
#       return false;
#   end);
InstallMethod( IsPPolynomial, [IsHomogeneousCoherentConfiguration],
  function(A)
    local d, checknext, i;

    checknext := function(A, ord)

      local m;
      if Size(ord)=1 and ord[1]=0 then
        return true;
      fi;
      if IntersectionNumber(A, ord[2], ord[Size(ord)-1], ord[Size(ord)]) = 0 then
        return false;
      fi;
      for m in [1 .. Size(ord)-2] do
        if IntersectionNumber(A, ord[2], ord[m], ord[Size(ord)]) <> 0 then
          return false;
        fi;
      od;
      return true;
    end;

    if not IsAssociationScheme(A) then
      return false;
    fi;
    d:=NumberOfClasses(A);
    for i in [0 .. d] do
      if not checknext(A, [0 .. i]) then
        return false;
      fi;
    od;
    return true;
  end);

InstallMethod( AdmitsPPolynomialOrdering, [IsHomogeneousCoherentConfiguration],
  function(A)
    local stack, current, children, checknext;

    checknext := function(A, ord)

      local m;
      if Size(ord)=1 and ord[1]=0 then
        return true;
      fi;
      if IntersectionNumber(A, ord[2], ord[Size(ord)-1], ord[Size(ord)]) = 0 then
        return false;
      fi;
      for m in [1 .. Size(ord)-2] do
        if IntersectionNumber(A, ord[2], ord[m], ord[Size(ord)]) <> 0 then
          return false;
        fi;
      od;
      return true;
    end;

    if IsPPolynomial(A) then
      return true;
    fi;
    if not IsAssociationScheme(A) then
      return false;
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

InstallMethod( IsMetric, [IsHomogeneousCoherentConfiguration],
  function(R)
      return IsPPolynomial(R);
  end);

InstallMethod( AdmitsMetricOrdering, [IsHomogeneousCoherentConfiguration],
  function(R)
      return AdmitsPPolynomialOrdering(R);
  end);

# InstallMethod(AllPPolynomialOrderings,
#             [IsHomogeneousCoherentConfiguration],
#     function(R)
#     local i, mat, d, gr, n, x, y, ans, PPolynomialOrdering, g;

#         PPolynomialOrdering := function(R, a)
#             local ord, i, j, d;
            
#             d := NumberOfClasses(R);
#             ord := [0,a];
#             for j in [1..d-1] do
#                 for i in [1..d] do
#                     if not (i in ord) then
#                         if IntersectionNumber(R, a, ord[Length(ord)], i) <> 0 then
#                             Add(ord, i);
#                         fi;
#                     fi;
#                 od;
#             od;
            
#             return ord;
#         end;


#       g := Group(());
#       if HasConstructorGroup(R) then
#         g := ConstructorGroup(R);
#     elif HasAutomorphismGroup(R) then
#         g := AutomorphismGroup(R);
#       fi;

#         ans := [];
#         n := Order(R);
#         mat := RelationMatrix(R);
#         d := NumberOfClasses(R);
#         for i in [1..d] do
#             gr := Graph(g, [1..n], OnPoints, function(x,y) return mat[x][y]=i; end);
#             if IsDistanceRegular(gr) then
#                 if Diameter(gr) = d then
#                     Add(ans, PPolynomialOrdering(R, i));
#                 fi;
#             fi;
#         od;

#         return ans;
#     end);

InstallMethod(AllPPolynomialOrderings,
            [IsHomogeneousCoherentConfiguration],
  function(A)
    local stack, current, children, checknext, keep;

    checknext := function(A, ord)

      local m;
      if Size(ord)=1 and ord[1]=0 then
        return true;
      fi;
      if IntersectionNumber(A, ord[2], ord[Size(ord)-1], ord[Size(ord)]) = 0 then
        return false;
      fi;
      for m in [1 .. Size(ord)-2] do
        if IntersectionNumber(A, ord[2], ord[m], ord[Size(ord)]) <> 0 then
          return false;
        fi;
      od;
      return true;
    end;

    if not IsAssociationScheme(A) then
      return [];
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

InstallMethod( AllMetricOrderings, [IsHomogeneousCoherentConfiguration],
  function(R)
      return AllPPolynomialOrderings(R);
  end);

InstallMethod(IntersectionArray,
            [IsHomogeneousCoherentConfiguration],
    function( A )
        local intersection_array, d, i;
        intersection_array:=[[],[]];
        d:=NumberOfClasses(A);
        if not IsMetric(A) then
          return fail;
        fi;
        for i in [0 .. d-1] do
            Add(intersection_array[1], IntersectionNumber(A, 1, i+1, i));
        od;
        for i in [1 .. d] do
            Add(intersection_array[2], IntersectionNumber(A, 1, i-1, i));
        od;
        return intersection_array;
    end);

InstallMethod( ClassicalParameters, [IsHomogeneousCoherentConfiguration],
  function(A)
    local gauss, construct_array, d, P, b1, b0, possible_Bs, keep, b,
    alpha, beta, classicalparams;

    if not IsMetric(A) then
      return fail;
    fi;

    gauss := function(i, b)
      local o, j;
      o:=0;
      for j in [0 .. i-1] do
        o:=o+b^j;
      od;
      return o;
    end;

    construct_array := function(L)
      local out, i, bi, ci, d, b, alpha, beta;
      d:=L[1];
      b:=L[2];
      alpha:=L[3];
      beta:=L[4];;
      out :=[[], []];
      for i in [0 .. d-1] do
        bi:= (gauss(d, b)-gauss(i,b))*(beta - alpha*gauss(i,b));;
        Add(out[1], bi);;
      od;
      for i in [1 .. d] do
        ci:= gauss(i, b)*(1+alpha*gauss(i-1, b));;
        Add(out[2], ci);
      od;
      return out;
    end;

    d:=NumberOfClasses(A);;
    if d<2 then
      return fail;
    fi;
    P:=MatrixOfEigenvalues(A);;
    b1:=IntersectionNumber(A, 1,2,1);
    possible_Bs := Set([2 .. d+1], t -> (P[t][2]+1));
    possible_Bs := Filtered(possible_Bs, t -> t <> 0);
    possible_Bs := List(possible_Bs, t -> b1/t);
    possible_Bs := Filtered(possible_Bs, t -> not t in [-1,0]);

    keep:=[];

    for b in possible_Bs do
      b0:=IntersectionNumber(A, 1,1,0);
      beta := b0/gauss(d, b);
      alpha := (beta - (b1/(gauss(d,b) - gauss(1,b)))/gauss(1,b));
      Add(keep, [d, b, alpha, beta]);
    od;
    
    classicalparams := Filtered(keep, t -> construct_array(t)=IntersectionArray(A));
    Sort(classicalparams, function(u, v) return u[2]>v[2];end);
    if classicalparams <> [] then
      return classicalparams[1];
    else
      return fail;
    fi;
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