#! @Chapter Examples
#! @Section Example 2 -- Dual polar spaces and their graphs

#! For this example, we also use the package FinInG.
#! We will construct a metric association scheme
#! coming from a dual polar space.

#! @BeginExample
LoadPackage("FinInG");
quadric := EllipticQuadric(7, 2);
#! Q-(7, 2)
points := AsList( Planes(quadric) );;
mat := NullMat(Length(points), Length(points));;
for i in [1..Length(points)] do
	for j in [i+1..Length(points)] do
		intersection := Meet( points{[i,j]} );
		mat[i][j] := 2 - ProjectiveDimension( intersection );
		mat[j][i] := mat[i][j];
		Print("progress: ", Int(i/Length(points) * 100), "\%\r");
	od;
od;
#! @EndExample

#! So far we have constructed the relation matrix arising from the
#! dual polar space.

#! @BeginExample
a := HomogeneousCoherentConfiguration( mat );
#! 3-class association scheme of order 765
P := MatrixOfEigenvalues(a);;
Q := DualMatrixOfEigenvalues(a);;
Display(P);
#! [ [    1,   28,  224,  512 ],
#!   [    1,   11,   20,  -32 ],
#!   [    1,   -7,   14,   -8 ],
#!   [    1,    1,  -10,    8 ] ]
Display(Q);
#! [ [       1,      84,     204,     476 ],
#!   [       1,      33,     -51,      17 ],
#!   [       1,    15/2,    51/4,   -85/4 ],
#!   [       1,   -21/4,  -51/16,  119/16 ] ]
IsPPolynomial(a);
#! true
#! @EndExample

#! A simpler way (perhaps) uses the automorphism group of the ambient polar space:
#! @BeginExample
cgroup := CollineationGroup(quadric);
#! PGO(-1,8,2)
G := Action(cgroup, points);
#! <permutation group with 3 generators>
a := SchurianScheme(G);
#! 3-class homogeneous coherent configuration of order 765
IsPPolynomial(a);
#! true
#! @EndExample

#! The automorphism group of the association scheme should be the same:
#! @BeginExample
autgroup := AutomorphismGroup(a);;
autgroup = G;
#! true
#! @EndExample

#! Now (for the purist!) we see if there are interesting subsets.
#! Take a nondegenerate hyperplane section defining a parabolic quadric.

#! @BeginExample
hyperplane := First(Hyperplanes(PG(7,2)), h -> 
		TypeOfSubspace(quadric, h) = "parabolic");
#! <a proj. 6-space in ProjectiveSpace(7, 2)>
insidehyp := Filtered(points, t -> t * hyperplane);;
vector := CharacteristicVector(insidehyp,points);;
dist := InnerDistribution(vector, a);
#! [ 1, 56, 64, 14 ]
macw := MacWilliamsTransform(dist, a);
#! [ 135, 630, 0, 0 ]
#! @EndExample

#! Therefore, a hyperplane section gives rise to a design that is not a code,
#! in this association scheme.

#! Now we produce the dual polar graph.
#! @BeginExample
P := MatrixOfEigenvalues(a);;
Display(P);
#! [ [    1,  224,  512,   28 ],
#!   [    1,   20,  -32,   11 ],
#!   [    1,   14,   -8,   -7 ],
#!   [    1,  -10,    8,    1 ] ]
position := Position(P[1], 28);
#! 4
M := AdjacencyMatrices(a)[ position ];;
graph := Graph(G, [1..Order(a)], OnPoints, {x,y} -> M[x][y] = 1);;
IsDistanceRegular(graph);
#! true
GlobalParameters(graph);
#! [ [ 0, 0, 28 ], [ 1, 3, 24 ], [ 3, 9, 16 ], [ 7, 21, 0 ] ]
#! @EndExample

