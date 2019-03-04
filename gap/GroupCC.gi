#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################

InstallMethod(GroupCoherentConfiguration,
			[IsGroup],
	function( G )
		# Let C_i be the i-th conjugacy class,
		# where C_0 contains the identity.
		# Two elements g,h in G are i-related
		# if g^{-1}h in C_i. We get a homogeneous,
		# but not necessarily symmetric, coherent
		# configuration.
    local C, x, i, n, c, GE, M, M2, v, perm, indices, list, tau;
    C := ConjugacyClasses(G);
    c := Length(C);
    GE := Elements(G);
    n := Length(GE);
    v := ListWithIdenticalEntries(n, 0);
    
    # ordering is according to orbit of right regular representation
    perm := Action(G, GE, OnRight); 
    indices := Orbit(perm, 1);
    for x in indices do
        for i in [1..c] do
            if GE[x]^-1 * GE[1] in C[i] then
                v[x] := i - 1;
            fi;
        od;
    od;
    M := Orbit( perm, v, Permuted);
    # reorder M to get zeros in right places
    list := List(M, t -> Position(t, 0)); 
    tau := PermList(list);
    M2 := Permuted(M, tau);;
	return HomogeneousCoherentConfiguration( M2 );
end );
