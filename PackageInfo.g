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
Subtitle := "A GAP package for working with association schemes and homogeneous coherent configurations",
Version := "3.0.0",
Date := "07/07/2023", # dd/mm/yyyy format

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
    Email := "jesse.lansdown@canterbury.ac.nz",
    PostalAddress := Concatenation(
               "Jesse Lansdown\n",
               "School of Mathematics and Statistics\n",
               "University of Canterbury\n",
               "Christchurch 8140\n",
               "New Zealand" ),
    Place := "Christchurch",
    Institution := "University of Canterbury",
  ),
],


SourceRepository := rec(
    Type := "git",
    URL := Concatenation( "https://github.com/jesselansdown/", ~.PackageName ),
),

IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := Concatenation( "http://www.jesselansdown.com/", ~.PackageName ),
README_URL      := Concatenation( ~.PackageWWWHome, "/README.md" ),
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "/PackageInfo.g" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                 "/releases/download/v", ~.Version,
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
  LongTitle := "A GAP package for working with association schemes and homogeneous coherent configurations",
),

Dependencies := rec(
  GAP := ">= 4.9",
  NeededOtherPackages := [
  ["GRAPE", ">=4.8.1"],
  ["Digraphs", ">=0.13.0"],
  ["cvec", ">=2.6.1"]
  ],
  SuggestedOtherPackages := [
    ["NautyTracesInterface", ">=0.2"]
  ],
  ExternalConditions := [ ],
),

AvailabilityTest := ReturnTrue,

TestFile := "tst/testall.g",

#Keywords := [ "TODO" ],
AutoDoc := rec(
    TitlePage := rec(
        Copyright := Concatenation("&copyright; 2019 - 2023 John Bamberg, Akihide Hanaki, Jesse Lansdown<P/>\n\n",
                    "This program is free software; you can redistribute it and/or ",
                    "modify it under the terms of the GNU General Public License ",
                    "as published by the Free Software Foundation; either version 2 ",
                    "of the License, or (at your option) any later version.<P/><P/>",
                    "This program is distributed in the hope that it will be useful, ",
                    "but WITHOUT ANY WARRANTY; without even the implied warranty of ",
                    "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the ",
                    "GNU General Public License for more details.<P/><P/>",
                    "You should have received a copy of the GNU General Public License ",
                    "along with this program; if not, write to the Free Software ",
                    "Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.\n"),
        Abstract := "AssociationSchemes is a GAP package for working with association schemes and homogeneous coherent configurations.",
        Acknowledgements := Concatenation("The third author would like to acknowledge the support of an ",
          "Australian Government Research Training Program (RTP) Scholarship while writing this software. ",
           "The first and third authors are also grateful for the 2019 CMSC Retreat for providing an opportunity and ",
           "environment for some of the founding work on the package.")
    )
),


));



