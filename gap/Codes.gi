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

