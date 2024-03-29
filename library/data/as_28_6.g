rec(
  CharacterTable := [ [ 1, 12, 15, 1 ], [ 1, 4, -5, 7 ], [ 1, -2, 1, 20 ] ],
  Description := [ "Johnson scheme J(8,2)", "Kneser graph K(8,2) (drg)" ],
  RelationMatrix := [ [ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], [ 1, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 1, 1, 0, 1, 1, 1, 1, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2 ], [ 1, 1, 1, 0, 1, 1, 1, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2 ], 
      [ 1, 1, 1, 1, 0, 1, 1, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2, 2, 1, 1, 2 ], [ 1, 1, 1, 1, 1, 0, 1, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2, 1, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 0, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2, 1, 1 ], [ 1, 1, 2, 2, 2, 2, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 1, 2, 1, 2, 2, 2, 2, 1, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2 ], [ 1, 2, 2, 1, 2, 2, 2, 1, 1, 0, 1, 1, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2 ], 
      [ 1, 2, 2, 2, 1, 2, 2, 1, 1, 1, 0, 1, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2, 2, 1, 1, 2 ], [ 1, 2, 2, 2, 2, 1, 2, 1, 1, 1, 1, 0, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2, 1, 2, 1 ], 
      [ 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 0, 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2, 1, 1 ], [ 2, 1, 1, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2 ], 
      [ 2, 1, 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 2, 1, 0, 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2 ], [ 2, 1, 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 2, 1, 1, 0, 1, 1, 2, 1, 2, 2, 1, 2, 2, 1, 1, 2 ], 
      [ 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 2, 1, 2, 1, 1, 1, 0, 1, 2, 2, 1, 2, 2, 1, 2, 1, 2, 1 ], [ 2, 1, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 0, 2, 2, 2, 1, 2, 2, 1, 2, 1, 1 ], 
      [ 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 2, 2, 2, 1, 1, 2, 2, 2, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2 ], [ 2, 2, 1, 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 2, 1, 0, 1, 1, 1, 2, 2, 1, 1, 2 ], 
      [ 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 1, 2, 2, 1, 2, 1, 1, 0, 1, 2, 1, 2, 1, 2, 1 ], [ 2, 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 2, 1, 1, 2, 2, 2, 1, 1, 1, 1, 0, 2, 2, 1, 2, 1, 1 ], 
      [ 2, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 2, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 0, 1, 1, 1, 1, 2 ], [ 2, 2, 2, 1, 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 0, 1, 1, 2, 1 ], 
      [ 2, 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 1, 2, 2, 1, 1, 2, 2, 1, 1, 1, 0, 2, 1, 1 ], [ 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 2, 2, 2, 1, 1, 2, 2, 1, 1, 2, 1, 1, 2, 0, 1, 1 ], 
      [ 2, 2, 2, 2, 1, 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 1, 2, 1, 1, 2, 1, 1, 0, 1 ], [ 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 2, 2, 2, 1, 1, 2, 2, 1, 1, 2, 1, 1, 1, 1, 0 ] ],
  SmallSchemeIdentification := 6 )
