#! @Chapter Examples
#! @Section Example 3 -- Using the library

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
order11 := List([1..3], i -> HomogeneousCoherentConfiguration(11, i));
#![ 1-class homogeneous coherent configuration of order 11, 
#!  2-class homogeneous coherent configuration of order 11, 
#!  5-class homogeneous coherent configuration of order 11 ]
#! @EndExample

#! The first of these is trivial, so we look at the other two. The first
#! arises from the Paley graph of order 11.

#! @BeginExample
a1 := order11[2];
#! 2-class homogeneous coherent configuration of order 11
IsStronglyRegularGraph( a1 );
#! true
autgroup := AutomorphismGroup(a1);
#! Group([ (2,3,4,5,6)(7,10,8,11,9), (1,2,3,7,11)(5,9,10,6,8) ])
StructureDescription(autgroup);
#! "C11 : C5"
#! @EndExample

#! The last one is a 5-class association scheme:

#! @BeginExample
a2 := order11[3];
#! 5-class homogeneous coherent configuration of order 11
IsAssociationScheme(a2);
#! true
IsPPolynomial( a2 );
#! true
IsPrimitive(a2);
#!true
Valencies(a2);
#! [ 1, 2, 2, 2, 2, 2 ]
autgroup := AutomorphismGroup(a2);
#! Group([ (2,3)(4,5)(6,7)(8,9)(10,11), (1,2)(3,4)(5,6)(7,8)(9,10) ])
StructureDescription(autgroup);
#! "D22"
P := MatrixOfEigenvalues(a2);;
Display(P);
#! [ [                1,                2,                2,                2,                2,                2 ],
#!   [                1,  E(11)^5+E(11)^6,   E(11)+E(11)^10,  E(11)^4+E(11)^7,  E(11)^2+E(11)^9,  E(11)^3+E(11)^8 ],
#!   [                1,  E(11)^4+E(11)^7,  E(11)^3+E(11)^8,   E(11)+E(11)^10,  E(11)^5+E(11)^6,  E(11)^2+E(11)^9 ],
#!   [                1,  E(11)^3+E(11)^8,  E(11)^5+E(11)^6,  E(11)^2+E(11)^9,   E(11)+E(11)^10,  E(11)^4+E(11)^7 ],
#!   [                1,  E(11)^2+E(11)^9,  E(11)^4+E(11)^7,  E(11)^5+E(11)^6,  E(11)^3+E(11)^8,   E(11)+E(11)^10 ],
#!   [                1,   E(11)+E(11)^10,  E(11)^2+E(11)^9,  E(11)^3+E(11)^8,  E(11)^4+E(11)^7,  E(11)^5+E(11)^6 ] ]
AllPPolynomialOrderings(a2);
#! [ [ 0, 1, 2, 3, 4, 5 ], [ 0, 2, 4, 5, 3, 1 ], [ 0, 3, 5, 2, 1, 4 ], [ 0, 4, 3, 1, 5, 2 ], [ 0, 5, 1, 4, 2, 3 ] ]
#! @EndExample


