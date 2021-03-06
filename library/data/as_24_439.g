rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 6, 6, 1 ], [ 1, 1, -1, -1, 2, 2, -2, -2, -6, 6, 1 ], [ 1, 1, -1, -1, 2, 2, -2, -2, 6, -6, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, -6, -6, 1 ], [ 1, -1, E(4), -E(4), 2, -2, -2*E(4), 2*E(4), 0, 0, 2 ], [ 1, -1, -E(4), E(4), 2, -2, 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, -1, E(4), -E(4), -1, 1, E(4), -E(4), 0, 0, 4 ], [ 1, -1, -E(4), E(4), -1, 1, -E(4), E(4), 0, 0, 4 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 4 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], [ 1, 0, 3, 2, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 3, 2, 0, 1, 6, 6, 7, 7, 5, 5, 4, 4, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], [ 2, 3, 1, 0, 7, 7, 6, 6, 4, 4, 5, 5, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 4, 5, 7, 6, 0, 4, 1, 5, 3, 6, 2, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], [ 4, 5, 7, 6, 4, 0, 5, 1, 6, 3, 7, 2, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 5, 4, 6, 7, 1, 5, 0, 4, 2, 7, 3, 6, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], [ 5, 4, 6, 7, 5, 1, 4, 0, 7, 2, 6, 3, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 7, 6, 5, 4, 2, 7, 3, 6, 0, 4, 1, 5, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], [ 7, 6, 5, 4, 7, 2, 6, 3, 4, 0, 5, 1, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 6, 7, 4, 5, 3, 6, 2, 7, 1, 5, 0, 4, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], [ 6, 7, 4, 5, 6, 3, 7, 2, 5, 1, 4, 0, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9, 0, 1, 4, 4, 5, 5, 2, 3, 6, 6, 7, 7 ], [ 8, 8, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9, 1, 0, 5, 5, 4, 4, 3, 2, 7, 7, 6, 6 ], 
      [ 8, 8, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9, 4, 5, 0, 4, 1, 5, 7, 6, 3, 6, 2, 7 ], [ 8, 8, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9, 4, 5, 4, 0, 5, 1, 7, 6, 6, 3, 7, 2 ], 
      [ 8, 8, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9, 5, 4, 1, 5, 0, 4, 6, 7, 2, 7, 3, 6 ], [ 8, 8, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9, 5, 4, 5, 1, 4, 0, 6, 7, 7, 2, 6, 3 ], 
      [ 9, 9, 8, 8, 9, 9, 9, 9, 8, 8, 8, 8, 3, 2, 6, 6, 7, 7, 0, 1, 5, 5, 4, 4 ], [ 9, 9, 8, 8, 9, 9, 9, 9, 8, 8, 8, 8, 2, 3, 7, 7, 6, 6, 1, 0, 4, 4, 5, 5 ], 
      [ 9, 9, 8, 8, 9, 9, 9, 9, 8, 8, 8, 8, 7, 6, 2, 7, 3, 6, 5, 4, 0, 4, 1, 5 ], [ 9, 9, 8, 8, 9, 9, 9, 9, 8, 8, 8, 8, 7, 6, 7, 2, 6, 3, 5, 4, 4, 0, 5, 1 ], 
      [ 9, 9, 8, 8, 9, 9, 9, 9, 8, 8, 8, 8, 6, 7, 3, 6, 2, 7, 4, 5, 1, 5, 0, 4 ], [ 9, 9, 8, 8, 9, 9, 9, 9, 8, 8, 8, 8, 6, 7, 6, 3, 7, 2, 4, 5, 5, 1, 4, 0 ] ],
  SmallSchemeIdentification := 439 )