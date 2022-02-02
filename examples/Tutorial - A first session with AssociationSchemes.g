#! @Chapter Getting Started
#! @Section Tutorial - A first session with AssociationSchemes

#! In this section we provide a "first session" introduction to the AssociationSchemes package.
#! It is intended to demonstrate the basic functions of the package through a series
#! of small examples. More detailed descriptions of each of the methods are given in the
#! chapter "Functionality".

#! The fundamental method of describing a scheme in the AssociationSchemes package is
#! via its relation matrix. Take for example the following relation matrix:

#! @BeginExample
M:=
[ [  0,  1,  2,  2,  3,  3,  3,  3,  3,  3,  3,  3 ],
  [  1,  0,  2,  2,  3,  3,  3,  3,  3,  3,  3,  3 ],
  [  2,  2,  0,  1,  3,  3,  3,  3,  3,  3,  3,  3 ],
  [  2,  2,  1,  0,  3,  3,  3,  3,  3,  3,  3,  3 ],
  [  3,  3,  3,  3,  0,  1,  2,  2,  3,  3,  3,  3 ],
  [  3,  3,  3,  3,  1,  0,  2,  2,  3,  3,  3,  3 ],
  [  3,  3,  3,  3,  2,  2,  0,  1,  3,  3,  3,  3 ],
  [  3,  3,  3,  3,  2,  2,  1,  0,  3,  3,  3,  3 ],
  [  3,  3,  3,  3,  3,  3,  3,  3,  0,  1,  2,  2 ],
  [  3,  3,  3,  3,  3,  3,  3,  3,  1,  0,  2,  2 ],
  [  3,  3,  3,  3,  3,  3,  3,  3,  2,  2,  0,  1 ],
  [  3,  3,  3,  3,  3,  3,  3,  3,  2,  2,  1,  0 ] ];;
#! @EndExample

#! To construct a scheme from this matrix, we use the CoherentConfiguration command.

#! @BeginExample
CC := HomogeneousCoherentConfiguration(M);;
#! @EndExample

#! CoherentConfiguration performs a number of checks as it constructs the scheme
#! to make sure that it is in fact a homogeneous coherent configuration.
#! However if you are confident that M does in fact define a scheme,
#! then you can skip the checks by using CoherentConfigurationNC.
#! Do not do this unless you are sure!

#! We can display the scheme and see that &GAP; already knows the class and order of CC, as well
#! that CC is symmetric and commutative.

#! @BeginExample
Display(CC);
#! 3-class association scheme of order 12.
#!   Symmetric: true
#!   Commutative: true
#! @EndExample

#! We can directly ask if CC is commutative or symmetric.

#! @BeginExample
IsCommutative(CC);
#! true
IsSymmetricCoherentConfiguration(CC);
#! true
#! @EndExample

#! We can retrieve the relation matrix of a scheme

#! @BeginExample
relmat := RelationMatrix(CC);;
relmat = M;
#! true
#! @EndExample

# We can calculate the matrix of eigenvalues (the character table)

#! @BeginExample
P := MatrixOfEigenvalues(CC);;
Display(P);
#! [ [   1,   1,   2,   8 ],
#!   [   1,   1,   2,  -4 ],
#!   [   1,   1,  -2,   0 ],
#!   [   1,  -1,   0,   0 ] ]
#! @EndExample

#! If we try displaying again, we will also obtain the matrix of eigenvalues and the
#! dual matrix of eigenvalues.

#! @BeginExample
Display(CC);
#! 3-class association scheme of order 12.
#!   Symmetric: true
#!   Commutative: true
#!   Metric: false
#!     Admits metric ordering: false
#!   Matrix of eigenvalues:
#! [ [   1,   1,   2,   8 ],
#!   [   1,   1,   2,  -4 ],
#!   [   1,   1,  -2,   0 ],
#!   [   1,  -1,   0,   0 ] ]
#!   Matrix of dual eigenvalues:
#! [ [   1,   2,   3,   6 ],
#!   [   1,   2,   3,  -6 ],
#!   [   1,   2,  -3,   0 ],
#!   [   1,  -1,   0,   0 ] ]
#! @EndExample

#! If you want to print CC, it will return the relation matrix.
#! This is useful if you want to print to a file for exmaple.

#! @BeginExample
Print(CC);
#! [ [ 0, 1, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 1, 0, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3 ], 
#!   [ 2, 2, 0, 1, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 2, 2, 1, 0, 3, 3, 3, 3, 3, 3, 3, 3 ], 
#!   [ 3, 3, 3, 3, 0, 1, 2, 2, 3, 3, 3, 3 ], [ 3, 3, 3, 3, 1, 0, 2, 2, 3, 3, 3, 3 ], 
#!   [ 3, 3, 3, 3, 2, 2, 0, 1, 3, 3, 3, 3 ], [ 3, 3, 3, 3, 2, 2, 1, 0, 3, 3, 3, 3 ], 
#!   [ 3, 3, 3, 3, 3, 3, 3, 3, 0, 1, 2, 2 ], [ 3, 3, 3, 3, 3, 3, 3, 3, 1, 0, 2, 2 ], 
#!   [ 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 0, 1 ], [ 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 1, 0 ] ]
#! @EndExample

#! You can obtain the adjacency matrices by doing:
#! @BeginExample
AdjacencyMatrices(CC);;
#! @EndExample

#! If you were able to calculate the matrix of eigenvalues,
#! then you can also construct the minimal idempotents $E_i$
#! @BeginExample
MinimalIdempotents(CC);;
#! @EndExample

#! Note that if CC is Schurian (or has a transitive group associated with it) then 
#! MinimalIdempotents will be much faster!
#! You can check if a scheme is schurian by doing

#! @BeginExample
IsSchurian(CC);
#! true
#! @EndExample

#! In doing this, a graph is constructed and the automorphism group for CC is found.
#! We can also find the automorphism group directly.

#! @BeginExample
AutomorphismGroup(CC);
#! <permutation group with 11 generators>
#! @EndExample

#! We can define homogeneous coherent figurations from transitive groups.
#! This is typically fast.

#! @BeginExample
G := Group( [ ( 6,10)( 7,11)( 8,12)( 9,13)(15,28)(16,29)(17,30)(18,31)
	(20,37)(21,38)(22,39)(23,40)(24,33)(25,34)(26,35)(27,36),
    ( 1,15,22,31,18,26,16, 2, 5)( 3,24,21)( 4,20,40,29,11, 6,28,27,25)
    ( 7,10,14)( 8,33,35,39,38,12,32,13,19)( 9,37,34)(23,36,30),
    ( 3, 4)( 7,11)( 8, 9)(12,13)(15,28)(17,31)(18,30)(19,32)(20,33)
    (21,25)(22,36)(23,35)(24,37)(26,40)(27,39)(34,38), () ] );;
HomogeneousCoherentConfigurationByOrbitals(G);;
#! @EndExample

#! If G is transitive, we can construct a Schurian coherent configuration. If G is generously transitive, then we can constuct a Schurian association scheme (it will be symmetric)

#! @BeginExample
IsTransitive(G);
#! true
SchurianCoherentConfiguration(G);;
IsGenerouslyTransitive(G);
#! true
SchurianAssociationScheme(G);;
#! @EndExample

#! If we have a group G and subgroup H such that G acts transitively on G/H,
#! then we can also use the following construction.

#! @BeginExample
G:=SymmetricGroup(5);;
H:=Stabiliser(G, 1);;
HomogeneousCoherentConfigurationByOrbitals(G, H);;
#! @EndExample

#! There are a number of special constructors, such as for Johnson schemes

#! @BeginExample
JohnsonScheme(10,3);
#! 3-class association scheme of order 120.
#! @EndExample

#! AssociationSchemes also comes with a library of association schemes on small numbers of
#! vertices, according to <Cite Key="Hanaki"/>.

#! @BeginExample
m:=HomogeneousCoherentConfiguration(12, 7);;
#! @EndExample

#! We can test if two schemes are equal with "=". This will return true if the
#! schemes have the same relation matrix. The previous example from the library is
#! in fact the same as the example constructed from the matrix M at the start.

#! @BeginExample
CC = m;
#! true
#! @EndExample

#! There is also the option to create a fusion scheme.
#! This takes a partition of the relations, (where [0] must be
# one of the cells) and returns the scheme obtained by fusing the relations in each
#! cell of the partition. If the resulting fusion is not a valid scheme this will
#! return fail;

#! @BeginExample
FusionOfHomogeneousCoherentConfiguration(m, [[0], [1,2],[3]]);
#! 2-class association scheme of order 12.
#! @EndExample

