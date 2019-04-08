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


InstallMethod(CharacteristicVector,
  [IsList, IsList],
  function( X, Y )
    local chi, x; 
    if not IsDuplicateFreeList(Y) then
      Error("Y must be a duplicate free list.\n");
    fi;
    chi := ListWithIdenticalEntries(Size(Y), 0);;
    for x in X do
      if not x in Y then
        Error("You must give a valid subset\n");
      fi;
      chi[Position(Y, x)] := 1;
    od;
    return chi;
  end);

InstallMethod(CharacteristicVector,
  [IsList, IsPosInt],
  function( X, n )
    local chi, x;
    chi := ListWithIdenticalEntries(n, 0);;
    for x in X do
      if not IsPosInt(x) or x > n then
        Error("You must give a subset of [1 .. ", String(n) ,"].\n");
      fi;
      chi[x] := 1;
    od;
    return chi;
  end);
