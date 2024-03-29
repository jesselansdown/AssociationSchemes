#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
##  This program is free software; you can redistribute it and/or
##  modify it under the terms of the GNU General Public License
##  as published by the Free Software Foundation; either version 2
##  of the License, or (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License
##  along with this program; if not, write to the Free Software
##  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
##
#############################################################################

InstallMethod( ConstructorGroup, [ IsHomogeneousCoherentConfiguration ], 
  function( sch )
  if HasConstructorGroup(sch) then
    return ConstructorGroup(sch);
  else
    return false;
  fi;
 end);

# InstallMethod(HomogeneousCoherentConfigurationByOrbitals,
#       [IsPermGroup],
#   function( g_perm )
#     local stab, sz, points, orbs, row1, i, charvec, rts, pos, mat, assoc_rec;
#     if not IsTransitive(g_perm) then
#       Print("G must be transitive\n");
#       return fail;
#     fi;
#     stab := Stabiliser(g_perm, 1);
#     sz := DegreeAction(g_perm);
#     points := [2 .. sz];
#     orbs := Orbits(stab, points);
#     row1 := ListWithIdenticalEntries(sz, 0);
#     for i in [1 .. Size(orbs)] do
#       charvec := ListWithIdenticalEntries(sz, 0);
#       charvec{orbs[i]}:=ListWithIdenticalEntries(Size(orbs[i]), i);
#       row1 := row1 + charvec;
#     od;
#     rts := RightTransversal(g_perm, stab);;
#     mat :=ListWithIdenticalEntries(sz, []);
#     for i in rts do
#       pos := 1^i;
#       mat[pos]:=Permuted(row1, i);
#     od;
#     assoc_rec := rec( matrix := MakeImmutable(mat));
#     return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration, IsSchurian, true, ConstructorGroup, g_perm);;
#   end);

InstallMethod(HomogeneousCoherentConfigurationByOrbitals,
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
    orbs:=List(orbs, Set);;
    orbs:=Set(orbs);;
    row1 := ListWithIdenticalEntries(sz, 0);
    for i in [1 .. Size(orbs)] do
      row1{orbs[i]}:=ListWithIdenticalEntries(Size(orbs[i]), i);
    od;
    mat :=ListWithIdenticalEntries(sz, []);
    for i in [1 .. sz] do
      mat[i]:=Permuted(row1, RepresentativeAction(g_perm,1,i));
    od;
    assoc_rec := rec( matrix := MakeImmutable(mat));
    return ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration, IsSchurian, true, ConstructorGroup, g_perm);;
  end);

InstallMethod(HomogeneousCoherentConfigurationByOrbitals,
      [IsGroup, IsGroup],
  function(G, H)
    local omega, g_perm, sch;
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
    sch := HomogeneousCoherentConfigurationByOrbitals(g_perm);
    SetDescription(sch, [Concatenation("Orbital scheme from group of order ", String(Order(G)), " and subgroup of order ", String(Order(H)))]);
    return sch;
  end );

InstallMethod( MinimalIdempotents, 
  "for IsAssociationScheme",
  [ IsHomogeneousCoherentConfiguration and IsSchurian],
  function( a )
    local g_perm, Q, row1, stab, sz, points, d, i, charvec, rts, pos, mat, mats, j, row, rows, id;
    if ConstructorGroup(a) <> false then
      g_perm := ConstructorGroup(a);
    else
      g_perm := AutomorphismGroup(a);
    fi;
    Q := MatrixOfDualEigenvalues(a)/Order(a);
    row1 := RelationMatrix(a)[1];
    stab := Stabiliser(g_perm, 1);
    sz := DegreeAction(g_perm);
#    rts := RightTransversal(g_perm, stab);;
    rts:=List([1 .. sz], t -> RepresentativeAction(g_perm,1,t));
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
#     Print(i, ".\c");
    od;
    return mats;
  end );

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

InstallMethod(SchurianAssociationScheme,
			[IsPermGroup],
	function( g_perm )
		local sch;
		if not IsGenerouslyTransitive(g_perm) then
			Print("G must be generously transitive\n");
			return fail;
		fi;
		sch := HomogeneousCoherentConfigurationByOrbitals(g_perm);
    SetDescription(sch, [Concatenation("Schurian scheme constructed from permutation group of order ", String(Order(g_perm)))]);
    return sch;
	end);

InstallMethod(SchurianCoherentConfiguration,
      [IsPermGroup],
  function( g_perm )
    local sch;
    if not IsTransitive(g_perm) then
      Print("G must be transitive\n");
      return fail;
    fi;
    sch := HomogeneousCoherentConfigurationByOrbitals(g_perm);
    SetDescription(sch, [Concatenation("Schurian scheme constructed from permutation group of order ", String(Order(g_perm)))]);
    return sch;
  end);

InstallMethod( IsSchurian, [ IsHomogeneousCoherentConfiguration ], 
	function( sch )
    local n, aut;
   	aut := AutomorphismGroup( sch );
  	n := Order(sch);;
    if not IsTransitive(aut, [1 .. n]) then
        return false;
    fi;
	 	return RankAction(aut) = NumberOfClasses(sch)+1;
 end);