#! @Chapter Examples
#! @Section Example 3 -- Codes

#! For this example, we use the package Guava<Cite Key="GUAVA"/> for its
#! facility with block codes.

#! We will see that the inner distribution vector of a subset coincides with the weight enumerator
#! of a code when the association scheme is a Hamming scheme.

#! @BeginExample
hammingscheme := HammingScheme(7,2);
#! 7-class homogeneous coherent configuration of order 128
LoadPackage("Guava", false);;
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
vector := CharacteristicVector( AsList(GF(2)^7), codewords );;
Collected(vector);
#! [ [ 0, 112 ], [ 1, 16 ] ]
inndist := InnerDistribution( hammingscheme, vector);
#! [ 1, 0, 0, 7, 7, 0, 0, 1 ]
#! @EndExample

#! The MacWilliams transform coincides with the distribution vector of the dual code:

#! @BeginExample
1/16 * MacWilliamsTransform( hammingscheme, inndist);
#! [ 1, 0, 0, 0, 7, 0, 0, 0 ]
dualcode := DualCode( hammingcode );
#! a linear [7,3,4]2..3 dual code
InnerDistribution( dualcode );
#! [ 1, 0, 0, 0, 7, 0, 0, 0 ]
#! @EndExample