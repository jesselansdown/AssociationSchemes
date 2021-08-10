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

InstallMethod(HomogeneousCoherentConfiguration,
			[IsPosInt, IsPosInt],
	function(n, k)
		local filename, path, allpaths, strm, mat, ct, as, A, d;
		filename := Concatenation(GAPInfo.PackagesInfo.associationschemes[1].InstallationPath,
		 "/library/data/as_",String(n),"_", String(k), ".g");
		strm :=InputTextFile(filename);;
		if strm = fail then
			Print("No such homogeneous coherent configurations in the library for order ", String(n), ", position ", String(k), "\n");
			return fail;
		fi;
		as:=EvalString(ReadAll(strm));;
		CloseStream(strm);;

		A := HomogeneousCoherentConfigurationNC(as.RelationMatrix);;
		d := NumberOfClasses(A);;
		SetSmallSchemeIdentification(A, k);
		if "Description" in RecNames(as) then
			SetDescription(A, as.Description);
		fi;
		if Size(as.CharacterTable)=d+1 then
			SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A), as.CharacterTable{[1 .. d+1]}{[1 .. d+1]});
			SetMultiplicities(A, List([1 .. d+1], t -> as.CharacterTable[t, d+2]));
			SetCharacterTableOfHomogeneousCoherentConfiguration(A, as.CharacterTable{[1 .. d+1]}{[1 .. d+1]});
		else 
			SetMatrixOfEigenvalues(IntersectionAlgebraOfHomogeneousCoherentConfiguration(A), fail);
			SetMultiplicities(A, List([1 .. Size(as.CharacterTable)], t -> as.CharacterTable[t, d+2]));
			SetCharacterTableOfHomogeneousCoherentConfiguration(A, as.CharacterTable{[1 .. Size(as.CharacterTable)]}{[1 .. d+1]});
		fi;
		return A;
	end );

InstallMethod(NumberOfHomogeneousCoherentConfigurations,
			[IsPosInt],
	function(n)
		local filename, path, allpaths, strm, tab;
		filename := Concatenation(GAPInfo.PackagesInfo.associationschemes[1].InstallationPath,
		 "/library/AssociationSchemeWithSmallVerticesTable.g");
		strm :=InputTextFile(filename);;
		if strm = fail then
			Print("Can't find the table of association schemes!\n");
			return fail;
		fi;
		tab:=EvalString(ReadAll(strm));;
		CloseStream(strm);;
		if not String(n) in RecNames(tab) then
			Print("Coherent configurations of order ", String(n), " not currently in library\n");
			return fail;
		fi;
		return tab.(n).number;
	end );

InstallMethod(AllHomogeneousCoherentConfigurations,
			[IsPosInt],
	function(n)
		local kmax, out, k, A;

		kmax:= NumberOfHomogeneousCoherentConfigurations(n);;
		out:=ListWithIdenticalEntries(kmax, 0);;
		for k in [1 .. kmax] do
			A := HomogeneousCoherentConfiguration(n, k);;
			if A = fail then
				Print("No such homogeneous coherent configurations in the library for order ", String(n), ", position ", String(k), "\n");
				return fail;
			fi;
			out[k]:=A;
		od;

		return out;
	end );

InstallMethod(AvailableHomogeneousCoherentConfigurations,
			[],
	function()
		local filename, path, allpaths, strm, tab;
		filename := Concatenation(GAPInfo.PackagesInfo.associationschemes[1].InstallationPath,
		 "/library/AssociationSchemeWithSmallVerticesTable.g");
		strm :=InputTextFile(filename);;
		if strm = fail then
			Print("Can't find the table of association schemes!\n");
			return fail;
		fi;
		tab:=EvalString(ReadAll(strm));;
		CloseStream(strm);;
		return Set(RecNames(tab), t -> Int(t));
	end );

 InstallMethod( SmallSchemeIdentification, 
 	"for IsAssociationScheme",
 	[ IsHomogeneousCoherentConfiguration ],
 function( A )
	local id, options, B, charpolysA, charpolysB, x, filename, strm, tab, classes;
	if not Order(A) in AvailableHomogeneousCoherentConfigurations() then
		Error("This only works for small schemes with order in the database:\n", AvailableHomogeneousCoherentConfigurations(), "\n");
	fi;
	if IsThin(A) then
		Error("Only non-thin coherent configurations are contained in the database.\n");
	fi;
	filename := Concatenation(GAPInfo.PackagesInfo.associationschemes[1].InstallationPath,
		 "/library/AssociationSchemeWithSmallVerticesTable.g");
	strm :=InputTextFile(filename);;
	if strm = fail then
		Print("Can't find the table of association schemes!\n");
		return fail;
	fi;
	tab:=EvalString(ReadAll(strm));;
	CloseStream(strm);;
	classes:=tab.(Order(A)).classes;;
	options:=[];
	for id in [1 .. NumberOfHomogeneousCoherentConfigurations(Order(A))] do
		if NumberOfClasses(A) = classes[id] then
			B:=HomogeneousCoherentConfiguration(Order(A), id);
			if AreIsomorphicHomogeneousCoherentConfigurations(A, HomogeneousCoherentConfiguration(Order(A), id)) then
				return id;
			fi;
		fi;
	od;
	return fail;
end);

