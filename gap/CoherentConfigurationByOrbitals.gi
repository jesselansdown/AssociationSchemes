#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##
#############################################################################


InstallMethod( IsCoherentConfigurationByOrbitals, [ IsCoherentConfiguration ], 
	function( sch )
    local n, aut;
 	aut := AutomorphismGroup( sch );
# 	n := NrVertices(sch);;
 	return IsTransitive(aut);
 end);


InstallMethod(CoherentConfigurationByOrbitals,
			[IsPermGroup],
	function( g_perm )
		local stab, sz, points, orbs, row1, i, charvec, rts, pos, mat, assoc_rec;
		if not IsTransitive(g_perm) then
			Print("G must be transitive\n");
			return fail;
		fi;
		stab := Stabiliser(g_perm, 1);
		sz := DegreeAction(g_perm);
		points := [2 .. sz];
		orbs := Orbits(stab, points);
		row1 := ListWithIdenticalEntries(sz, 0);
		for i in [1 .. Size(orbs)] do
			charvec := ListWithIdenticalEntries(sz, 0);
			charvec{orbs[i]}:=ListWithIdenticalEntries(Size(orbs[i]), i);
			row1 := row1 + charvec;
		od;
		rts := RightTransversal(g_perm, stab);;
		mat :=ListWithIdenticalEntries(sz, []);
		for i in rts do
			pos := 1^i;
			mat[pos]:=Permuted(row1, i);
		od;
		assoc_rec := rec( matrix := mat);
		return ObjectifyWithAttributes(assoc_rec, TheTypeCoherentConfiguration, IsCoherentConfigurationByOrbitals, true, AutomorphismGroup, g_perm);;
	end);

InstallMethod(CoherentConfigurationByOrbitals,
			[IsGroup, IsGroup],
	function(G, H)
		local omega, g_perm;
		if not IsSubgroup(G, H) then
			Print("H must be a subgroup of G\n");
			return fail;
		fi;
		omega := RightCosets(G, H);;
		g_perm := Action(G, omega, OnRight);;
		if not IsTransitive(g_perm) then
			Print("G must act transitively on G/H\n");
			return fail;
		fi;
		return CoherentConfigurationByOrbitals(g_perm);
	end );
