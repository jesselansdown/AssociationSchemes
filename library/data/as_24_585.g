rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 1 ], [ 1, -1, 1, 1, -1, -1, 3, -3, -3, -3, 3, 3, 1 ], [ 1, -1, 1, 1, -1, -1, 3, -3, 3, 3, -3, -3, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 3, 3, -3, -3, -3, -3, 1 ], [ 2, 0, 2, 2, 0, 0, -6, 0, 0, 0, 0, 0, 2 ], [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 0, 0, 0, 0, 0, 0, 4 ], [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 0, 0, 0, 0, 0, 0, 4 ], [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11 ], [ 1, 0, 4, 5, 2, 3, 7, 7, 7, 6, 6, 6, 10, 10, 10, 11, 11, 11, 8, 8, 8, 9, 9, 9 ], 
      [ 3, 5, 0, 2, 1, 4, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11 ], [ 2, 4, 3, 0, 5, 1, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11 ], 
      [ 5, 3, 1, 4, 0, 2, 7, 7, 7, 6, 6, 6, 10, 10, 10, 11, 11, 11, 8, 8, 8, 9, 9, 9 ], [ 4, 2, 5, 1, 3, 0, 7, 7, 7, 6, 6, 6, 10, 10, 10, 11, 11, 11, 8, 8, 8, 9, 9, 9 ], 
      [ 6, 7, 6, 6, 7, 7, 0, 2, 3, 1, 4, 5, 9, 9, 9, 8, 8, 8, 11, 11, 11, 10, 10, 10 ], [ 6, 7, 6, 6, 7, 7, 3, 0, 2, 5, 1, 4, 9, 9, 9, 8, 8, 8, 11, 11, 11, 10, 10, 10 ], 
      [ 6, 7, 6, 6, 7, 7, 2, 3, 0, 4, 5, 1, 9, 9, 9, 8, 8, 8, 11, 11, 11, 10, 10, 10 ], [ 7, 6, 7, 7, 6, 6, 1, 4, 5, 0, 2, 3, 11, 11, 11, 10, 10, 10, 9, 9, 9, 8, 8, 8 ], 
      [ 7, 6, 7, 7, 6, 6, 5, 1, 4, 3, 0, 2, 11, 11, 11, 10, 10, 10, 9, 9, 9, 8, 8, 8 ], [ 7, 6, 7, 7, 6, 6, 4, 5, 1, 2, 3, 0, 11, 11, 11, 10, 10, 10, 9, 9, 9, 8, 8, 8 ], 
      [ 8, 11, 8, 8, 11, 11, 9, 9, 9, 10, 10, 10, 0, 2, 3, 6, 6, 6, 7, 7, 7, 1, 4, 5 ], [ 8, 11, 8, 8, 11, 11, 9, 9, 9, 10, 10, 10, 3, 0, 2, 6, 6, 6, 7, 7, 7, 5, 1, 4 ], 
      [ 8, 11, 8, 8, 11, 11, 9, 9, 9, 10, 10, 10, 2, 3, 0, 6, 6, 6, 7, 7, 7, 4, 5, 1 ], [ 9, 10, 9, 9, 10, 10, 8, 8, 8, 11, 11, 11, 6, 6, 6, 0, 2, 3, 1, 4, 5, 7, 7, 7 ], 
      [ 9, 10, 9, 9, 10, 10, 8, 8, 8, 11, 11, 11, 6, 6, 6, 3, 0, 2, 5, 1, 4, 7, 7, 7 ], [ 9, 10, 9, 9, 10, 10, 8, 8, 8, 11, 11, 11, 6, 6, 6, 2, 3, 0, 4, 5, 1, 7, 7, 7 ], 
      [ 11, 8, 11, 11, 8, 8, 10, 10, 10, 9, 9, 9, 7, 7, 7, 1, 4, 5, 0, 2, 3, 6, 6, 6 ], [ 11, 8, 11, 11, 8, 8, 10, 10, 10, 9, 9, 9, 7, 7, 7, 5, 1, 4, 3, 0, 2, 6, 6, 6 ], 
      [ 11, 8, 11, 11, 8, 8, 10, 10, 10, 9, 9, 9, 7, 7, 7, 4, 5, 1, 2, 3, 0, 6, 6, 6 ], [ 10, 9, 10, 10, 9, 9, 11, 11, 11, 8, 8, 8, 1, 4, 5, 7, 7, 7, 6, 6, 6, 0, 2, 3 ], 
      [ 10, 9, 10, 10, 9, 9, 11, 11, 11, 8, 8, 8, 5, 1, 4, 7, 7, 7, 6, 6, 6, 3, 0, 2 ], [ 10, 9, 10, 10, 9, 9, 11, 11, 11, 8, 8, 8, 4, 5, 1, 7, 7, 7, 6, 6, 6, 2, 3, 0 ] ],
  SmallSchemeIdentification := 585 )