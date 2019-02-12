#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##
#############################################################################

InstallMethod( IsGenerouslyTransitive, [ IsPermGroup ],
  function(G) 
  	# For each suborbit O, we check to see if
  	# it is equal to its "paired" suborbit
  	local n, G1, IsPairedSuborbit, suborbits;
  	if not IsTransitive(G) then
  		return false;
  	fi;
  	if IsTrivial(G) then 
  		return true; 
  	fi;
  	n := DegreeAction(G);
  	G1 := Stabilizer(G,1);
  	suborbits := Orbits(G1, [2..n]);
  	IsPairedSuborbit := function( o )
  		local x;
  		x := o[1];
  		return RepresentativeAction(G, [1,x], [x,1], OnTuples) <> fail;
  	end;
  	return ForAll(suborbits, IsPairedSuborbit);
  end);

InstallMethod(SchurianScheme,
			[IsPermGroup],
	function( g_perm )
		local sch;
		if not IsGenerouslyTransitive(g_perm) then
			Print("G must be generously transitive\n");
			return fail;
		fi;
		sch := CoherentConfigurationByOrbitals(g_perm);
		SetIsSchurian(sch, true);
		return sch;
	end);

InstallMethod( IsSchurian, [ IsCoherentConfiguration ], 
	function( sch )
    local n, aut;
 	aut := AutomorphismGroup( sch );
 	n := Order(sch);;
 	if IsCoherentConfigurationByOrbitals(sch) then
		#	return IsGenerouslyTransitive(aut, [1..n]);
	 	return IsGenerouslyTransitive(aut);
	else
		return false;
	fi;
 end);
