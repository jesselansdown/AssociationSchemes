#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################

InstallMethod(BilinearFormsScheme,
			[IsField, IsPosInt, IsPosInt],
	function( F, m, n )
		# m by n matrices A and B are i-related if
		# rank(A-B) = i
    local matrices, l, mat, i, j, cc;
    matrices := AsSet(FullMatrixModule(F, m, n));;
    l := Length(matrices);
	# we can use a group later
	mat := NullMat(l,l);;
	for i in [1..l] do
		for j in [i+1..l] do
			mat[i][j] := Rank(matrices[i]-matrices[j]);
			mat[j][i] := mat[i][j];
		od;
	od;
	cc := HomogeneousCoherentConfigurationNC( mat );
	SetIsSymmetricCoherentConfiguration(cc, true);
	return cc;
end );
