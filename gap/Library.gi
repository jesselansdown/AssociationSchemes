#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
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
			Print("No such homogeneous coherent configurations in the library for oder ", String(n), "\n");
			return fail;
		fi;
		as:=EvalString(ReadAll(strm));;
		CloseStream(strm);;

		if k > Size(as) then
			Print("No such homogeneous coherent configurations in the library for oder ", String(n), "\n");
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
			Print("No such homogeneous coherent configurations in the library for oder ", String(n), "\n");
			return fail;
		fi;

		A := HomogeneousCoherentConfigurationNC(as[k]);;
		SetMatrixOfEigenvalues(A, ct[k]);;

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
			Print("No such homogeneous coherent configurations in the library for oder ", String(n), "\n");
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
			SetMatrixOfEigenvalues(out[i], ct[i]);;
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
