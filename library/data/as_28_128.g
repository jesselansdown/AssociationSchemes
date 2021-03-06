rec(
  CharacterTable := [ [ 1, 1, 1, 1, 6, 6, 6, 6, 1 ], [ 1, 1, -1, -1, -6, -6, 6, 6, 1 ], [ 2, 2, 0, 0, 0, 0, -2, -2, 6 ], [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 7 ], [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 7 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], [ 1, 0, 3, 2, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 3, 2, 0, 1, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ], [ 2, 3, 1, 0, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ], 
      [ 4, 4, 7, 7, 0, 1, 6, 6, 7, 7, 6, 6, 6, 6, 7, 7, 4, 4, 5, 5, 5, 5, 2, 3, 4, 4, 5, 5 ], [ 4, 4, 7, 7, 1, 0, 6, 6, 7, 7, 6, 6, 6, 6, 7, 7, 4, 4, 5, 5, 5, 5, 3, 2, 4, 4, 5, 5 ], 
      [ 4, 4, 7, 7, 7, 7, 0, 1, 6, 6, 6, 6, 7, 7, 6, 6, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 2, 3 ], [ 4, 4, 7, 7, 7, 7, 1, 0, 6, 6, 6, 6, 7, 7, 6, 6, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 3, 2 ], 
      [ 4, 4, 7, 7, 6, 6, 7, 7, 0, 1, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 5, 5, 2, 3, 4, 4 ], [ 4, 4, 7, 7, 6, 6, 7, 7, 1, 0, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 5, 5, 3, 2, 4, 4 ], 
      [ 5, 5, 6, 6, 7, 7, 7, 7, 6, 6, 0, 1, 6, 6, 7, 7, 4, 4, 5, 5, 2, 3, 4, 4, 5, 5, 4, 4 ], [ 5, 5, 6, 6, 7, 7, 7, 7, 6, 6, 1, 0, 6, 6, 7, 7, 4, 4, 5, 5, 3, 2, 4, 4, 5, 5, 4, 4 ], 
      [ 5, 5, 6, 6, 7, 7, 6, 6, 7, 7, 7, 7, 0, 1, 6, 6, 5, 5, 2, 3, 4, 4, 4, 4, 4, 4, 5, 5 ], [ 5, 5, 6, 6, 7, 7, 6, 6, 7, 7, 7, 7, 1, 0, 6, 6, 5, 5, 3, 2, 4, 4, 4, 4, 4, 4, 5, 5 ], 
      [ 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 6, 6, 7, 7, 0, 1, 2, 3, 4, 4, 5, 5, 5, 5, 4, 4, 4, 4 ], [ 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 6, 6, 7, 7, 1, 0, 3, 2, 4, 4, 5, 5, 5, 5, 4, 4, 4, 4 ], 
      [ 7, 7, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 5, 5, 3, 2, 0, 1, 6, 6, 7, 7, 7, 7, 6, 6, 6, 6 ], [ 7, 7, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 5, 5, 2, 3, 1, 0, 6, 6, 7, 7, 7, 7, 6, 6, 6, 6 ], 
      [ 7, 7, 4, 4, 5, 5, 4, 4, 5, 5, 5, 5, 3, 2, 4, 4, 7, 7, 0, 1, 6, 6, 6, 6, 6, 6, 7, 7 ], [ 7, 7, 4, 4, 5, 5, 4, 4, 5, 5, 5, 5, 2, 3, 4, 4, 7, 7, 1, 0, 6, 6, 6, 6, 6, 6, 7, 7 ], 
      [ 7, 7, 4, 4, 5, 5, 5, 5, 4, 4, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 0, 1, 6, 6, 7, 7, 6, 6 ], [ 7, 7, 4, 4, 5, 5, 5, 5, 4, 4, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 1, 0, 6, 6, 7, 7, 6, 6 ], 
      [ 6, 6, 5, 5, 3, 2, 4, 4, 5, 5, 4, 4, 4, 4, 5, 5, 6, 6, 7, 7, 7, 7, 0, 1, 6, 6, 7, 7 ], [ 6, 6, 5, 5, 2, 3, 4, 4, 5, 5, 4, 4, 4, 4, 5, 5, 6, 6, 7, 7, 7, 7, 1, 0, 6, 6, 7, 7 ], 
      [ 6, 6, 5, 5, 4, 4, 5, 5, 3, 2, 5, 5, 4, 4, 4, 4, 7, 7, 7, 7, 6, 6, 7, 7, 0, 1, 6, 6 ], [ 6, 6, 5, 5, 4, 4, 5, 5, 2, 3, 5, 5, 4, 4, 4, 4, 7, 7, 7, 7, 6, 6, 7, 7, 1, 0, 6, 6 ], 
      [ 6, 6, 5, 5, 5, 5, 3, 2, 4, 4, 4, 4, 5, 5, 4, 4, 7, 7, 6, 6, 7, 7, 6, 6, 7, 7, 0, 1 ], [ 6, 6, 5, 5, 5, 5, 2, 3, 4, 4, 4, 4, 5, 5, 4, 4, 7, 7, 6, 6, 7, 7, 6, 6, 7, 7, 1, 0 ] ],
  SmallSchemeIdentification := 128 )