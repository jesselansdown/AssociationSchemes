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
		map := MapFromAdjacencyMatricesToMinimalIdempotentsOverRationals(A);;
		if not j in [0 .. Size(map[1])-1] then
			return fail;
		fi;
		if HasMinimalIdempotents(A) then
			return MinimalIdempotentsOverRationals(A)[j+1];
		fi;
		n:=Order(A);
		relmat:=RelationMatrix(A);
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

InstallMethod( MatrixOfDualEigenvalues, 
	"for IsAssociationScheme",
	[ IsHomogeneousCoherentConfiguration ],
	function( a )
		if MatrixOfEigenvalues(a) = fail then
			return fail;
		fi;
		return MatrixOfDualEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(a));
	end );

 InstallMethod( Multiplicities, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
	    local d, nc, idems, n, mults, i;

	    	if MatrixOfEigenvalues(A) <> fail then
	    		return MatrixOfDualEigenvalues(A)[1];
	    	fi;

	        d:=NumberOfClasses(A)+1;;
	        nc := NumberOfCharacters(A);

	        idems := CentralIdempotentsOfIntersectionAlgebra(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));;
	  
	        n := Order(A);
	        mults := List([1 .. nc], t -> 0);
	        for i in [1..nc] do
	            mults[i] := (n * idems[i][1][1]) / Sqrt(Trace(idems[i]));
	        od;
	    
	    return mults;
	end);

 InstallMethod( CharacterTableOfHomogeneousCoherentConfiguration, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
	    local d, nc, idems, ct, n, Val, i, ct2, j, k;

	    	if MatrixOfEigenvalues(A) <> fail then
	    		return MatrixOfEigenvalues(A);
	    	fi;

	        d:=NumberOfClasses(A)+1;;
	        nc := NumberOfCharacters(A);

	        idems := CentralIdempotentsOfIntersectionAlgebra(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A));;
	  
	        ct := NullMat(nc, d + 1);
	        n := Order(A);
	        Val := Valencies(A);
	        for i in [1..nc] do
	            ct[i][1] := Sqrt(Trace(idems[i])); # degree
	            ct[i][d + 1] := Multiplicities(A)[i]; # multiplicity
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
	    
	        for i in [1..nc] do
	            Unbind(ct2[i][d + 1]);
	        od;
	    
	    return ct2;
	end);

InstallMethod( FitMatrixOfEigenvalues, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration, IsMatrix],
	function(A, P)
		return FitMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A), P);
	end);

InstallMethod( CharacterTableOfSchurianHomogeneousCoherentConfiguration, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
	function(A)
		local G, H, chi, const, conj, dcs, P, i, j, P2, vals, f, x;  
		if HasConstructorGroup(A) then
			G:=ConstructorGroup(A);
		elif IsSchurian(A) then
			G:=AutomorphismGroup(A);
		else
			return fail;
		fi;
    	H := Stabilizer(G,1);
    	chi := NaturalCharacter(G);
        const := ConstituentsOfCharacter(chi);
    	conj := ConjugacyClasses( G );
    	dcs := DoubleCosets(G, H, H);

    	P := NullMat(Size(dcs), Size(const));
        for i in [1..Size(dcs)] do
	        for j in [1..Size(const)] do
	              P[j][i] := 1/Size(H) * Sum(List([1..Size(conj)], k -> 
	              Size(Intersection(AsSet(conj[k]), AsSet(dcs[i]) )) * Representative(conj[k])^const[j]));
	        od;
	    od;
	    P2:=[];
	    for i in [1 .. Size(P)] do
	    	if Set(P[i]) <> [0] then
	    		Add(P2, P[i]);
	    	fi;
	  	od;
  	# Put things here to set the character table if it isn't known and won't clash with anything
  	# In particular, if multiplicities aren't known, then this might clash with the idempotent map
  	# Also, P, Q, and the idempotent map could clash if any are known.
  	# For P-matrix, also check that the top row is the one with the valencies - actually, for all?
  	# Also, use the "FitMatrixOfEigenvalues" to fit the matrix appropriately
  	# Fitting can only be done currently for P-matrices?
  	# Don't fit non-square character tables, and print a warning that the columns might be permuted?
	  	vals:=Collected(Valencies(A));
	  	f := First([1 .. Size(P2)], t -> Collected(P2[t])=vals);
	  	x := Remove(P2, f);
	  	P2 := Concatenation([x], P2); # Make sure that valencies are in the first row
	    return P2;
	end);


InstallMethod( IsCharacterTableOfHomogeneousCoherentConfiguration, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration, IsMatrix, IsList],
	function(A, T, mults)
	    local e, i, j, k, AM, r, s, d, v, x, m, n, NT;

	    e := [];
	    m := [];
	    n := Order(A);
	    AM := AdjacencyMatrices(A);
	    AM := IntersectionMatrices(A);
	    d := Length(AM);
	    v := Valencies(A);
	    r := NumberOfCharacters(A);

	    if (r <> Length(T)) or (r <> Length(mults)) then
	        return false;
	    fi;

	    for i in [1..r] do
	        s := 0;
	        for j in [1..d] do
	            s := s + T[i][j] * ComplexConjugate(T[i][j]) / v[j];
	        od;
	        m[i] := T[i][1] * n / s;
	        e[i] := NullMat(n, n);
	        for j in [1..d] do
	            e[i] := e[i] + m[i] / n / v[j] * ComplexConjugate(T[i][j]) * AM[j];
	        od;
	    od;

	    for i in [1..r] do
	        if ForAll([1..d], j -> (e[i] * AM[j] = AM[j] * e[i])) = false then
	            return false;
	        fi;
	    od;

	    if ForAll([1..r], i -> (e[i] * e[i] = e[i])) = false then
	        return false;
	    fi;
	    
	    for i in [1..r] do
	        if ForAll([(i + 1)..r], j -> (IsZero(e[i] * e[j]))) = false then
	            return false;
	        fi;
	    od;

	    if IsOne(Sum(e)) = false then
	        return false;
	    fi;
	    
	    if Length(T[1]) = d then
	        return true;
	    else
	        return  ForAll([1..r], i -> (m[i] = mults[i]));
	    fi;
	end);