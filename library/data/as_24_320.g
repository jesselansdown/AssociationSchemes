rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 6, 6, 6, 1 ], [ 1, 1, 1, 1, 1, 1, -6, -6, 6, 1 ], [ 1, 1, 1, 1, 1, 1, -6, 6, -6, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 6, -6, -6, 1 ], [ 1, -1, -1, -1, 1, 1, 0, 0, 0, 4 ], [ 2, 0, 0, 0, -1, -1, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8 ], [ 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8 ], 
      [ 2, 5, 0, 4, 3, 1, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8 ], [ 3, 4, 5, 0, 1, 2, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8 ], 
      [ 5, 2, 3, 1, 0, 4, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8 ], [ 4, 3, 1, 2, 5, 0, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8 ], 
      [ 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7 ], [ 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 6, 6, 2, 5, 0, 4, 3, 1, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7 ], [ 6, 6, 6, 6, 6, 6, 3, 4, 5, 0, 1, 2, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 6, 6, 5, 2, 3, 1, 0, 4, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7 ], [ 6, 6, 6, 6, 6, 6, 4, 3, 1, 2, 5, 0, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7 ], 
      [ 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6 ], [ 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 2, 5, 0, 4, 3, 1, 6, 6, 6, 6, 6, 6 ], [ 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 3, 4, 5, 0, 1, 2, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 5, 2, 3, 1, 0, 4, 6, 6, 6, 6, 6, 6 ], [ 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 4, 3, 1, 2, 5, 0, 6, 6, 6, 6, 6, 6 ], 
      [ 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5 ], [ 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3 ], 
      [ 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 2, 5, 0, 4, 3, 1 ], [ 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 3, 4, 5, 0, 1, 2 ], 
      [ 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 2, 3, 1, 0, 4 ], [ 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 4, 3, 1, 2, 5, 0 ] ],
  SmallSchemeIdentification := 320 )