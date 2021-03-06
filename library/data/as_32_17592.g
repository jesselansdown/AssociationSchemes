rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 4, 4, -4, -4, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 2 ], [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 13, 14, 15, 8, 9, 10, 11, 18, 18, 18, 18, 
          19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 5, 4, 7, 6, 1, 0, 3, 2, 13, 12, 15, 14, 9, 8, 11, 10, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 14, 15, 12, 13, 10, 11, 8, 9, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 7, 6, 5, 4, 3, 2, 
          1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 8, 9, 10, 11, 13, 12, 15, 14, 0, 1, 2, 3, 5, 4, 7, 6, 19, 19, 19, 19, 18, 
          18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 9, 8, 11, 10, 12, 13, 14, 15, 1, 0, 3, 2, 4, 5, 6, 7, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], 
      [ 10, 11, 8, 9, 15, 14, 13, 12, 2, 3, 0, 1, 7, 6, 5, 4, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 11, 10, 9, 8, 14, 15, 
          12, 13, 3, 2, 1, 0, 6, 7, 4, 5, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 13, 12, 15, 14, 8, 9, 10, 11, 5, 4, 7, 6, 0, 1, 2, 3, 17, 17, 17, 17, 16, 
          16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 12, 13, 14, 15, 9, 8, 11, 10, 4, 5, 6, 7, 1, 0, 3, 2, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], 
      [ 15, 14, 13, 12, 10, 11, 8, 9, 7, 6, 5, 4, 2, 3, 0, 1, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 14, 15, 12, 13, 11, 10, 
          9, 8, 6, 7, 4, 5, 3, 2, 1, 0, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 0, 1, 2, 3, 12, 
          13, 14, 15, 8, 9, 10, 11, 4, 5, 6, 7 ], [ 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 1, 0, 3, 2, 13, 12, 15, 14, 9, 8, 11, 10, 5, 4, 7, 6 ], 
      [ 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 2, 3, 0, 1, 14, 15, 12, 13, 10, 11, 8, 9, 6, 7, 4, 5 ], 
      [ 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4 ], 
      [ 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 13, 12, 15, 14, 0, 1, 2, 3, 5, 4, 7, 6, 8, 9, 10, 11 ], [ 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 12, 
          13, 14, 15, 1, 0, 3, 2, 4, 5, 6, 7, 9, 8, 11, 10 ], [ 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 15, 14, 13, 12, 2, 3, 0, 1, 7, 6, 5, 4, 10, 11, 8, 9 ], 
      [ 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 14, 15, 12, 13, 3, 2, 1, 0, 6, 7, 4, 5, 11, 10, 9, 8 ], 
      [ 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 8, 9, 10, 11, 5, 4, 7, 6, 0, 1, 2, 3, 13, 12, 15, 14 ], 
      [ 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 9, 8, 11, 10, 4, 5, 6, 7, 1, 0, 3, 2, 12, 13, 14, 15 ], [ 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 10, 
          11, 8, 9, 7, 6, 5, 4, 2, 3, 0, 1, 15, 14, 13, 12 ], [ 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 11, 10, 9, 8, 6, 7, 4, 5, 3, 2, 1, 0, 14, 15, 12, 13 ], 
      [ 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3 ], [ 18, 18, 18, 18, 
          17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 1, 0, 3, 2 ], [ 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 6, 7, 4, 
          5, 10, 11, 8, 9, 14, 15, 12, 13, 2, 3, 0, 1 ], [ 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 3, 2, 1, 0 ] ],
  SmallSchemeIdentification := 17592 )