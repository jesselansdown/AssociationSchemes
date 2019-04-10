# AssociationSchemes

* Jesse Lansdown (jesse.lansdown@research.uwa.edu.au)
* John Bamberg (john.bamberg@uwa.edu.au)
* Akihide Hanaki (hanaki@shinshu-u.ac.jp)

AssociationSchemes is a [GAP](https://www.gap-system.org) package for working with association schemes and homogeneous
coherent configurations.

[View the manual for AssociationSchemes here](http://www.jesselansdown.com/AssociationSchemes/doc/manual.pdf)
and the [issue tracker here](https://github.com/jesselansdown/AssociationSchemes/issues)

AssociationSchemes has the following dependencies:
* GAP 4.8 (or later)
* Digraphs 0.13.0 (or later)
* NautyTracesInterace 0.2 (or later - available from https://github.com/sebasguts/NautyTracesInterface)

If you want to regenerate the documentation for any reason, then the following will also be required.

* AutoDoc 2018.09.20 (or later)
* GAPDoc 1.6.2 (or later)

To install, simply download AssociationSchemes and extract it into the pkg directory of the GAP installation directory.

If you wish to regenerate the documentation do

		gap.sh makedoc.g

To load AssociationSchemes in GAP:

		LoadPackage( "AssociationSchemes" );

## License

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.