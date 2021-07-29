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

InstallMethod( MapFromAdjacencyMatricesToMinimalIdempotents, [IsHomogeneousCoherentConfiguration],
  function(A)
    return MapFromIntersectionMatricesToCentralIdempotents(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
  end);

InstallMethod( MapFromAdjacencyMatricesToMinimalIdempotentsOverRationals, [IsHomogeneousCoherentConfiguration],
  function(A)
    return MapFromIntersectionMatricesToCentralIdempotentsOverRationals(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));
  end);

InstallMethod( MinimalIdempotents, [IsHomogeneousCoherentConfiguration],
	function(a)
		local j, i, mat, idems, d, map, relmat, n, x, y;
			idems:=[];
			d := NumberOfClasses(a);
			map := MapFromAdjacencyMatricesToMinimalIdempotents(a);;
			relmat:=RelationMatrix(a);
			n:=Order(a);
			for j in [0 .. d] do
				mat := NullMat(n, n);;
				for x in [1 .. n] do
					for y in [1 .. n] do
						i:=relmat[x, y];
						mat[x,y]:=map[i+1][j+1];
					od;
				od;
				Add(idems, mat);
			od;
			return idems;
  end);

InstallOtherMethod( MinimalIdempotents, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration, IsInt],
	function(A, j)
		local relmat, mat, a, b, i, map, n;
		if not j in [0 .. NumberOfClasses(A)] then
			return fail;
		fi;
		if HasMinimalIdempotents(A) then
			return MinimalIdempotents(A)[j+1];
		fi;
		n:=Order(A);
		relmat:=RelationMatrix(A);
		map := MapFromAdjacencyMatricesToMinimalIdempotents(A);;
		mat := NullMat(n, n);;
		for a in [1 .. n] do
			for b in [1 .. n] do
				i:=relmat[a, b]+1;
				mat[a,b]:=map[i][j+1];
			od;
		od;
		return mat;
	end);







InstallMethod( MinimalIdempotentsOverRationals, [IsHomogeneousCoherentConfiguration],
	function(a)
		local j, i, mat, idems, d, map, relmat, n, x, y;
			idems:=[];
			d := NumberOfClasses(a);
			map := MapFromAdjacencyMatricesToMinimalIdempotentsOverRationals(a);;
			relmat:=RelationMatrix(a);
			n:=Order(a);
			for j in [0 .. Size(map[1])-1] do
				mat := NullMat(n, n);;
				for x in [1 .. n] do
					for y in [1 .. n] do
						i:=relmat[x, y];
						mat[x,y]:=map[i+1][j+1];
					od;
				od;
				Add(idems, mat);
			od;
			return idems;
  end);

InstallOtherMethod( MinimalIdempotentsOverRationals, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration, IsInt],
	function(A, j)
		local relmat, mat, a, b, i, map, n;
		if not j in [0 .. NumberOfClasses(A)] then
			return fail;
		fi;
		if HasMinimalIdempotents(A) then
			return MinimalIdempotentsOverRationals(A)[j+1];
		fi;
		n:=Order(A);
		relmat:=RelationMatrix(A);
		map := MapFromAdjacencyMatricesToMinimalIdempotentsOverRationals(A);;
		mat := NullMat(n, n);;
		for a in [1 .. n] do
			for b in [1 .. n] do
				i:=relmat[a, b]+1;
				mat[a,b]:=map[i][j+1];
			od;
		od;
		return mat;
	end);

InstallMethod( MatrixOfEigenvalues, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
		local B;
		B := IntersectionAlgebraOfHomogeneousCoherentConfiguration(A);;
		if AdmitsMetricOrdering(A) then
			return MatrixOfEigenvalues(B);
		fi;
		if NumberOfCharacters(A) = NumberOfClasses(A) +1 then
			return MatrixOfEigenvalues(B);
		else
			SetMatrixOfEigenvalues(B, fail);
			return fail;
		fi;
	end);

InstallMethod( DualMatrixOfEigenvalues, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration ],
	function( a )
		if MatrixOfEigenvalues(a) = fail then
			return fail;
		fi;
		return DualMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(a));
	end );

 InstallMethod( CharacterTableOfHomogeneousCoherentConfiguration, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
	    local nc, ct, d, i, j, k, am, n, Val, ct2, im, alg, idems, inter, valencies, polys, CyclotomicLimit, trigger, n2, mult, f, B, FieldLimit;

	    	if MatrixOfEigenvalues(A) <> fail then
	    		ct := NullMat(NumberOfClasses(A)+1, NumberOfClasses(A)+2);
	    		for i in [1 .. NumberOfClasses(A)+1] do
	    			for j in [1 .. NumberOfClasses(A)+1] do
	    				ct[i][j] := MatrixOfEigenvalues(A)[i][j];
	    			od;
	    		od;
	    		for i in [1 .. NumberOfClasses(A)+1] do
	    			ct[i][NumberOfClasses(A)+2] := DualMatrixOfEigenvalues(A)[1][i];
	    		od;
	    		return ct;
	    	fi;
	        inter:=IntersectionMatrices(A);
	        d:=NumberOfClasses(A)+1;;
	        nc := NumberOfCharacters(A);

	        idems := CentralIdempotentsOfIntersectionAlgebra(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));;
	  
	        ct := NullMat(nc, d + 1);
	        am := AdjacencyMatrices(A);
	        n := Order(A);
	        Val := Valencies(A);
	        for i in [1..nc] do
	            ct[i][1] := Sqrt(Trace(idems[i])); # degree
	            B := NullMat(n, n);
	            for j in [1..d] do
	                B := B + am[j] * idems[i][1][j];
	            od;
	            ct[i][d + 1] := Trace(B) / ct[i][1]; # multiplicity
	            for j in [2..d] do
	                ct[i][j] := idems[i][1][j] * n * Val[j] / ct[i][d + 1];
	            od;
	        od;

	        ct2 := NullMat(nc, d + 1);
	        for j in [1..d] do
	            ct2[1][j] := Val[j];
	        od;
	        ct2[1][d + 1] := 1;
	        k := 2;
	        for i in [1..nc] do
	            if ct[i] <> ct2[1] then
	                for j in [1..d+1] do
	                    ct2[k][j] := ct[i][j];
	                od;
	                k := k + 1;
	            fi;
	        od;

	        for i in [2..nc] do
	            for j in [nc, nc-1..i+1] do
	                if ct2[j][d+1] / ct2[j][1] < ct2[j-1][d+1] / ct2[j-1][1] then
	                    k := ct2[j]; ct2[j] := ct2[j-1]; ct2[j-1] := k;
	                fi;
	            od;
	        od;
	    
#	        for i in [1..nc] do
#	            Unbind(ct2[i][d + 1]);
#	        od;
	    
	    return ct2;
	end);

InstallMethod( FitMatrixOfEigenvalues, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration, IsMatrix],
	function(A, P)
		return FitMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A), P);
	end);