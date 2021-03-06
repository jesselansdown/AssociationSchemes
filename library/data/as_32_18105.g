rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(8)^3, E(8), E(8)^3, -E(8), 
          E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), E(8)^3, -E(8), -E(8)^3, E(8), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), -E(8), E(8)^3, E(8), -E(8)^3, E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(8), -E(8)^3, -E(8), E(8)^3, -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -E(4), E(4), -E(4), E(4), E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), E(4), 
          0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 14, 15, 12, 13, 17, 17, 16, 16, 19, 19, 18, 18, 21, 21, 20, 20, 23, 23, 22, 22 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 12, 13, 14, 15, 8, 9, 10, 11, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 14, 15, 12, 13, 10, 11, 8, 9, 17, 17, 16, 16, 19, 19, 18, 18, 21, 21, 20, 20, 23, 23, 22, 22 ], [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 10, 11, 8, 13, 14, 15, 12, 18, 18, 19, 19, 
          17, 17, 16, 16, 22, 22, 23, 23, 21, 21, 20, 20 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 8, 9, 10, 15, 12, 13, 14, 19, 19, 18, 18, 16, 16, 17, 17, 23, 23, 22, 22, 20, 20, 21, 21 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 13, 14, 15, 12, 9, 10, 11, 8, 18, 18, 19, 19, 17, 17, 16, 16, 22, 22, 23, 23, 21, 21, 20, 20 ], [ 6, 7, 4, 5, 3, 2, 
          1, 0, 15, 12, 13, 14, 11, 8, 9, 10, 19, 19, 18, 18, 16, 16, 17, 17, 23, 23, 22, 22, 20, 20, 21, 21 ], [ 9, 11, 13, 15, 8, 10, 12, 14, 0, 5, 1, 4, 2, 7, 3, 6, 20, 20, 21, 21, 22, 
          22, 23, 23, 18, 18, 19, 19, 17, 17, 16, 16 ], [ 8, 10, 12, 14, 11, 9, 15, 13, 4, 0, 5, 1, 6, 2, 7, 3, 23, 23, 22, 22, 20, 20, 21, 21, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 11, 9, 15, 13, 10, 8, 14, 12, 1, 4, 0, 5, 3, 6, 2, 7, 21, 21, 20, 20, 23, 23, 22, 22, 19, 19, 18, 18, 16, 16, 17, 17 ], [ 10, 8, 14, 12, 9, 11, 
          13, 15, 5, 1, 4, 0, 7, 3, 6, 2, 22, 22, 23, 23, 21, 21, 20, 20, 17, 17, 16, 16, 19, 19, 18, 18 ], [ 13, 15, 9, 11, 12, 14, 8, 10, 2, 7, 3, 6, 0, 5, 1, 4, 20, 20, 21, 21, 22, 
          22, 23, 23, 18, 18, 19, 19, 17, 17, 16, 16 ], [ 12, 14, 8, 10, 15, 13, 11, 9, 6, 2, 7, 3, 4, 0, 5, 1, 23, 23, 22, 22, 20, 20, 21, 21, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 15, 13, 11, 9, 14, 12, 10, 8, 3, 6, 2, 7, 1, 4, 0, 5, 21, 21, 20, 20, 23, 23, 22, 22, 19, 19, 18, 18, 16, 16, 17, 17 ], [ 14, 12, 10, 8, 13, 15, 
          9, 11, 7, 3, 6, 2, 5, 1, 4, 0, 22, 22, 23, 23, 21, 21, 20, 20, 17, 17, 16, 16, 19, 19, 18, 18 ], [ 16, 17, 16, 17, 18, 19, 18, 19, 21, 22, 20, 23, 21, 22, 20, 23, 0, 2, 1, 3, 4, 
          6, 5, 7, 10, 14, 8, 12, 9, 13, 11, 15 ], [ 16, 17, 16, 17, 18, 19, 18, 19, 21, 22, 20, 23, 21, 22, 20, 23, 2, 0, 3, 1, 6, 4, 7, 5, 14, 10, 12, 8, 13, 9, 15, 11 ], 
      [ 17, 16, 17, 16, 19, 18, 19, 18, 20, 23, 21, 22, 20, 23, 21, 22, 1, 3, 0, 2, 5, 7, 4, 6, 8, 12, 10, 14, 11, 15, 9, 13 ], 
      [ 17, 16, 17, 16, 19, 18, 19, 18, 20, 23, 21, 22, 20, 23, 21, 22, 3, 1, 2, 0, 7, 5, 6, 4, 12, 8, 14, 10, 15, 11, 13, 9 ], 
      [ 18, 19, 18, 19, 17, 16, 17, 16, 23, 21, 22, 20, 23, 21, 22, 20, 5, 7, 4, 6, 0, 2, 1, 3, 11, 15, 9, 13, 10, 14, 8, 12 ], [ 18, 19, 18, 19, 17, 16, 17, 16, 23, 21, 22, 20, 23, 21, 22, 20, 7, 5, 
          6, 4, 2, 0, 3, 1, 15, 11, 13, 9, 14, 10, 12, 8 ], [ 19, 18, 19, 18, 16, 17, 16, 17, 22, 20, 23, 21, 22, 20, 23, 21, 4, 6, 5, 7, 1, 3, 0, 2, 9, 13, 11, 15, 8, 12, 10, 14 ], 
      [ 19, 18, 19, 18, 16, 17, 16, 17, 22, 20, 23, 21, 22, 20, 23, 21, 6, 4, 7, 5, 3, 1, 2, 0, 13, 9, 15, 11, 12, 8, 14, 10 ], 
      [ 21, 20, 21, 20, 23, 22, 23, 22, 18, 16, 19, 17, 18, 16, 19, 17, 11, 15, 9, 13, 10, 14, 8, 12, 0, 2, 1, 3, 4, 6, 5, 7 ], 
      [ 21, 20, 21, 20, 23, 22, 23, 22, 18, 16, 19, 17, 18, 16, 19, 17, 15, 11, 13, 9, 14, 10, 12, 8, 2, 0, 3, 1, 6, 4, 7, 5 ], [ 20, 21, 20, 21, 22, 23, 22, 23, 19, 17, 18, 16, 19, 17, 18, 16, 9, 13, 
          11, 15, 8, 12, 10, 14, 1, 3, 0, 2, 5, 7, 4, 6 ], [ 20, 21, 20, 21, 22, 23, 22, 23, 19, 17, 18, 16, 19, 17, 18, 16, 13, 9, 15, 11, 12, 8, 14, 10, 3, 1, 2, 0, 7, 5, 6, 4 ], 
      [ 23, 22, 23, 22, 20, 21, 20, 21, 17, 18, 16, 19, 17, 18, 16, 19, 8, 12, 10, 14, 11, 15, 9, 13, 5, 7, 4, 6, 0, 2, 1, 3 ], 
      [ 23, 22, 23, 22, 20, 21, 20, 21, 17, 18, 16, 19, 17, 18, 16, 19, 12, 8, 14, 10, 15, 11, 13, 9, 7, 5, 6, 4, 2, 0, 3, 1 ], 
      [ 22, 23, 22, 23, 21, 20, 21, 20, 16, 19, 17, 18, 16, 19, 17, 18, 10, 14, 8, 12, 9, 13, 11, 15, 4, 6, 5, 7, 1, 3, 0, 2 ], [ 22, 23, 22, 23, 21, 20, 21, 20, 16, 19, 17, 18, 16, 19, 17, 18, 14, 
          10, 12, 8, 13, 9, 15, 11, 6, 4, 7, 5, 3, 1, 2, 0 ] ],
  SmallSchemeIdentification := 18105 )