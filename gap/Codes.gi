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


InstallMethod(InnerDistribution,
  [IsList, IsHomogeneousCoherentConfiguration],
  function(v, sch)
      if not IsCommutative(sch) then
        Error("Must give a commutative coherent configuration.\n");
      fi;
      if Size(v)<> Order(sch) or ForAny(v, t -> not t in Rationals) then
        Error("Must give a vector in R^n\n");
      fi;
      return List(AdjacencyMatrices(sch), t -> (v*t*v)/(v*v));
    end);

InstallMethod(MacWilliamsTransform,
  [IsList, IsHomogeneousCoherentConfiguration],
  function(v, sch)
      if not IsCommutative(sch) then
        Error("Must give a commutative coherent configuration.\n");
      fi;
      if ForAny(v, t -> not t in Rationals) then
        Error("Must give a vector with rational entries.\n");
      fi;
      if Size(v) = NumberOfClasses(sch)+1 then
        return v*DualMatrixOfEigenvalues(sch);
      elif Size(v) = Order(sch) then
        return InnerDistribution(v, sch)*DualMatrixOfEigenvalues(sch);
      else
        Error("Must give either a vector in R^n or its innter distribution vector.\n");
      fi;
    end);

InstallMethod(DualBoseMesnerBasis,
  [IsHomogeneousCoherentConfiguration, IsPosInt],
  function(A, p)
    local d, n, basis, i, y;
    d:=NumberOfClasses(A);
    n:=Order(A);;
    basis := List([0..d], t -> NullMat(n, n));;
    for i in [0 .. d] do
      for y in [1 .. n] do
        if Relation(A, p, y)=i then
          basis[i+1][y, y]:=1;
        fi;
      od;
    od;
    return basis;
  end);

InstallMethod(DualBoseMesnerBasis,
  [IsHomogeneousCoherentConfiguration],
  function(A)
    local d, n, basis, i, y;
    d:=NumberOfClasses(A);
    n:=Order(A);;
    basis := List([0..d], t -> NullMat(n, n));;
    for i in [0 .. d] do
      for y in [1 .. n] do
        if Relation(A, 1, y)=i then
          basis[i+1][y, y]:=1;
        fi;
      od;
    od;
    return basis;
  end);

InstallMethod(OuterDistribution,
  [IsList, IsHomogeneousCoherentConfiguration],
  function(v, sch)
      local d, B, adj, i;
      if not IsCommutative(sch) then
        Error("Must give a commutative coherent configuration.\n");
      fi;
      if Size(v)<> Order(sch) or ForAny(v, t -> not t in Rationals) then
        Error("Must give a vector in R^n\n");
      fi;
      d:=NumberOfClasses(sch);
      B:=[];;
      adj :=AdjacencyMatrices(sch);
      for i in [1 .. d+1] do
        Add(B, adj[i]*v);
      od;
      return TransposedMat(B);
    end);