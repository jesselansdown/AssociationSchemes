  #############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################


InstallMethod(IntersectionAlgebra,
  [IsHomogeneousCoherentConfiguration],
  function(A)
    local im, F;  
    F := CF(Maximum(List(Union(MatrixOfEigenvalues(A)), Conductor)));
    im := List(IntersectionMatrices(A), i -> i * One(F));
    return Algebra(F, im);
  end);

InstallMethod(BoseMesnerAlgebra,
  [IsHomogeneousCoherentConfiguration],
  function(A)
    local am, F;    
    F := CF(Maximum(List(Union(MatrixOfEigenvalues(A)), Conductor)));    
    am := List(AdjacencyMatrices(A), i -> i * One(F));
    return Algebra(F, am);
  end);

InstallMethod(AdjacencyAlgebra,
  [IsHomogeneousCoherentConfiguration],
  function(A)
    return BoseMesnerAlgebra(A);
  end);


InstallMethod(TerwilligerAlgebra,
  [IsHomogeneousCoherentConfiguration, IsInt],
  function(A, p)
    local am, F, i, j, d, nei, m, n;
    F := CF(Maximum(List(Union(MatrixOfEigenvalues(A)), Conductor)));
    am := MutableCopyMat(AdjacencyMatrices(A));
    d := ClassOfAssociationScheme(A);
    n := Order(A);
    for i in [0.. d] do
        nei := Neighbours(A, p, [i]);
        m := [];
        for j in [1..n] do
            if j in nei then
                m[j] := 1;
            else
                m[j] := 0;
            fi;
        od;
        m := DiagonalMat(m);
        Add(am, m);
    od;
        
    am := List(am, i -> i * One(F));
    return Algebra(F, am);
  end);

InstallMethod(TerwilligerAlgebra,
  [IsHomogeneousCoherentConfiguration],
  function(A)
    return TerwilligerAlgebra(A, 1);
  end);
