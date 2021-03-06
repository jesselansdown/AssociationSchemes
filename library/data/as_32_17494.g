rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, 2, -2, -2, 2, -2, 2, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, 2, -2, -2, 2, -2, 2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], [ 1, 1, -1, -1, 2, -2, 2, -2, 2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, -2, 2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, -4, 0, -4, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 2, 2, 0, 0, -4, 0, 4, 0, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ], [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], [ 2, 3, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 14, 14, 15, 15, 
          16, 16, 17, 17, 10, 10, 11, 11, 12, 12, 13, 13 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 14, 14, 15, 15, 16, 16, 17, 17, 10, 10, 11, 11, 12, 12, 13, 13 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 
          8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16 ], [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 15, 15, 14, 14, 17, 17, 16, 16, 
          11, 11, 10, 10, 13, 13, 12, 12 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 15, 15, 14, 14, 17, 17, 16, 16, 11, 11, 10, 10, 13, 13, 12, 12 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 0, 1, 2, 3, 4, 4, 5, 5, 12, 12, 13, 13, 10, 10, 11, 11, 16, 16, 17, 17, 14, 14, 15, 15 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 1, 0, 3, 2, 4, 4, 5, 5, 12, 12, 13, 13, 10, 10, 11, 11, 16, 16, 17, 17, 14, 14, 15, 15 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 2, 3, 0, 1, 5, 5, 4, 4, 16, 16, 17, 17, 14, 14, 15, 15, 12, 12, 13, 13, 10, 10, 11, 11 ], [ 7, 7, 6, 6, 9, 9, 8, 8, 3, 2, 1, 0, 5, 5, 4, 4, 16, 16, 17, 17, 14, 14, 15, 
          15, 12, 12, 13, 13, 10, 10, 11, 11 ], [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 0, 1, 2, 3, 13, 13, 12, 12, 11, 11, 10, 10, 17, 17, 16, 16, 15, 15, 14, 14 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 1, 0, 3, 2, 13, 13, 12, 12, 11, 11, 10, 10, 17, 17, 16, 16, 15, 15, 14, 14 ], [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 
          2, 3, 0, 1, 17, 17, 16, 16, 15, 15, 14, 14, 13, 13, 12, 12, 11, 11, 10, 10 ], [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 2, 1, 0, 17, 17, 16, 16, 15, 15, 14, 14, 13, 13, 12, 12, 11, 11, 10, 10 
         ], [ 10, 10, 15, 15, 11, 11, 14, 14, 12, 12, 17, 17, 13, 13, 16, 16, 0, 1, 4, 4, 6, 6, 8, 8, 5, 5, 2, 3, 9, 9, 7, 7 ], 
      [ 10, 10, 15, 15, 11, 11, 14, 14, 12, 12, 17, 17, 13, 13, 16, 16, 1, 0, 4, 4, 6, 6, 8, 8, 5, 5, 3, 2, 9, 9, 7, 7 ], [ 11, 11, 14, 14, 10, 10, 15, 15, 13, 13, 16, 16, 12, 12, 17, 17, 4, 4, 0, 
          1, 8, 8, 6, 6, 2, 3, 5, 5, 7, 7, 9, 9 ], [ 11, 11, 14, 14, 10, 10, 15, 15, 13, 13, 16, 16, 12, 12, 17, 17, 4, 4, 1, 0, 8, 8, 6, 6, 3, 2, 5, 5, 7, 7, 9, 9 ], 
      [ 12, 12, 17, 17, 13, 13, 16, 16, 10, 10, 15, 15, 11, 11, 14, 14, 6, 6, 8, 8, 0, 1, 4, 4, 9, 9, 7, 7, 5, 5, 2, 3 ], 
      [ 12, 12, 17, 17, 13, 13, 16, 16, 10, 10, 15, 15, 11, 11, 14, 14, 6, 6, 8, 8, 1, 0, 4, 4, 9, 9, 7, 7, 5, 5, 3, 2 ], 
      [ 13, 13, 16, 16, 12, 12, 17, 17, 11, 11, 14, 14, 10, 10, 15, 15, 8, 8, 6, 6, 4, 4, 0, 1, 7, 7, 9, 9, 2, 3, 5, 5 ], [ 13, 13, 16, 16, 12, 12, 17, 17, 11, 11, 14, 14, 10, 10, 15, 15, 8, 8, 6, 6, 
          4, 4, 1, 0, 7, 7, 9, 9, 3, 2, 5, 5 ], [ 15, 15, 10, 10, 14, 14, 11, 11, 17, 17, 12, 12, 16, 16, 13, 13, 5, 5, 2, 3, 9, 9, 7, 7, 0, 1, 4, 4, 6, 6, 8, 8 ], 
      [ 15, 15, 10, 10, 14, 14, 11, 11, 17, 17, 12, 12, 16, 16, 13, 13, 5, 5, 3, 2, 9, 9, 7, 7, 1, 0, 4, 4, 6, 6, 8, 8 ], 
      [ 14, 14, 11, 11, 15, 15, 10, 10, 16, 16, 13, 13, 17, 17, 12, 12, 2, 3, 5, 5, 7, 7, 9, 9, 4, 4, 0, 1, 8, 8, 6, 6 ], 
      [ 14, 14, 11, 11, 15, 15, 10, 10, 16, 16, 13, 13, 17, 17, 12, 12, 3, 2, 5, 5, 7, 7, 9, 9, 4, 4, 1, 0, 8, 8, 6, 6 ], [ 17, 17, 12, 12, 16, 16, 13, 13, 15, 15, 10, 10, 14, 14, 11, 11, 9, 9, 7, 7, 
          5, 5, 2, 3, 6, 6, 8, 8, 0, 1, 4, 4 ], [ 17, 17, 12, 12, 16, 16, 13, 13, 15, 15, 10, 10, 14, 14, 11, 11, 9, 9, 7, 7, 5, 5, 3, 2, 6, 6, 8, 8, 1, 0, 4, 4 ], 
      [ 16, 16, 13, 13, 17, 17, 12, 12, 14, 14, 11, 11, 15, 15, 10, 10, 7, 7, 9, 9, 2, 3, 5, 5, 8, 8, 6, 6, 4, 4, 0, 1 ], 
      [ 16, 16, 13, 13, 17, 17, 12, 12, 14, 14, 11, 11, 15, 15, 10, 10, 7, 7, 9, 9, 3, 2, 5, 5, 8, 8, 6, 6, 4, 4, 1, 0 ] ],
  SmallSchemeIdentification := 17494 )