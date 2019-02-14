#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################

InstallMethod(GrassmannScheme,
			[IsPosInt, IsPosInt, IsPosInt],
	function( n, k, q)
		local pg, g, maximals, g_perm;;
		pg:=PG(n-1, q);;
		g:=CollineationGroup(pg);;
		maximals := AsSet(ElementsOfIncidenceStructure(pg, k-1));;
		g_perm:=Action(g, maximals);;
		return SchurianScheme(g_perm);;
	end);
