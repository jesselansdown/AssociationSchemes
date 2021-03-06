rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 1, 1, -2, -2, -2, -2, 4, -4, 4, -4, 4, 1 ], [ 1, 1, 1, 1, -2, -2, -2, -2, 4, 4, -4, 4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 4, -4, -4, -4, -4, 1 ], [ 2, 2, 2, 2, 0, 0, 0, 0, -8, 0, 0, 0, 0, 2 ], [ 2, 0, 0, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ], [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12 ], 
      [ 1, 0, 3, 2, 4, 4, 6, 6, 5, 5, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12 ], [ 2, 3, 0, 1, 7, 7, 5, 5, 6, 6, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 
          10, 10, 11, 11, 11, 11, 12, 12, 12, 12 ], [ 3, 2, 1, 0, 7, 7, 6, 6, 5, 5, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12 ], 
      [ 5, 5, 6, 6, 0, 2, 8, 8, 8, 8, 1, 3, 4, 4, 7, 7, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 9, 9, 9, 9 ], [ 5, 5, 6, 6, 2, 0, 8, 8, 8, 8, 3, 1, 
          7, 7, 4, 4, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 9, 9, 9, 9 ], [ 4, 7, 4, 7, 8, 8, 0, 1, 2, 3, 8, 8, 5, 6, 5, 6, 12, 12, 12, 12, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 4, 7, 4, 7, 8, 8, 1, 0, 3, 2, 8, 8, 6, 5, 6, 5, 12, 12, 12, 12, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 7, 4, 
          7, 4, 8, 8, 2, 3, 0, 1, 8, 8, 5, 6, 5, 6, 12, 12, 12, 12, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 7, 4, 7, 4, 8, 8, 3, 2, 1, 0, 8, 8, 6, 5, 6, 5, 12, 12, 12, 12, 9, 9, 9, 9, 10, 10, 
          10, 10, 11, 11, 11, 11 ], [ 6, 6, 5, 5, 1, 3, 8, 8, 8, 8, 0, 2, 4, 4, 7, 7, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 9, 9, 9, 9 ], 
      [ 6, 6, 5, 5, 3, 1, 8, 8, 8, 8, 2, 0, 7, 7, 4, 4, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 9, 9, 9, 9 ], 
      [ 8, 8, 8, 8, 5, 6, 4, 7, 4, 7, 5, 6, 0, 2, 1, 3, 11, 11, 11, 11, 12, 12, 12, 12, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 8, 8, 8, 8, 5, 6, 7, 4, 7, 4, 5, 6, 2, 0, 3, 1, 11, 11, 11, 11, 12, 12, 12, 12, 9, 9, 9, 9, 10, 10, 10, 10 ], [ 8, 8, 8, 8, 6, 5, 4, 7, 4, 7, 6, 5, 1, 3, 0, 2, 11, 11, 11, 11, 12, 12, 12, 12, 
          9, 9, 9, 9, 10, 10, 10, 10 ], [ 8, 8, 8, 8, 6, 5, 7, 4, 7, 4, 6, 5, 3, 1, 2, 0, 11, 11, 11, 11, 12, 12, 12, 12, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 9, 9, 9, 9, 10, 10, 12, 12, 12, 12, 10, 10, 11, 11, 11, 11, 0, 1, 2, 3, 4, 4, 7, 7, 8, 8, 8, 8, 5, 5, 6, 6 ], [ 9, 9, 9, 9, 10, 10, 12, 12, 12, 12, 10, 10, 11, 
          11, 11, 11, 1, 0, 3, 2, 4, 4, 7, 7, 8, 8, 8, 8, 6, 6, 5, 5 ], [ 9, 9, 9, 9, 10, 10, 12, 12, 12, 12, 10, 10, 11, 11, 11, 11, 2, 3, 0, 1, 7, 7, 4, 4, 8, 8, 8, 8, 5, 5, 6, 6 ], 
      [ 9, 9, 9, 9, 10, 10, 12, 12, 12, 12, 10, 10, 11, 11, 11, 11, 3, 2, 1, 0, 7, 7, 4, 4, 8, 8, 8, 8, 6, 6, 5, 5 ], [ 10, 10, 10, 10, 11, 
          11, 9, 9, 9, 9, 11, 11, 12, 12, 12, 12, 5, 5, 6, 6, 0, 2, 1, 3, 4, 4, 7, 7, 8, 8, 8, 8 ], [ 10, 10, 10, 10, 11, 11, 9, 9, 9, 9, 11, 11, 12, 12, 12, 12, 5, 5, 6, 6, 2, 0, 3, 1, 
          7, 7, 4, 4, 8, 8, 8, 8 ], [ 10, 10, 10, 10, 11, 11, 9, 9, 9, 9, 11, 11, 12, 12, 12, 12, 6, 6, 5, 5, 1, 3, 0, 2, 4, 4, 7, 7, 8, 8, 8, 8 ], 
      [ 10, 10, 10, 10, 11, 11, 9, 9, 9, 9, 11, 11, 12, 12, 12, 12, 6, 6, 5, 5, 3, 1, 2, 0, 7, 7, 4, 4, 8, 8, 8, 8 ], 
      [ 11, 11, 11, 11, 12, 12, 10, 10, 10, 10, 12, 12, 9, 9, 9, 9, 8, 8, 8, 8, 5, 6, 5, 6, 0, 2, 1, 3, 4, 7, 4, 7 ], 
      [ 11, 11, 11, 11, 12, 12, 10, 10, 10, 10, 12, 12, 9, 9, 9, 9, 8, 8, 8, 8, 5, 6, 5, 6, 2, 0, 3, 1, 7, 4, 7, 4 ], [ 11, 11, 11, 11, 12, 12, 10, 10, 10, 10, 12, 12, 9, 9, 9, 9, 8, 8, 8, 8, 6, 5, 6, 
          5, 1, 3, 0, 2, 4, 7, 4, 7 ], [ 11, 11, 11, 11, 12, 12, 10, 10, 10, 10, 12, 12, 9, 9, 9, 9, 8, 8, 8, 8, 6, 5, 6, 5, 3, 1, 2, 0, 7, 4, 7, 4 ], 
      [ 12, 12, 12, 12, 9, 9, 11, 11, 11, 11, 9, 9, 10, 10, 10, 10, 4, 7, 4, 7, 8, 8, 8, 8, 5, 6, 5, 6, 0, 1, 2, 3 ], 
      [ 12, 12, 12, 12, 9, 9, 11, 11, 11, 11, 9, 9, 10, 10, 10, 10, 4, 7, 4, 7, 8, 8, 8, 8, 6, 5, 6, 5, 1, 0, 3, 2 ], 
      [ 12, 12, 12, 12, 9, 9, 11, 11, 11, 11, 9, 9, 10, 10, 10, 10, 7, 4, 7, 4, 8, 8, 8, 8, 5, 6, 5, 6, 2, 3, 0, 1 ], [ 12, 12, 12, 12, 9, 9, 11, 11, 11, 11, 9, 9, 10, 10, 10, 10, 7, 4, 7, 4, 8, 8, 8, 
          8, 6, 5, 6, 5, 3, 2, 1, 0 ] ],
  SmallSchemeIdentification := 15537 )