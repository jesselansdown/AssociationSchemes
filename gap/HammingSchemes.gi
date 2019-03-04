#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################

InstallMethod(MatrixOfEigenvaluesOfHammingScheme,
            [IsPosInt, IsPosInt],
    function( n, q )
    	local T, k, i, j;
	    T := NullMat(n+1, n+1);
	    
	    for k in [0..n] do
	        for i in [0..n] do
	            for j in [0..k] do
	                T[i+1][k+1] := T[i+1][k+1] + (-1)^j * (q-1)^(k-j) 
	                               * Binomial(i, j) * Binomial(n-i, k-j);
	            od;
	        od;
	    od;	    
	    return T;
	end);


InstallMethod(HammingScheme,
			[IsPosInt, IsPosInt],
	function( n, q)
		local A;
		A := SchurianScheme( WreathProductProductAction(SymmetricGroup(q),SymmetricGroup(n)));;
		SetMatrixOfEigenvalues(A, MatrixOfEigenvaluesOfHammingScheme(n, q));
		return A;
	end);
