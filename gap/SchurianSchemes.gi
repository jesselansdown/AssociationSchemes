#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##
#############################################################################

InstallMethod( IsGenerouslyTransitive, [ IsPermGroup, IsList ],
  function(G, omega) 
  	# For each suborbit O, we check to see if
  	# it is equal to its "paired" suborbit
  	local n, G1, IsPairedSuborbit, suborbits;
  	if not IsTransitive(G, omega) then
  		return false;
  	fi;
  	if IsTrivial(G) then 
  		return true; 
  	fi;
  	G1 := Stabilizer(G,1);
  	suborbits := Orbits(G1, omega{[2..Length(omega)]});
  	IsPairedSuborbit := function( o )
  		local x;
  		x := o[1];
  		return RepresentativeAction(G, [1,x], [x,1], OnTuples) <> fail;
  	end;
  	return ForAll(suborbits, IsPairedSuborbit);
  end);

InstallMethod( IsGenerouslyTransitive, [ IsPermGroup ],
  function(G) 
  	return IsGenerouslyTransitive( G, [1..DegreeAction(G)] );
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
    if not IsSymmetric(sch) then
      return false;
    fi;
   	aut := AutomorphismGroup( sch );
  	n := Order(sch);;
  	if IsCoherentConfigurationByOrbitals(sch) then
		#	return IsGenerouslyTransitive(aut, [1..n]);
	 	return DegreeAction(aut) = Order(sch) and IsGenerouslyTransitive(aut);
  	else
  		return false;
  	fi;
 end);
