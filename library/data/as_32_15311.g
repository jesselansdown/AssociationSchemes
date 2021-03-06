rec(
  CharacterTable := [ [ 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], [ 1, -1, 3, -3, 3, -3, 3, -3, 3, 3, -3, -3, 1 ], [ 1, -1, -1, 1, -1, 1, 3, -3, -1, -1, 1, 1, 3 ], 
      [ 1, -1, -1, 1, 3, -3, -1, 1, -1, -1, 1, 1, 3 ], [ 1, -1, 3, -3, -1, 1, -1, 1, -1, -1, 1, 1, 3 ], [ 1, 1, -1, -1, -1, -1, 3, 3, -1, -1, -1, -1, 3 ], 
      [ 1, 1, -1, -1, 3, 3, -1, -1, -1, -1, -1, -1, 3 ], [ 1, 1, 3, 3, -1, -1, -1, -1, -1, -1, -1, -1, 3 ], [ 2, 0, -2, 0, -2, 0, -2, 0, 2, 2, 0, 0, 6 ] ],
  RelationMatrix := [ [ 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11 ], 
      [ 1, 0, 3, 3, 3, 2, 2, 2, 5, 5, 5, 4, 4, 4, 7, 7, 7, 6, 6, 6, 10, 10, 10, 11, 11, 11, 8, 8, 8, 9, 9, 9 ], [ 2, 3, 0, 2, 2, 1, 3, 3, 6, 8, 9, 7, 10, 11, 4, 8, 9, 5, 10, 11, 4, 6, 9, 
          4, 6, 8, 5, 7, 11, 5, 7, 10 ], [ 2, 3, 2, 0, 2, 3, 1, 3, 8, 9, 6, 11, 7, 10, 9, 4, 8, 10, 11, 5, 6, 9, 4, 8, 4, 6, 11, 5, 7, 7, 10, 5 ], 
      [ 2, 3, 2, 2, 0, 3, 3, 1, 9, 6, 8, 10, 11, 7, 8, 9, 4, 11, 5, 10, 9, 4, 6, 6, 8, 4, 7, 11, 5, 10, 5, 7 ], [ 3, 2, 1, 3, 3, 0, 2, 2, 7, 10, 11, 6, 8, 9, 5, 10, 11, 
          4, 8, 9, 5, 7, 11, 5, 7, 10, 4, 6, 9, 4, 6, 8 ], [ 3, 2, 3, 1, 3, 2, 0, 2, 10, 11, 7, 9, 6, 8, 11, 5, 10, 8, 9, 4, 7, 11, 5, 10, 5, 7, 9, 4, 6, 6, 8, 4 ], 
      [ 3, 2, 3, 3, 1, 2, 2, 0, 11, 7, 10, 8, 9, 6, 10, 11, 5, 9, 4, 8, 11, 5, 7, 7, 10, 5, 6, 9, 4, 8, 4, 6 ], [ 4, 5, 6, 8, 9, 7, 11, 10, 0, 4, 4, 
          1, 5, 5, 2, 9, 8, 3, 11, 10, 9, 6, 2, 8, 6, 2, 11, 7, 3, 10, 7, 3 ], [ 4, 5, 8, 9, 6, 11, 10, 7, 4, 0, 4, 5, 5, 1, 9, 8, 2, 10, 3, 11, 2, 9, 6, 6, 2, 8, 7, 3, 11, 3, 10, 7 ], 
      [ 4, 5, 9, 6, 8, 10, 7, 11, 4, 4, 0, 5, 1, 5, 8, 2, 9, 11, 10, 3, 6, 2, 9, 2, 8, 6, 3, 11, 7, 7, 3, 10 ], [ 5, 4, 7, 10, 11, 
          6, 9, 8, 1, 5, 5, 0, 4, 4, 3, 11, 10, 2, 9, 8, 11, 7, 3, 10, 7, 3, 9, 6, 2, 8, 6, 2 ], [ 5, 4, 11, 7, 10, 8, 6, 9, 5, 5, 1, 4, 0, 4, 10, 3, 11, 9, 8, 2, 7, 3, 11, 3, 10, 7, 2, 9, 6, 6, 2, 8 ]
        , [ 5, 4, 10, 11, 7, 9, 8, 6, 5, 1, 5, 4, 4, 0, 11, 10, 3, 8, 2, 9, 3, 11, 7, 7, 3, 10, 6, 2, 9, 2, 8, 6 ], 
      [ 6, 7, 4, 9, 8, 5, 10, 11, 2, 9, 8, 3, 11, 10, 0, 6, 6, 1, 7, 7, 4, 9, 2, 4, 8, 2, 5, 11, 3, 5, 10, 3 ], [ 6, 7, 8, 4, 9, 11, 5, 10, 9, 8, 2, 10, 3, 11, 6, 0, 6, 7, 7, 1, 9, 2, 4, 2, 4, 8, 3, 
          5, 11, 10, 3, 5 ], [ 6, 7, 9, 8, 4, 10, 11, 5, 8, 2, 9, 11, 10, 3, 6, 6, 0, 7, 1, 7, 2, 4, 9, 8, 2, 4, 11, 3, 5, 3, 5, 10 ], 
      [ 7, 6, 5, 11, 10, 4, 8, 9, 3, 11, 10, 2, 9, 8, 1, 7, 7, 0, 6, 6, 5, 11, 3, 5, 10, 3, 4, 9, 2, 4, 8, 2 ], [ 7, 6, 11, 10, 5, 8, 9, 4, 10, 3, 11, 9, 8, 2, 7, 7, 1, 6, 0, 6, 3, 
          5, 11, 10, 3, 5, 9, 2, 4, 2, 4, 8 ], [ 7, 6, 10, 5, 11, 9, 4, 8, 11, 10, 3, 8, 2, 9, 7, 1, 7, 6, 6, 0, 11, 3, 5, 3, 5, 10, 2, 4, 9, 8, 2, 4 ], 
      [ 8, 11, 4, 6, 9, 5, 7, 10, 9, 2, 6, 10, 7, 3, 4, 9, 2, 5, 3, 10, 0, 8, 8, 4, 2, 6, 5, 3, 7, 1, 11, 11 ], [ 8, 11, 6, 9, 4, 7, 10, 5, 6, 9, 2, 7, 3, 10, 9, 
          2, 4, 10, 5, 3, 8, 0, 8, 2, 6, 4, 3, 7, 5, 11, 1, 11 ], [ 8, 11, 9, 4, 6, 10, 5, 7, 2, 6, 9, 3, 10, 7, 2, 4, 9, 3, 10, 5, 8, 8, 0, 6, 4, 2, 7, 5, 3, 11, 11, 1 ], 
      [ 9, 10, 4, 8, 6, 5, 11, 7, 8, 6, 2, 11, 3, 7, 4, 2, 8, 5, 11, 3, 4, 2, 6, 0, 9, 9, 1, 10, 10, 5, 3, 7 ], [ 9, 10, 6, 4, 8, 7, 5, 11, 6, 
          2, 8, 7, 11, 3, 8, 4, 2, 11, 3, 5, 2, 6, 4, 9, 0, 9, 10, 1, 10, 3, 7, 5 ], [ 9, 10, 8, 6, 4, 11, 7, 5, 2, 8, 6, 3, 7, 11, 2, 8, 4, 3, 5, 11, 6, 4, 2, 9, 9, 0, 10, 10, 1, 7, 5, 3 ], 
      [ 11, 8, 5, 10, 7, 4, 9, 6, 10, 7, 3, 9, 2, 6, 5, 3, 10, 4, 9, 2, 5, 3, 7, 1, 11, 11, 0, 8, 8, 4, 2, 6 ], [ 11, 8, 7, 
          5, 10, 6, 4, 9, 7, 3, 10, 6, 9, 2, 10, 5, 3, 9, 2, 4, 3, 7, 5, 11, 1, 11, 8, 0, 8, 2, 6, 4 ], [ 11, 8, 10, 7, 5, 9, 6, 4, 3, 10, 7, 2, 6, 9, 3, 10, 5, 2, 4, 9, 7, 5, 3, 11, 11, 1, 8, 8, 
          0, 6, 4, 2 ], [ 10, 9, 5, 7, 11, 4, 6, 8, 11, 3, 7, 8, 6, 2, 5, 11, 3, 4, 2, 8, 1, 10, 10, 5, 3, 7, 4, 2, 6, 0, 9, 9 ], 
      [ 10, 9, 7, 11, 5, 6, 8, 4, 7, 11, 3, 6, 2, 8, 11, 3, 5, 8, 4, 2, 10, 1, 10, 3, 7, 5, 2, 6, 4, 9, 0, 9 ], [ 10, 9, 11, 5, 7, 8, 4, 6, 3, 7, 11, 2, 8, 6, 3, 5, 11, 2, 8, 4, 10, 10, 
          1, 7, 5, 3, 6, 4, 2, 9, 9, 0 ] ],
  SmallSchemeIdentification := 15311 )