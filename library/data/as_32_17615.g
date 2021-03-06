rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 4, 4, -4, -4, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 2, -2, -2, 2, 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, -1, 1, 1, -1, -E(4), E(4), E(4), -E(4), E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, E(4), -E(4), -E(4), E(4), -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 0, 0, 2 ], [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 13, 12, 15, 14, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 14, 13, 15, 8, 10, 9, 11, 16, 16, 16, 16, 
          17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], [ 5, 4, 7, 6, 1, 0, 3, 2, 14, 12, 15, 13, 9, 11, 8, 10, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 13, 15, 12, 14, 10, 8, 11, 9, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 7, 6, 5, 4, 3, 2, 
          1, 0, 15, 13, 14, 12, 11, 9, 10, 8, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], [ 9, 8, 11, 10, 13, 15, 12, 14, 0, 1, 2, 3, 7, 5, 6, 4, 18, 18, 18, 18, 19, 
          19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 8, 9, 10, 11, 15, 13, 14, 12, 1, 0, 3, 2, 6, 4, 7, 5, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 11, 10, 9, 8, 12, 14, 13, 15, 2, 3, 0, 1, 5, 7, 4, 6, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 10, 11, 8, 9, 14, 12, 
          15, 13, 3, 2, 1, 0, 4, 6, 5, 7, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 13, 15, 12, 14, 9, 8, 11, 10, 7, 6, 5, 4, 0, 2, 1, 3, 18, 18, 18, 18, 19, 
          19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 12, 14, 13, 15, 11, 10, 9, 8, 5, 4, 7, 6, 2, 0, 3, 1, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 15, 13, 14, 12, 8, 9, 10, 11, 6, 7, 4, 5, 1, 3, 0, 2, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 14, 12, 15, 13, 10, 11, 
          8, 9, 4, 5, 6, 7, 3, 1, 2, 0, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 16, 17, 17, 16, 16, 17, 17, 16, 18, 19, 19, 18, 18, 19, 19, 18, 0, 3, 4, 7, 1, 
          2, 5, 6, 8, 11, 12, 15, 9, 10, 13, 14 ], [ 16, 17, 17, 16, 16, 17, 17, 16, 18, 19, 19, 18, 18, 19, 19, 18, 3, 0, 7, 4, 2, 1, 6, 5, 11, 8, 15, 12, 10, 9, 14, 13 ], 
      [ 16, 17, 17, 16, 16, 17, 17, 16, 18, 19, 19, 18, 18, 19, 19, 18, 4, 7, 0, 3, 5, 6, 1, 2, 12, 15, 8, 11, 14, 13, 10, 9 ], 
      [ 16, 17, 17, 16, 16, 17, 17, 16, 18, 19, 19, 18, 18, 19, 19, 18, 7, 4, 3, 0, 6, 5, 2, 1, 15, 12, 11, 8, 13, 14, 9, 10 ], 
      [ 17, 16, 16, 17, 17, 16, 16, 17, 19, 18, 18, 19, 19, 18, 18, 19, 1, 2, 5, 6, 0, 3, 4, 7, 9, 10, 14, 13, 8, 11, 15, 12 ], [ 17, 16, 16, 17, 17, 16, 16, 17, 19, 18, 18, 19, 19, 18, 18, 19, 2, 1, 
          6, 5, 3, 0, 7, 4, 10, 9, 13, 14, 11, 8, 12, 15 ], [ 17, 16, 16, 17, 17, 16, 16, 17, 19, 18, 18, 19, 19, 18, 18, 19, 5, 6, 1, 2, 4, 7, 0, 3, 14, 13, 9, 10, 12, 15, 11, 8 ], 
      [ 17, 16, 16, 17, 17, 16, 16, 17, 19, 18, 18, 19, 19, 18, 18, 19, 6, 5, 2, 1, 7, 4, 3, 0, 13, 14, 10, 9, 15, 12, 8, 11 ], 
      [ 18, 19, 19, 18, 18, 19, 19, 18, 17, 16, 16, 17, 17, 16, 16, 17, 9, 10, 13, 14, 8, 11, 15, 12, 0, 3, 7, 4, 1, 2, 5, 6 ], 
      [ 18, 19, 19, 18, 18, 19, 19, 18, 17, 16, 16, 17, 17, 16, 16, 17, 10, 9, 14, 13, 11, 8, 12, 15, 3, 0, 4, 7, 2, 1, 6, 5 ], [ 18, 19, 19, 18, 18, 19, 19, 18, 17, 16, 16, 17, 17, 16, 16, 17, 13, 
          14, 9, 10, 15, 12, 8, 11, 7, 4, 0, 3, 6, 5, 2, 1 ], [ 18, 19, 19, 18, 18, 19, 19, 18, 17, 16, 16, 17, 17, 16, 16, 17, 14, 13, 10, 9, 12, 15, 11, 8, 4, 7, 3, 0, 5, 6, 1, 2 ], 
      [ 19, 18, 18, 19, 19, 18, 18, 19, 16, 17, 17, 16, 16, 17, 17, 16, 8, 11, 15, 12, 9, 10, 13, 14, 1, 2, 6, 5, 0, 3, 4, 7 ], 
      [ 19, 18, 18, 19, 19, 18, 18, 19, 16, 17, 17, 16, 16, 17, 17, 16, 11, 8, 12, 15, 10, 9, 14, 13, 2, 1, 5, 6, 3, 0, 7, 4 ], 
      [ 19, 18, 18, 19, 19, 18, 18, 19, 16, 17, 17, 16, 16, 17, 17, 16, 12, 15, 11, 8, 14, 13, 10, 9, 5, 6, 2, 1, 4, 7, 0, 3 ], [ 19, 18, 18, 19, 19, 18, 18, 19, 16, 17, 17, 16, 16, 17, 17, 16, 15, 
          12, 8, 11, 13, 14, 9, 10, 6, 5, 1, 2, 7, 4, 3, 0 ] ],
  SmallSchemeIdentification := 17615 )