rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, -2, -2, 2, 2, -4, -4, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, 2, 2, -2, -2, -4, -4, 1 ], [ 2, 2, -2, -2, 4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 0, 0, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 9, 9, 8, 8, 10, 10, 11, 11, 13, 13, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15 ], [ 2, 3, 0, 1, 5, 5, 4, 4, 10, 10, 11, 11, 12, 12, 13, 13, 6, 6, 7, 7, 
          8, 8, 9, 9, 15, 15, 15, 15, 14, 14, 14, 14 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 10, 10, 11, 11, 13, 13, 12, 12, 6, 6, 7, 7, 9, 9, 8, 8, 15, 15, 15, 15, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 7, 6, 6, 8, 9, 8, 9, 11, 11, 10, 10, 12, 13, 12, 13, 14, 14, 14, 14, 15, 15, 15, 15 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 
          6, 6, 9, 8, 9, 8, 11, 11, 10, 10, 13, 12, 13, 12, 14, 14, 14, 14, 15, 15, 15, 15 ], [ 5, 5, 4, 4, 2, 3, 0, 1, 11, 11, 10, 10, 12, 13, 12, 13, 7, 7, 6, 6, 8, 9, 8, 9, 
          15, 15, 15, 15, 14, 14, 14, 14 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 11, 11, 10, 10, 13, 12, 13, 12, 7, 7, 6, 6, 9, 8, 9, 8, 15, 15, 15, 15, 14, 14, 14, 14 ], 
      [ 6, 6, 11, 11, 7, 7, 10, 10, 0, 1, 4, 4, 14, 14, 14, 14, 5, 5, 2, 3, 15, 15, 15, 15, 8, 8, 9, 9, 12, 12, 13, 13 ], 
      [ 6, 6, 11, 11, 7, 7, 10, 10, 1, 0, 4, 4, 14, 14, 14, 14, 5, 5, 3, 2, 15, 15, 15, 15, 9, 9, 8, 8, 13, 13, 12, 12 ], 
      [ 7, 7, 10, 10, 6, 6, 11, 11, 4, 4, 0, 1, 14, 14, 14, 14, 2, 3, 5, 5, 15, 15, 15, 15, 8, 9, 8, 9, 12, 13, 12, 13 ], [ 7, 7, 10, 10, 6, 6, 11, 11, 4, 4, 1, 0, 14, 14, 14, 14, 3, 2, 5, 5, 15, 15, 
          15, 15, 9, 8, 9, 8, 13, 12, 13, 12 ], [ 8, 9, 13, 12, 8, 9, 13, 12, 15, 15, 15, 15, 0, 4, 4, 1, 14, 14, 14, 14, 3, 5, 5, 2, 10, 11, 11, 10, 7, 6, 6, 7 ], 
      [ 8, 9, 13, 12, 9, 8, 12, 13, 15, 15, 15, 15, 4, 0, 1, 4, 14, 14, 14, 14, 5, 3, 2, 5, 11, 10, 10, 11, 6, 7, 7, 6 ], [ 9, 8, 12, 13, 8, 9, 13, 12, 15, 15, 
          15, 15, 4, 1, 0, 4, 14, 14, 14, 14, 5, 2, 3, 5, 11, 10, 10, 11, 6, 7, 7, 6 ], [ 9, 8, 12, 13, 9, 8, 12, 13, 15, 15, 15, 15, 1, 4, 4, 0, 14, 14, 14, 14, 2, 5, 5, 3, 10, 11, 11, 10, 7, 6, 6, 7 
         ], [ 11, 11, 6, 6, 10, 10, 7, 7, 5, 5, 2, 3, 15, 15, 15, 15, 0, 1, 4, 4, 14, 14, 14, 14, 12, 13, 12, 13, 8, 9, 8, 9 ], 
      [ 11, 11, 6, 6, 10, 10, 7, 7, 5, 5, 3, 2, 15, 15, 15, 15, 1, 0, 4, 4, 14, 14, 14, 14, 13, 12, 13, 12, 9, 8, 9, 8 ], [ 10, 10, 7, 7, 11, 11, 6, 6, 2, 3, 5, 5, 15, 15, 15, 15, 4, 4, 0, 1, 14, 
          14, 14, 14, 12, 12, 13, 13, 8, 8, 9, 9 ], [ 10, 10, 7, 7, 11, 11, 6, 6, 3, 2, 5, 5, 15, 15, 15, 15, 4, 4, 1, 0, 14, 14, 14, 14, 13, 13, 12, 12, 9, 9, 8, 8 ], 
      [ 13, 12, 8, 9, 13, 12, 8, 9, 14, 14, 14, 14, 3, 5, 5, 2, 15, 15, 15, 15, 0, 4, 4, 1, 6, 7, 7, 6, 11, 10, 10, 11 ], [ 13, 12, 8, 9, 12, 13, 9, 8, 14, 
          14, 14, 14, 5, 3, 2, 5, 15, 15, 15, 15, 4, 0, 1, 4, 7, 6, 6, 7, 10, 11, 11, 10 ], [ 12, 13, 9, 8, 13, 12, 8, 9, 14, 14, 14, 14, 5, 2, 3, 5, 15, 15, 15, 15, 4, 1, 
          0, 4, 7, 6, 6, 7, 10, 11, 11, 10 ], [ 12, 13, 9, 8, 12, 13, 9, 8, 14, 14, 14, 14, 2, 5, 5, 3, 15, 15, 15, 15, 1, 4, 4, 0, 6, 7, 7, 6, 11, 10, 10, 11 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 8, 9, 8, 9, 11, 10, 10, 11, 13, 12, 13, 12, 6, 7, 7, 6, 0, 4, 4, 1, 3, 5, 5, 2 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 8, 9, 9, 8, 10, 11, 11, 10, 12, 13, 13, 12, 7, 6, 6, 7, 4, 0, 1, 4, 5, 3, 2, 5 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 9, 8, 8, 9, 10, 11, 11, 10, 13, 12, 12, 13, 7, 6, 6, 7, 4, 1, 0, 4, 5, 2, 3, 5 ], [ 15, 15, 14, 14, 15, 15, 14, 14, 9, 8, 9, 8, 11, 10, 10, 11, 12, 13, 12, 13, 
          6, 7, 7, 6, 1, 4, 4, 0, 2, 5, 5, 3 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 13, 12, 13, 12, 7, 6, 6, 7, 8, 9, 8, 9, 10, 11, 11, 10, 3, 5, 5, 2, 0, 4, 4, 1 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 13, 12, 12, 13, 6, 7, 7, 6, 9, 8, 8, 9, 11, 10, 10, 11, 5, 3, 2, 5, 4, 0, 1, 4 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 12, 
          13, 13, 12, 6, 7, 7, 6, 8, 9, 9, 8, 11, 10, 10, 11, 5, 2, 3, 5, 4, 1, 0, 4 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 12, 13, 12, 13, 7, 6, 6, 7, 9, 8, 9, 8, 10, 11, 11, 10, 2, 5, 5, 3, 1, 4, 4, 0 
         ] ],
  SmallSchemeIdentification := 17131 )