#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##
#############################################################################

InstallMethod(JohnsonScheme,
			[IsPosInt, IsPosInt],
	function( n, k )
		local G, H;
	    G := SymmetricGroup(n);
	    H := Stabiliser(G, [1..k], OnSets);;
		return CoherentConfigurationByOrbitals(G, H);
	end);
