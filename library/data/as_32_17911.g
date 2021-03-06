rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], [ 2, -2, 2, -2, 0, 0, 0, 0, -4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16, 19, 19, 18, 18 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16, 19, 19, 18, 18 ], [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 15, 15, 13, 
          13, 12, 12, 18, 18, 19, 19, 17, 17, 16, 16 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 14, 14, 12, 12, 13, 13, 19, 19, 18, 18, 16, 16, 17, 17 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 15, 15, 13, 13, 12, 12, 18, 18, 19, 19, 17, 17, 16, 16 ], [ 6, 7, 4, 5, 3, 2, 1, 0, 
          11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 14, 14, 12, 12, 13, 13, 19, 19, 18, 18, 16, 16, 17, 17 ], [ 8, 9, 8, 9, 11, 10, 11, 10, 0, 2, 1, 3, 5, 7, 4, 6, 16, 16, 17, 17, 18, 18, 
          19, 19, 12, 12, 13, 13, 14, 14, 15, 15 ], [ 8, 9, 8, 9, 11, 10, 11, 10, 2, 0, 3, 1, 7, 5, 6, 4, 16, 16, 17, 17, 18, 18, 19, 19, 12, 12, 13, 13, 14, 14, 15, 15 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 1, 3, 0, 2, 4, 6, 5, 7, 17, 17, 16, 16, 19, 19, 18, 18, 13, 13, 12, 12, 15, 15, 14, 14 ], [ 9, 8, 9, 8, 10, 11, 10, 11, 
          3, 1, 2, 0, 6, 4, 7, 5, 17, 17, 16, 16, 19, 19, 18, 18, 13, 13, 12, 12, 15, 15, 14, 14 ], [ 11, 10, 11, 10, 9, 8, 9, 8, 4, 6, 5, 7, 0, 2, 1, 3, 19, 19, 18, 18, 16, 16, 
          17, 17, 15, 15, 14, 14, 12, 12, 13, 13 ], [ 11, 10, 11, 10, 9, 8, 9, 8, 6, 4, 7, 5, 2, 0, 3, 1, 19, 19, 18, 18, 16, 16, 17, 17, 15, 15, 14, 14, 12, 12, 13, 13 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 5, 7, 4, 6, 1, 3, 0, 2, 18, 18, 19, 19, 17, 17, 16, 16, 14, 14, 15, 15, 13, 13, 12, 12 ], [ 10, 11, 10, 11, 8, 9, 8, 9, 
          7, 5, 6, 4, 3, 1, 2, 0, 18, 18, 19, 19, 17, 17, 16, 16, 14, 14, 15, 15, 13, 13, 12, 12 ], [ 13, 12, 13, 12, 15, 14, 15, 14, 17, 17, 16, 16, 18, 18, 19, 19, 0, 2, 1, 3, 4, 6, 
          5, 7, 8, 8, 9, 9, 11, 11, 10, 10 ], [ 13, 12, 13, 12, 15, 14, 15, 14, 17, 17, 16, 16, 18, 18, 19, 19, 2, 0, 3, 1, 6, 4, 7, 5, 8, 8, 9, 9, 11, 11, 10, 10 ], 
      [ 12, 13, 12, 13, 14, 15, 14, 15, 16, 16, 17, 17, 19, 19, 18, 18, 1, 3, 0, 2, 5, 7, 4, 6, 9, 9, 8, 8, 10, 10, 11, 11 ], 
      [ 12, 13, 12, 13, 14, 15, 14, 15, 16, 16, 17, 17, 19, 19, 18, 18, 3, 1, 2, 0, 7, 5, 6, 4, 9, 9, 8, 8, 10, 10, 11, 11 ], 
      [ 15, 14, 15, 14, 12, 13, 12, 13, 19, 19, 18, 18, 17, 17, 16, 16, 5, 7, 4, 6, 0, 2, 1, 3, 10, 10, 11, 11, 8, 8, 9, 9 ], [ 15, 14, 15, 14, 12, 13, 12, 13, 19, 19, 18, 18, 17, 17, 16, 16, 7, 5, 6, 
          4, 2, 0, 3, 1, 10, 10, 11, 11, 8, 8, 9, 9 ], [ 14, 15, 14, 15, 13, 12, 13, 12, 18, 18, 19, 19, 16, 16, 17, 17, 4, 6, 5, 7, 1, 3, 0, 2, 11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 14, 15, 14, 15, 13, 12, 13, 12, 18, 18, 19, 19, 16, 16, 17, 17, 6, 4, 7, 5, 3, 1, 2, 0, 11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 17, 16, 17, 16, 19, 18, 19, 18, 13, 13, 12, 12, 14, 14, 15, 15, 8, 8, 9, 9, 11, 11, 10, 10, 0, 2, 1, 3, 4, 6, 5, 7 ], 
      [ 17, 16, 17, 16, 19, 18, 19, 18, 13, 13, 12, 12, 14, 14, 15, 15, 8, 8, 9, 9, 11, 11, 10, 10, 2, 0, 3, 1, 6, 4, 7, 5 ], [ 16, 17, 16, 17, 18, 19, 18, 19, 12, 12, 13, 13, 15, 15, 14, 14, 9, 9, 8, 
          8, 10, 10, 11, 11, 1, 3, 0, 2, 5, 7, 4, 6 ], [ 16, 17, 16, 17, 18, 19, 18, 19, 12, 12, 13, 13, 15, 15, 14, 14, 9, 9, 8, 8, 10, 10, 11, 11, 3, 1, 2, 0, 7, 5, 6, 4 ], 
      [ 19, 18, 19, 18, 16, 17, 16, 17, 15, 15, 14, 14, 13, 13, 12, 12, 10, 10, 11, 11, 8, 8, 9, 9, 5, 7, 4, 6, 0, 2, 1, 3 ], 
      [ 19, 18, 19, 18, 16, 17, 16, 17, 15, 15, 14, 14, 13, 13, 12, 12, 10, 10, 11, 11, 8, 8, 9, 9, 7, 5, 6, 4, 2, 0, 3, 1 ], 
      [ 18, 19, 18, 19, 17, 16, 17, 16, 14, 14, 15, 15, 12, 12, 13, 13, 11, 11, 10, 10, 9, 9, 8, 8, 4, 6, 5, 7, 1, 3, 0, 2 ], [ 18, 19, 18, 19, 17, 16, 17, 16, 14, 14, 15, 15, 12, 12, 13, 13, 11, 11, 
          10, 10, 9, 9, 8, 8, 6, 4, 7, 5, 3, 1, 2, 0 ] ],
  SmallSchemeIdentification := 17911 )