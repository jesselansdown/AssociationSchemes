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
# InstallMethod(SchurianSchemeIntersectionAlgebra,
#       [IsPermGroup],
#       function(g_perm)
#         local n, stab, orbs, d, rts, rows, i, j, inds, cols, rows2, mats, Aj, y, sol, k, m,
#         transversals, retrieve_transversal, column, A, col_weighted, row_weighted, valencies;

#         if not IsPermGroup(g_perm) or not IsTransitive(g_perm) or IsTrivial(g_perm) then
#           Error("Must give a nontrivial transitive permutation group\n");
#           return fail;
#         fi;

#         transversals := function(g_perm)
#           local s, x, g, t, transversals, orb, i, gens, count;
#             if not IsTransitive(g_perm) then
#               Error("Must give a transitive permutation group\n");
#               return fail;
#             fi;
#             count := 0;
#             gens := GeneratorsOfGroup(g_perm);;
#             s := [1];
#             transversals := ListWithIdenticalEntries(DegreeAction(g_perm), 0);;
#             transversals[1]:=[];
#             for x in s do
#               for i in [1 .. Size(gens)] do
#                 t := x^gens[i];
#                 if transversals[t] = 0 then
#                   Add(s, t);;
#                   transversals[t]:=Concatenation(transversals[x], [i]);
#                   count := count + 1;;
#                   if count = DegreeAction(g_perm) then
#                       return [gens, transversals];
#                   fi;
#                 fi;
#               od;
#             od;
#           return [gens, transversals];
#         end;

#         retrieve_transversal := function(gens, transversals, i)
#           if transversals[i] = [] then
#             return ();
#           fi;
#           return Product(List(transversals[i], t -> gens[t]));;
#         end;

#         column := function(row, gens, transversals)
#           local i, col, h, pos;
#           col:=ListWithIdenticalEntries(Size(row), 0);;
#           for i in [1 .. Size(row)] do
#             h := retrieve_transversal(gens, transversals, i);
#             pos := 1^Inverse(h);
#             col[i]:=row[pos];
#           od;
#           return col;
#         end;


#           n:=DegreeAction(g_perm);;
#           stab:=Stabiliser(g_perm, 1);;
#           orbs:=Orbits(stab, [1 .. n]);;
#           d:=Number(orbs)-1;;
#           rts:=transversals(g_perm);;
#           rows := NullMat(d+1, n);;
#           for i in [1 .. n] do
#             for j in [1 .. d+1] do
#               if i in orbs[j] then
#                 rows[j][i]:=1;
#               fi;
#             od;
#           od;

#           inds := List([1 .. d+1], t -> First([1 .. n], x -> rows[t][x]=1));
# #          cols := List(rows, t -> column(t, rts[1], rts[2]));;
#             row_weighted := Sum(List([1 .. d+1], t -> t*rows[t]));
#             col_weighted := column(row_weighted, rts[1], rts[2]);;
#           cols := List([1 .. d+1], t -> ListWithIdenticalEntries(n, 0));;
#           for i in [1 .. n] do
#             cols[col_weighted[i]][i]:=1;
#           od;

#       #    As_rows := List(rows, t -> List([1 .. n], x -> Permuted(t, retrieve_transversal(rts[1], rts[2], x))));

#        #   As_cols := List(cols, t -> TransposedMat(List([1 .. Size(t)], x -> Permuted(t, retrieve_transversal(rts[1], rts[2], x)))));



#           rows2 := List(rows, t-> t{inds});

#           mats := List([1 .. d+1], t -> NullMat(d+1, d+1));
#           for j in [1 .. d+1] do
#             Aj := ListWithIdenticalEntries(d+1, []);;
#             for m in [1 .. d+1] do
#               Aj[m]:=Permuted(cols[j], retrieve_transversal(rts[1], rts[2], inds[m]));
#             od;
#             for i in [1 .. d+1] do
#               y:=rows[i]*TransposedMat(Aj);
#               sol:=SolutionMat(rows2, y);
#               for k in [1 .. d+1] do
#                 mats[j][i, k]:=sol[k];
#               od;
#             od;
#           od;
#           A:=IntersectionAlgebra(mats);;
#           IsCommutative(A);
#           valencies := List([1 .. d+1], t -> Number(row_weighted, x -> x=t));;
#           SetValencies(A, valencies);;
#           return A;
#       end);

InstallMethod(SchurianSchemeIntersectionAlgebra,
      [IsPermGroup],
      function(g_perm)
        local  n, stab, o, row1, k, i, positions, map, rows, tau, d, mats, j, s, m, r;

        if not IsPermGroup(g_perm) or not IsTransitive(g_perm) or IsTrivial(g_perm) then
          Error("Must give a nontrivial transitive permutation group\n");
          return fail;
        fi;

        n:=DegreeAction(g_perm);;
        stab := Stabiliser(g_perm, 1);;
        o:=Orbits(stab, [1 .. n]);;
        o:=List(o, Set);;
        o:=Set(o);;
        d:=Size(o)-1;

        row1 := ListWithIdenticalEntries(n, 0);;
        for k in [1 .. Size(o)] do
          for i in o[k] do
            row1[i]:=k-1;
          od;
        od;

        positions := [];
        for i in [0 .. d] do
         Add(positions, First([1 .. n], t -> row1[t]=i));
         od;
        map := [];
        rows:=[];;
        for i in [0 .. d] do
          tau := RepresentativeAction(g_perm, 1, positions[i+1]);
          r := Permuted(row1, tau);;
          Add(map, r[1]);
          Add(rows, r);
        od;

        d:=Size(o)-1;
        mats := List([1 .. d+1], t -> NullMat(d+1, d+1));
        for k in [1 .. d+1] do
          for i in [0 .. d] do
            for j in [0 .. d] do
              s:=0;
              for m in [1 .. n] do
                if rows[1][m] = i and rows[k][m] = map[j+1] then
                  s:=s+1;
                fi;
              od;
              mats[j+1][i+1, k]:=s;
            od;
          od;
        od;
        return IntersectionAlgebra(mats);
      end);
