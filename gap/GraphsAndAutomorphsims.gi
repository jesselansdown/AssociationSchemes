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

InstallMethod( ImageOfHomogeneousCoherentConfiguration, [IsHomogeneousCoherentConfiguration, IsPerm, IsPerm],
function(A, p, perm)
	local P, C;
	P := PermutationMat(p, Order(A), 1);;
	C := HomogeneousCoherentConfigurationNC( Inverse(P)*RelationMatrix(A)*P);;
	C := ReorderRelations(C, Concatenation([0], Permuted([1 .. NumberOfClasses(A)], perm)));
	return C;
end);

InstallMethod( AreIsomorphicHomogeneousCoherentConfigurations, [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
function(A, B)
	local perm, charpolysA, charpolysB, gamma, p1, p2, orderings, next, children, p, gammaA, gammaB, i, k, Bmat, Bmat2, Amat, C;

	if Order(A) <> Order(B) then
		return false;
	fi;
	if NumberOfClasses(A) <> NumberOfClasses(B) then
		return false;
	fi;

	if Collected(Valencies(A)) <> Collected(Valencies(B)) then
		return false;
	fi;

	if Collected(Flat(IntersectionMatrices(A))) <> Collected(Flat(IntersectionMatrices(B))) then
		return false;
	fi;

	if IsAssociationScheme(A) <> IsAssociationScheme(B) then
		return false;
	fi;

	if IsCommutative(A) <> IsCommutative(B) then
		return false;
	fi;

	if AdmitsMetricOrdering(A) <> AdmitsMetricOrdering(B) then
		return false;
	fi;

	charpolysA := List(IntersectionMatrices(A), CharacteristicPolynomial);;
	charpolysB := List(IntersectionMatrices(A), CharacteristicPolynomial);;
	if Collected(charpolysA) <> Collected(charpolysB) then
		return false;
	fi;

	gamma:=SchemeToGraph(A);                    
	if "nautytracesinterface" in RecNames(GAPInfo.PackagesLoaded) then
    	p1 := NautyCanonicalLabelling( gamma[1], gamma[2] );
	else
    	p1 := BlissCanonicalLabelling( gamma[1], gamma[2] );
	fi;

	orderings := [[]];;
	while orderings <> [] do
		next := Remove(orderings, Size(orderings));;
		if Size(next)<NumberOfClasses(A) then
			children:=Filtered([1 .. NumberOfClasses(B)], t -> not t in next);;
			children:=Filtered(children, t -> Valencies(A)[Size(next)+2] = Valencies(B)[t+1]);
			Amat:=NullMat(Order(A), Order(A));;
			for i in [1 .. Size(next)+1] do
				Amat:=Amat+AdjacencyMatrices(A, i);;
			od;
			gammaA := Digraph([1 .. Order(A)], function(x, y) return Amat[x][y]=1;end);
			Bmat:=NullMat(Order(B), Order(B));;
			for i in [1 .. Size(next)] do
				Bmat:=Bmat+AdjacencyMatrices(B, next[i]);;
			od;
			for k in children do
				Bmat2:=Bmat+AdjacencyMatrices(B, k);;
				gammaB := Digraph([1 .. Order(B)], function(x, y) return Bmat2[x][y]=1;end);
				if IsIsomorphicDigraph(gammaA, gammaB) then
					Add(orderings, Concatenation(next,[k]));
				fi;
			od;
		else
			perm := PermList(next);
			C := ReorderRelations(B, Concatenation([0], Permuted([1 .. NumberOfClasses(A)], Inverse(perm))));
			gamma:=SchemeToGraph(C);
			if "nautytracesinterface" in RecNames(GAPInfo.PackagesLoaded) then
    			p2 := NautyCanonicalLabelling( gamma[1], gamma[2] );
			else
    			p2 := BlissCanonicalLabelling( gamma[1], gamma[2] );
			fi;
			p := p1 * Inverse(p2);
			if B = ImageOfHomogeneousCoherentConfiguration(A, p, perm) then
				return [p, Inverse(perm)];
			fi;
		fi;
	od;
	return false;
end);

InstallMethod( CanonisingMap, [IsHomogeneousCoherentConfiguration],
function(A)
	local B, n, vertices, i, j, colours1, colours2, colours3, gamma, p, permuted_edges, permuted_edges_set, map, ords, ord, stab, temp, temp2, C, p1, p2, c1, c2, perm, edges, isoms1, isoms2, val, potential_canon, perm_kept, p_kept;

	Print("Warning! The canonising process relies upon either Nauty/Traces or Bliss. The canon may differ depending upon which program is used, which version, which hardware etc... However, it will be consistent if these factors are kept constant.");
	potential_canon := false;
	if AdmitsMetricOrdering(A) then
		ords := MutableCopyMat(AllMetricOrderings(A));
		for ord in ords do
			Remove(ord, 1);
			perm:=Inverse(PermList(ord));;
			C := ReorderRelations(A, Concatenation([0], Permuted([1 .. NumberOfClasses(A)], perm)));
			gamma:=SchemeToGraph(C);
#			p2 := NautyCanonicalLabelling( gamma[1], gamma[2] );
			if "nautytracesinterface" in RecNames(GAPInfo.PackagesLoaded) then
    			p2 := NautyCanonicalLabelling( gamma[1], gamma[2] );
			else
			    p2 := BlissCanonicalLabelling( gamma[1], gamma[2] );
			fi;
			B := ImageOfHomogeneousCoherentConfiguration(A, p2, perm);;
			if IsHomogeneousCoherentConfiguration(potential_canon) then
				if B < potential_canon then
					potential_canon := B;
					p_kept:=p2;
					perm_kept:=perm;
				fi;
			else
				potential_canon := B;
				p_kept:=p2;
				perm_kept := perm;
			fi;
		od;
	else
		isoms1 :=[];
		for val in [1 .. NumberOfClasses(A)] do
			edges := [];
			for i in [1 .. Order(A)] do
				for j in [1 .. Order(A)] do
					if RelationMatrix(A)[i][j]=val then
						Add(edges, [i, j]);
					fi;
				od;
			od;
#			gamma := NautyGraph( edges );
			gamma := Digraph([1 .. Order(A)], function(x, y) return RelationMatrix(A)[x][y]=val;end);
#			p := CanonicalLabeling( gamma );
			if "nautytracesinterface" in RecNames(GAPInfo.PackagesLoaded) then
			    p := NautyCanonicalLabelling( gamma );
			else
			    p := BlissCanonicalLabelling( gamma )^(-1);
			fi;
			permuted_edges := OnTuplesTuples( edges, p^(-1) );
			c2 := Set( List( permuted_edges, i -> Set( i ) ) );
			Add(isoms1, [val, c2]);
		od;

		isoms2:=StructuralCopy(isoms1);;
		Sort(isoms1, function(u, v) return u[2]<v[2];end);
		map := [1 .. NumberOfClasses(A)];
		for i in [1 .. NumberOfClasses(A)] do
			map[isoms1[i][1]]:=isoms2[i][1];
		od;
		map:=PermList(map);
		stab:=SymmetricGroup(NumberOfClasses(A));;
		while isoms1 <> [] do
			temp:=Filtered(isoms1, t -> t[2] = isoms1[1][2]);
			temp2:=List(temp, t -> t[1]);
			stab:=Stabiliser(stab, temp2, OnSets);;
			isoms1:=Filtered(isoms1, t -> not t in temp);
		od;
		stab:=RightCoset(stab, map);;
		for perm in stab do
			C := ReorderRelations(A, Concatenation([0], Permuted([1 .. NumberOfClasses(A)], perm)));
			gamma:=SchemeToGraph(C);
#			p2 := NautyCanonicalLabelling( gamma[1], gamma[2] );
			if "nautytracesinterface" in RecNames(GAPInfo.PackagesLoaded) then
    			p2 := NautyCanonicalLabelling( gamma[1], gamma[2] );
			else
    			p2 := BlissCanonicalLabelling( gamma[1], gamma[2] );
			fi;
			B := ImageOfHomogeneousCoherentConfiguration(A, p2, perm);;
			if IsHomogeneousCoherentConfiguration(potential_canon) then
				if B < potential_canon then
					potential_canon := B;
					p_kept:=p2;
					perm_kept:=perm;
				fi;
			else
				potential_canon := B;
				p_kept:=p2;
				perm_kept := perm;
			fi;
		od;
	fi;
	return [p_kept, perm_kept];
end);

InstallMethod(CanonicalFormOfHomogeneousCoherentConfiguration, [IsHomogeneousCoherentConfiguration],
	function(CC)
		local map;
		map := CanonisingMap(CC);;
	    return ImageOfHomogeneousCoherentConfiguration(CC, map[1], map[2]);
	end);
