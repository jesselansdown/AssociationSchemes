  #############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
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
      if Size(v) = ClassOfAssociationScheme(sch)+1 then
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
    d:=ClassOfAssociationScheme(A);
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
    d:=ClassOfAssociationScheme(A);
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