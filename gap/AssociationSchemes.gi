#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##
#############################################################################

# Take a matrix and return a TheTypeAssociationScheme object.
# Does not perform any checks, other than that a matrix is given as input.

InstallMethod(AssociationSchemeNC,
			[IsMatrix],
	function(mat)
		local m;
		m := StructuralCopy(mat);;
		return Objectify(TheTypeAssociationScheme, m);
	end );

#######################################################
#	Here we put a check that the association scheme is valid
#######################################################

# InstallMethod(AssociationScheme,
# 			[IsMatrix],
# 	function(mat)
# 		local m;
# 		if not IsAssociationSchemeMatrix(mat) then
# 			Print("Must give a valid matrix\n");
# 			return fail;
# 		fi;
# 		m := StructuralCopy(mat);;
# 		return Objectify(TheTypeAssociationScheme, m);
# 	end );

InstallGlobalFunction( AssociationSchemes_Example,
function()
	Print( "This is a placeholder function, replace it with your own code.\n" );
end );

