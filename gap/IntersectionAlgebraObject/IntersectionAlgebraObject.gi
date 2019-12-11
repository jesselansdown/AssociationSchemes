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
		local m, assoc_rec, d, i, j, k;
		d:=Size(L)-1;
		for i in [1 .. d+1] do
			if Size(L[i]) <> d+1 or Size(L[i][1]) <> d+1 then
				return fail;
			fi;
		od;
		if not ForAll(Set(Concatenation(Concatenation(L))), t -> IsInt(t) and t>=0) then
			return fail;
		fi;
		for i in [1 .. d+1] do
			for j in [1 .. d+1] do
				for k in [1 .. d+1] do
					if L[i][j,k] <> L[j][i,k] then
						return fail; # Only accept commutative CCs
					fi;
				od;
			od;
		od;
		m := MakeImmutable(StructuralCopy(L));;
		assoc_rec := rec( intersection_matrices := m);
		return ObjectifyWithAttributes(assoc_rec, TheTypeIntersectionAlgebraObject);
	end );

InstallMethod(IntersectionMatrices,
			[IsIntersectionAlgebraObject],
	function(a)
		return a!.intersection_matrices;;
	end );

InstallMethod(NumberOfClasses,
			[IsIntersectionAlgebraObject],
	function(a)
		return Size(IntersectionMatrices(a))-1;;
	end );

InstallMethod(Valencies, " ", [IsIntersectionAlgebraObject], 
	function(a)
		local d, valencies, i;
		d := NumberOfClasses(a);
		valencies:=List([1 .. d+1], k -> IntersectionMatrices(a)[k][k,1]);
		return valencies;
	end);

InstallMethod( Order, 
	"for IsAssociationScheme",
	[ IsIntersectionAlgebraObject ],
	function( a )
		return Sum(Valencies(a));
	end );


InstallMethod( MatrixOfEigenvalues, 
 	"for IsAssociationScheme",
 	[ IsIntersectionAlgebraObject ],
	function(A)
		# This method assumes that the number of characters is d+1. This is true for commutative CCs.
		local inter, alg, idems, reps, P1, k, i, valencies, d, P2, polys, n, CyclotomicLimit, trigger, n2, f, mult, FieldLimit;
		inter:=IntersectionMatrices(A);
		d:=NumberOfClasses(A);;
		polys := Filtered(Set(Union(List(inter, t -> Factors(MinimalPolynomial(t))))), t -> Degree(t)=2);
		n:=1;
		CyclotomicLimit := 100;
		# Perhaps make a global variable to initiate CyclotomicLimit?
		# It may be that people want to work with schemes with larger limits and are happy to wait
		# Such as in the classification of schemes of order 32 for example.
		# Give the option to also have no limit? Like CosetTableDefaultMaxLimit
		# If this is done, then put a comment in the error statement that this is done
		# locally, but can be set globally by ... Must first quit the break loop.
		trigger := false;
		while n <= CyclotomicLimit do
			if ForAll(polys, t -> RootsOfPolynomial(CF(n),t) <> []) then
				break;
			fi;
			if n = CyclotomicLimit then
				Error("Reached cyclotomic field limit.\n\n You can increase this limit and continue by typing 'return;'\n\n");
				CyclotomicLimit := CyclotomicLimit*2;
				trigger := true;
			fi;
			n:=n+1;
		od;
		if trigger then
			# This is printed only if the error message is displaayed and the field is large
			# warns the user that it will be slow, but also indicates that it is doing something productive.
			Print("Field found: CT(", n,"). Attempting to construct character table. This may be slow.\n");
		fi;
		# If polys is empty, then all are reducible polynomials, and this returns 1.
		mult:=1;
		n2:=n*mult;
		alg:=Algebra(CF(n2), inter);;
		idems:=CentralIdempotentsOfAlgebra(alg);;
	    FieldLimit := 10;
	    while Size(idems) <> d+1 and mult <= FieldLimit do
	        mult:=mult+1;;
	        n2:=n*mult;
	        alg:=Algebra(CF(n2), inter);;
	        idems:=CentralIdempotentsOfAlgebra(alg);;
	        if mult = FieldLimit then
	            Error("Reached cyclotomic field limit.\n\n You can increase this limit and continue by typing 'return;'\n\n");
	            FieldLimit := FieldLimit + 5;
	        fi;
		od;
		reps:=List(inter, t -> t[1]);;
		P1:=Inverse(TransposedMat(List(idems, t -> SolutionMat(reps, t[1]))));
		# The central idempotents are linear combinations of intersection matrices, defined by
		# the Q matrix.
		valencies:=Valencies(A);
		P2:=[valencies];; # By convention the valencies form the first row, so we reorder
		k:=First([1 .. d+1], t -> P1[t]=valencies);
		for i in Difference([1 .. d+1], [k]) do
			Add(P2, P1[i]);
		od;
#		if IsCharacterTableOfHomogeneousCoherentConfiguration(A, P2) then
			return P2;
#		else
#			return fail;
#		fi;
	end);

InstallMethod( DualMatrixOfEigenvalues, 
	"for IsAssociationScheme",
	[ IsIntersectionAlgebraObject ],
	function( a )
		return Inverse(MatrixOfEigenvalues(a))*Order(a);
	end );


InstallMethod(KreinParameter,
            [IsIntersectionAlgebraObject, IsInt, IsInt, IsInt],
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
            [IsIntersectionAlgebraObject],
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
 		Print( NumberOfClasses(a), "-class intersection algebra of order ", Order(a));
	end );

