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
		local filename, path, allpaths, strm, mat;
		filename := Concatenation("AssociationSchemeWithSmallVertices_", String(n), "_", String(k), ".g");
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
			Print("No such association scheme at position ", String(k), " in the library for oder ", String(n), "\n");
			return fail;
		fi;
		mat:=EvalString(ReadAll(strm));;
		CloseStream(strm);;
		return CoherentConfiguration(mat);
	end );
