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


InstallMethod(ApproximateRealMinimalIdempotent,
			[IsHomogeneousCoherentConfiguration, IsInt],
	function(A, val)
			local FloatApproximation, ApproximateRealMatrix, M;

			FloatApproximation := function(x)
				local n, pi, parts1, parts2, real, im;;
				n := Conductor(x);
				pi := 3.1415926535;;
				parts1 := List([1 .. n], t -> Cos(2*pi*Float(t-1)/n));
				parts2 := List([1 .. n], t -> Sin(2*pi*Float(t-1)/n));
				real:=CoeffsCyc(x, n)*parts1;
				im:=CoeffsCyc(x, n)*parts2;
				return [real, im];
			end;

			ApproximateRealMatrix := function(M)
				local d, Mcopy, i, j;
				d := Size(M)-1;;
				Mcopy:=NullMat(d+1, d+1);;
				for i in [1 .. d+1] do
					for j in [1 .. d+1] do
						Mcopy[i][j]:=FloatApproximation(M[i][j])[1];
					od;
				od;
				return Mcopy;
			end;

			M:=MinimalIdempotents(A, val);;
			if ForAny(Flat(M), t -> RealPart(t)<>t) then
				Print("Note, this operation only works for real valued matrices\n");
				return fail;
		#		Error("Must give a real matrix\n");
			fi;
			return ApproximateRealMatrix(M);
	end);

InstallMethod(ApproximateRealMinimalIdempotents,
			[IsHomogeneousCoherentConfiguration],
	function(A)
		return List([0 .. NumberOfClasses(A)], t -> ApproximateRealMinimalIdempotent(A, t));
	end);

InstallMethod(ApproximateRealMatrixOfEigenvalues,
			[IsHomogeneousCoherentConfiguration],
	function(A)
			local FloatApproximation, ApproximateRealMatrix, M;

			FloatApproximation := function(x)
				local n, pi, parts1, parts2, real, im;;
				n := Conductor(x);
				pi := 3.1415926535;;
				parts1 := List([1 .. n], t -> Cos(2*pi*Float(t-1)/n));
				parts2 := List([1 .. n], t -> Sin(2*pi*Float(t-1)/n));
				real:=CoeffsCyc(x, n)*parts1;
				im:=CoeffsCyc(x, n)*parts2;
				return [real, im];
			end;

			ApproximateRealMatrix := function(M)
				local d, Mcopy, i, j;
				d := Size(M)-1;;
				Mcopy:=NullMat(d+1, d+1);;
				for i in [1 .. d+1] do
					for j in [1 .. d+1] do
						Mcopy[i][j]:=FloatApproximation(M[i][j])[1];
					od;
				od;
				return Mcopy;
			end;

			return ApproximateRealMatrix(MatrixOfEigenvalues(A));
	end);
