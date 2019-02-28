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
		g:=GL(n,q);
		maximals := AsList(Subspaces(GF(q)^n, k));;
		maximals := List(maximals, GeneratorsOfLeftOperatorAdditiveGroup);;
		# order maximals with respect to CMat's ordering
		# FYI: CVEC_CVEC_LT is kernel code ... complicated!
		maximals := Set(maximals, t -> NewMatrix(IsCMatRep,GF(q),n,t) );;
		maximals := List(maximals, Unpack);;
		g_perm:=Action(g, maximals,OnSubspacesByCanonicalBasis);;
		return SchurianScheme(g_perm);;
	end);
	

