rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 1 ], [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, -2, -2, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, 2, 2, -4, -4, -4, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, 4, -4, -4, 1 ], [ 1, -1, 1, -1, 0, 0, 2, -2, -2, 2, -2, 2, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, 0, 0, 2, -2, 2, -2, 2, -2, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 4, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, 0, 0, 0, 0, -4, 0, 0, 2 ], [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, -1, 1, 0, 0, 0, 0, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, 0, 
          0, 0, 4 ], [ 1, -1, -1, 1, 0, 0, 0, 0, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, 0, 0, 0, 4 ], [ 1, -1, 1, -1, 0, 0, -2, 2, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14 ], [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 10, 10, 11, 11, 8, 8, 9, 9, 
          12, 12, 12, 12, 14, 14, 14, 14, 13, 13, 13, 13 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 11, 11, 10, 10, 9, 9, 8, 8, 12, 12, 12, 12, 14, 14, 14, 14, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 
          12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10 ], [ 5, 5, 4, 4, 2, 3, 0, 1, 12, 12, 12, 12, 14, 14, 14, 14, 13, 13, 13, 13, 6, 6, 
          7, 7, 10, 10, 11, 11, 8, 8, 9, 9 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 12, 12, 12, 12, 14, 14, 14, 14, 13, 13, 13, 13, 7, 7, 6, 6, 11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 6, 7, 6, 7, 12, 12, 12, 12, 0, 2, 1, 3, 8, 10, 9, 11, 8, 10, 9, 11, 4, 5, 4, 5, 13, 14, 13, 14, 13, 14, 13, 14 ], [ 6, 7, 6, 7, 12, 12, 12, 12, 2, 0, 3, 1, 
          10, 8, 11, 9, 10, 8, 11, 9, 5, 4, 5, 4, 14, 13, 14, 13, 14, 13, 14, 13 ], [ 7, 6, 7, 6, 12, 12, 12, 12, 1, 3, 0, 2, 9, 11, 8, 10, 9, 11, 8, 10, 4, 5, 4, 5, 13, 14, 13, 14, 13, 14, 13, 14 ], 
      [ 7, 6, 7, 6, 12, 12, 12, 12, 3, 1, 2, 0, 11, 9, 10, 8, 11, 9, 10, 8, 5, 4, 5, 4, 14, 13, 14, 13, 14, 13, 14, 13 ], [ 8, 9, 
          10, 11, 14, 14, 13, 13, 8, 10, 9, 11, 0, 6, 1, 7, 6, 2, 7, 3, 14, 13, 14, 13, 5, 12, 5, 12, 12, 4, 12, 4 ], [ 8, 9, 10, 11, 14, 14, 13, 13, 10, 8, 11, 9, 6, 0, 7, 1, 2, 6, 3, 7, 13, 14, 13, 
          14, 12, 5, 12, 5, 4, 12, 4, 12 ], [ 9, 8, 11, 10, 14, 14, 13, 13, 9, 11, 8, 10, 1, 7, 0, 6, 7, 3, 6, 2, 14, 13, 14, 13, 5, 12, 5, 12, 12, 4, 12, 4 ], 
      [ 9, 8, 11, 10, 14, 14, 13, 13, 11, 9, 10, 8, 7, 1, 6, 0, 3, 7, 2, 6, 13, 14, 13, 14, 12, 5, 12, 5, 4, 12, 4, 12 ], [ 10, 11, 8, 9, 13, 13, 14, 14, 8, 10, 9, 
          11, 6, 2, 7, 3, 0, 6, 1, 7, 14, 13, 14, 13, 12, 4, 12, 4, 5, 12, 5, 12 ], [ 10, 11, 8, 9, 13, 13, 14, 14, 10, 8, 11, 9, 2, 6, 3, 7, 6, 0, 7, 1, 13, 14, 13, 14, 4, 12, 4, 12, 12, 5, 12, 5 ], 
      [ 11, 10, 9, 8, 13, 13, 14, 14, 9, 11, 8, 10, 7, 3, 6, 2, 1, 7, 0, 6, 14, 13, 14, 13, 12, 4, 12, 4, 5, 12, 5, 12 ], [ 11, 
          10, 9, 8, 13, 13, 14, 14, 11, 9, 10, 8, 3, 7, 2, 6, 7, 1, 6, 0, 13, 14, 13, 14, 4, 12, 4, 12, 12, 5, 12, 5 ], [ 12, 12, 12, 12, 6, 7, 6, 7, 4, 5, 4, 5, 13, 14, 13, 14, 13, 14, 13, 14, 0, 2, 
          1, 3, 8, 10, 9, 11, 8, 10, 9, 11 ], [ 12, 12, 12, 12, 6, 7, 6, 7, 5, 4, 5, 4, 14, 13, 14, 13, 14, 13, 14, 13, 2, 0, 3, 1, 10, 8, 11, 9, 10, 8, 11, 9 ], 
      [ 12, 12, 12, 12, 7, 6, 7, 6, 4, 5, 4, 5, 13, 14, 13, 14, 13, 14, 13, 14, 1, 3, 0, 2, 9, 11, 8, 10, 9, 11, 8, 10 ], 
      [ 12, 12, 12, 12, 7, 6, 7, 6, 5, 4, 5, 4, 14, 13, 14, 13, 14, 13, 14, 13, 3, 1, 2, 0, 11, 9, 10, 8, 11, 9, 10, 8 ], 
      [ 14, 14, 13, 13, 8, 9, 10, 11, 14, 13, 14, 13, 5, 12, 5, 12, 12, 4, 12, 4, 8, 10, 9, 11, 0, 6, 1, 7, 6, 2, 7, 3 ], [ 14, 14, 13, 13, 8, 9, 10, 11, 13, 14, 13, 14, 12, 5, 12, 5, 4, 12, 4, 12, 
          10, 8, 11, 9, 6, 0, 7, 1, 2, 6, 3, 7 ], [ 14, 14, 13, 13, 9, 8, 11, 10, 14, 13, 14, 13, 5, 12, 5, 12, 12, 4, 12, 4, 9, 11, 8, 10, 1, 7, 0, 6, 7, 3, 6, 2 ], 
      [ 14, 14, 13, 13, 9, 8, 11, 10, 13, 14, 13, 14, 12, 5, 12, 5, 4, 12, 4, 12, 11, 9, 10, 8, 7, 1, 6, 0, 3, 7, 2, 6 ], [ 13, 13, 14, 14, 10, 11, 8, 9, 14, 
          13, 14, 13, 12, 4, 12, 4, 5, 12, 5, 12, 8, 10, 9, 11, 6, 2, 7, 3, 0, 6, 1, 7 ], [ 13, 13, 14, 14, 10, 11, 8, 9, 13, 14, 13, 14, 4, 12, 4, 12, 12, 5, 12, 5, 10, 8, 
          11, 9, 2, 6, 3, 7, 6, 0, 7, 1 ], [ 13, 13, 14, 14, 11, 10, 9, 8, 14, 13, 14, 13, 12, 4, 12, 4, 5, 12, 5, 12, 9, 11, 8, 10, 7, 3, 6, 2, 1, 7, 0, 6 ], 
      [ 13, 13, 14, 14, 11, 10, 9, 8, 13, 14, 13, 14, 4, 12, 4, 12, 12, 5, 12, 5, 11, 9, 10, 8, 3, 7, 2, 6, 7, 1, 6, 0 ] ],
  SmallSchemeIdentification := 16675 )