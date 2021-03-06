rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], [ 1, 1, -1, -1, -2, 2, 2, 2, -2, -2, -4, 4, 1 ], [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 4, -4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], [ 1, -1, E(4), -E(4), 0, 0, 2, -2, -2*E(4), 2*E(4), 0, 0, 2 ], [ 1, -1, -E(4), E(4), 0, 0, 2, -2, 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, -1, -1, 1, 1, 2, -2, 2 ], [ 1, 1, -1, -1, 2, -2, -1, -1, 1, 1, -2, 2, 2 ], [ 1, 1, 1, 1, -2, -2, -1, -1, -1, -1, 2, 2, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -1, -1, -1, -1, -2, -2, 2 ], [ 1, -1, E(4), -E(4), 0, 0, -1, 1, E(4), -E(4), 0, 0, 4 ], [ 1, -1, -E(4), E(4), 0, 0, -1, 1, -E(4), E(4), 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 7, 7, 6, 6, 11, 11, 11, 11, 10, 10, 10, 10 ], [ 2, 3, 1, 0, 5, 5, 4, 4, 9, 9, 8, 8, 6, 6, 7, 7, 11, 11, 11, 11, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 10, 10, 10, 10, 11, 11, 11, 11, 6, 6, 7, 7, 8, 8, 9, 9 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 10, 10, 10, 10, 11, 11, 11, 11, 7, 7, 6, 6, 9, 9, 8, 8 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 11, 11, 11, 11, 10, 10, 10, 10, 8, 8, 9, 9, 7, 7, 6, 6 ], [ 5, 5, 4, 4, 2, 3, 1, 0, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 8, 8, 6, 6, 7, 7 ], 
      [ 6, 7, 9, 8, 10, 10, 11, 11, 0, 6, 1, 7, 3, 8, 2, 9, 4, 10, 4, 10, 5, 11, 5, 11 ], [ 6, 7, 9, 8, 10, 10, 11, 11, 6, 0, 7, 1, 8, 3, 9, 2, 10, 4, 10, 4, 11, 5, 11, 5 ], 
      [ 7, 6, 8, 9, 10, 10, 11, 11, 1, 7, 0, 6, 2, 9, 3, 8, 4, 10, 4, 10, 5, 11, 5, 11 ], [ 7, 6, 8, 9, 10, 10, 11, 11, 7, 1, 6, 0, 9, 2, 8, 3, 10, 4, 10, 4, 11, 5, 11, 5 ], 
      [ 9, 8, 7, 6, 11, 11, 10, 10, 2, 9, 3, 8, 0, 6, 1, 7, 5, 11, 5, 11, 4, 10, 4, 10 ], [ 9, 8, 7, 6, 11, 11, 10, 10, 9, 2, 8, 3, 6, 0, 7, 1, 11, 5, 11, 5, 10, 4, 10, 4 ], 
      [ 8, 9, 6, 7, 11, 11, 10, 10, 3, 8, 2, 9, 1, 7, 0, 6, 5, 11, 5, 11, 4, 10, 4, 10 ], [ 8, 9, 6, 7, 11, 11, 10, 10, 8, 3, 9, 2, 7, 1, 6, 0, 11, 5, 11, 5, 10, 4, 10, 4 ], 
      [ 10, 10, 11, 11, 6, 7, 9, 8, 4, 10, 4, 10, 5, 11, 5, 11, 0, 6, 1, 7, 3, 8, 2, 9 ], [ 10, 10, 11, 11, 6, 7, 9, 8, 10, 4, 10, 4, 11, 5, 11, 5, 6, 0, 7, 1, 8, 3, 9, 2 ], 
      [ 10, 10, 11, 11, 7, 6, 8, 9, 4, 10, 4, 10, 5, 11, 5, 11, 1, 7, 0, 6, 2, 9, 3, 8 ], [ 10, 10, 11, 11, 7, 6, 8, 9, 10, 4, 10, 4, 11, 5, 11, 5, 7, 1, 6, 0, 9, 2, 8, 3 ], 
      [ 11, 11, 10, 10, 9, 8, 7, 6, 5, 11, 5, 11, 4, 10, 4, 10, 2, 9, 3, 8, 0, 6, 1, 7 ], [ 11, 11, 10, 10, 9, 8, 7, 6, 11, 5, 11, 5, 10, 4, 10, 4, 9, 2, 8, 3, 6, 0, 7, 1 ], 
      [ 11, 11, 10, 10, 8, 9, 6, 7, 5, 11, 5, 11, 4, 10, 4, 10, 3, 8, 2, 9, 1, 7, 0, 6 ], [ 11, 11, 10, 10, 8, 9, 6, 7, 11, 5, 11, 5, 10, 4, 10, 4, 8, 3, 9, 2, 7, 1, 6, 0 ] ],
  SmallSchemeIdentification := 608 )