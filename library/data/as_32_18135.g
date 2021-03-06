rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 2, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(8)^3, E(8), E(8)^3, -E(8), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), E(8)^3, -E(8), -E(8)^3, E(8), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), -E(8), E(8)^3, E(8), -E(8)^3, E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(8), -E(8)^3, -E(8), 
          E(8)^3, -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), -E(8)^3, 
          E(8), E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 12, 13, 14, 15, 8, 9, 10, 11, 18, 18, 19, 19, 16, 16, 17, 17, 22, 22, 23, 23, 20, 20, 21, 21 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 14, 15, 12, 13, 10, 11, 8, 9, 18, 18, 19, 19, 16, 16, 17, 17, 22, 22, 23, 23, 20, 20, 21, 21 ], [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 10, 11, 8, 13, 14, 15, 12, 17, 17, 16, 16, 
          19, 19, 18, 18, 21, 21, 20, 20, 23, 23, 22, 22 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 8, 9, 10, 15, 12, 13, 14, 17, 17, 16, 16, 19, 19, 18, 18, 21, 21, 20, 20, 23, 23, 22, 22 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 13, 14, 15, 12, 9, 10, 11, 8, 19, 19, 18, 18, 17, 17, 16, 16, 23, 23, 22, 22, 21, 21, 20, 20 ], [ 6, 7, 4, 5, 3, 2, 
          1, 0, 15, 12, 13, 14, 11, 8, 9, 10, 19, 19, 18, 18, 17, 17, 16, 16, 23, 23, 22, 22, 21, 21, 20, 20 ], [ 9, 11, 13, 15, 8, 10, 12, 14, 0, 5, 1, 4, 2, 7, 3, 6, 20, 20, 21, 21, 22, 
          22, 23, 23, 17, 17, 16, 16, 19, 19, 18, 18 ], [ 8, 10, 12, 14, 11, 9, 15, 13, 4, 0, 5, 1, 6, 2, 7, 3, 21, 21, 20, 20, 23, 23, 22, 22, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 11, 9, 15, 13, 10, 8, 14, 12, 1, 4, 0, 5, 3, 6, 2, 7, 20, 20, 21, 21, 22, 22, 23, 23, 17, 17, 16, 16, 19, 19, 18, 18 ], [ 10, 8, 14, 12, 9, 11, 
          13, 15, 5, 1, 4, 0, 7, 3, 6, 2, 21, 21, 20, 20, 23, 23, 22, 22, 16, 16, 17, 17, 18, 18, 19, 19 ], [ 13, 15, 9, 11, 12, 14, 8, 10, 2, 7, 3, 6, 0, 5, 1, 4, 22, 22, 23, 23, 20, 
          20, 21, 21, 19, 19, 18, 18, 17, 17, 16, 16 ], [ 12, 14, 8, 10, 15, 13, 11, 9, 6, 2, 7, 3, 4, 0, 5, 1, 23, 23, 22, 22, 21, 21, 20, 20, 18, 18, 19, 19, 16, 16, 17, 17 ], 
      [ 15, 13, 11, 9, 14, 12, 10, 8, 3, 6, 2, 7, 1, 4, 0, 5, 22, 22, 23, 23, 20, 20, 21, 21, 19, 19, 18, 18, 17, 17, 16, 16 ], [ 14, 12, 10, 8, 13, 15, 
          9, 11, 7, 3, 6, 2, 5, 1, 4, 0, 23, 23, 22, 22, 21, 21, 20, 20, 18, 18, 19, 19, 16, 16, 17, 17 ], [ 17, 17, 19, 19, 16, 16, 18, 18, 21, 20, 21, 20, 23, 22, 23, 22, 0, 1, 4, 5, 2, 
          3, 6, 7, 8, 10, 9, 11, 12, 14, 13, 15 ], [ 17, 17, 19, 19, 16, 16, 18, 18, 21, 20, 21, 20, 23, 22, 23, 22, 1, 0, 5, 4, 3, 2, 7, 6, 10, 8, 11, 9, 14, 12, 15, 13 ], 
      [ 16, 16, 18, 18, 17, 17, 19, 19, 20, 21, 20, 21, 22, 23, 22, 23, 5, 4, 0, 1, 7, 6, 2, 3, 9, 11, 10, 8, 13, 15, 14, 12 ], 
      [ 16, 16, 18, 18, 17, 17, 19, 19, 20, 21, 20, 21, 22, 23, 22, 23, 4, 5, 1, 0, 6, 7, 3, 2, 11, 9, 8, 10, 15, 13, 12, 14 ], 
      [ 19, 19, 17, 17, 18, 18, 16, 16, 23, 22, 23, 22, 21, 20, 21, 20, 2, 3, 6, 7, 0, 1, 4, 5, 12, 14, 13, 15, 8, 10, 9, 11 ], [ 19, 19, 17, 17, 18, 18, 16, 16, 23, 22, 23, 22, 21, 20, 21, 20, 3, 2, 
          7, 6, 1, 0, 5, 4, 14, 12, 15, 13, 10, 8, 11, 9 ], [ 18, 18, 16, 16, 19, 19, 17, 17, 22, 23, 22, 23, 20, 21, 20, 21, 7, 6, 2, 3, 5, 4, 0, 1, 13, 15, 14, 12, 9, 11, 10, 8 ], 
      [ 18, 18, 16, 16, 19, 19, 17, 17, 22, 23, 22, 23, 20, 21, 20, 21, 6, 7, 3, 2, 4, 5, 1, 0, 15, 13, 12, 14, 11, 9, 8, 10 ], 
      [ 21, 21, 23, 23, 20, 20, 22, 22, 16, 17, 16, 17, 18, 19, 18, 19, 9, 11, 8, 10, 13, 15, 12, 14, 0, 1, 5, 4, 2, 3, 7, 6 ], 
      [ 21, 21, 23, 23, 20, 20, 22, 22, 16, 17, 16, 17, 18, 19, 18, 19, 11, 9, 10, 8, 15, 13, 14, 12, 1, 0, 4, 5, 3, 2, 6, 7 ], [ 20, 20, 22, 22, 21, 21, 23, 23, 17, 16, 17, 16, 19, 18, 19, 18, 8, 10, 
          11, 9, 12, 14, 15, 13, 4, 5, 0, 1, 6, 7, 2, 3 ], [ 20, 20, 22, 22, 21, 21, 23, 23, 17, 16, 17, 16, 19, 18, 19, 18, 10, 8, 9, 11, 14, 12, 13, 15, 5, 4, 1, 0, 7, 6, 3, 2 ], 
      [ 23, 23, 21, 21, 22, 22, 20, 20, 18, 19, 18, 19, 16, 17, 16, 17, 13, 15, 12, 14, 9, 11, 8, 10, 2, 3, 7, 6, 0, 1, 5, 4 ], 
      [ 23, 23, 21, 21, 22, 22, 20, 20, 18, 19, 18, 19, 16, 17, 16, 17, 15, 13, 14, 12, 11, 9, 10, 8, 3, 2, 6, 7, 1, 0, 4, 5 ], 
      [ 22, 22, 20, 20, 23, 23, 21, 21, 19, 18, 19, 18, 17, 16, 17, 16, 12, 14, 15, 13, 8, 10, 11, 9, 6, 7, 2, 3, 4, 5, 0, 1 ], [ 22, 22, 20, 20, 23, 23, 21, 21, 19, 18, 19, 18, 17, 16, 17, 16, 14, 
          12, 13, 15, 10, 8, 9, 11, 7, 6, 3, 2, 5, 4, 1, 0 ] ],
  SmallSchemeIdentification := 18135 )