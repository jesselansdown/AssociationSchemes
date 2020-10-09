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

# Take a matrix and return a TheTypeAssociationScheme object.
# Does not perform any checks, other than that a matrix is given as input.

InstallMethod(IntersectionAlgebra,
			[IsList],
	function(L)
		local m, assoc_rec, d, i, j, k, A;
		d:=Size(L)-1;
		for i in [1 .. d+1] do
			if Size(L[i]) <> d+1 or Size(L[i][1]) <> d+1 then
				return fail;
			fi;
		od;
		if not ForAll(Set(Concatenation(Concatenation(L))), t -> IsInt(t) and t>=0) then
			return fail;
		fi;
		m := MakeImmutable(StructuralCopy(L));;
		assoc_rec := rec( intersection_matrices := m);
		A := ObjectifyWithAttributes(assoc_rec, TheTypeIntersectionAlgebraObject);;
		IsCommutative(A);
		return A;
	end );

InstallMethod(IntersectionMatrices,
			[IsIntersectionAlgebraObject],
	function(a)
		return a!.intersection_matrices;;
	end );

InstallMethod(IntersectionNumber,
			[IsIntersectionAlgebraObject, IsInt,  IsInt,  IsInt],
	function( a, i, j, k )
		return IntersectionMatrices(a)[j+1][i+1, k+1];;
	end);


InstallMethod(NumberOfClasses,
			[IsIntersectionAlgebraObject],
	function(a)
		return Size(IntersectionMatrices(a))-1;;
	end );

InstallMethod(Valencies, " ", [IsIntersectionAlgebraObject], 
	function(a)
		local d, valencies, i;
		d := NumberOfClasses(a);
		return List(IntersectionMatrices(a), t -> Maximum(Eigenvalues(Rationals, t)));
#		valencies:=List([1 .. d+1], k -> IntersectionMatrices(a)[k][k,1]); # Only for symmetric
		return valencies;
	end);

InstallMethod( Order, 
	"for IsAssociationScheme",
	[ IsIntersectionAlgebraObject ],
	function( a )
		return Sum(Valencies(a));
	end );

  InstallMethod( SplittingField, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject ],
	function(A)

		local inter, polys, vals, n, i, m, pol, factored, done, breakdownpoly, poly;

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

#		if not IsCommutative(A) then
#			return DefaultFieldOfMatrix(MatrixOfEigenvalues(A));
#		fi;
		if HasMatrixOfEigenvalues(A) then
			return DefaultFieldOfMatrix(MatrixOfEigenvalues(A));
		fi;
		if HasDualMatrixOfEigenvalues(A) then
			return DefaultFieldOfMatrix(MatrixOfEigenvalues(A));
		fi;

		inter:=IntersectionMatrices(A);
		polys:=List(inter, t -> MinimalPolynomial(t));;
		polys:=List(polys, Factors);;
		polys:=Set(Concatenation(polys));;

		done:=[];
		while polys <> [] do
			poly:=Remove(polys, 1);
			if Degree(poly) = 1 then
				Add(done, Conductor(DefaultField(CoefficientsOfUnivariatePolynomial(poly))));
				done:=Set(done);
			else
				polys:=Concatenation(polys, breakdownpoly(poly));
			fi;
		od;
		n:=done[1];
		for i in [2 .. Size(done)] do
			n:=LCM_INT(n, done[i]);
		od;

		return CF(n);
	end);

  InstallMethod(HasRationalSplittingField,
			[IsIntersectionAlgebraObject],
	function(A)
		local inter, polys;
		if HasSplittingField(A) then
			if SplittingField(A) = Rationals then
				return true;
			else
				return false;
			fi;
		else
			inter:=IntersectionMatrices(A);
			polys:=List(inter, t -> MinimalPolynomial(t));;
			polys:=List(polys, Factors);;
			polys:=Set(Concatenation(polys));;
#			if ForAny(List(polys, t ->  RootsOfPolynomial(Rationals, t)), x -> x =[]) then
			if ForAny(polys, t -> Degree(t)>1) then
				return false;
			else
				SetSplittingField(A, Rationals);;
				return true;
			fi;
		fi;
	end);

 InstallOtherMethod( MatrixOfEigenvalues, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject and AdmitsPPolynomialOrdering],
	function(A)
		local inter, idems, alg, reps, P1, k, i, valencies, d, P2, B, Q, m, v, vals, n, f, pol, perm, L, ks, eigs,
				polys, eig, lambda, P, factored, done, good, notdone, RIdem, Alg, Idem, F, IM2, lenIdem, SimplifyIdem,
				poly, breakdownpoly;
		Print("USING METRIC METHOD!\n");
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
		local inter, idems, alg, reps, P1, k, i, valencies, d, P2, B, Q, m, v, vals, n, f, pol, perm, L, ks, eigs,
				polys, eig, lambda, P, factored, done, good, notdone, RIdem, Alg, Idem, F, IM2, lenIdem, SimplifyIdem,
				poly, breakdownpoly;

		Print("USING STANDARD METHOD!\n");

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

		if NumberOfCharacters(A) <> NumberOfClasses(A) + 1 then
			return fail;
		fi;
	    
		inter:=IntersectionMatrices(A);
		d:=NumberOfClasses(A);;

	    Alg := Algebra(Rationals, IntersectionMatrices(A));
	    RIdem := CentralIdempotentsOfAlgebra(Alg);
	    if IsRationals(SplittingField(A)) then
	        if Size(RIdem) <> d+1 then
	            Error("Wrong number of idempotents!\n");
	        fi;
	        reps:=List(inter, t -> t[1]);;
	        P1:=Inverse(TransposedMat(List(RIdem, t -> SolutionMat(reps, t[1]))));
	        # The central idempotents are linear combinations of intersection matrices, defined by
	        # the Q matrix.
	        valencies:=Valencies(A);
	        P2:=[valencies];; # By convention the valencies form the first row, so we reorder
	        k:=First([1 .. d+1], t -> P1[t]=valencies);
	        for i in Difference([1 .. d+1], [k]) do
	            Add(P2, P1[i]);
	        od;
	        return P2;
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
	                    if Length(Idem) = NumberOfCharacters(A) then
	                        reps:=List(inter, t -> t[1]);;
	                        P1:=Inverse(TransposedMat(List(Idem, t -> SolutionMat(reps, t[1]))));
	                        # The central idempotents are linear combinations of intersection matrices, defined by
	                        # the Q matrix.
	                        valencies:=Valencies(A);
	                        P2:=[valencies];; # By convention the valencies form the first row, so we reorder
	                        k:=First([1 .. d+1], t -> P1[t]=valencies);
	                        for i in Difference([1 .. d+1], [k]) do
	                        Add(P2, P1[i]);
	                        od;
	                        return P2;
	                    fi;
	                fi;
	            od;
	        od;
	    fi;
	end);


InstallMethod(IsMatrixOfEigenvaluesForIntersectionAlgebra,
			[IsIntersectionAlgebraObject, IsMatrix],
	function(a, P)
        # Find minimal idempotents of the intersection matrix
        # Check that they are actually minimal idempotents
        # The intersection algebra is isomorphic to the Bose-Mesner algebra
        # The adjacency matrices are in bijection with the intersection matrices.
        # Note: This assumes that we can construct the Bose-Mesner algebra, i.e commutative
        local j, i, mat, idems, d, Q, adjacencymatrices;
        if not Size(P) = Size(P[1]) then
            Print("This method is only for square matrices (corresponding to commutative schemes)\n");
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
					if IsMatrixOfEigenvaluesForIntersectionAlgebra(A, M) = true then
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
	Print("USING BACKTRACK METHOD!\n");
	if not HasMatrixOfEigenvalues(A) then
		P := ComputePMatrixViaBackTrack(A);
		SetMatrixOfEigenvalues(A, P);
	fi;
	return MatrixOfEigenvalues(A);
end);

InstallMethod( DualMatrixOfEigenvalues, 
	"for IsAssociationScheme",
	[ IsIntersectionAlgebraObject and IsCommutative],
	function( a )
		return Inverse(MatrixOfEigenvalues(a))*Order(a);
	end );


InstallMethod(KreinParameter,
            [IsIntersectionAlgebraObject and IsCommutative, IsInt, IsInt, IsInt],
	function(A, i, j, k)
		local P, Q, n, d, s, l;
#		if not IsCommutative(A) then
#			return fail;
#		fi;
		P:=MatrixOfEigenvalues(A);
		Q:=DualMatrixOfEigenvalues(A);;

		n := Order(A);
		d:=NumberOfClasses(A);;
		s:=0;
		for l in [0 .. d] do
			s := s + ((ComplexConjugate( P[i+1,l+1] ) * ComplexConjugate( P[j+1,l+1] ) *  P[k+1,l+1])/P[1,l+1]^2);
		od;
		s := s*Q[1, i+1]*Q[1, j+1]/n;
		return s;
	end);

InstallMethod(KreinParameters,
            [IsIntersectionAlgebraObject and IsCommutative],
	function(A)
		local K, i, j, k, d;
#		if not IsCommutative(A) then
#			return fail;
#		fi;
		d:=NumberOfClasses(A);;
		K:=List([1 .. d+1], t -> NullMat(d+1, d+1));;
		for i in [0 .. d] do
			for j in [0 .. d] do
				for k in [0 .. d] do
					K[i+1][j+1,k+1] := KreinParameter(A, i, j, k);
				od;
			od;
		od;
		return K;
	end);


InstallMethod( IsQBipartite, [IsIntersectionAlgebraObject],
	function(A)
	local i, j, k, d;
	d:=NumberOfClasses(A);
	for i in [0 .. d] do
		for j in [0 .. d] do
			for k in [0 .. d] do
				if IsOddInt(i+j+k) and KreinParameter(A, i, j, k)<>0 then
					return false;
				fi;
			od;
		od;
	od;
	return true;
	end);

InstallMethod( IsPBipartite, [IsIntersectionAlgebraObject],
	function(A)
	local i, j, k, d;
	d:=NumberOfClasses(A);
	for i in [0 .. d] do
		for j in [0 .. d] do
			for k in [0 .. d] do
				if IsOddInt(i+j+k) and IntersectionNumber(A, i, j, k)<>0 then
					return false;
				fi;
			od;
		od;
	od;
	return true;
	end);

InstallMethod( IsQAntipodal, [IsIntersectionAlgebraObject],
	function(A)
		local j, d;
		d:=NumberOfClasses(A);;
		for j in [1 .. d] do
			if j <> Int(Floor(Float(d/2))) + 1 and KreinArray(A)[1][j] <> Reversed(KreinArray(A)[2])[j] then
				return false;
			fi;
		od;
		return true;
	end);

InstallMethod( IsPAntipodal, [IsIntersectionAlgebraObject],
	function(A)
		local j, d;
		d:=NumberOfClasses(A);;
		for j in [1 .. d] do
			if j <> Int(Floor(Float(d/2))) + 1 and IntersectionArray(A)[1][j] <> Reversed(IntersectionArray(A)[2])[j] then
				return false;
			fi;
		od;
		return true;
	end);

InstallMethod(ReorderRelations,
            [IsIntersectionAlgebraObject, IsList],
    function( a, L )
        local d, P, P2, a2, i, j, k, intersectionMatrices;
        d:=NumberOfClasses(a);;
        if not Set(L) =[0..d] then
            return fail;
        fi;
        if not L[1]=0 then
            return fail;
        fi;
        if HasMatrixOfEigenvalues(a) then
	       	P:=TransposedMat(MatrixOfEigenvalues(a));
	       	P2:=TransposedMat(List([0 .. d], t -> P[L[t+1]+1] ));;
	       	a2 := IntersectionAlgebraFromMatrixOfEigenvalues(P2);;
	        SetMatrixOfEigenvalues(a2, P2);;
	        return a2;
	    else
			intersectionMatrices:=List([1..d+1], t-> NullMat(d+1, d+1));
			for i in [0 .. d] do
				for j in [0 .. d] do
					for k in [0 .. d] do
						intersectionMatrices[j+1][i+1, k+1] :=  IntersectionNumber(a, L[i+1], L[j+1], L[k+1]);;
					od;
				od;
			od;
			return IntersectionAlgebra(intersectionMatrices);
	    fi;
    end);

InstallMethod(ReorderMinimalIdempotents,
            [IsIntersectionAlgebraObject and IsCommutative, IsList],
    function( a, L )
        local d, a2, Q, Q2, P;
        d:=NumberOfClasses(a);;
        if not L[1]=0 then
            return fail;
        fi;
        Q:=TransposedMat(DualMatrixOfEigenvalues(a));
        Q2:=TransposedMat(List([0 .. d], t -> Q[L[t+1]+1] ));;
        P:=Inverse(Q2)*Order(a);;
    	a2:=IntersectionAlgebraFromMatrixOfEigenvalues(P);;
        return a2;
    end);

InstallMethod( \=,
			 [IsIntersectionAlgebraObject, IsIntersectionAlgebraObject],
	function(a,b)
		return IntersectionMatrices(a)=IntersectionMatrices(b);
	end);

################################################################################################################
#
# Display methods
#
################################################################################################################


InstallMethod( ViewObj, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject],
 	function( a )
 		Print( NumberOfClasses(a), "-class intersection algebra of order ", Order(a));
 	end );

#InstallMethod( PrintObj, 
#	"for IsAssociationScheme",
#	[ IsIntersectionAlgebraObject ],
#	function( a )
#		Print(RelationMatrix(a));;
#	end );

InstallMethod( Display, 
	"for IsAssociationScheme",
	[ IsIntersectionAlgebraObject],
	function( a )
 		Print( NumberOfClasses(a), "-class intersection algebra of order ", Order(a), "\n");
 		if HasIsCommutative(a) then
 			Print("  Commutative: ", IsCommutative(a), "\n");;
 		fi;
 		if HasIsPPolynomial(a) then
 			Print("  Metric: ", IsMetric(a), "\n");
 			if IsMetric(a) = false and HasAdmitsPPolynomialOrdering(a) then
	 			Print("    Admits metric ordering: ", AdmitsPPolynomialOrdering(a), "\n");
	 		fi;
		 	if HasIsPBipartite(a) then
		 		Print("    Bipartite: ", IsPBipartite(a), "\n");
		 	fi;
		 	if HasIsQAntipodal(a) then
		 		Print("    Antipodal: ", IsPAntipodal(a), "\n");
		 	fi;
 		fi;
 		if HasIntersectionArray(a) and IntersectionArray(a) <> fail then
 			Print("  Intersection array: ");
 			Print(IntersectionArray(a), "\n");
	 		if HasClassicalParameters(a) then
	 			Print("    Classical parameters: ");
	 			Print(ClassicalParameters(a), "\n");
	 		fi;
 		fi;
 		if HasIsQPolynomial(a) then
 			Print("  Cometric: ", IsCometric(a), "\n");
 			if IsCometric(a) = false and HasAdmitsQPolynomialOrdering(a) then
	 			Print("    Admits cometric ordering: ", AdmitsQPolynomialOrdering(a), "\n");
	 		fi;
		 	if HasIsQBipartite(a) then
		 		Print("    Q-bipartite: ", IsQBipartite(a), "\n");
		 	fi;
		 	if HasIsQAntipodal(a) then
		 		Print("    Q-antipodal: ", IsQAntipodal(a), "\n");
		 	fi;
 		fi;
 		if HasKreinArray(a) and KreinArray(a) <> fail then
 			Print("  Krein array: ");
 			Print(KreinArray(a), "\n");
 		fi;
 		if HasMatrixOfEigenvalues(a) then
 			if MatrixOfEigenvalues(a) <> fail then
	 			Print("  Matrix of eigenvalues:\n");
	 			Display(MatrixOfEigenvalues(a));
	 			Print("  Dual matrix of eigenvalues:\n");
	 			Display(DualMatrixOfEigenvalues(a));
	 		fi;
 		fi;

	end );


InstallMethod( ViewRelationDistributionDiagram, 
	"for IsAssociationScheme",
	[ IsIntersectionAlgebraObject],
	function( A )
			
			local d, i, j, k, graph;

			d:=NumberOfClasses(A);
			graph := "//dot\ndigraph { rankdir=LR\n";;
			for i in [0 .. d] do
				graph := Concatenation(graph, "node", String(i), " [label=\"",String(IntersectionNumber(A, i,i, 0)), "\"]\n");
			od;
			for i in [0 .. d] do
				for j in [i+1 .. d] do
					if IntersectionNumber(A, i, 1, j) > 0 then
						graph:=Concatenation(graph, Concatenation(" node", String(i), " -> ", "node", String(j), "[color=black arrowhead=none, headlabel=\"", String(IntersectionNumber(A, i, 1, j)), "\", taillabel=\"", String(IntersectionNumber(A, j, 1, i)), "\"];\n"));
					fi;
				od;
			od;
			graph:=Concatenation(graph, "}");
			Splash(graph);
			return true;
		end);

InstallMethod(IsCommutative,
			[IsIntersectionAlgebraObject],
	function(a)
		local d, i, j, k;
		d:=NumberOfClasses(a);;
		for i in [0 .. d] do
			for j in [0 .. d] do
				for k in [0 .. d] do
					if IntersectionMatrices(a)[j+1][i+1,k+1] <> IntersectionMatrices(a)[i+1][j+1,k+1] then
						return false;
					fi;
				od;
			od;
		od;
		return true;
	end );

 InstallMethod( NumberOfCharacters, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject ],
	function(A)
		if IsCommutative(A) then
		    return NumberOfClasses(A) + 1;;
		else
			return Size(CentralIdempotentsOfAlgebra(Algebra(SplittingField(A), IntersectionMatrices(A))));;
		fi;
	end);
