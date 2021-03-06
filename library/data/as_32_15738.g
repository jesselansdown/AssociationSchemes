rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, -4, -4, -4, -4, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -4*E(4), 4*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 4*E(4), -4*E(4), 0, 0, 0, 0, 2 ], [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 8, 8, 9, 9, 9, 9, 12, 12, 12, 12, 
          13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 3, 2, 1, 0, 7, 6, 5, 4, 8, 8, 8, 8, 9, 9, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 9, 9, 9, 9, 8, 8, 8, 8, 10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11 ], [ 5, 4, 7, 6, 1, 0, 3, 2, 
          9, 9, 9, 9, 8, 8, 8, 8, 10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11 ], [ 6, 7, 4, 5, 2, 3, 0, 1, 9, 9, 9, 9, 8, 8, 8, 8, 12, 12, 12, 12, 11, 11, 11, 11, 
          10, 10, 10, 10, 13, 13, 13, 13 ], [ 7, 6, 5, 4, 3, 2, 1, 0, 9, 9, 9, 9, 8, 8, 8, 8, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 13, 13 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 0, 1, 2, 3, 4, 5, 6, 7, 11, 11, 13, 13, 10, 10, 12, 12, 11, 11, 13, 13, 10, 10, 12, 12 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 1, 0, 3, 2, 5, 4, 7, 6, 11, 11, 13, 13, 10, 10, 12, 12, 11, 11, 13, 13, 10, 10, 12, 12 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 2, 3, 0, 1, 6, 7, 4, 5, 13, 13, 11, 11, 12, 12, 10, 10, 13, 13, 11, 11, 12, 12, 10, 10 ], [ 9, 9, 9, 9, 8, 8, 8, 8, 3, 2, 1, 0, 7, 6, 5, 4, 13, 13, 11, 11, 12, 12, 10, 
          10, 13, 13, 11, 11, 12, 12, 10, 10 ], [ 8, 8, 8, 8, 9, 9, 9, 9, 4, 5, 6, 7, 0, 1, 2, 3, 13, 13, 11, 11, 10, 10, 12, 12, 13, 13, 11, 11, 10, 10, 12, 12 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 5, 4, 7, 6, 1, 0, 3, 2, 13, 13, 11, 11, 10, 10, 12, 12, 13, 13, 11, 11, 10, 10, 12, 12 ], [ 8, 8, 8, 8, 9, 9, 9, 9, 6, 7, 4, 5, 
          2, 3, 0, 1, 11, 11, 13, 13, 12, 12, 10, 10, 11, 11, 13, 13, 12, 12, 10, 10 ], [ 8, 8, 8, 8, 9, 9, 9, 9, 7, 6, 5, 4, 3, 2, 1, 0, 11, 11, 13, 13, 12, 12, 10, 10, 11, 11, 13, 13, 12, 12, 10, 10 
         ], [ 11, 11, 13, 13, 11, 11, 13, 13, 10, 10, 12, 12, 12, 12, 10, 10, 0, 1, 6, 7, 8, 8, 9, 9, 4, 5, 2, 3, 9, 9, 8, 8 ], 
      [ 11, 11, 13, 13, 11, 11, 13, 13, 10, 10, 12, 12, 12, 12, 10, 10, 1, 0, 7, 6, 8, 8, 9, 9, 5, 4, 3, 2, 9, 9, 8, 8 ], [ 11, 11, 13, 13, 11, 11, 13, 13, 12, 12, 10, 10, 10, 10, 12, 12, 6, 7, 0, 
          1, 9, 9, 8, 8, 2, 3, 4, 5, 8, 8, 9, 9 ], [ 11, 11, 13, 13, 11, 11, 13, 13, 12, 12, 10, 10, 10, 10, 12, 12, 7, 6, 1, 0, 9, 9, 8, 8, 3, 2, 5, 4, 8, 8, 9, 9 ], 
      [ 10, 10, 12, 12, 12, 12, 10, 10, 11, 11, 13, 13, 11, 11, 13, 13, 9, 9, 8, 8, 0, 1, 4, 5, 8, 8, 9, 9, 6, 7, 2, 3 ], 
      [ 10, 10, 12, 12, 12, 12, 10, 10, 11, 11, 13, 13, 11, 11, 13, 13, 9, 9, 8, 8, 1, 0, 5, 4, 8, 8, 9, 9, 7, 6, 3, 2 ], 
      [ 10, 10, 12, 12, 12, 12, 10, 10, 13, 13, 11, 11, 13, 13, 11, 11, 8, 8, 9, 9, 4, 5, 0, 1, 9, 9, 8, 8, 2, 3, 6, 7 ], [ 10, 10, 12, 12, 12, 12, 10, 10, 13, 13, 11, 11, 13, 13, 11, 11, 8, 8, 9, 9, 
          5, 4, 1, 0, 9, 9, 8, 8, 3, 2, 7, 6 ], [ 13, 13, 11, 11, 13, 13, 11, 11, 10, 10, 12, 12, 12, 12, 10, 10, 4, 5, 2, 3, 9, 9, 8, 8, 0, 1, 6, 7, 8, 8, 9, 9 ], 
      [ 13, 13, 11, 11, 13, 13, 11, 11, 10, 10, 12, 12, 12, 12, 10, 10, 5, 4, 3, 2, 9, 9, 8, 8, 1, 0, 7, 6, 8, 8, 9, 9 ], 
      [ 13, 13, 11, 11, 13, 13, 11, 11, 12, 12, 10, 10, 10, 10, 12, 12, 2, 3, 4, 5, 8, 8, 9, 9, 6, 7, 0, 1, 9, 9, 8, 8 ], 
      [ 13, 13, 11, 11, 13, 13, 11, 11, 12, 12, 10, 10, 10, 10, 12, 12, 3, 2, 5, 4, 8, 8, 9, 9, 7, 6, 1, 0, 9, 9, 8, 8 ], [ 12, 12, 10, 10, 10, 10, 12, 12, 11, 11, 13, 13, 11, 11, 13, 13, 8, 8, 9, 9, 
          6, 7, 2, 3, 9, 9, 8, 8, 0, 1, 4, 5 ], [ 12, 12, 10, 10, 10, 10, 12, 12, 11, 11, 13, 13, 11, 11, 13, 13, 8, 8, 9, 9, 7, 6, 3, 2, 9, 9, 8, 8, 1, 0, 5, 4 ], 
      [ 12, 12, 10, 10, 10, 10, 12, 12, 13, 13, 11, 11, 13, 13, 11, 11, 9, 9, 8, 8, 2, 3, 6, 7, 8, 8, 9, 9, 4, 5, 0, 1 ], 
      [ 12, 12, 10, 10, 10, 10, 12, 12, 13, 13, 11, 11, 13, 13, 11, 11, 9, 9, 8, 8, 3, 2, 7, 6, 8, 8, 9, 9, 5, 4, 1, 0 ] ],
  SmallSchemeIdentification := 15738 )