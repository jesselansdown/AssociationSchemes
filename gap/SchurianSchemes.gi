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
		sch := IsCoherentConfigurationByOrbitals(g_perm);
		SetIsSchurian(sch, true);
		return sch;
	end);

InstallMethod( IsSchurian, [ IsCoherentConfiguration ], 
	function( sch )
    local n, aut;
 	aut := AutomorphismGroup( sch );
 	n := NrVertices(sch);;
 	return IsGenerouslyTransitive(aut);
 #	return IsGenerouslyTransitive(aut, [1..n]);
 end);


InstallMethod( MinimalIdempotents, 
	"for IsAssociationScheme",
	[ IsCoherentConfiguration and IsSchurian],
	function( a )
		local g_perm, Q, row1, stab, sz, points, d, i, charvec, rts, pos, mat, mats, j, row, rows, id;
		g_perm := AutomorphismGroup(a);
		Q := DualMatrixOfEigenvalues(a);
		row1 := a!.matrix[1];
		stab := Stabiliser(g_perm, 1);
		rts := RightTransversal(g_perm, stab);;
		sz := DegreeAction(g_perm);
		points := [1 .. sz];
		d := Maximum(row1);
		rows := [];
		for i in [0 .. d] do
			charvec := ListWithIdenticalEntries(sz, 0);
			for j in [1 .. Size(row1)] do
				if row1[j] = i then
					charvec[j]:=1;
				fi;
			od;
			Add(rows, charvec);
		od;
		id:=[];
		for j in [1 .. d+1] do
			row:=Q[1][j]*rows[1];;
			for i in [2 .. d+1] do
				row := row + Q[i][j]*rows[i];;
			od;
			Add(id, row);
		od;
		mats := [];
		for i in [1 .. d+1] do
			mat := ListWithIdenticalEntries(sz, 0);
			for j in rts do
				pos := 1^j;
				mat[pos]:=Permuted(id[i], j);
			od;
			Add(mats, mat);
#			Print(i, ".\c");
		od;
		return mats;
	end );
