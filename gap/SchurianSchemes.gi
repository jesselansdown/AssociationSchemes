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
		sch := HomogeneousCoherentConfigurationByOrbitals(g_perm);
		SetIsSchurian(sch, true);
		return sch;
	end);

InstallMethod( IsSchurian, [ IsHomogeneousCoherentConfiguration ], 
	function( sch )
    local n, aut;
    if not IsSymmetricCoherentConfiguration(sch) then
      return false;
    fi;
   	aut := AutomorphismGroup( sch );
  	n := Order(sch);;
  	if IsHomogeneousCoherentConfigurationByOrbitals(sch) then
		#	return IsGenerouslyTransitive(aut, [1..n]);
	 	return DegreeAction(aut) = Order(sch) and IsGenerouslyTransitive(aut);
  	else
  		return false;
  	fi;
 end);
