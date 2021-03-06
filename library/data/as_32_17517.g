rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, 2, 2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, -2, -2, 0, 0, 2, 2, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 2, 2, 0, 0, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, 2, -2, 2, 2, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 2, 2, 2 ]
        , [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, -2, -2, 2 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16 ], [ 2, 3, 0, 1, 5, 5, 4, 4, 10, 10, 11, 11, 12, 12, 13, 13, 6, 6, 7, 7, 
          8, 8, 9, 9, 14, 14, 15, 15, 17, 17, 16, 16 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 11, 11, 10, 10, 13, 13, 12, 12, 7, 7, 6, 6, 9, 9, 8, 8, 15, 15, 14, 14, 16, 16, 17, 17 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 7, 6, 7, 12, 13, 12, 13, 10, 11, 10, 11, 8, 9, 8, 9, 16, 17, 16, 17, 14, 15, 14, 15 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 6, 
          7, 6, 13, 12, 13, 12, 11, 10, 11, 10, 9, 8, 9, 8, 17, 16, 17, 16, 15, 14, 15, 14 ], [ 5, 5, 4, 4, 2, 3, 0, 1, 10, 11, 10, 11, 8, 9, 8, 9, 6, 7, 6, 7, 12, 13, 12, 13, 
          17, 16, 17, 16, 14, 15, 14, 15 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 11, 10, 11, 10, 9, 8, 9, 8, 7, 6, 7, 6, 13, 12, 13, 12, 16, 17, 16, 17, 15, 14, 15, 14 ], 
      [ 6, 7, 11, 10, 6, 7, 11, 10, 0, 4, 4, 1, 16, 14, 15, 17, 3, 5, 5, 2, 16, 15, 14, 17, 8, 13, 12, 9, 8, 12, 13, 9 ], 
      [ 6, 7, 11, 10, 7, 6, 10, 11, 4, 0, 1, 4, 14, 16, 17, 15, 5, 3, 2, 5, 15, 16, 17, 14, 13, 8, 9, 12, 12, 8, 9, 13 ], 
      [ 7, 6, 10, 11, 6, 7, 11, 10, 4, 1, 0, 4, 15, 17, 16, 14, 5, 2, 3, 5, 14, 17, 16, 15, 12, 9, 8, 13, 13, 9, 8, 12 ], [ 7, 6, 10, 11, 7, 6, 10, 11, 1, 4, 4, 0, 17, 15, 14, 16, 2, 5, 5, 3, 17, 14, 
          15, 16, 9, 12, 13, 8, 9, 13, 12, 8 ], [ 8, 9, 13, 12, 13, 12, 8, 9, 17, 15, 14, 16, 0, 5, 5, 1, 17, 14, 15, 16, 3, 4, 4, 2, 10, 7, 6, 11, 7, 11, 10, 6 ], 
      [ 8, 9, 13, 12, 12, 13, 9, 8, 15, 17, 16, 14, 5, 0, 1, 5, 14, 17, 16, 15, 4, 3, 2, 4, 7, 10, 11, 6, 11, 7, 6, 10 ], [ 9, 8, 12, 13, 13, 12, 8, 9, 14, 16, 
          17, 15, 5, 1, 0, 5, 15, 16, 17, 14, 4, 2, 3, 4, 6, 11, 10, 7, 10, 6, 7, 11 ], [ 9, 8, 12, 13, 12, 13, 9, 8, 16, 14, 15, 17, 1, 5, 5, 0, 16, 15, 14, 17, 2, 4, 4, 3, 11, 6, 7, 10, 6, 10, 11, 7 
         ], [ 11, 10, 6, 7, 11, 10, 6, 7, 3, 5, 5, 2, 16, 15, 14, 17, 0, 4, 4, 1, 16, 14, 15, 17, 13, 8, 9, 12, 13, 9, 8, 12 ], 
      [ 11, 10, 6, 7, 10, 11, 7, 6, 5, 3, 2, 5, 15, 16, 17, 14, 4, 0, 1, 4, 14, 16, 17, 15, 8, 13, 12, 9, 9, 13, 12, 8 ], [ 10, 11, 7, 6, 11, 10, 6, 7, 5, 2, 3, 5, 14, 17, 16, 15, 4, 1, 0, 4, 15, 
          17, 16, 14, 9, 12, 13, 8, 8, 12, 13, 9 ], [ 10, 11, 7, 6, 10, 11, 7, 6, 2, 5, 5, 3, 17, 14, 15, 16, 1, 4, 4, 0, 17, 15, 14, 16, 12, 9, 8, 13, 12, 8, 9, 13 ], 
      [ 13, 12, 8, 9, 8, 9, 13, 12, 17, 14, 15, 16, 3, 4, 4, 2, 17, 15, 14, 16, 0, 5, 5, 1, 7, 10, 11, 6, 10, 6, 7, 11 ], [ 13, 12, 8, 9, 9, 8, 12, 13, 14, 
          17, 16, 15, 4, 3, 2, 4, 15, 17, 16, 14, 5, 0, 1, 5, 10, 7, 6, 11, 6, 10, 11, 7 ], [ 12, 13, 9, 8, 8, 9, 13, 12, 15, 16, 17, 14, 4, 2, 3, 4, 14, 16, 17, 15, 5, 1, 
          0, 5, 11, 6, 7, 10, 7, 11, 10, 6 ], [ 12, 13, 9, 8, 9, 8, 12, 13, 16, 15, 14, 17, 2, 4, 4, 3, 16, 14, 15, 17, 1, 5, 5, 0, 6, 11, 10, 7, 11, 7, 6, 10 ], 
      [ 15, 14, 15, 14, 17, 16, 16, 17, 8, 12, 13, 9, 11, 7, 6, 10, 12, 8, 9, 13, 7, 11, 10, 6, 0, 2, 3, 1, 5, 4, 4, 5 ], 
      [ 15, 14, 15, 14, 16, 17, 17, 16, 12, 8, 9, 13, 7, 11, 10, 6, 8, 12, 13, 9, 11, 7, 6, 10, 2, 0, 1, 3, 4, 5, 5, 4 ], 
      [ 14, 15, 14, 15, 17, 16, 16, 17, 13, 9, 8, 12, 6, 10, 11, 7, 9, 13, 12, 8, 10, 6, 7, 11, 3, 1, 0, 2, 4, 5, 5, 4 ], [ 14, 15, 14, 15, 16, 17, 17, 16, 9, 13, 12, 8, 10, 6, 7, 11, 13, 9, 8, 12, 6, 
          10, 11, 7, 1, 3, 2, 0, 5, 4, 4, 5 ], [ 17, 16, 16, 17, 15, 14, 15, 14, 8, 13, 12, 9, 7, 10, 11, 6, 12, 9, 8, 13, 11, 6, 7, 10, 5, 4, 4, 5, 0, 3, 2, 1 ], 
      [ 17, 16, 16, 17, 14, 15, 14, 15, 13, 8, 9, 12, 10, 7, 6, 11, 9, 12, 13, 8, 6, 11, 10, 7, 4, 5, 5, 4, 3, 0, 1, 2 ], 
      [ 16, 17, 17, 16, 15, 14, 15, 14, 12, 9, 8, 13, 11, 6, 7, 10, 8, 13, 12, 9, 7, 10, 11, 6, 4, 5, 5, 4, 2, 1, 0, 3 ], 
      [ 16, 17, 17, 16, 14, 15, 14, 15, 9, 12, 13, 8, 6, 11, 10, 7, 13, 8, 9, 12, 10, 7, 6, 11, 5, 4, 4, 5, 1, 2, 3, 0 ] ],
  SmallSchemeIdentification := 17517 )