#! @Chapter Examples
#! @Section Example 4 -- Using the library

#! In this package, we also have a library of all small homogeneous 
#! coherent configurations, of order at most 38 (except 31, ,35, 36, 37).

#! @BeginExample
for i in [5..20] do
	Print(i,"    ",NumberOfHomogeneousCoherentConfigurations(i),"\n");
od;
#! 5    2
#! 6    6
#! 7    3
#! 8    16
#! 9    10
#! 10    11
#! 11    3
#! 12    54
#! 13    5
#! 14    14
#! 15    24
#! 16    208
#! 17    4
#! 18    90
#! 19    6
#! 20    90
order7 := List([1..3], i -> HomogeneousCoherentConfiguration(7, i));
#![ 1-class homogeneous coherent configuration of order 7, 
#!  2-class homogeneous coherent configuration of order 7, 
#!  3-class homogeneous coherent configuration of order 7 ]
#! @EndExample

#! The first of these is trivial, so we look at the other two. The first
#! arises from the Paley graph of order 7.

#! @BeginExample
a1 := order7[2];
#! 2-class homogeneous coherent configuration of order 7
IsStronglyRegularGraph( a1 );
#! true
autgroup := AutomorphismGroup(a1);
#! Group([ (2,3,4)(5,7,6), (1,2,3,5,4,6,7) ])
StructureDescription(autgroup);
#! "C7 : C3"
#! @EndExample

#! The last one is a 3-class association scheme:

#! @BeginExample
a2 := order7[3];
#! 3-class homogeneous coherent configuration of order 7
IsAssociationScheme(a2);
#! true
IsPPolynomial( a2 );
#! true
IsPrimitive(a2);
#!true
Valencies(a2);
#! [ 1, 2, 2, 2 ]
autgroup := AutomorphismGroup(a2);
#! Group([ (2,3)(4,5)(6,7), (1,2)(3,4)(5,6) ])
StructureDescription(autgroup);
#! "D14"
P := MatrixOfEigenvalues(a2);;
Display(P);
#! [ [              1,              2,              2,              2 ],
#!   [              1,  E(7)^3+E(7)^4,    E(7)+E(7)^6,  E(7)^2+E(7)^5 ],
#!   [              1,  E(7)^2+E(7)^5,  E(7)^3+E(7)^4,    E(7)+E(7)^6 ],
#!   [              1,    E(7)+E(7)^6,  E(7)^2+E(7)^5,  E(7)^3+E(7)^4 ] ]
AllPPolynomialOrderings(a2);
#! [ [ 0, 1, 2, 3 ], [ 0, 2, 3, 1 ], [ 0, 3, 1, 2 ] ]
IsQPolynomial(a2);
#! true
AllQPolynomialOrderings(a2);
#! [ [ 0, 1, 3, 2 ], [ 0, 2, 1, 3 ], [ 0, 3, 2, 1 ] ]
#! @EndExample


