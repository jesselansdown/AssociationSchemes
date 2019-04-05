#! @Chapter Examples
#! @Section Example 3 -- Codes

#! For this example, we use the package Guava for its
#! facility with block codes.

#! We will see that the inner distribution vector of a subset coincides with the weight enumerator
#! of a code when the association scheme is a Hamming scheme.

#! @BeginExample
hammingscheme := HammingScheme(7,2);
#! 7-class homogeneous coherent configuration of order 128
LoadPackage("Guava");;
hammingcode := HammingCode(3, GF(2));
#! a linear [7,4,3]1 Hamming (3,2) code over GF(2)
#! @EndExample

#! We now use an operation from Guava:

#! @BeginExample
InnerDistribution(hammingcode);
#! [ 1, 0, 0, 7, 7, 0, 0, 1 ]
#! @EndExample

#! From the association scheme perspective ...

#! @BeginExample
codewords := List( hammingcode, VectorCodeword );;
vector := CharacteristicVector( codewords,  AsList(GF(2)^7) );;
Collected(vector);
#! [ [ 0, 112 ], [ 1, 16 ] ]
InnerDistribution(vector, hammingscheme);
#! [ 1, 0, 0, 7, 7, 0, 0, 1 ]
#! @EndExample

#! The MacWilliams transform coincides with the distribution vector of the dual code:

#! @BeginExample
1/16 * MacWilliamsTransform(vector, hammingscheme);
#! [ 1, 0, 0, 0, 7, 0, 0, 0 ]
dualcode := DualCode( hammingcode );
#! a linear [7,3,4]2..3 dual code
InnerDistribution( dualcode );
#! [ 1, 0, 0, 0, 7, 0, 0, 0 ]
#! @EndExample