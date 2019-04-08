#! @Chapter Examples
#! @Section Example 1 -- Constructing groups

#! In this example, we show how we can use coherent configurations to construct
#! an entriely different almost simple permutation group from another one.
#! We first show how $PSU(4,3)$ can be made out of its subgroup $PSL(3,4)$.

#! @BeginExample
psl34 := PSL(3,4);;
sylow3 := SylowSubgroup(psl34, 3);;
normaliser := Normaliser(psl34, sylow3);;
G := Image( FactorCosetAction(psl34, normaliser) );;
#! @EndExample

#! At this stage, we have constructed the unique permutation representation
#! of degree 280, for $PSL(3,4)$.

#! @BeginExample
A := HomogeneousCoherentConfigurationByOrbitals(G);
#! 7-class homogeneous coherent configuration of order 280
mat := RelationMatrix(A);;
P := MatrixOfEigenvalues(A);;
Print(P);
#! [ [ 1, 18, 18, 18, 72, 72, 72, 9 ], [ 1, 4, 4, 4, 16, -12, -12, -5 ],
#!  [ 1, -2, -2, 10, -8, 0, 0, 1 ], [ 1, -2, 10, -2, -8, 0, 0, 1 ], 
#!  [ 1, 10, -2, -2, -8, 0, 0, 1 ],
#!  [ 1, -2, -2, -2, 0, -8*E(7)^3-8*E(7)^5-8*E(7)^6, -8*E(7)-8*E(7)^2-8*E(7)^4, -3 ], 
#!  [ 1, -2, -2, -2, 0, -8*E(7)-8*E(7)^2-8*E(7)^4, -8*E(7)^3-8*E(7)^5-8*E(7)^6, -3 ],
#!  [ 1, -2, -2, -2, 7, -3, -3, 4 ] ]
#! @EndExample

#! We now take a particular fusion of this coherent configuration to obtain a
#! 2-class association scheme. 

#! @BeginExample
valency18 := Filtered([1..7], j -> Number(mat[1], i -> i = j) = 18);
#! [1,2,3]
fusions := List(Combinations(valency18,2), t -> 
		FusionOfHomogeneousCoherentConfigurations(A, [[0], t, Difference([1..7],t)]) );;
#! @EndExample

#! Any of these three fusions will do:

#! @BeginExample
autgroup := AutomorphismGroup( fusions[1] );;
DisplayCompositionSeries( autgroup );
#! G (11 gens, size 26127360)
#!  | Z(2)
#! S (4 gens, size 13063680)
#!  | Z(2)
#! S (3 gens, size 6531840)
#!  | Z(2)
#! S (2 gens, size 3265920)
#!  | 2A(3,3) = U(4,3) ~ 2D(3,3) = O-(6,3)
#! 1 (0 gens, size 1)
socle := Socle(autgroup);;
StructureDescription(socle);
#! "PSU(4,3)"
#! @EndExample