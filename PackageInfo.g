#
# AssociationSchemes: A GAP package for working with association schemes
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#
SetPackageInfo( rec(

PackageName := "AssociationSchemes",
Subtitle := "A GAP package for working with association schemes and coherent configurations",
Version := "0.1",
Date := "05/02/2019", # dd/mm/yyyy format

Persons := [

  rec(
    IsAuthor := true,
    IsMaintainer := true,
    FirstNames := "John",
    LastName := "Bamberg",
    WWWHome := "http://school.maths.uwa.edu.au/~bamberg/",
    Email := "john.bamberg@uwa.edu.au",
    PostalAddress := Concatenation(
               "John Bamberg\n",
               "School of Mathematics and Statistics\n",
               "The University of Western Australia\n",
               "35 Stirling Highway\n",
               "Crawley WA 6009, Perth\n",
               "Australia" ),
    Place := "Perth",
    Institution := "The University of Western Australia",
  ),
    rec(
    IsAuthor := true,
    IsMaintainer := true,
    FirstNames := "Akihide",
    LastName := "Hanaki",
    WWWHome := "http://math.shinshu-u.ac.jp/~hanaki/",
    Email := "hanaki@shinshu-u.ac.jp",
    PostalAddress := Concatenation(
                  "Akihide Hanaki\n",
                  "Department of Mathematics\n",
                  "Faculty of Science, Shinshu University\n",
                  "Matsumoto 390-8621, Japan"),
    Place := "Matsumoto",
    Institution := "Shinshu University",
  ),
    rec(
    IsAuthor := true,
    IsMaintainer := true,
    FirstNames := "Jesse",
    LastName := "Lansdown",
    WWWHome := "http://www.jesselansdown.com",
    Email := "jesse.lansdown@research.uwa.edu.au",
    PostalAddress := Concatenation(
               "Jesse Lansdown\n",
               "School of Mathematics and Statistics\n",
               "The University of Western Australia\n",
               "35 Stirling Highway\n",
               "Crawley WA 6009, Perth\n",
               "Australia" ),
    Place := "Perth",
    Institution := "The University of Western Australia/RWTH Aachen University",
  ),
],

#SourceRepository := rec( Type := "TODO", URL := "URL" ),
#IssueTrackerURL := "TODO",
PackageWWWHome := "https://github.com/jesselansdown/AssociationSchemes/",
PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
README_URL     := Concatenation( ~.PackageWWWHome, "README.md" ),
ArchiveURL     := Concatenation( ~.PackageWWWHome,
                                 "/", ~.PackageName, "-", ~.Version ),

ArchiveFormats := ".tar.gz",

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages
##    "other"         for all other packages
##
Status := "dev",

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "AssociationSchemes",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "A GAP package for working with association schemes and coherent configurations",
),

Dependencies := rec(
  GAP := ">= 4.9",
  NeededOtherPackages := [
  ["GRAPE", ">=4.8.1"],
  ["Digraphs", ">=0.13.0"],
  ["cvec", ">=2.6.1"],
#  ["NautyTracesInterface", ">=0.2"]
  ],
  SuggestedOtherPackages := [
  ["NautyTracesInterface", ">=0.2"]
  ],
  ExternalConditions := [ ],
),

AvailabilityTest := ReturnTrue,

TestFile := "tst/testall.g",

#Keywords := [ "TODO" ],

));


