#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##
#############################################################################


# Method for constructing Schurian Schemes from a permutation group
InstallMethod(SchurianScheme,
			[IsPermGroup],
	function( g_perm )
		local stab, sz, points, orbs, row1, i, charvec, rts, pos, mat, assoc_rec;
		 # NOTE: This should actually be generously transitive
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
		return ObjectifyWithAttributes(assoc_rec, TheTypeAssociationScheme, IsSchurian, true, AutomorphismGroup, g_perm);;
	end);

InstallMethod( IsSchurian, [ IsAssociationScheme ], 
	function( sch )
    local n, aut;
 	aut := AutomorphismGroup( sch );
 	n := NrVertices(sch);;
 	return IsGenerouslyTransitive(aut, [1..n]);
end;


InstallMethod( AdjacencyMatrices, 
	"for IsAssociationScheme",
	[ IsAssociationScheme and IsSchurian],
	function( a )
		local g_perm, Q, row1, stab, sz, points, d, i, charvec, rts, pos, mat, mats, j, row, rows, id;
		g_perm := AutomorphismGroup(a);
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
		mats := [];
		for i in [1 .. d+1] do
			mat := ListWithIdenticalEntries(sz, 0);
			for j in rts do
				pos := 1^j;
				mat[pos]:=Permuted(rows[i], j);
			od;
			Add(mats, mat);
#			Print(i, ".\c");
		od;
		return mats;
	end );




InstallMethod( MinimalIdempotents, 
	"for IsAssociationScheme",
	[ IsAssociationScheme and IsSchurian],
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
