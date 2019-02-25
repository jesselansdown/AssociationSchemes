  #############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################


InstallMethod(ConvertToRootOfUnity,
  [IsList],
    function(x)
      local close, pi, x2, r1, r2, c1, c2, y, val;
      close := function(x, y)
          if AbsoluteValue(x-y) < 0.00001 then
              return true;
          fi;
          return false;
      end;

      if close(x[2], 0.) and close(x[1], 0.) then
        return 0;
      fi;

      if close(x[1], Float(Int(Round(x[1])))) and close(x[2], Float(Int(Round(x[2])))) then
        return Int(Round(x[1])) + Int(Round(x[2]))*E(4);
      fi;

      pi:=3.141592;

      r1:=Sqrt(x[1]^2 + x[2]^2);
      r2:=Sqrt(Int(Round(x[1]^2 + x[2]^2)));
      x2:=x/r1;
      val := Asin(x2[2])/pi;
      if x2[1] < 0. then
        val := 1 - val; # Check correct quadrant.
      fi;
      val := Rat(val/2);;

      c1:=NumeratorRat(val);
      c2:=DenominatorRat(val);;
      y:=E(c2)^c1;
      return r2*y;
  end);


#  inter := IntersectionMatrices(A);
#  eigs := List(inter, SpectrumOfRealMatrix);
#  eigs := List(eigs, t -> List(t, x -> ConvertToRootOfUnity(x)));



# InstallMethod( MatrixOfEigenvalues, 
#  "for IsAssociationScheme",
#  [ IsHomogeneousCoherentConfiguration ],
  MatEigs:=function(m)
    local orthogonality_check, inter, eigs, d, feasiblerows, posvals, stopvals, i, row, valencies, wow, stack, options, P, P2, current;;

    if not "eigengap" in RecNames(GAPInfo.PackagesLoaded) then
      Error("You must load the EigenGAP package\n");
    fi;

    orthogonality_check := function(thing, valencies)
      local i;
      for i in [1 .. Size(thing)-1] do
        if not Sum(List([1..Size(thing[1])], t -> thing[i][t]*ComplexConjugate(thing[Size(thing)][t])/valencies[t] ))=-1 then
          return false;
        fi;
      od;
      # also put the orthogonal relation with itself? This requires m_i
      return true;
    end;

    d:=ClassOfAssociationScheme(m);
    valencies:=ShallowCopy(Valencies(m));
    Remove(valencies, 1);;

    inter:=IntersectionMatrices(m);
    inter := IntersectionMatrices(A);
    eigs := List(inter, SpectrumOfRealMatrix);
    eigs := List(eigs, t -> List(t, x -> ConvertToRootOfUnity(x)));
    Remove(eigs,1);

    feasiblerows:=[];

    posvals := ListWithIdenticalEntries(d, 1);;
    stopvals := List(eigs, Size);;
    posvals[1]:=0;
    while posvals <> stopvals do
      posvals[1]:=posvals[1]+1;
      for i in [1.. d] do
        if posvals[i] > Size(eigs[i]) then
          posvals[i]:=1;
          posvals[i+1]:=posvals[i+1]+1;
        fi;
      od;
      row:=ListWithIdenticalEntries(d,1);
      for i in [1 .. d] do
        row[i]:=eigs[i][posvals[i]];
      od;
      if Sum(row)=-1 then
        Add(feasiblerows, row);;
        feasiblerows := Set(feasiblerows);;
      fi;
    od;

    stack := List(feasiblerows, t -> [t]);;
    while stack <> [] do
      current:=Remove(stack);;
      if Size(current) < d then
      #   if correct size, then check that for all i, eigs[i] in current{[1..d]}[i] - just take transpose
      # if ok, then check the column orthogonality
      # Any other checks? Gives a valid Q matrix?
      options:=List(feasiblerows, t -> Concatenation(current, [t]) );;
      options:=Filtered(options, t -> orthogonality_check(t, valencies));
      Append(stack, options);
      else
        P:=NullMat(d+1, d+1);
        P:=P+1;;
        P[1]{[2..d+1]}:=valencies;
        P{[2..d+1]}{[2..d+1]}:=current;
        P2 := TransposedMat(P);;
        if ForAll([1 .. d], t -> ForAll(eigs[t], x -> x in P2[t+1])) then
          if IsCharacterTableOfHomogeneousCoherentConfiguration(m, P) then
            return P;
          fi;
        fi;
      fi;
    od;
    return fail ;
  end
  #);
