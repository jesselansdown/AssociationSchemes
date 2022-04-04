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

 InstallMethod( MapFromIntersectionMatricesToCentralIdempotents, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject],
	function(A)
		local inter, idems, alg, reps, P1, k, i, valencies, d, P2, B, Q, m, v, vals, n, f, pol, perm, L, ks, eigs,
				polys, eig, lambda, P, factored, done, good, notdone, RIdem, Alg, Idem, F, IM2, lenIdem, SimplifyIdem,
				poly, breakdownpoly, e, nchar, Idem2;

	    SimplifyIdem := function(idem)
	        local i, j, idem2, IsPrim;
	        
	        IsPrim := function(a)
	            local j, k;
	            
	            for j in idem2 do
	                k := a * j;
	                if (a <> k) and (IsZero(k) = false) then
	                    return false;
	                fi;
	            od;
	            return true;
	        end;
	        
	        idem2 := [];
	        for i in [1..Length(idem)] do
	            for j in [i..Length(idem)] do
	                AddSet(idem2, idem[i] * idem[j]);
	            od;
	        od;
	        idem2 := Set(idem2);
	        idem2 := Filtered(idem2, i -> (IsZero(i) = false));
	        idem2 := Filtered(idem2, i -> (IsPrim(i) = true));

	        return idem2;
	    end;

	    if HasMatrixOfEigenvalues(A) and MatrixOfEigenvalues(A)<>fail then
	    	MatrixOfDualEigenvalues(A);
	    fi;

	    if HasMatrixOfDualEigenvalues(A) then
	    	if MatrixOfDualEigenvalues(A)<>fail then
		    	return MatrixOfDualEigenvalues(A)/Order(A);
		    fi;
	    fi;

		inter := IntersectionMatrices(A);
		e := Sum(inter)/Order(A);
		d := NumberOfClasses(A);;

		if IsCommutative(A) or HasNumberOfCharacters(A) then
			if IsCommutative(A) then
				nchar := d+1;
			else
				nchar := NumberOfCharacters(A);
			fi;
		    Alg := Algebra(Rationals, IntersectionMatrices(A));
		    RIdem := CentralIdempotentsOfAlgebra(Alg);
		    RIdem := Filtered(RIdem, t -> t <> e);;
		    RIdem := Concatenation([e], RIdem);;
		    if Length(RIdem) = nchar then
		        reps:=List(inter, t -> t[1]);;
		        return TransposedMat(List(RIdem, t -> SolutionMat(reps, t[1])));
		    else
		        Idem := StructuralCopy(RIdem);;
		        if nchar < d +1 and not HasSplittingField(A) then # First try computing idempotents over a guessed fields, since computing the splitting field may be slow and unnecessary
		        	L := Set(Valencies(A));
		        	Add(L, Order(A));
					L := DivisorsInt( Lcm(L) * 4 );
    				L := Filtered(L, i -> (i <= 100)); # just to put a limit on the guesses before moving to computing splitting field
			        L := Filtered(L, t -> not t in [1, 2]);
			        L := List(L, i->CF(i));
			        for F in L do
			        	Idem2 := [];;
			            for i in [1..Length(Idem)] do
			            	if Conductor(F) mod Conductor(DefaultFieldOfMatrix(Idem[i])) = 0 then
				                IM2 := List(IntersectionMatrices(A), x -> x*Idem[i]);
				                Add(IM2, IdentityMat(NumberOfClasses(A)+1));
				                IM2 := Set(IM2);
				                Alg := Algebra(F, IM2);
				                Append(Idem2, CentralIdempotentsOfAlgebra(Alg));
				            else
				            	Add(Idem2, Idem[i]);
				            fi;
			            od;
			            Idem:=Set(Idem2);
			            Idem:=SimplifyIdem(Idem);;
			            if Length(Idem) = nchar then
			            	break;
			            fi;
			        od;
			        if Length(Idem) = nchar then
			           	Idem := Filtered(Idem, t -> t <> e);;
						Idem := Concatenation([e], Idem);;
				        reps:=List(inter, t -> t[1]);;
				        return TransposedMat(List(Idem, t -> SolutionMat(reps, t[1])));
				    fi;
		        fi;
		        # If this has failed, then find the splitting field and repeat. Any that have been found already will be kept
		        L := DivisorsInt(Conductor(SplittingField(A)));
		        L := Filtered(L, t -> not t in [1, 2]);
		        L := List(L, i->CF(i));
		        for F in L do
		        	Idem2 := [];;
		            for i in [1..Length(Idem)] do
		            	if Conductor(F) mod Conductor(DefaultFieldOfMatrix(Idem[i])) = 0 then
			                IM2 := List(IntersectionMatrices(A), x -> x*Idem[i]);
			                Add(IM2, IdentityMat(NumberOfClasses(A)+1));
			                IM2 := Set(IM2);
			                Alg := Algebra(F, IM2);
			                Append(Idem2, CentralIdempotentsOfAlgebra(Alg));
			            else
			            	Add(Idem2, Idem[i]);
			            fi;
		            od;
		            Idem:=Set(Idem2);
		            Idem:=SimplifyIdem(Idem);;
		            if Length(Idem) = nchar then
		            	break;
		            fi;
		        od;
	           	Idem := Filtered(Idem, t -> t <> e);;
				Idem := Concatenation([e], Idem);;
		        reps:=List(inter, t -> t[1]);;
		        return TransposedMat(List(Idem, t -> SolutionMat(reps, t[1])));
		    fi;
		else
		    L := DivisorsInt(Conductor(SplittingField(A)));
		    L := Filtered(L, t -> not t in [1, 2]);
		    L := List(L, i->CF(i));
		    for F in L do
		        Idem2 := [];;
		        for i in [1..Length(Idem)] do
		            if Conductor(F) mod Conductor(DefaultFieldOfMatrix(Idem[i])) = 0 then
			            IM2 := List(IntersectionMatrices(A), x -> x*Idem[i]);
			            Add(IM2, IdentityMat(NumberOfClasses(A)+1));
			            IM2 := Set(IM2);
			            Alg := Algebra(F, IM2);
			            Append(Idem2, CentralIdempotentsOfAlgebra(Alg));
			        else
			            Add(Idem2, Idem[i]);
			        fi;
		        od;
		        Idem:=Set(Idem2);
		        Idem:=SimplifyIdem(Idem);;
		    od;
		    # still better to split as above, just can't terminate early if the right number of characters are found.
	        Idem := Filtered(Idem, t -> t <> e);;
			Idem := Concatenation([e], Idem);;
		    reps:=List(inter, t -> t[1]);;
		    return TransposedMat(List(Idem, t -> SolutionMat(reps, t[1])));
		fi;
	end);

 InstallMethod( MapFromIntersectionMatricesToCentralIdempotentsOverRationals, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject],
	function(A)
		local inter, e, Alg, RIdem, reps;

		inter := IntersectionMatrices(A);
		e := Sum(inter)/Order(A);

	    Alg := Algebra(Rationals, IntersectionMatrices(A));
	    RIdem := CentralIdempotentsOfAlgebra(Alg);
	    RIdem := Filtered(RIdem, t -> t <> e);;
	    RIdem := Concatenation([e], RIdem);;
        reps:=List(inter, t -> t[1]);;
        return TransposedMat(List(RIdem, t -> SolutionMat(reps, t[1])));
	end);

 InstallMethod( CentralIdempotentsOfIntersectionAlgebra, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject],
	function(A)
		local inter, map;
		inter:=IntersectionMatrices(A);;
		map:=TransposedMat(MapFromIntersectionMatricesToCentralIdempotents(A));
		return List(map, t -> inter*t);
	end);

 InstallMethod( CentralIdempotentsOfIntersectionAlgebraOverRationals, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject],
	function(A)
		local inter, map;
		inter:=IntersectionMatrices(A);;
		map:=TransposedMat(MapFromIntersectionMatricesToCentralIdempotentsOverRationals(A));
		return List(map, t -> inter*t);
	end);

InstallMethod( MatrixOfDualEigenvalues, 
	"for IsAssociationScheme",
	[ IsIntersectionAlgebraObject ],
	function( a )
		local map;
		if HasMatrixOfEigenvalues(a) then
			return Inverse(MatrixOfEigenvalues(a))*Order(a);
		fi;
		map := MapFromIntersectionMatricesToCentralIdempotents(a);;
		return map*Order(a);
	end );

 InstallMethod( MatrixOfEigenvaluesForMetricScheme, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject and AdmitsPPolynomialOrdering],
	function(A)
		local inter, idems, alg, reps, P1, k, i, valencies, d, P2, B, Q, m, v, vals, n, f, pol, perm, L, ks, eigs,
				polys, eig, lambda, P, factored, done, good, notdone, RIdem, Alg, Idem, F, IM2, lenIdem, SimplifyIdem,
				poly, breakdownpoly;
#		Print("USING METRIC METHOD!\n");
		breakdownpoly := function(poly)
			local m, n, factored;
			if Degree(poly) = 1 then
				return [poly];
			fi;
			m := Conductor(DefaultField(CoefficientsOfUnivariatePolynomial(poly)));
			n:=1;
			while true do
				factored:=Factors(PolynomialRing(CF(n*m)), poly);
				if Size(factored) > 1 then
					return factored;
				fi;
				n:=n+1;
			od;
		end;

		perm:=MutableCopyMat(FirstMetricOrdering(A));
		Remove(perm, 1);
		perm:=PermList(perm);
		B:=ReorderRelations(A, Concatenation([0], Permuted([1 .. NumberOfClasses(A)], Inverse(perm))));
		L:=TransposedMat(IntersectionMatrices(B)[2]);
		d:=NumberOfClasses(B);
		ks:=List([0 .. d], t -> IntersectionNumber(B, t,t, 0));

		if ForAny(ks, t -> t=0) then
			return fail;
		fi;
	
		polys:=MinimalPolynomial(L);;
		polys:=Factors(polys);
		done:=[];
		while polys <> [] do
			poly:=Remove(polys, 1);
			if Degree(poly) = 1 then
				Add(done, poly);
			else
				polys:=Concatenation(polys, breakdownpoly(poly));
			fi;
		od;
		eigs := Concatenation(List(done, t -> RootsOfPolynomial(t)));

		if Size(eigs) <> d+1 then
			Error("wrong number of eigenvalues!");
		fi;

		# Compute standard sequences and hence eigenvectors
		vals:=[];;
		for lambda in eigs do
			eig := [1, lambda / ks[2] ];;
			for i in [ 1 .. Size(L)-2] do
				Add( eig, ( lambda*eig[Size(eig)] - L[i+1][i+1]*eig[Size(eig)] - L[i+1][i]*eig[Size(eig)-1])/L[i+1][i+2] );
			od;
			Add(vals, eig);
		od;

		# Compute dual matrix of eigenvalues
		Q:=[];;
		for v in vals do
			m := Sum(ks)/Sum(List([1 .. d+1], t -> ks[t]*v[t]^2));
			Add(Q, v*m);;
		od;
		Q:=TransposedMat(Q);
		P:=Inverse(Q)*Order(B);
		SetMatrixOfEigenvalues(B, P);
		B:=ReorderRelations(B, Concatenation([0], Permuted([1 .. NumberOfClasses(A)], perm)));
		return MatrixOfEigenvalues(B);
	end);

 InstallOtherMethod( MatrixOfEigenvalues, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject],
	function(A)
		local q, P2, params, n, k, L, M, s, r, P, min;
		# If MatrixOfDualEigenvalues or MapFromIntersectionMatricesToCentralIdempotents are known,
		# these should be used to compute the P-matrix, or there could be conflicts.
		if (not HasMatrixOfDualEigenvalues(A)) and (not HasMapFromIntersectionMatricesToCentralIdempotents(A)) then
			# if it is an SRG or DSRG, compute directly:
			if NumberOfClasses(A)=2 then
				if IsSymmetricIntersectionAlgebra(A) then
					params:=StronglyRegularGraphParameters(A);
					n:=params[1];
					k:=params[2];
					L:=params[3];
					M:=params[4];

					s := ( (L - M) + Sqrt( (L - M)^2 + 4 * (k - M) ) )/2;
					r := ( (L - M) - Sqrt( (L - M)^2 + 4 * (k - M) ) )/2;
				else
					n:=Order(A);
					k:=IntersectionNumber(A, 1,2,0);
					L:=IntersectionNumber(A,1,1,1);
					M:=IntersectionNumber(A,1,1,2);

					s := ( (L - M) + Sqrt( (L - M)^2 + 4 * (-M) ) )/2;
					r := ( (L - M) - Sqrt( (L - M)^2 + 4 * (-M) ) )/2;
				fi;
				min:=MinimalPolynomial(IntersectionMatrices(A)[2]);;
				if ForAll([k, s, r], t -> Value(min, t)=0) then
					P:= [
					[ 1 , k, n - k - 1],
					[1 , s, -s -1],
					[1, r, -r -1]
					];
					return P;
				fi;
			fi;

			# Could the scheme be cyclotomic?
			if IsPrimePowerInt(Order(A)) then
				q:=Set(Factors(Order(A)))[1];
				if (q-1) mod NumberOfClasses(A) = 0 then
					# If the field is rational and the rank small enough, it is probably faster
					# to compute the P-matrix directly
					if (not HasRationalSplittingField(A)) or NumberOfClasses(A) > 10 then
						P2:=FitMatrixOfEigenvalues(A, MatrixOfEigenvaluesOfCyclotomicScheme(Order(A), NumberOfClasses(A)));
						if P2 <> fail then
							return P2;
						fi;
					fi;
				fi;
			fi;
			# If the scheme is metric, it will typically be much faster to compute the P-matrix
			# using DRG theory (assuming no known P-matrix could be fitted) than to compute generically
			if AdmitsPPolynomialOrdering(A) then
				P2 := MatrixOfEigenvaluesForMetricScheme(A);
				if P2 <> fail then
					return P2;
				fi;
			fi;
		fi;
		return Inverse(MatrixOfDualEigenvalues(A))*Order(A);
	end);








InstallMethod(IsMatrixOfEigenvalues,
			[IsIntersectionAlgebraObject, IsMatrix],
	function(a, P)
        # Find minimal idempotents of the intersection matrix
        # Check that they are actually minimal idempotents
        # The intersection algebra is isomorphic to the Bose-Mesner algebra
        # The adjacency matrices are in bijection with the intersection matrices.
        # Note: This assumes that we can construct the Bose-Mesner algebra, i.e commutative
        local j, i, mat, idems, d, Q, adjacencymatrices;
        if not Size(P) = Size(P[1]) then
            Print("This method is only for square matrices\n");
            return fail;
        fi;
        Q:=Inverse(P);
        if Q = fail then
#        	Print("The character table is not invertible\n");
        	return fail;
        fi;
        idems:=[];
        d := NumberOfClasses(a);
        adjacencymatrices := IntersectionMatrices(a);;
        for j in [1 .. d+1] do
            mat:=Q[1][j]*adjacencymatrices[1];;
            for i in [2 .. d+1] do
                mat := mat + Q[i][j]*adjacencymatrices[i];;
            od;
            Add(idems, mat);
        od;
        for i in [1 .. d+1] do
            for j in [1 .. d+1] do
                if i <> j then
                    if not IsZero(idems[i]*idems[j]) then
                        return false;
                    fi;
                else
                    if not (idems[i]*idems[j]=idems[i]) then
                        return false;
                    fi;
                fi;
            od;
        od;
        return true;
   	end );

InstallMethod( MatrixOfEigenvaluesViaBacktrack, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject],
	function(A)
		# This is an operation, so as not to conflict with the default method. But it should really be a method.
		# I need to work out the relevant filters to select it.
		local ComputePMatrixViaBackTrack, P;
		ComputePMatrixViaBackTrack := function(A)
			local PopulateMatrixOfEigenvalues, eigs, M, i, breakdownpoly, inter, poly, polys, done, x, v;

			if not IsCommutative(A) then
				return fail;
			fi;
			PopulateMatrixOfEigenvalues := function(A, M, eigs, i, j, n)
				local i2, j2, eig, out, M2, eigs2, x, v;
				if i = n and j = n then
					if IsMatrixOfEigenvalues(A, M) = true then
						return M;
					else
						return fail;
					fi;
				else
					if j = n then
						if Sum(M[i]) <> 0 then
							return fail;
						fi;
						for v in [1 .. i-1] do
							if Sum(List([1 .. n], t -> M[i][t]*ComplexConjugate(M[v][t])/Valencies(A)[t]))<>0 then
								return fail;
							fi;
						od;
						# check that it is a valid row on its own and with the previous rows
						# if not, return fail
						i2 := i+1;
						j2 := 3;
					else
						i2:= i;
						j2:= j+1;
					fi;
				fi;
				for eig in eigs[j2] do
					M2 := StructuralCopy(M);;
					M2[i2][j2]:= eig;
					eigs2 := StructuralCopy(eigs);
					x := First([1 .. Size(eigs[j2])], t -> eigs[j2][t]=eig);
					Remove(eigs2[j2], x);
					out := PopulateMatrixOfEigenvalues(A, M2, eigs2, i2, j2, n);
					if out <> fail then
						return out;
					fi;
				od;
				return fail;
			end;

			breakdownpoly := function(poly)
				local m, n, factored;
				if Degree(poly) = 1 then
					return [poly];
				fi;
				m := Conductor(DefaultField(CoefficientsOfUnivariatePolynomial(poly)));
				n:=1;
				while true do
					factored:=Factors(PolynomialRing(CF(n*m)), poly);
					if Size(factored) > 1 then
						return factored;
					fi;
					n:=n+1;
				od;
			end;

			if IsPrimePowerInt(Order(A)) and (Order(A)-1) mod NumberOfClasses(A) = 0 and Size(Set(Valencies(A){[2..NumberOfClasses(A)+1]}))=1 and Size(Set(List(IntersectionMatrices(A), CharacteristicPolynomial)))=2 then
				eigs:=MutableCopyMat(TransposedMat(MatrixOfEigenvaluesOfCyclotomicScheme(Order(A), NumberOfClasses(A))));
				inter:=IntersectionMatrices(A);
				polys:=List(inter, CharacteristicPolynomial);
				if not ForAll([1.. NumberOfClasses(A)+1], t -> ForAll(eigs[t], x -> IsZero(Value(polys[t], x)))) then
					eigs:=[];
					for i in [1 .. Size(inter)] do
						polys:=CharacteristicPolynomial(inter[i]);
						polys:=Factors(polys);
						done:=[];
						while polys <> [] do
							poly:=Remove(polys, 1);
							if Degree(poly) = 1 then
								Add(done, poly);
							else
								polys:=Concatenation(polys, breakdownpoly(poly));
							fi;
						od;
						Add(eigs, Concatenation(List(done, t -> RootsOfPolynomial(t))));
					od;
				fi;
			else
				inter:=IntersectionMatrices(A);
				eigs:=[];
				for i in [1 .. Size(inter)] do
					polys:=CharacteristicPolynomial(inter[i]);
					polys:=Factors(polys);
					done:=[];
					while polys <> [] do
						poly:=Remove(polys, 1);
						if Degree(poly) = 1 then
							Add(done, poly);
						else
							polys:=Concatenation(polys, breakdownpoly(poly));
						fi;
					od;
					Add(eigs, Concatenation(List(done, t -> RootsOfPolynomial(t))));
				od;
			fi;

			for i in [1 .. NumberOfClasses(A)+1] do
				x:=First([1 .. Size(eigs[i])], t -> eigs[i][t] = Valencies(A)[i]);
				Remove(eigs[i], x);
			od;
		#	Print("+\n");
			M:=NullMat(NumberOfClasses(A)+1, NumberOfClasses(A)+1);;
			M[1]:=Valencies(A);
			for i in [2 .. NumberOfClasses(A)+1] do
				M[i][1]:=1;
				M[i][2]:=eigs[2][i-1];
			od;
			return PopulateMatrixOfEigenvalues(A, M, eigs, 2, 2, NumberOfClasses(A)+1);
		end;
#	Print("USING BACKTRACK METHOD!\n");
	if not HasMatrixOfEigenvalues(A) then
		P := ComputePMatrixViaBackTrack(A);
		SetMatrixOfEigenvalues(A, P);
	fi;
	return MatrixOfEigenvalues(A);
end);

InstallMethod( FitMatrixOfEigenvalues, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject, IsMatrix],
	function(A, P)
		local B, map, d, P2, i, j;
		B := IntersectionAlgebraFromMatrixOfEigenvalues(P);
		if B = fail then
			return fail;
		fi;
		map := IsomorphismIntersectionAlgebras(B, A);
		if map = fail then
			return fail;
		fi;
		d:=NumberOfClasses(A);
		P2:=NullMat(d+1, d+1);;
		for i in [0 .. d] do
			for j in [0 .. d] do
				if j = 0 then
					P2[i+1][j+1]:=P[i+1][j+1];
				else
					P2[i+1][j+1] := P[i+1][j^map + 1];
				fi;
			od;
		od;
		if IsMatrixOfEigenvalues(A, P2) then
			if (not HasMatrixOfEigenvalues(A)) and (not HasMatrixOfDualEigenvalues(A)) and (not HasMapFromIntersectionMatricesToCentralIdempotents(A)) then
				SetMatrixOfEigenvalues(A, P2);;
			fi;
			return P2;
		fi;
		return fail;
	end);
