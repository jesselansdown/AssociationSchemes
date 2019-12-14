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
InstallMethod(SchurianSchemeIntersectionAlgebra,
      [IsPermGroup],
  function( g_perm )
    local n, stab, d, rts, rows, orbs, i, j, inds, rts1, rows2, mats, j, Aj, y, sol, k;
    if not IsGenerouslyTransitive(g_perm) then
      Print("G must be generously transitive\n");
      return fail;
    fi;
    n:=DegreeAction(g_perm);;
    stab:=Stabiliser(g_perm, 1);;
    d:=Number(Orbits(stab, [1 .. n]))-1;;
    rts:=RightTransversal(g_perm, stab);;
    rows := NullMat(d+1, n);;
    orbs:=Orbits(stab, [1 .. n]);
    for i in [1 .. n] do
      for j in [1 .. d+1] do
        if i in orbs[j] then
          rows[j][i]:=1;
        fi;
      od;
    od;

    inds := List([1 .. d+1], t -> First([1 .. n], x -> rows[t][x]=1));
    rts1:=Filtered(rts, t -> 1^t in inds);;

    rows2 := List(rows, t-> t{inds});

    mats := List([1 .. d+1], t -> NullMat(d+1, d+1));
    for j in [1 .. d+1] do
      Aj := ListWithIdenticalEntries(d+1, []);;
      for m in [1 .. d+1] do
        Aj[Position(inds, 1^rts1[m])]:=Permuted(rows[j], rts1[m]);
      od;
      for i in [1 .. d+1] do
        y:=rows[i]*TransposedMat(Aj);
        sol:=SolutionMat(rows2, y);
        for k in [1 .. d+1] do
          mats[j][i, k]:=sol[k];
        od;
      od;
    od;
    return IntersectionAlgebra(mats);
  end);


