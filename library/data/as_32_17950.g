rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -4, 4, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -4, 0, 0, 2 ], [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16, 19, 19, 18, 18 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16, 19, 19, 18, 18 ], [ 5, 7, 4, 6, 0, 3, 1, 2, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 15, 15, 13, 
          13, 12, 12, 18, 18, 19, 19, 17, 17, 16, 16 ], [ 4, 6, 7, 5, 2, 0, 3, 1, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 14, 14, 12, 12, 13, 13, 19, 19, 18, 18, 16, 16, 17, 17 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 15, 15, 13, 13, 12, 12, 18, 18, 19, 19, 17, 17, 16, 16 ], [ 6, 4, 5, 7, 3, 1, 2, 0, 
          11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 14, 14, 12, 12, 13, 13, 19, 19, 18, 18, 16, 16, 17, 17 ], [ 8, 8, 9, 9, 10, 11, 10, 11, 0, 1, 2, 3, 4, 6, 5, 7, 16, 16, 17, 17, 19, 19, 
          18, 18, 12, 12, 13, 13, 15, 15, 14, 14 ], [ 8, 8, 9, 9, 10, 11, 10, 11, 1, 0, 3, 2, 6, 4, 7, 5, 16, 16, 17, 17, 19, 19, 18, 18, 12, 12, 13, 13, 15, 15, 14, 14 ], 
      [ 9, 9, 8, 8, 11, 10, 11, 10, 3, 2, 0, 1, 5, 7, 6, 4, 17, 17, 16, 16, 18, 18, 19, 19, 13, 13, 12, 12, 14, 14, 15, 15 ], [ 9, 9, 8, 8, 11, 10, 11, 10, 
          2, 3, 1, 0, 7, 5, 4, 6, 17, 17, 16, 16, 18, 18, 19, 19, 13, 13, 12, 12, 14, 14, 15, 15 ], [ 10, 10, 11, 11, 9, 8, 9, 8, 5, 7, 4, 6, 0, 1, 3, 2, 18, 18, 19, 19, 16, 16, 
          17, 17, 14, 14, 15, 15, 12, 12, 13, 13 ], [ 10, 10, 11, 11, 9, 8, 9, 8, 7, 5, 6, 4, 1, 0, 2, 3, 18, 18, 19, 19, 16, 16, 17, 17, 14, 14, 15, 15, 12, 12, 13, 13 ], 
      [ 11, 11, 10, 10, 8, 9, 8, 9, 4, 6, 7, 5, 2, 3, 0, 1, 19, 19, 18, 18, 17, 17, 16, 16, 15, 15, 14, 14, 13, 13, 12, 12 ], [ 11, 11, 10, 10, 8, 9, 8, 9, 
          6, 4, 5, 7, 3, 2, 1, 0, 19, 19, 18, 18, 17, 17, 16, 16, 15, 15, 14, 14, 13, 13, 12, 12 ], [ 12, 12, 13, 13, 14, 15, 14, 15, 16, 16, 17, 17, 19, 19, 18, 18, 0, 1, 2, 3, 4, 6, 
          5, 7, 8, 8, 9, 9, 11, 11, 10, 10 ], [ 12, 12, 13, 13, 14, 15, 14, 15, 16, 16, 17, 17, 19, 19, 18, 18, 1, 0, 3, 2, 6, 4, 7, 5, 8, 8, 9, 9, 11, 11, 10, 10 ], 
      [ 13, 13, 12, 12, 15, 14, 15, 14, 17, 17, 16, 16, 18, 18, 19, 19, 3, 2, 0, 1, 5, 7, 6, 4, 9, 9, 8, 8, 10, 10, 11, 11 ], 
      [ 13, 13, 12, 12, 15, 14, 15, 14, 17, 17, 16, 16, 18, 18, 19, 19, 2, 3, 1, 0, 7, 5, 4, 6, 9, 9, 8, 8, 10, 10, 11, 11 ], 
      [ 14, 14, 15, 15, 13, 12, 13, 12, 18, 18, 19, 19, 16, 16, 17, 17, 5, 7, 4, 6, 0, 1, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9 ], [ 14, 14, 15, 15, 13, 12, 13, 12, 18, 18, 19, 19, 16, 16, 17, 17, 7, 5, 6, 
          4, 1, 0, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9 ], [ 15, 15, 14, 14, 12, 13, 12, 13, 19, 19, 18, 18, 17, 17, 16, 16, 4, 6, 7, 5, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 15, 15, 14, 14, 12, 13, 12, 13, 19, 19, 18, 18, 17, 17, 16, 16, 6, 4, 5, 7, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 16, 16, 17, 17, 19, 18, 19, 18, 12, 12, 13, 13, 14, 14, 15, 15, 8, 8, 9, 9, 10, 10, 11, 11, 0, 1, 2, 3, 5, 7, 4, 6 ], 
      [ 16, 16, 17, 17, 19, 18, 19, 18, 12, 12, 13, 13, 14, 14, 15, 15, 8, 8, 9, 9, 10, 10, 11, 11, 1, 0, 3, 2, 7, 5, 6, 4 ], [ 17, 17, 16, 16, 18, 19, 18, 19, 13, 13, 12, 12, 15, 15, 14, 14, 9, 9, 8, 
          8, 11, 11, 10, 10, 3, 2, 0, 1, 6, 4, 5, 7 ], [ 17, 17, 16, 16, 18, 19, 18, 19, 13, 13, 12, 12, 15, 15, 14, 14, 9, 9, 8, 8, 11, 11, 10, 10, 2, 3, 1, 0, 4, 6, 7, 5 ], 
      [ 19, 19, 18, 18, 17, 16, 17, 16, 15, 15, 14, 14, 12, 12, 13, 13, 11, 11, 10, 10, 8, 8, 9, 9, 4, 6, 7, 5, 0, 1, 2, 3 ], 
      [ 19, 19, 18, 18, 17, 16, 17, 16, 15, 15, 14, 14, 12, 12, 13, 13, 11, 11, 10, 10, 8, 8, 9, 9, 6, 4, 5, 7, 1, 0, 3, 2 ], 
      [ 18, 18, 19, 19, 16, 17, 16, 17, 14, 14, 15, 15, 13, 13, 12, 12, 10, 10, 11, 11, 9, 9, 8, 8, 5, 7, 4, 6, 3, 2, 0, 1 ], [ 18, 18, 19, 19, 16, 17, 16, 17, 14, 14, 15, 15, 13, 13, 12, 12, 10, 10, 
          11, 11, 9, 9, 8, 8, 7, 5, 6, 4, 2, 3, 1, 0 ] ],
  SmallSchemeIdentification := 17950 )