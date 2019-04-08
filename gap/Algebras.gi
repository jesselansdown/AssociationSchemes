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


InstallMethod(IntersectionAlgebra,
  [IsHomogeneousCoherentConfiguration],
  function(A)
    local im, F;
#    F := CF(Maximum(List(Union(MatrixOfEigenvalues(A)), Conductor)));
    F := DefaultFieldOfMatrix(MatrixOfEigenvalues(A));
    im := List(IntersectionMatrices(A), i -> i * One(F));
    return Algebra(F, im);
  end);

InstallMethod(BoseMesnerAlgebra,
  [IsHomogeneousCoherentConfiguration],
  function(A)
    local am, F;    
#    F := CF(Maximum(List(Union(MatrixOfEigenvalues(A)), Conductor)));
    F := DefaultFieldOfMatrix(MatrixOfEigenvalues(A));
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
#    F := CF(Maximum(List(Union(MatrixOfEigenvalues(A)), Conductor)));
    F := DefaultFieldOfMatrix(MatrixOfEigenvalues(A));
    am := MutableCopyMat(AdjacencyMatrices(A));
    d := NumberOfClasses(A);
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
