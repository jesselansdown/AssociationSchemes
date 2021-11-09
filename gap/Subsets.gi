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



InstallMethod(CharacteristicVector,
  [IsList, IsList],
  function( Y, X )
    local chi, x; 
    if not IsDuplicateFreeList(Y) then
      Error("Y must be a duplicate free list.\n");
    fi;
    chi := ListWithIdenticalEntries(Size(Y), 0);;
    for x in X do
      if not x in Y then
        Error("You must give a valid subset\n");
      fi;
      chi[Position(Y, x)] := 1;
    od;
    return chi;
  end);

InstallMethod(CharacteristicVector,
  [IsList, IsPosInt],
  function( X, n )
    local chi, x;
    chi := ListWithIdenticalEntries(n, 0);;
    for x in X do
      if not IsPosInt(x) or x > n then
        Error("You must give a subset of [1 .. ", String(n) ,"].\n");
      fi;
      chi[x] := 1;
    od;
    return chi;
  end);

InstallMethod(InnerDistribution,
  [IsHomogeneousCoherentConfiguration, IsList],
  function(sch, v)
      if not IsCommutative(sch) then
        Error("Must give a commutative coherent configuration.\n");
      fi;
      if Size(v)<> Order(sch) or ForAny(v, t -> not t in Rationals) then
        Error("Must give a vector in R^n\n");
      fi;
      return List(AdjacencyMatrices(sch), t -> (v*t*v)/(v*v));
    end);

InstallMethod(MacWilliamsTransform,
  [IsHomogeneousCoherentConfiguration, IsList],
  function(sch, v)
      if not IsCommutative(sch) then
        Error("Must give a commutative coherent configuration.\n");
      fi;
      if ForAny(v, t -> not t in Rationals) then
        Error("Must give a vector with rational entries.\n");
      fi;
      if Size(v) = NumberOfClasses(sch)+1 then
        return v*MatrixOfDualEigenvalues(sch);
      elif Size(v) = Order(sch) then
        return InnerDistribution(v, sch)*MatrixOfDualEigenvalues(sch);
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
  [IsHomogeneousCoherentConfiguration, IsList],
  function(sch, v)
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

InstallMethod(DelsarteDesignType,
  [IsHomogeneousCoherentConfiguration, IsList],
  function(A, s)
    local i, j, x, T;
    if not IsSubset([1 .. Order(A)], s) then
      Error("s must be a subset of the vertices!\n");
    fi;
    x:=ListWithIdenticalEntries(Order(A), 0);
    x{s}:=ListWithIdenticalEntries(Size(s), 1); 
    T := [];
    for i in [1 .. NumberOfCharacters(A)-1] do
      if Set(Flat(x*MinimalIdempotents(A, i)))=[0] then
        Add(T, i);
      fi;
    od;
    return T;
  end);

InstallMethod(WeightedDelsarteDesignType,
  [IsHomogeneousCoherentConfiguration, IsList],
  function(A, v)
    local i, j, T;
    if Size(v)<>Order(A) then
      Error("v must be a weighted vector!\n");
    fi;
    T := [];
    for i in [1 .. NumberOfCharacters(A)-1] do
      if Set(Flat(v*MinimalIdempotents(A, i)))=[0] then
        Add(T, i);
      fi;
    od;
    return T;
  end);

InstallMethod(IsDelsarteTDesign,
  [IsHomogeneousCoherentConfiguration, IsList, IsList],
  function(A, s, T)
    local H;
    if Size(s) = Order(A) then
      H:=WeightedDelsarteDesignType(A, s);
    else
      H:=DelsarteDesignType(A, s);
    fi;
    if IsSubset(H, T) then
      return true;
    else
      return false;
    fi;
  end);

InstallMethod(DualDegreeSet,
  [IsHomogeneousCoherentConfiguration, IsList],
  function(A, s)
    local i, j, x, T;
    if not IsSubset([1 .. Order(A)], s) then
      Error("s must be a subset of the vertices!\n");
    fi;
    x:=ListWithIdenticalEntries(Order(A), 0);
    x{s}:=ListWithIdenticalEntries(Size(s), 1); 
    T := [];
    for i in [1 .. NumberOfCharacters(A)-1] do
      if Set(Flat(x*MinimalIdempotents(A, i)))<>[0] then
        Add(T, i);
      fi;
    od;
    return T;
  end);

InstallMethod(WeightedDualDegreeSet,
  [IsHomogeneousCoherentConfiguration, IsList],
  function(A, v)
    local i, j, T;
    if Size(v)<>Order(A) then
      Error("v must be a weighted vector!\n");
    fi;
    T := [];
    for i in [1 .. NumberOfCharacters(A)-1] do
      if Set(Flat(v*MinimalIdempotents(A, i)))<>[0] then
        Add(T, i);
      fi;
    od;
    return T;
  end);


InstallMethod(AreDesignOrthogonal,
  [IsHomogeneousCoherentConfiguration, IsList, IsList],
  function(A, s1, s2)
    local T1, T2, H1, H2;
    if Size(s1) = Order(A) then
      T1:=WeightedDualDegreeSet(A, s1);
    else
      T1:=DualDegreeSet(A, s1);
    fi;
    if Size(s2) = Order(A) then
      T2:=WeightedDualDegreeSet(A, s2);
    else
      T2:=DualDegreeSet(A, s2);
    fi;
    if IsEmpty(Intersection(T1, T2)) then
      return true;
    else
      return false;
    fi;
  end);
