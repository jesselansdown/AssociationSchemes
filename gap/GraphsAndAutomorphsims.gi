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



InstallOtherMethod(Digraph,
			[IsHomogeneousCoherentConfiguration, IsPosInt],
	function(A, k)
		if not k in[1 .. Rank(A)] then
			Error("Must give a an integer in [1 .. d]\n");
		fi;
		return Digraph([1 .. Order(A)], function(u, v) return RelationMatrix(A)[u,v]=k;end);
	end );

InstallOtherMethod(Digraph,
			[IsHomogeneousCoherentConfiguration, IsList],
	function(A, S)
		if not IsSubset([1 .. Rank(A)], Set(S)) then
			Error("Must give a subset of [1 .. d]\n");
		fi;
		return Digraph([1 .. Order(A)], function(u, v) return RelationMatrix(A)[u,v] in S;end);
	end );
