rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 1 ], [ 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 4, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 4, 1 ], [ 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8, 2 ], 
      [ 3, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 16, 16 ], 
      [ 1, 0, 3, 2, 4, 4, 6, 6, 5, 5, 7, 7, 8, 8, 10, 10, 9, 9, 11, 11, 14, 14, 15, 15, 12, 12, 13, 13, 16, 16, 16, 16 ], [ 2, 3, 0, 1, 7, 7, 5, 5, 6, 6, 4, 4, 11, 11, 10, 10, 9, 9, 8, 8, 
          12, 12, 15, 15, 14, 14, 13, 13, 16, 16, 16, 16 ], [ 3, 2, 1, 0, 7, 7, 6, 6, 5, 5, 4, 4, 11, 11, 9, 9, 10, 10, 8, 8, 14, 14, 13, 13, 12, 12, 15, 15, 16, 16, 16, 16 ], 
      [ 5, 5, 6, 6, 0, 2, 16, 16, 16, 16, 1, 3, 12, 12, 13, 15, 13, 15, 14, 14, 9, 10, 8, 11, 9, 10, 8, 11, 4, 4, 7, 7 ], [ 5, 5, 6, 6, 2, 0, 16, 16, 
          16, 16, 3, 1, 12, 12, 15, 13, 15, 13, 14, 14, 10, 9, 11, 8, 10, 9, 11, 8, 7, 7, 4, 4 ], [ 4, 7, 4, 7, 16, 16, 0, 1, 2, 3, 16, 16, 13, 15, 12, 14, 14, 12, 13, 15, 8, 8, 
          9, 10, 11, 11, 10, 9, 5, 6, 5, 6 ], [ 4, 7, 4, 7, 16, 16, 1, 0, 3, 2, 16, 16, 15, 13, 14, 12, 12, 14, 15, 13, 8, 8, 10, 9, 11, 11, 9, 10, 6, 5, 6, 5 ], 
      [ 7, 4, 7, 4, 16, 16, 2, 3, 0, 1, 16, 16, 15, 13, 12, 14, 14, 12, 15, 13, 11, 11, 10, 9, 8, 8, 9, 10, 5, 6, 5, 6 ], 
      [ 7, 4, 7, 4, 16, 16, 3, 2, 1, 0, 16, 16, 13, 15, 14, 12, 12, 14, 13, 15, 11, 11, 9, 10, 8, 8, 10, 9, 6, 5, 6, 5 ], 
      [ 6, 6, 5, 5, 1, 3, 16, 16, 16, 16, 0, 2, 14, 14, 15, 13, 15, 13, 12, 12, 10, 9, 8, 11, 10, 9, 8, 11, 4, 4, 7, 7 ], [ 6, 6, 5, 5, 3, 1, 16, 16, 16, 16, 2, 0, 14, 14, 13, 15, 13, 15, 12, 12, 9, 
          10, 11, 8, 9, 10, 11, 8, 7, 7, 4, 4 ], [ 9, 9, 10, 10, 13, 13, 12, 14, 14, 12, 15, 15, 0, 3, 16, 16, 16, 16, 2, 1, 4, 7, 5, 6, 7, 4, 6, 5, 8, 11, 11, 8 ], 
      [ 9, 9, 10, 10, 13, 13, 14, 12, 12, 14, 15, 15, 3, 0, 16, 16, 16, 16, 1, 2, 7, 4, 6, 5, 4, 7, 5, 6, 11, 8, 8, 11 ], 
      [ 8, 11, 11, 8, 12, 14, 13, 15, 13, 15, 14, 12, 16, 16, 0, 1, 2, 3, 16, 16, 5, 6, 4, 4, 5, 6, 7, 7, 9, 10, 9, 10 ], 
      [ 8, 11, 11, 8, 14, 12, 15, 13, 15, 13, 12, 14, 16, 16, 1, 0, 3, 2, 16, 16, 6, 5, 4, 4, 6, 5, 7, 7, 10, 9, 10, 9 ], [ 11, 8, 8, 11, 12, 14, 15, 13, 15, 13, 14, 12, 16, 16, 2, 3, 0, 1, 16, 16, 5, 
          6, 7, 7, 5, 6, 4, 4, 10, 9, 10, 9 ], [ 11, 8, 8, 11, 14, 12, 13, 15, 13, 15, 12, 14, 16, 16, 3, 2, 1, 0, 16, 16, 6, 5, 7, 7, 6, 5, 4, 4, 9, 10, 9, 10 ], 
      [ 10, 10, 9, 9, 15, 15, 12, 14, 14, 12, 13, 13, 2, 1, 16, 16, 16, 16, 0, 3, 7, 4, 5, 6, 4, 7, 6, 5, 11, 8, 8, 11 ], 
      [ 10, 10, 9, 9, 15, 15, 14, 12, 12, 14, 13, 13, 1, 2, 16, 16, 16, 16, 3, 0, 4, 7, 6, 5, 7, 4, 5, 6, 8, 11, 11, 8 ], 
      [ 13, 15, 13, 15, 8, 11, 9, 9, 10, 10, 11, 8, 5, 6, 4, 7, 4, 7, 6, 5, 0, 3, 16, 16, 1, 2, 16, 16, 12, 14, 14, 12 ], [ 13, 15, 13, 15, 11, 8, 9, 9, 10, 10, 8, 11, 6, 5, 7, 4, 7, 4, 5, 6, 3, 0, 
          16, 16, 2, 1, 16, 16, 14, 12, 12, 14 ], [ 12, 14, 14, 12, 9, 10, 8, 11, 11, 8, 9, 10, 4, 7, 5, 5, 6, 6, 4, 7, 16, 16, 0, 2, 16, 16, 3, 1, 13, 13, 15, 15 ], 
      [ 12, 14, 14, 12, 10, 9, 11, 8, 8, 11, 10, 9, 7, 4, 5, 5, 6, 6, 7, 4, 16, 16, 2, 0, 16, 16, 1, 3, 15, 15, 13, 13 ], [ 15, 13, 15, 13, 8, 11, 10, 10, 9, 9, 
          11, 8, 6, 5, 4, 7, 4, 7, 5, 6, 1, 2, 16, 16, 0, 3, 16, 16, 14, 12, 12, 14 ], [ 15, 13, 15, 13, 11, 8, 10, 10, 9, 9, 8, 11, 5, 6, 7, 4, 7, 4, 6, 5, 2, 1, 16, 16, 3, 0, 16, 16, 12, 14, 14, 12 ]
        , [ 14, 12, 12, 14, 9, 10, 11, 8, 8, 11, 9, 10, 7, 4, 6, 6, 5, 5, 7, 4, 16, 16, 3, 1, 16, 16, 0, 2, 13, 13, 15, 15 ], 
      [ 14, 12, 12, 14, 10, 9, 8, 11, 11, 8, 10, 9, 4, 7, 6, 6, 5, 5, 4, 7, 16, 16, 1, 3, 16, 16, 2, 0, 15, 15, 13, 13 ], [ 16, 16, 16, 16, 5, 6, 4, 7, 4, 7, 5, 6, 9, 10, 8, 11, 11, 8, 10, 9, 13, 15, 
          12, 14, 15, 13, 12, 14, 0, 2, 1, 3 ], [ 16, 16, 16, 16, 5, 6, 7, 4, 7, 4, 5, 6, 10, 9, 11, 8, 8, 11, 9, 10, 15, 13, 12, 14, 13, 15, 12, 14, 2, 0, 3, 1 ], 
      [ 16, 16, 16, 16, 6, 5, 4, 7, 4, 7, 6, 5, 10, 9, 8, 11, 11, 8, 9, 10, 15, 13, 14, 12, 13, 15, 14, 12, 1, 3, 0, 2 ], [ 16, 16, 16, 16, 6, 5, 7, 4, 7, 4, 6, 
          5, 9, 10, 11, 8, 8, 11, 10, 9, 13, 15, 14, 12, 15, 13, 14, 12, 3, 1, 2, 0 ] ],
  SmallSchemeIdentification := 17337 )