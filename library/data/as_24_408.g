rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 8, 8, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 8*E(3)^2, 8*E(3), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 8*E(3), 8*E(3)^2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 3 ], [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 3 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 3 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 6 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], [ 3, 2, 1, 0, 7, 6, 5, 4, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 4, 5, 7, 6, 0, 1, 3, 2, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], [ 5, 4, 6, 7, 1, 0, 2, 3, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], [ 6, 7, 5, 4, 2, 3, 1, 0, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 8, 8, 8, 8 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 9, 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 8, 8, 8, 8, 8, 8 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 3, 2, 1, 0, 7, 6, 5, 4, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 9, 4, 5, 7, 6, 0, 1, 3, 2, 8, 8, 8, 8, 8, 8, 8, 8 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 5, 4, 6, 7, 1, 0, 2, 3, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 9, 7, 6, 4, 5, 3, 2, 0, 1, 8, 8, 8, 8, 8, 8, 8, 8 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 6, 7, 5, 4, 2, 3, 1, 0, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 0, 1, 2, 3, 4, 5, 6, 7 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 1, 0, 3, 2, 5, 4, 7, 6 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 2, 3, 0, 1, 6, 7, 4, 5 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 3, 2, 1, 0, 7, 6, 5, 4 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 4, 5, 7, 6, 0, 1, 3, 2 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 5, 4, 6, 7, 1, 0, 2, 3 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 7, 6, 4, 5, 3, 2, 0, 1 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 6, 7, 5, 4, 2, 3, 1, 0 ] ],
  SmallSchemeIdentification := 408 )