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
#		IsCommutative(A);
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
		return IntersectionMatrices(a)[i+1][j+1, k+1];;
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

		breakdownpoly := function(poly, A)
			local m, n, factored, tryfirst;
			if Degree(poly) = 1 then
				return [poly];
			fi;
			m := Conductor(DefaultField(CoefficientsOfUnivariatePolynomial(poly)));
#			tryfirst := Set(Concatenation(List([1 .. NumberOfClasses(A)], t -> DivisorsInt(Order(A)*t))));
#			tryfirst := Filtered(tryfirst, t -> t <= Order(A));
			tryfirst := [];
			if IsPrime(Order(A)) then
				Add(tryfirst, Order(A));
			fi;
			for n in tryfirst do
				if n mod m = 0 then
					factored:=Factors(PolynomialRing(CF(n)), poly);
					if Size(factored) > 1 then
						return factored;
					fi;
				fi;
			od;
			n:=3;
			while true do
				if not n*m in tryfirst then
					factored:=Factors(PolynomialRing(CF(n*m)), poly);
					if Size(factored) > 1 then
						return factored;
					fi;
					n:=n+1;
				fi;
			od;
		end;
#		if not IsCommutative(A) then
#			return DefaultFieldOfMatrix(MatrixOfEigenvalues(A));
#		fi;
		if HasMatrixOfEigenvalues(A) and MatrixOfEigenvalues(A)<>fail then
			return DefaultFieldOfMatrix(MatrixOfEigenvalues(A));
		fi;
		if HasMatrixOfDualEigenvalues(A) and HasMatrixOfDualEigenvalues(A)<>fail then
			return DefaultFieldOfMatrix(MatrixOfEigenvalues(A));
		fi;

		inter:=IntersectionMatrices(A);
		polys:=List(inter, t -> MinimalPolynomial(t));;
		polys:=List(polys, Factors);;
		polys:=Set(Concatenation(polys));;

		done:=[];
		while polys <> [] do
			poly:=Remove(polys, Size(polys));
			if Degree(poly) = 1 then
				Add(done, Conductor(DefaultField(CoefficientsOfUnivariatePolynomial(poly))));
				done:=Set(done);
			else
				polys:=Set(Concatenation(polys, breakdownpoly(poly, A)));
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






InstallMethod(KreinParameter,
            [IsIntersectionAlgebraObject, IsInt, IsInt, IsInt],
	function(A, i, j, k)
		local P, Q, n, d, s, l;
		if not IsCommutative(A) then
			return fail;
		fi;
		P:=MatrixOfEigenvalues(A);
		Q:=MatrixOfDualEigenvalues(A);;

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
            [IsIntersectionAlgebraObject],
	function(A)
		local K, i, j, k, d;
		if not IsCommutative(A) then
			return fail;
		fi;
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
        local d, P, P2, a2, i, j, k, intersectionMatrices, Q, Q2;
        d:=NumberOfClasses(a);;
        if not Set(L) =[0..d] then
            return fail;
        fi;
        if not L[1]=0 then
            return fail;
        fi;
		intersectionMatrices:=List([1..d+1], t-> NullMat(d+1, d+1));
		for i in [0 .. d] do
			for j in [0 .. d] do
				for k in [0 .. d] do
					intersectionMatrices[i+1][j+1, k+1] :=  IntersectionNumber(a, L[i+1], L[j+1], L[k+1]);;
				od;
			od;
		od;
		a2 := IntersectionAlgebra(intersectionMatrices);
        if HasMatrixOfEigenvalues(a) then
	       	P:=TransposedMat(MatrixOfEigenvalues(a));
	       	P2:=TransposedMat(List([0 .. d], t -> P[L[t+1]+1] ));;
	        SetMatrixOfEigenvalues(a2, P2);;
	        if HasMatrixOfDualEigenvalues(a) then
	        	Q:=MatrixOfDualEigenvalues(a);
		       	Q2:=List([0 .. d], t -> Q[L[t+1]+1] );;
		        SetMatrixOfDualEigenvalues(a2, Q2);;
		    fi;
		fi;
        return a2;
    end);

InstallMethod(ReorderMinimalIdempotents,
            [IsIntersectionAlgebraObject and IsCommutative, IsList],
    function( a, L )
        local d, a2, Q, Q2, P, P2;
        d:=NumberOfClasses(a);;
        if not L[1]=0 then
            return fail;
        fi;
#    	a2:=IntersectionAlgebraFromMatrixOfEigenvalues(P2);;
       	a2 := IntersectionAlgebra(IntersectionMatrices(a));;
       	P:=MatrixOfEigenvalues(a);
       	P2:=List([0 .. d], t -> P[L[t+1]+1] );;
		if HasMatrixOfDualEigenvalues(a) then
			Q:=TransposedMat(MatrixOfDualEigenvalues(a));
        	Q2:=TransposedMat(List([0 .. d], t -> Q[L[t+1]+1] ));;
    		SetMatrixOfDualEigenvalues(a2, Q2);
    	fi;
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
 		if HasIsSymmetricIntersectionAlgebra(a) and IsSymmetricIntersectionAlgebra(a) then
	 		Print("< ", NumberOfClasses(a), "-class symmetric intersection algebra of order ", Order(a), " >");
 		elif HasIsCommutative(a) and IsCommutative(a) then
	 		Print("< ", NumberOfClasses(a), "-class commutative intersection algebra of order ", Order(a), " >");
 		elif HasIsCommutative(a) and not IsCommutative(a) then
 	 		Print("< ", NumberOfClasses(a), "-class non-commutative intersection algebra of order ", Order(a), " >");
 		else
	 		Print("< ", NumberOfClasses(a), "-class intersection algebra of order ", Order(a), " >");
	 	fi;
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
 		if HasIsSymmetricIntersectionAlgebra(a) then
 			Print("  Symmetric: ", IsSymmetricIntersectionAlgebra(a), "\n");;
 		fi;
  		if HasIsCommutative(a) then
 			Print("  Commutative: ", IsCommutative(a), "\n");;
 		fi;
 		if HasIsStratifiable(a) then
 			Print("  Stratifiable: ", IsStratifiable(a), "\n");;
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
	 			Display(MatrixOfDualEigenvalues(a));
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

InstallMethod(IsSymmetricIntersectionAlgebra,
			[IsIntersectionAlgebraObject],
	function(a)
		local i, d;
		d:=NumberOfClasses(a);;
		for i in [0 .. d] do
			if IntersectionNumber(a, i, i, 0) = 0 then
				return false;
			fi;
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
			return Size(MapFromIntersectionMatricesToCentralIdempotents(A)[1]);;
		fi;
	end);

InstallMethod( \=,
			 [IsIntersectionAlgebraObject, IsIntersectionAlgebraObject],
	function(a,b)
		return IntersectionMatrices(a)=IntersectionMatrices(b);
	end);

InstallMethod( \<,
			 [IsIntersectionAlgebraObject, IsIntersectionAlgebraObject],
	function(a,b)
		return IntersectionMatrices(a)<IntersectionMatrices(b);
	end);
