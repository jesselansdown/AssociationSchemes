#! @Chapter Examples
#! @Section Example 5 -- Constructing HS (advanced example)

#! We redo an example that appears in Section 3.6 of Peter Cameron's "Permutation Groups" book <Cite Key="cameron"/>
#! and construct the Higman-Sims group.
#!<Br/><Br/>
#! First we construct the Hoffman-Singleton graph from the alternating group of degree 7.

#! @BeginExample
A7 := AlternatingGroup(7);;
Pi := [ [ 1, 2, 4 ], [ 1, 3, 7 ], [ 1, 5, 6 ], 
 [ 2, 3, 5 ], [ 2, 6, 7 ], [ 3, 4, 6 ], [ 4, 5, 7 ] ];;
OnSetsRecursive := function(x,g) 
	if not IsSet(x) then
		return x^g; 
	else 
		return Set(x,y->OnSetsRecursive(y,g));
	fi;
end;;
triples := Combinations([1..7], 3);;
allFanos := Orbit(A7, Pi, OnSetsSets);;
fifty := Concatenation(triples, allFanos);;
A7action := Action(A7, fifty, OnSetsRecursive);
#! <permutation group with 2 generators>
orbitals := Orbits(A7action, Combinations([1..50],2), OnSets);;
List(orbitals, Size);
#! [ 210, 315, 70, 420, 105, 105 ]
#! @EndExample

#! We will now make a homogeneous coherent configuration from scratch, from these orbitals.

#! @BeginExample
mat := NullMat(50,50);;
for i in [1..50] do
	for j in [i+1..50] do
		pos := First([1..Length(orbitals)], k -> [i,j] in orbitals[k]);
		mat[i][j] := pos;
		mat[j][i] := pos;
	od;
od;
#! @EndExample

#! This is not a CC yet. We will fuse the relations of valency 3 and 4:

#! @BeginExample
l := Collected(mat[1]);
#! [ [ 0, 1 ], [ 1, 12 ], [ 2, 18 ], [ 3, 4 ], [ 4, 12 ], [ 5, 3 ] ]
to_fuse := Filtered([1..Length(l)], t -> l[t][2] in [3,4])-1;
#! [ 3, 5 ]
to_fuse2 := Difference([1..6],to_fuse);
#! [ 1, 2, 4, 6 ]
poly := InterpolatedPolynomial(Rationals, Concatenation([0], to_fuse, to_fuse2), [0,1,1,2,2,2,2] );;
newmat := List(mat, row -> List(row, x -> Value(poly,x)));;
Collected(newmat[1]);
#! [ [ 0, 1 ], [ 1, 7 ], [ 2, 42 ] ]
#! @EndExample

#! This now leads us directly to the Hoffman-Singleton graph:
#! @BeginExample
cc := HomogeneousCoherentConfiguration( newmat ); 
#! 2-class association scheme of order 50
autHoffSing := AutomorphismGroup( cc );
#! <permutation group with 7 generators>
StructureDescription( autHoffSing );
#! "PSU(3,5) : C2"
#! @EndExample

#! We will now construct the Mesner-Higman-Sims graph
#! @BeginExample
vals := Valencies(cc);
#! [ 1, 7, 42 ]
adjmat := AdjacencyMatrices(cc)[ Position(vals, 42) ];;
graph := Graph(autHoffSing, [1..50], OnPoints, {x,y} -> adjmat[x][y]=1);;
one_coclique := CompleteSubgraphsOfGivenSize(graph, 15)[1];;
all_cocliques := Orbit(autHoffSing, Set(VertexNames(graph){one_coclique}), OnSets);;
Size(all_cocliques);
#! 100
G := Action(autHoffSing, all_cocliques, OnSets);;
a := SchurianScheme(G);
#! 4-class homogeneous coherent configuration of order 100
#! @EndExample


#! Now fuse the relations with valencies 7 and 15 (and the complement)
#! @BeginExample
vals := Valencies(a);
#! [ 1, 35, 42, 15, 7 ]
to_fuse := Filtered([1..Length(vals)], t -> vals[t] in [7,15])-1;;
to_fuse2 := Difference([1..4], to_fuse);;
fusion := FusionOfHomogeneousCoherentConfigurations(a, [[0], to_fuse, to_fuse2]);
#! 2-class association scheme of order 100
autgroup2 := AutomorphismGroup(fusion);
#! <permutation group with 10 generators>
StructureDescription(autgroup2);
#! "HS : C2"
#! @EndExample