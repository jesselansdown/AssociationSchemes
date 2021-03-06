rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], [ 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], [ 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, -4, -4, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 3 ], [ 1, -1, -1, 1, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 3 ], [ 1, -1, 1, -1, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 3 ], 
      [ 1, -1, 1, -1, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 3 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 3 ], [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 3 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 10, 10, 10, 10, 11, 11, 11, 11, 6, 6, 7, 7, 8, 8, 9, 9 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 10, 10, 10, 10, 11, 11, 11, 11, 7, 7, 6, 6, 9, 9, 8, 8 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 10, 10, 10, 10, 11, 11, 11, 11, 6, 6, 7, 7, 9, 9, 8, 8 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 10, 10, 10, 10, 11, 11, 11, 11, 7, 7, 6, 6, 8, 8, 9, 9 ], 
      [ 7, 6, 7, 6, 11, 11, 11, 11, 0, 2, 1, 3, 10, 10, 10, 10, 8, 9, 8, 9, 4, 5, 4, 5 ], [ 7, 6, 7, 6, 11, 11, 11, 11, 2, 0, 3, 1, 10, 10, 10, 10, 9, 8, 9, 8, 5, 4, 5, 4 ], 
      [ 6, 7, 6, 7, 11, 11, 11, 11, 1, 3, 0, 2, 10, 10, 10, 10, 9, 8, 9, 8, 4, 5, 4, 5 ], [ 6, 7, 6, 7, 11, 11, 11, 11, 3, 1, 2, 0, 10, 10, 10, 10, 8, 9, 8, 9, 5, 4, 5, 4 ], 
      [ 9, 8, 8, 9, 10, 10, 10, 10, 11, 11, 11, 11, 0, 3, 1, 2, 4, 5, 5, 4, 6, 7, 7, 6 ], [ 9, 8, 8, 9, 10, 10, 10, 10, 11, 11, 11, 11, 3, 0, 2, 1, 5, 4, 4, 5, 7, 6, 6, 7 ], 
      [ 8, 9, 9, 8, 10, 10, 10, 10, 11, 11, 11, 11, 1, 2, 0, 3, 4, 5, 5, 4, 7, 6, 6, 7 ], [ 8, 9, 9, 8, 10, 10, 10, 10, 11, 11, 11, 11, 2, 1, 3, 0, 5, 4, 4, 5, 6, 7, 7, 6 ], 
      [ 11, 11, 11, 11, 7, 6, 7, 6, 9, 8, 8, 9, 4, 5, 4, 5, 0, 2, 3, 1, 10, 10, 10, 10 ], [ 11, 11, 11, 11, 7, 6, 7, 6, 8, 9, 9, 8, 5, 4, 5, 4, 2, 0, 1, 3, 10, 10, 10, 10 ], 
      [ 11, 11, 11, 11, 6, 7, 6, 7, 9, 8, 8, 9, 5, 4, 5, 4, 3, 1, 0, 2, 10, 10, 10, 10 ], [ 11, 11, 11, 11, 6, 7, 6, 7, 8, 9, 9, 8, 4, 5, 4, 5, 1, 3, 2, 0, 10, 10, 10, 10 ], 
      [ 10, 10, 10, 10, 9, 8, 8, 9, 4, 5, 4, 5, 7, 6, 6, 7, 11, 11, 11, 11, 0, 3, 1, 2 ], [ 10, 10, 10, 10, 9, 8, 8, 9, 5, 4, 5, 4, 6, 7, 7, 6, 11, 11, 11, 11, 3, 0, 2, 1 ], 
      [ 10, 10, 10, 10, 8, 9, 9, 8, 4, 5, 4, 5, 6, 7, 7, 6, 11, 11, 11, 11, 1, 2, 0, 3 ], [ 10, 10, 10, 10, 8, 9, 9, 8, 5, 4, 5, 4, 7, 6, 6, 7, 11, 11, 11, 11, 2, 1, 3, 0 ] ],
  SmallSchemeIdentification := 598 )