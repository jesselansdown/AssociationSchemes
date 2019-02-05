#
# AssociationSchemes: A GAP package for working with association schemes
#
# This file runs package tests. It is also referenced in the package
# metadata in PackageInfo.g.
#
LoadPackage( "AssociationSchemes" );

TestDirectory(DirectoriesPackageLibrary( "AssociationSchemes", "tst" ),
  rec(exitGAP := true));

FORCE_QUIT_GAP(1); # if we ever get here, there was an error
