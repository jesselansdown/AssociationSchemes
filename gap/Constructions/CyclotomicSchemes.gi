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


InstallMethod(MatrixOfEigenvaluesOfCyclotomicScheme,
            [IsPosInt, IsPosInt],
	function(n, d)

		local nu, m, F, FE, FEr, i, P, j, r, factors, x, p, TraceFinite, phi;

		TraceFinite := function(m, q, z)
			if not IsPrimePowerInt(q) then
				return fail;
			fi;
			return Sum(List([0 .. m-1], t -> z^(q^t)));
		end;

		phi := function(m, p, j, x)
			return E(p)^IntFFE(TraceFinite(m, p, j*x));
		end;

		nu:= function(m, p, L)
			return Sum(L, x -> E(p)^IntFFE(Sum(List([0 .. m-1], t -> x^(p^t)))));
		end;

		if not IsPrimePowerInt(n) then
			Error("n  must be a prime power\n");
		fi;
	    if (n-1) mod d <> 0 then
	    	Error("d must divide n-1\n");
	    fi;

	    m := (n - 1) / d;
	    F := GF(n);
	    FE := Elements(F);
	    FEr := [];
	    for i in [1..d] do
	        Add(FEr, Set(List([0..m], x -> Z(n)^(d*x+i))));
	    od;
	    Add(FEr, [0*Z(n)]);
	    FEr := Set(FEr);

	    factors := Factors(n);;

	    r := Size(factors);;
	    p := factors[1];

	    P := NullMat(d+1, d+1);
	    for i in [2 .. d+1] do
	    	P[1][i]:=m;
	    od;
	    for i in [1 .. d+1] do
	    	P[i][1]:=1;
	    od;
	    for i in [0 .. d-1] do
	    	x := nu(r, p, FEr[i+2]);
	    	for j in [0 .. d-1] do
	    		P[ (j) mod d + 2][ (-j + i) mod d +2] := x;
	    	od;
	    od;
	    return P;
end);

InstallMethod(CyclotomicScheme,
			[IsPosInt, IsPosInt],
	
	function(n, d)
	    local i, m, FEr, x, y, M, r, F, FE, A;

	    if (n-1) mod d <> 0 then
	    	Error("d must dived n-1\n");
	    fi;
	    m := (n - 1) / d;
	    F := GF(n);
	    FE := Elements(F);
	    FEr := [];
	    for i in [1..d] do
	        Add(FEr, Set(List([0..m], x -> Z(n)^(d*x+i))));
	    od;
	    Add(FEr, [0*Z(n)]);
	    FEr := Set(FEr);
	    M := NullMat(n, n);
	    for x in [1..n] do
	        for y in [1..n] do
	            for i in [1..d+1] do
	                if FE[x] - FE[y] in FEr[i] then
	                    M[x][y] := i - 1;
	                fi;
	            od;
	        od;
	    od;
		A := HomogeneousCoherentConfigurationNC(M);;
		SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A), MatrixOfEigenvaluesOfCyclotomicScheme(n, d));
		SetDescription(A, [Concatenation("Cyclotomic scheme, Cyc(",String(n),",", String(d), ")")]);
	    return A;
	end);
