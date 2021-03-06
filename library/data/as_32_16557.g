rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, -4, -4, 4, 4, 1 ], [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], [ 1, 1, -1, -1, -2, 2, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 
          2 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12 ], [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 12, 12, 12, 12, 
          13, 13, 13, 13, 11, 11, 11, 11, 10, 10, 10, 10 ], [ 2, 3, 1, 0, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 13, 13, 12, 12, 13, 13 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 
          7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 12, 12, 13, 13, 12, 12 ], [ 5, 5, 4, 4, 3, 2, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 12, 12, 13, 13, 12, 12, 13, 13, 
          11, 11, 10, 10, 11, 11, 10, 10 ], [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 11, 11, 10, 10, 11, 11 ], 
      [ 7, 7, 9, 9, 6, 6, 8, 8, 0, 1, 4, 4, 2, 3, 5, 5, 10, 11, 10, 11, 10, 11, 10, 11, 12, 13, 12, 13, 12, 13, 12, 13 ], 
      [ 7, 7, 9, 9, 6, 6, 8, 8, 1, 0, 4, 4, 3, 2, 5, 5, 11, 10, 11, 10, 11, 10, 11, 10, 13, 12, 13, 12, 13, 12, 13, 12 ], 
      [ 6, 6, 8, 8, 7, 7, 9, 9, 4, 4, 0, 1, 5, 5, 2, 3, 10, 11, 11, 10, 11, 10, 10, 11, 12, 13, 13, 12, 13, 12, 12, 13 ], [ 6, 6, 8, 8, 7, 7, 9, 9, 4, 4, 1, 0, 5, 5, 3, 2, 11, 10, 10, 11, 10, 11, 11, 
          10, 13, 12, 12, 13, 12, 13, 13, 12 ], [ 9, 9, 7, 7, 8, 8, 6, 6, 3, 2, 5, 5, 0, 1, 4, 4, 12, 13, 12, 13, 12, 13, 12, 13, 11, 10, 11, 10, 11, 10, 11, 10 ], 
      [ 9, 9, 7, 7, 8, 8, 6, 6, 2, 3, 5, 5, 1, 0, 4, 4, 13, 12, 13, 12, 13, 12, 13, 12, 10, 11, 10, 11, 10, 11, 10, 11 ], [ 8, 8, 6, 6, 9, 9, 7, 7, 5, 5, 3, 2, 
          4, 4, 0, 1, 12, 13, 13, 12, 13, 12, 12, 13, 11, 10, 10, 11, 10, 11, 11, 10 ], [ 8, 8, 6, 6, 9, 9, 7, 7, 5, 5, 2, 3, 4, 4, 1, 0, 13, 12, 12, 13, 12, 13, 13, 12, 10, 11, 11, 10, 11, 10, 10, 11 
         ], [ 10, 11, 12, 13, 10, 11, 12, 13, 10, 11, 10, 11, 12, 13, 12, 13, 0, 4, 6, 7, 7, 6, 4, 1, 2, 5, 8, 9, 9, 8, 5, 3 ], 
      [ 10, 11, 12, 13, 10, 11, 12, 13, 11, 10, 11, 10, 13, 12, 13, 12, 4, 0, 7, 6, 6, 7, 1, 4, 5, 2, 9, 8, 8, 9, 3, 5 ], [ 10, 11, 12, 13, 11, 10, 13, 12, 10, 11, 11, 10, 12, 13, 13, 12, 7, 6, 0, 
          4, 4, 1, 6, 7, 9, 8, 2, 5, 5, 3, 8, 9 ], [ 10, 11, 12, 13, 11, 10, 13, 12, 11, 10, 10, 11, 13, 12, 12, 13, 6, 7, 4, 0, 1, 4, 7, 6, 8, 9, 5, 2, 3, 5, 9, 8 ], 
      [ 11, 10, 13, 12, 10, 11, 12, 13, 10, 11, 11, 10, 12, 13, 13, 12, 6, 7, 4, 1, 0, 4, 7, 6, 8, 9, 5, 3, 2, 5, 9, 8 ], 
      [ 11, 10, 13, 12, 10, 11, 12, 13, 11, 10, 10, 11, 13, 12, 12, 13, 7, 6, 1, 4, 4, 0, 6, 7, 9, 8, 3, 5, 5, 2, 8, 9 ], 
      [ 11, 10, 13, 12, 11, 10, 13, 12, 10, 11, 10, 11, 12, 13, 12, 13, 4, 1, 7, 6, 6, 7, 0, 4, 5, 3, 9, 8, 8, 9, 2, 5 ], [ 11, 10, 13, 12, 11, 10, 13, 12, 11, 10, 11, 10, 13, 12, 13, 12, 1, 4, 6, 7, 
          7, 6, 4, 0, 3, 5, 8, 9, 9, 8, 5, 2 ], [ 12, 13, 11, 10, 12, 13, 11, 10, 12, 13, 12, 13, 11, 10, 11, 10, 3, 5, 8, 9, 9, 8, 5, 2, 0, 4, 6, 7, 7, 6, 4, 1 ], 
      [ 12, 13, 11, 10, 12, 13, 11, 10, 13, 12, 13, 12, 10, 11, 10, 11, 5, 3, 9, 8, 8, 9, 2, 5, 4, 0, 7, 6, 6, 7, 1, 4 ], 
      [ 12, 13, 11, 10, 13, 12, 10, 11, 12, 13, 13, 12, 11, 10, 10, 11, 9, 8, 3, 5, 5, 2, 8, 9, 7, 6, 0, 4, 4, 1, 6, 7 ], 
      [ 12, 13, 11, 10, 13, 12, 10, 11, 13, 12, 12, 13, 10, 11, 11, 10, 8, 9, 5, 3, 2, 5, 9, 8, 6, 7, 4, 0, 1, 4, 7, 6 ], [ 13, 12, 10, 11, 12, 13, 11, 10, 12, 13, 13, 12, 11, 10, 10, 11, 8, 9, 5, 2, 
          3, 5, 9, 8, 6, 7, 4, 1, 0, 4, 7, 6 ], [ 13, 12, 10, 11, 12, 13, 11, 10, 13, 12, 12, 13, 10, 11, 11, 10, 9, 8, 2, 5, 5, 3, 8, 9, 7, 6, 1, 4, 4, 0, 6, 7 ], 
      [ 13, 12, 10, 11, 13, 12, 10, 11, 12, 13, 12, 13, 11, 10, 11, 10, 5, 2, 9, 8, 8, 9, 3, 5, 4, 1, 7, 6, 6, 7, 0, 4 ], 
      [ 13, 12, 10, 11, 13, 12, 10, 11, 13, 12, 13, 12, 10, 11, 10, 11, 2, 5, 8, 9, 9, 8, 5, 3, 1, 4, 6, 7, 7, 6, 4, 0 ] ],
  SmallSchemeIdentification := 16557 )