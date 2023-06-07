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

# Use nauty/traces rather than Bliss when possible.
if "nautytracesinterface" in RecNames(GAPInfo.PackagesLoaded) then
    DigraphsUseNauty();
fi;

InstallOtherMethod(Digraph,
			[IsHomogeneousCoherentConfiguration, IsPosInt],
	function(A, k)
		if not k in[1 .. Rank(A)] then
			Error("Must give a an integer in [1 .. d]\n");
		fi;
		return Digraph([1 .. Order(A)], function(u, v) return RelationMatrix(A)[u,v]=k;end);
	end );

InstallOtherMethod(Digraph,
			[IsHomogeneousCoherentConfiguration, IsList],
	function(A, S)
		if not IsSubset([1 .. Rank(A)], Set(S)) then
			Error("Must give a subset of [1 .. d]\n");
		fi;
		return Digraph([1 .. Order(A)], function(u, v) return RelationMatrix(A)[u,v] in S;end);
	end );

# InstallMethod( AutomorphismGroup, [IsHomogeneousCoherentConfiguration],
# function( sch )
#     local n, edges, colours, c, d, matrix, newedges, newedges2,  
#     		i, e, f, map, graph, aut, layers, enum, col;
#     if not "digraphs" in RecNames(GAPInfo.PackagesLoaded) then
#        Error("You must load the Digraphs package\n");
#     fi;
#     n := Order(sch);
# 	matrix := RelationMatrix(sch);;
# 	c := NumberOfClasses(sch);
# 	# c <= 2^d-1
# 	d := Log2Int(c)+1;
# 	# make d layers
# 	# map colour to layer
# 	f := function( colour )
# 		local ce, onesare;
# 		ce := CoefficientsQadic(colour, 2);
# 		onesare := Filtered([1..Length(ce)],i->IsOne(ce[i]));
# 		return onesare;
# 	end;
# 	map := Concatenation([[]],List([1..c], f));
# 	edges := EnumeratorOfTuples([1..n], 2);
# 	enum := EnumeratorOfCartesianProduct2([[1..d],[1..n]]);
# 	newedges := [];;
# 
# 	Print("making edges (slowest part?)\n");
# 	for i in [1..Size(edges)] do
# 		e := edges[i];
# 		col := matrix[e[1]][e[2]];		
# 		Append(newedges, List(map[col+1], j -> 
# 			[Position(enum,[j,e[1]]),Position(enum,[j,e[2]])]));	
# 	od;
#   
# 	# at a later date, we could ask the user to include
# 	# a `helper' group here
# 	
# 	# it would be faster if we gave outneighbourhoods ...
# 	
# 	Print("making digraph\n");
# 	graph := DigraphByEdges( newedges, d*n );
# 	layers := List([1..d], t ->[1..n]+(t-1)*n);;
#	Print("calling nauty\n");
#    aut := NautyAutomorphismGroup(graph, layers); 
#    	Print("computing perm group\n");
#    return Action(aut,[1..n]);
#end);


InstallMethod( SchemeToGraph, [IsHomogeneousCoherentConfiguration],
function( sch )
    local n, colours_for_layer, c, d, matrix, in_nhd, in_nhds,  
    		i, f, map, graph, aut, layers, enum, v, cycle, e;
    if not "digraphs" in RecNames(GAPInfo.PackagesLoaded) then
       Error("You must load the Digraphs package\n");
    fi;
    # The vertices are pairs {layer, i} where i is in {1...n}.
	# The binary expansion of each colour number tells us 
	# which layers contain edges. From n vertices, we make
	# a graph with n log_2(c) vertices, where c is the class
	# of the scheme. 
	# {l1, i1} -> {l2, i2} with colour c if
	# (1) binary expansion of c has ones in l1, l2 positions
	# (2) m[i1][i2] = c
	
    n := Order(sch);
	matrix := RelationMatrix(sch);;
	c := NumberOfClasses(sch); 	# c <= 2^d-1
	d := Log2Int(c)+1;
	# make d layers
	# map colour to layer
	f := function( colour )
		local ce, onesare;
		ce := CoefficientsQadic(colour, 2);
		onesare := Filtered([1..Length(ce)],i->IsOne(ce[i]));
		return onesare;
	end;
	map := Concatenation([[]],List([1..c], f));
	colours_for_layer := List([1..d], t ->
	 	PositionsProperty(map, u -> t in u) - 1);
	enum := EnumeratorOfCartesianProduct2([[1..d],[1..n]]);	
	
	in_nhds := List(enum, v -> Concatenation(List(colours_for_layer[v[1]], 
		t -> Positions(matrix[v[2]],t))));;
	# also need vertical edges (paths or cliques)
	for i in [1..n] do
		cycle := List([1..d-1], j -> [[j,i],[j+1,i]]);
		Add(cycle, [[d,i],[1,i]]);
		cycle := List(cycle, t -> [Position(enum,t[1]),Position(enum,t[2])]);
		for e in cycle do
			Add(in_nhds[e[1]], e[2]);
		od;
	od;
	
	# at a later date, we could ask the user to include
	# a `helper' group here
	
	graph := DigraphNC( in_nhds );
	layers := List([1..d], t ->[1..n]+(t-1)*n);;
	return[graph, layers];
end);

InstallMethod( AutomorphismGroup, [IsHomogeneousCoherentConfiguration],
function( sch )
	local n, gr, aut, rel, M;
	n := Order(sch);
	if AdmitsPPolynomialOrdering(sch) then
		# if it is a drg, just compute the automorphism group of the relevant graph
	    rel := FirstMetricOrdering(sch)[2];
	    M:=RelationMatrix(sch);;
	    gr := Digraph([1 .. n], function(x, y) return M[x][y]=rel;end);
	    aut := AutomorphismGroup(gr);
	else
		gr := SchemeToGraph(sch);;
#	    aut := NautyAutomorphismGroup(gr[1], gr[2]); 
	    aut := AutomorphismGroup(gr[1], gr[2]); 
	fi;
    return Action(aut,[1..n]);
end);

InstallMethod( AlgebraicAutomorphismGroup, [IsHomogeneousCoherentConfiguration],
function( sch )
    return AutomorphismGroup(IntersectionAlgebraOfHomogeneousCoherentConfiguration(sch));
end);

InstallMethod( ImageOfHomogeneousCoherentConfiguration, [IsHomogeneousCoherentConfiguration, IsPerm, IsPerm],
function(A, p, perm)
	local P, C;
	P := PermutationMat(p, Order(A), 1);;
	C := HomogeneousCoherentConfigurationNC( Inverse(P)*RelationMatrix(A)*P);;
	C := ReorderRelations(C, Concatenation([0], List([1 .. NumberOfClasses(A)], t -> t^perm)));
	return C;
end);

InstallMethod( IsomorphismHomogeneousCoherentConfigurations, [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
function(A, B)
	local charpolysA, charpolysB, algA, algB, map, autA, gamma, perm, p1, p2, perm1, perm2; 

	if Order(A) <> Order(B) then
		return fail;
	fi;
	if NumberOfClasses(A) <> NumberOfClasses(B) then
		return fail;
	fi;

	if Collected(Valencies(A)) <> Collected(Valencies(B)) then
		return fail;
	fi;

	if IsAssociationScheme(A) <> IsAssociationScheme(B) then
		return fail;
	fi;

	if IsCommutative(A) <> IsCommutative(B) then
		return fail;
	fi;

	charpolysA := List(IntersectionMatrices(A), CharacteristicPolynomial);;
	charpolysB := List(IntersectionMatrices(A), CharacteristicPolynomial);;
	if Collected(charpolysA) <> Collected(charpolysB) then
		return fail;
	fi;

	algA :=IntersectionAlgebraOfHomogeneousCoherentConfiguration(A);;
	algB :=IntersectionAlgebraOfHomogeneousCoherentConfiguration(B);;
	map := IsomorphismIntersectionAlgebras(algA, algB);
	if map = fail then
		return fail;
	fi;

	p1 := CanonisingMap(A);
	p2 := CanonisingMap(B);

	perm1 := p1[1]*Inverse(p2[1]);
	perm2 := Inverse(p2[2])*p1[2];

	if B = ImageOfHomogeneousCoherentConfiguration(A, perm1, perm2) then
		return [perm1, perm2];
	fi;
	return fail;
end);

InstallMethod( AlgebraicIsomorphismHomogeneousCoherentConfigurations, [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
function(A, B)
	return IsomorphismIntersectionAlgebras(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A), IntersectionAlgebraOfHomogeneousCoherentConfiguration(B));
end);

InstallMethod( AreIsomorphicHomogeneousCoherentConfigurations, [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
function(A, B)
	if IsomorphismHomogeneousCoherentConfigurations(A, B) <> fail then
		return true;
	else
		return false;
	fi;
end);

InstallMethod( AreAlgebraicallyIsomorphicHomogeneousCoherentConfigurations, [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
function(A, B)
	if AlgebraicIsomorphismHomogeneousCoherentConfigurations(A, B) <> fail then
		return true;
	else
		return false;
	fi;
end);

InstallMethod( CanonisingMap, [IsHomogeneousCoherentConfiguration],
function(A)
	local n, r, gamma, p2, z, perm, gamma2, alllayers, colours2, p, SchemeToEdgeColourInterchangableDigraph;

	SchemeToEdgeColourInterchangableDigraph := function( A )
		local n, r, M, adjacencies, i, j, k, x, y, gamma, p, canonical_digraph, colourClasses;
		n:=Order(A);
		r:=Rank(A);
		M:=RelationMatrix(A);;
		adjacencies := List([1 .. n*r+r], t -> []);
		for i in [1 .. n] do
			for j in [1 .. n] do
				if i <> j then
					k := M[i, j];
					Add(adjacencies[ n*(k-1) + i], n*(k-1) + j);
				fi;
			od;
		od;
		for x in [1 .. r] do
			for i in [1 .. n] do
				Add(adjacencies[n*(x-1) + i], r*n + x);
			od;
		od;
		for i in [1 .. n] do
			for x in [1 .. r] do
				for y in [x+1 .. r] do
					Add(adjacencies[n*(x-1) + i], n*(y-1) + i);
					Add(adjacencies[n*(y-1) + i], n*(x-1) + i);
				od;
			od;
		od;

		gamma := Digraph( adjacencies);
		colourClasses := [[1 .. n*r], [n*r+1 .. n*r+r]];

		return [gamma, colourClasses];
	end;

	n:=Order(A);
	r:=Rank(A);
	gamma:=SchemeToEdgeColourInterchangableDigraph(A);
	p2 := BlissCanonicalLabelling(gamma[1], gamma[2]);
	z:=[n*r+1 .. n*r + r];;
	z:=OnTuples(z, p2);
	z:=z - r*n;
	perm := PermList(z);

	gamma2 := OnDigraphs(gamma[1], p2);
	alllayers := List([n*r+1 .. n*r+r], t -> InNeighboursOfVertex(gamma2, t) );
	colours2:=Concatenation(alllayers, List(gamma[2][2], t -> [t]));
	p := BlissCanonicalLabelling(gamma2, colours2);
	p:=PermList(List([(n*(1^Inverse(perm) -1)) + 1 .. (n*(1^Inverse(perm) -1)) + n], t -> t^(p2*p)));

	return [p, Inverse(perm)];
end);

InstallMethod(CanonicalFormOfHomogeneousCoherentConfiguration, [IsHomogeneousCoherentConfiguration],
	function(CC)
		local map;
		map := CanonisingMap(CC);;
	    return ImageOfHomogeneousCoherentConfiguration(CC, map[1], map[2]);
	end);
