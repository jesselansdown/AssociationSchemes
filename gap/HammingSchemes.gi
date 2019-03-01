#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################

InstallMethod(HammingScheme,
			[IsPosInt, IsPosInt],
	function( n, q)
		return SchurianScheme( WreathProductProductAction(SymmetricGroup(q),SymmetricGroup(n)));;
	end);
	

