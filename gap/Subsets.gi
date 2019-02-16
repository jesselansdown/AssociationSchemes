  #############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################


InstallMethod(CharacteristicVector,
  [IsList, IsList],
  function( X, Y )
    local chi, x; 
    if not IsDuplicateFreeList(Y) then
      Error("Y must be a duplicate free list.\n");
    fi;
    chi := ListWithIdenticalEntries(Size(Y), 0);;
    for x in X do
      if not x in Y then
        Error("You must give a valid subset\n");
      fi;
      chi[Position(Y, x)] := 1;
    od;
    return chi;
  end);

InstallMethod(CharacteristicVector,
  [IsList, IsPosInt],
  function( X, n )
    local chi, x;
    chi := ListWithIdenticalEntries(n, 0);;
    for x in X do
      if not IsPosInt(x) or x > n then
        Error("You must give a subset of [1 .. ", String(n) ,"].\n");
      fi;
      chi[x] := 1;
    od;
    return chi;
  end);
