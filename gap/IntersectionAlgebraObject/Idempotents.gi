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
				poly, breakdownpoly, e, nchar;

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

	    if HasDualMatrixOfEigenvalues(A) then
	    	if DualMatrixOfEigenvalues(A)<>fail then
		    	return DualMatrixOfEigenvalues(A)/Order(A);
		    fi;
	    fi;

		inter := IntersectionMatrices(A);
		e := Sum(inter)/Order(A);
		d := NumberOfClasses(A);;

		if IsCommutative(A) or HasNumberOfCharacters(A) then
			if IsCommutative(A) then
				nchar := d+1;
			else
				nchar := HasNumberOfCharacters(A);
			fi;
		    Alg := Algebra(Rationals, IntersectionMatrices(A));
		    RIdem := CentralIdempotentsOfAlgebra(Alg);
		    RIdem := Filtered(RIdem, t -> t <> e);;
		    RIdem := Concatenation([e], RIdem);;
		    if IsRationals(SplittingField(A)) then
		        if Length(RIdem) <> d+1 then
		            Error("Wrong number of idempotents!\n");
		        fi;
		        reps:=List(inter, t -> t[1]);;
		        return TransposedMat(List(RIdem, t -> SolutionMat(reps, t[1])));
		    else
		        L := DivisorsInt(Conductor(SplittingField(A)));
		        L := Filtered(L, t -> t<>1);
		        L := List(L, i->CF(i));
		        Idem := [IdentityMat(NumberOfClasses(A)+1)];
		        for F in L do
		            for i in [1..Length(RIdem)] do
		                IM2 := List(IntersectionMatrices(A), x -> x*RIdem[i]);
		                Add(IM2, IdentityMat(NumberOfClasses(A)+1));
		                IM2 := Set(IM2);
		                Alg := Algebra(F, IM2);
		                lenIdem := Length(Idem);
		                UniteSet(Idem, CentralIdempotentsOfAlgebra(Alg));
		                if Length(Idem) > lenIdem then
		                    Idem := SimplifyIdem(Idem);
		                    if Length(Idem) = nchar then
	               			    Idem := Filtered(Idem, t -> t <> e);;
							    Idem := Concatenation([e], Idem);;
		                        reps:=List(inter, t -> t[1]);;
		                        return TransposedMat(List(Idem, t -> SolutionMat(reps, t[1])));
		                    fi;
		                fi;
		            od;
		        od;
		    fi;
		else
		    Alg := Algebra(SplittingField(A), IntersectionMatrices(A));
		    RIdem := CentralIdempotentsOfAlgebra(Alg);
		    RIdem := Filtered(RIdem, t -> t <> e);;
		    RIdem := Concatenation([e], RIdem);;
	        reps:=List(inter, t -> t[1]);;
	        return TransposedMat(List(RIdem, t -> SolutionMat(reps, t[1])));
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

InstallMethod( DualMatrixOfEigenvalues, 
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

 InstallOtherMethod( MatrixOfEigenvalues, 
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
			TryNextMethod();
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
		return Inverse(DualMatrixOfEigenvalues(A))*Order(A);
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
				local i2, j2, eig, out, M2, eigs2, x;
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

