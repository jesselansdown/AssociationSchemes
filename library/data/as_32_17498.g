rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 2, 2, 2 ]
        , [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, -2, -2, 2 ], [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ]
   ,
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16 ], [ 2, 3, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 12, 12, 13, 13, 
          10, 10, 11, 11, 14, 14, 15, 15, 17, 17, 16, 16 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 9, 9, 8, 8, 7, 7, 6, 6, 13, 13, 12, 12, 11, 11, 10, 10, 15, 15, 14, 14, 16, 16, 17, 17 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 7, 6, 7, 8, 9, 8, 9, 12, 13, 12, 13, 10, 11, 10, 11, 16, 17, 16, 17, 14, 15, 14, 15 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 
          7, 6, 7, 6, 9, 8, 9, 8, 13, 12, 13, 12, 11, 10, 11, 10, 17, 16, 17, 16, 15, 14, 15, 14 ], [ 5, 5, 4, 4, 2, 3, 0, 1, 8, 9, 8, 9, 6, 7, 6, 7, 10, 11, 10, 11, 12, 13, 12, 13, 
          17, 16, 17, 16, 14, 15, 14, 15 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 8, 9, 8, 7, 6, 7, 6, 11, 10, 11, 10, 13, 12, 13, 12, 16, 17, 16, 17, 15, 14, 15, 14 ], 
      [ 6, 7, 8, 9, 6, 7, 8, 9, 0, 4, 4, 1, 2, 5, 5, 3, 14, 16, 17, 15, 14, 17, 16, 15, 10, 12, 13, 11, 10, 13, 12, 11 ], 
      [ 6, 7, 8, 9, 7, 6, 9, 8, 4, 0, 1, 4, 5, 2, 3, 5, 16, 14, 15, 17, 17, 14, 15, 16, 12, 10, 11, 13, 13, 10, 11, 12 ], 
      [ 7, 6, 9, 8, 6, 7, 8, 9, 4, 1, 0, 4, 5, 3, 2, 5, 17, 15, 14, 16, 16, 15, 14, 17, 13, 11, 10, 12, 12, 11, 10, 13 ], [ 7, 6, 9, 8, 7, 6, 9, 8, 1, 4, 4, 0, 3, 5, 5, 2, 15, 17, 16, 14, 15, 16, 17, 
          14, 11, 13, 12, 10, 11, 12, 13, 10 ], [ 8, 9, 6, 7, 8, 9, 6, 7, 2, 5, 5, 3, 0, 4, 4, 1, 14, 17, 16, 15, 14, 16, 17, 15, 12, 10, 11, 13, 12, 11, 10, 13 ], 
      [ 8, 9, 6, 7, 9, 8, 7, 6, 5, 2, 3, 5, 4, 0, 1, 4, 17, 14, 15, 16, 16, 14, 15, 17, 10, 12, 13, 11, 11, 12, 13, 10 ], [ 9, 8, 7, 6, 8, 9, 6, 7, 5, 3, 2, 5, 
          4, 1, 0, 4, 16, 15, 14, 17, 17, 15, 14, 16, 11, 13, 12, 10, 10, 13, 12, 11 ], [ 9, 8, 7, 6, 9, 8, 7, 6, 3, 5, 5, 2, 1, 4, 4, 0, 15, 16, 17, 14, 15, 17, 16, 14, 13, 11, 10, 12, 13, 10, 11, 12 
         ], [ 10, 11, 12, 13, 12, 13, 10, 11, 15, 17, 16, 14, 15, 16, 17, 14, 0, 5, 5, 1, 2, 4, 4, 3, 9, 7, 6, 8, 7, 8, 9, 6 ], 
      [ 10, 11, 12, 13, 13, 12, 11, 10, 17, 15, 14, 16, 16, 15, 14, 17, 5, 0, 1, 5, 4, 2, 3, 4, 7, 9, 8, 6, 8, 7, 6, 9 ], [ 11, 10, 13, 12, 12, 13, 10, 11, 16, 14, 15, 17, 17, 14, 15, 16, 5, 1, 0, 
          5, 4, 3, 2, 4, 6, 8, 9, 7, 9, 6, 7, 8 ], [ 11, 10, 13, 12, 13, 12, 11, 10, 14, 16, 17, 15, 14, 17, 16, 15, 1, 5, 5, 0, 3, 4, 4, 2, 8, 6, 7, 9, 6, 9, 8, 7 ], 
      [ 12, 13, 10, 11, 10, 11, 12, 13, 15, 16, 17, 14, 15, 17, 16, 14, 2, 4, 4, 3, 0, 5, 5, 1, 7, 9, 8, 6, 9, 6, 7, 8 ], 
      [ 12, 13, 10, 11, 11, 10, 13, 12, 16, 15, 14, 17, 17, 15, 14, 16, 4, 2, 3, 4, 5, 0, 1, 5, 9, 7, 6, 8, 6, 9, 8, 7 ], 
      [ 13, 12, 11, 10, 10, 11, 12, 13, 17, 14, 15, 16, 16, 14, 15, 17, 4, 3, 2, 4, 5, 1, 0, 5, 8, 6, 7, 9, 7, 8, 9, 6 ], [ 13, 12, 11, 10, 11, 10, 13, 12, 14, 17, 16, 15, 14, 16, 17, 15, 3, 4, 4, 2, 
          1, 5, 5, 0, 6, 8, 9, 7, 8, 7, 6, 9 ], [ 15, 14, 15, 14, 17, 16, 16, 17, 10, 12, 13, 11, 12, 10, 11, 13, 9, 7, 6, 8, 7, 9, 8, 6, 0, 2, 3, 1, 5, 4, 4, 5 ], 
      [ 15, 14, 15, 14, 16, 17, 17, 16, 12, 10, 11, 13, 10, 12, 13, 11, 7, 9, 8, 6, 9, 7, 6, 8, 2, 0, 1, 3, 4, 5, 5, 4 ], 
      [ 14, 15, 14, 15, 17, 16, 16, 17, 13, 11, 10, 12, 11, 13, 12, 10, 6, 8, 9, 7, 8, 6, 7, 9, 3, 1, 0, 2, 4, 5, 5, 4 ], 
      [ 14, 15, 14, 15, 16, 17, 17, 16, 11, 13, 12, 10, 13, 11, 10, 12, 8, 6, 7, 9, 6, 8, 9, 7, 1, 3, 2, 0, 5, 4, 4, 5 ], [ 17, 16, 16, 17, 15, 14, 15, 14, 10, 13, 12, 11, 12, 11, 10, 13, 7, 8, 9, 6, 
          9, 6, 7, 8, 5, 4, 4, 5, 0, 3, 2, 1 ], [ 17, 16, 16, 17, 14, 15, 14, 15, 13, 10, 11, 12, 11, 12, 13, 10, 8, 7, 6, 9, 6, 9, 8, 7, 4, 5, 5, 4, 3, 0, 1, 2 ], 
      [ 16, 17, 17, 16, 15, 14, 15, 14, 12, 11, 10, 13, 10, 13, 12, 11, 9, 6, 7, 8, 7, 8, 9, 6, 4, 5, 5, 4, 2, 1, 0, 3 ], 
      [ 16, 17, 17, 16, 14, 15, 14, 15, 11, 12, 13, 10, 13, 10, 11, 12, 6, 9, 8, 7, 8, 7, 6, 9, 5, 4, 4, 5, 1, 2, 3, 0 ] ],
  SmallSchemeIdentification := 17498 )