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

InstallMethod(GrassmannScheme,
			[IsPosInt, IsPosInt, IsPosInt],
	function( n, k, q)
		local pg, g, maximals, g_perm;;
		g:=GL(n,q);
		maximals := AsList(Subspaces(GF(q)^n, k));;
		maximals := List(maximals, GeneratorsOfLeftOperatorAdditiveGroup);;
		# order maximals with respect to CMat's ordering
		# FYI: CVEC_CVEC_LT is kernel code ... complicated!
		maximals := Set(maximals, t -> NewMatrix(IsCMatRep,GF(q),n,t) );;
		maximals := List(maximals, Unpack);;
		g_perm:=Action(g, maximals,OnSubspacesByCanonicalBasis);;
		return SchurianScheme(g_perm);;
	end);
	

