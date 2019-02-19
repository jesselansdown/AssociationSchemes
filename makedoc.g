#
# AssociationSchemes: A GAP package for working with association schemes
#
# This file is a script which compiles the package manual.
#
if fail = LoadPackage("AutoDoc", "2018.02.14") then
    Error("AutoDoc version 2018.02.14 or newer is required.");
fi;

#AutoDoc( rec( maketest := rec( commands := [ "LoadPackage( \"AssociationSchemes\" );"]), scaffold := true, autodoc := rec( files := [ "doc/Intro.autodoc"] ) ) );
AutoDoc( rec( scaffold := true, autodoc := rec( files := [ "doc/Intro.autodoc"] ) ) );
#AutoDoc( rec( scaffold := true, autodoc := true ) );
