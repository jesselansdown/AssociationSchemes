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

InstallMethod(DirectProductOfHomogeneousCoherentConfigurations,
			[IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(M, N)
	    local L, i, j, MM, NM, A, cc;
	    
	    MM := AdjacencyMatrices(M);
	    NM := AdjacencyMatrices(N);
	    A := [];
	    for i in MM do
	        for j in NM do
	            Add(A, KroneckerProduct(i, j));
	        od;
	    od;

	    L := A[1] * 0;
	    for i in [1..Length(A)] do
	        L := L + A[i] * (i-1);
	    od;
	  
	    cc:= HomogeneousCoherentConfigurationNC(L);
	    SetDescription(cc, [Concatenation("Direct product of ", String(Rank(M)), "-class HCC of order ", String(Order(M)), " and ", String(Rank(N)), "-class HCC of order ", String(Order(N)))]);
	    return cc;
	end);


InstallMethod(WreathProductOfHomogeneousCoherentConfigurations,
			[IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(M, N)
	    local L, i, j, MM, NM, A, J, cc;

	    MM := AdjacencyMatrices(M);
	    NM := AdjacencyMatrices(N);
	    A := [];
	    for i in MM do
	        Add(A, KroneckerProduct(NM[1], i));
	    od;

	    J := NullMat(Order(M), Order(M));
	    for i in [1..Length(J)] do
	        for j in [1..Length(J)] do
	            J[i][j] := 1;
	        od;
	    od;

	    for i in [2..Length(NM)] do
	        Add(A, KroneckerProduct(NM[i], J));
	    od;

	    L := A[1] * 0;
	    for i in [1..Length(A)] do
	        L := L + A[i] * (i-1);
	    od;
	  
	    cc:= HomogeneousCoherentConfigurationNC(L);
	    SetDescription(cc, [Concatenation("Wreath product of ", String(Rank(M)), "-class HCC of order ", String(Order(M)), " and ", String(Rank(N)), "-class HCC of order ", String(Order(N)))]);
	    return cc;
	end);


InstallMethod(BipartiteDoubleOfAssociationScheme,
			[IsHomogeneousCoherentConfiguration],
# cf. Martin, Muzychuk, Williford, "Imprimitive cometric association schemes: Constructions and analysis"
	function(A)
	local M, B, Pmat, i, r;
		if not IsAssociationScheme(A) then
			return Error("Must give an association scheme, that is, a symmetric coherent configuration\n");
		fi;
		M:=NullMat(2*Order(A), 2*Order(A));;
		M{[1 .. Order(A)]}{[1 .. Order(A)]} := RelationMatrix(A);;
		M{[Order(A)+1 .. 2*Order(A)]}{[Order(A)+1 .. 2*Order(A)]} := RelationMatrix(A);;
		M{[1 .. Order(A)]}{[Order(A)+1 .. 2*Order(A)]} := RelationMatrix(A)+NumberOfClasses(A)+1;;
		M{[Order(A)+1 .. 2*Order(A)]}{[1 .. Order(A)]} := RelationMatrix(A)+NumberOfClasses(A)+1;;
		B := AssociationSchemeNC(M);
		if HasMatrixOfEigenvalues(A) then
			Pmat:=NullMat(2*(NumberOfClasses(A)+1), 2*(NumberOfClasses(A)+1));
			for i in [1 .. NumberOfClasses(A)+1] do
				r:=MatrixOfEigenvalues(A)[i];
				Pmat[i]{[1 .. Size(r)]}:=r;
				Pmat[i]{[Size(r)+1 .. 2*Size(r)]}:=r;
				Pmat[i+NumberOfClasses(A)+1]{[1 .. Size(r)]}:=r;
				Pmat[i+NumberOfClasses(A)+1]{[Size(r)+1 .. 2*Size(r)]}:=-r;
			od;
			SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(B), Pmat);
		fi;
	    SetDescription(B, [Concatenation("Bipartite double of ", String(Rank(A)), "-class association scheme of order ", String(Order(A)))]);
		return B;
	end);

InstallMethod(ExtendedQBipartiteDouble,
			[IsHomogeneousCoherentConfiguration],
	# See Martin, Muzychuk, Williford "Imprimitive cometric association schemes: Constructions and analysis"
	function(A)
	local Aplus, Aminus, x, y, B, d, mats, i, cc;

	if not IsAssociationScheme(A) then
		Error("Must give an association scheme!\n");
	fi;
	if not IsCometric(A) then
		Error("Extended Q-bipartite doubles can only be computed for cometric association schemes!\n");
	fi;
	if Size(Set(Sum(KreinArray(A)))) <> 1 then
		Error("Krein conditions not met! We require b_j^* + c_{j+1}^* = m + 1 for 0 =< j < d\n");
	fi;

	Aplus := function(A, val)
		local M;
		M:=NullMat(2*Order(A), 2*Order(A));
		M{[1 .. Order(A)]}{[1 .. Order(A)]}:=AdjacencyMatrices(A)[val+1];
		M{[Order(A)+1 .. 2*Order(A)]}{[Order(A)+1 .. 2*Order(A)]}:=AdjacencyMatrices(A)[val+1];
		return M;
	end;

	Aminus := function(A, val)
		local M;
		M:=NullMat(2*Order(A), 2*Order(A));
		M{[Order(A)+1 .. 2*Order(A)]}{[1 .. Order(A)]}:=AdjacencyMatrices(A)[val+1];
		M{[1 .. Order(A)]}{[Order(A)+1 .. 2*Order(A)]}:=AdjacencyMatrices(A)[val+1];
		return M;
	end;

	x:=TransposedMat(DualMatrixOfEigenvalues(A))[2];
	y:=List([1 .. Size(x)], t -> [x[t], t-1]);
	Sort(y, function(u, v) return u[1]>v[1];end);
	y:=List(y, t -> t[2]);
	B:=ReorderRelations(A, y);

	d:=NumberOfClasses(B);
	mats:=[];;
	Add(mats, Aplus(B, 0));
	for i in [1 .. d] do
		Add(mats, Aplus(B, i)+Aminus(B, d+1-i));
	od;
	Add(mats, Aminus(B, 0));
	cc:= HomogeneousCoherentConfiguration(Sum(List([1..5], t -> (t-1)*mats[t])));
	SetDescription(cc, [Concatenation("Extended Q-bipartite double of ", String(Rank(A)), "-class association scheme of order ", String(Order(A)))]);
	return cc;
end);
