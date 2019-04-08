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
		local filename, path, allpaths, strm, mat, ct, as, A;
		filename := Concatenation("as", String(n),".g");
		path := "pkg/AssociationSchemes/library/";
        allpaths := List( GAPInfo.RootPaths, p -> Concatenation(p, path) );
        allpaths := Filtered( allpaths, IsDirectoryPath );
		for path in allpaths do
			strm :=InputTextFile(Concatenation(path, filename));;
			if not strm <> fail then
				break;
			fi;
		od;
		if strm = fail then
			Print("No such homogeneous coherent configurations in the library for order ", String(n), "\n");
			return fail;
		fi;
		as:=EvalString(ReadAll(strm));;
		CloseStream(strm);;

		if k > Size(as) then
			Print("No such homogeneous coherent configurations in the library for order ", String(n), "\n");
			return fail;
		fi;

		filename := Concatenation("ct", String(n),".g");
		for path in allpaths do
			strm :=InputTextFile(Concatenation(path, filename));;
			if not strm <> fail then
				break;
			fi;
		od;
		if strm = fail then
			Print("No character tables for homogeneous coherent configurations of order ", String(n), "\n");
			return fail;
		fi;
		ct:=EvalString(ReadAll(strm));;
		CloseStream(strm);;
		if k > Size(ct) then
			Print("No such homogeneous coherent configurations in the library for order ", String(n), "\n");
			return fail;
		fi;

		A := HomogeneousCoherentConfigurationNC(as[k]);;
		SetMatrixOfEigenvalues(A, ct[k]{[1..Size(ct[k])]}{[1..Size(ct[k][1])-1]});;

		return A;
	end );

InstallMethod(AllHomogeneousCoherentConfigurations,
			[IsPosInt],
	function(n)
		local filename, path, allpaths, strm, mat, ct, as, i, out;
		filename := Concatenation("as", String(n),".g");
		path := "pkg/AssociationSchemes/library/";
        allpaths := List( GAPInfo.RootPaths, p -> Concatenation(p, path) );
        allpaths := Filtered( allpaths, IsDirectoryPath );
		for path in allpaths do
			strm :=InputTextFile(Concatenation(path, filename));;
			if not strm <> fail then
				break;
			fi;
		od;
		if strm = fail then
			Print("No such homogeneous coherent configurations in the library for order ", String(n), "\n");
			return fail;
		fi;
		as:=EvalString(ReadAll(strm));;
		CloseStream(strm);;

		filename := Concatenation("ct", String(n),".g");
		for path in allpaths do
			strm :=InputTextFile(Concatenation(path, filename));;
			if not strm <> fail then
				break;
			fi;
		od;
		if strm = fail then
			Print("No character tables for homogeneous coherent configurations of order ", String(n), "\n");
			return fail;
		fi;
		ct:=EvalString(ReadAll(strm));;
		CloseStream(strm);;

		out := List(as, t -> HomogeneousCoherentConfigurationNC(t));;
		for i in [1 .. Size(as)] do
			SetMatrixOfEigenvalues(out[i], ct[i]{[1..Size(ct[i])]}{[1..Size(ct[i][1])-1]});;
		od;

		return out;
	end );

# InstallMethod(HomogeneousCoherentConfiguration,
# 			[IsPosInt, IsPosInt],
# 	function(n, k)
# 		local filename, path, allpaths, strm, mat, A, P, ct, info;
# 		filename := Concatenation("HomogeneousCoherentConfigurationWithSmallVertices_", String(n), "_", String(k), ".g");
# 		path := "pkg/AssociationSchemes/library/";
#         allpaths := List( GAPInfo.RootPaths, p -> Concatenation(p, path) );
#         allpaths := Filtered( allpaths, IsDirectoryPath );
# 		for path in allpaths do
# 			strm :=InputTextFile(Concatenation(path, filename));;
# 			if not strm <> fail then
# 				break;
# 			fi;
# 		od;
# 		if strm = fail then
# 			Print("No such association scheme at position ", String(k), " in the library for oder ", String(n), "\n");
# 			return fail;
# 		fi;
# 		info:=EvalString(ReadAll(strm));;
# 		CloseStream(strm);;
# 		mat := info.matrix;;
# 		ct := info.ct;;
# 		P:=ct{[1..Size(ct)]}{[1..Size(ct)]};;
# 		A := HomogeneousCoherentConfiguration(mat);;
# 		SetMatrixOfEigenvalues(A, P);;
# 		return A;
# 	end );

InstallMethod(NumberOfHomogeneousCoherentConfigurations,
			[IsPosInt],
	function(n)
		local filename, path, allpaths, strm, tab;
		filename := "AssociationSchemeWithSmallVerticesTable.g";
		path := "pkg/AssociationSchemes/library/";
        allpaths := List( GAPInfo.RootPaths, p -> Concatenation(p, path) );
        allpaths := Filtered( allpaths, IsDirectoryPath );
		for path in allpaths do
			strm :=InputTextFile(Concatenation(path, filename));;
			if not strm <> fail then
				break;
			fi;
		od;
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

InstallMethod(AvailableHomogeneousCoherentConfigurations,
			[],
	function()
		local filename, path, allpaths, strm, tab;
		filename := "AssociationSchemeWithSmallVerticesTable.g";
		path := "pkg/AssociationSchemes/library/";
        allpaths := List( GAPInfo.RootPaths, p -> Concatenation(p, path) );
        allpaths := Filtered( allpaths, IsDirectoryPath );
		for path in allpaths do
			strm :=InputTextFile(Concatenation(path, filename));;
			if not strm <> fail then
				break;
			fi;
		od;
		if strm = fail then
			Print("Can't find the table of association schemes!\n");
			return fail;
		fi;
		tab:=EvalString(ReadAll(strm));;
		CloseStream(strm);;
		return Set(RecNames(tab), t -> Int(t));
	end );
