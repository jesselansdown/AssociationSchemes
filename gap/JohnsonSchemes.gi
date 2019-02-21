#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################



InstallMethod(MatrixOfEigenvaluesOfJohnsonScheme,
            [IsPosInt, IsPosInt],
    function( n, k )
    local i, j, T, a;
    
 
    T := NullMat(k+1, k+1);
    for i in [0..k] do
        for j in [0..k] do
            for a in [0..i] do
                T[j+1][i+1] := T[j+1][i+1] + (-1)^(i-a) * Binomial(k-a, i-a)
                               * Binomial(k-j, a) * Binomial(n-k+a-j, a);
            od;
        od;
    od;
     return T;
end);

# can also directly calculate valencies.

InstallMethod(JohnsonScheme,
			[IsPosInt, IsPosInt],
	function( n, k )
		local G, H, A;
	    G := SymmetricGroup(n);
	    H := Stabiliser(G, [1..k], OnSets);;
        A := HomogeneousCoherentConfigurationByOrbitals(G, H);
        SetMatrixOfEigenvalues(A, MatrixOfEigenvaluesOfJohnsonScheme(n, k));
        return A;
	end);
