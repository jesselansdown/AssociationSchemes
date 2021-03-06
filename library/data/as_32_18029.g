rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -2, 2, -2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 2, -2, 2, -2, -2, -2, 2, 2, 1 ], [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, -2, 2, -2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 2, -2, 2, -2, 2, 2, -2, -2, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 2, 2, 2, 2, 0, 0, 0, 0, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, -E(4), E(4), E(4), -E(4), E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, E(4), -E(4), -E(4), E(4), -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(4), -E(4), -E(4), E(4), 
          0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, -1, 1, -1, 1, -E(4), E(4), -E(4), E(4), E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), 
          E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 14, 15, 12, 13, 17, 17, 16, 16, 19, 19, 18, 18, 22, 22, 23, 23, 20, 20, 21, 21 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 17, 17, 16, 16, 19, 19, 18, 18, 22, 22, 23, 23, 20, 20, 21, 21 ], [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 13, 14, 15, 8, 9, 10, 11, 20, 20, 22, 22, 
          21, 21, 23, 23, 16, 16, 18, 18, 17, 17, 19, 19 ], [ 5, 4, 7, 6, 1, 0, 3, 2, 13, 12, 15, 14, 9, 8, 11, 10, 20, 20, 22, 22, 21, 21, 23, 23, 16, 16, 18, 18, 17, 17, 19, 19 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 14, 15, 12, 13, 10, 11, 8, 9, 22, 22, 20, 20, 23, 23, 21, 21, 17, 17, 19, 19, 16, 16, 18, 18 ], [ 7, 6, 5, 4, 3, 2, 
          1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 22, 22, 20, 20, 23, 23, 21, 21, 17, 17, 19, 19, 16, 16, 18, 18 ], [ 9, 8, 11, 10, 13, 12, 15, 14, 0, 1, 2, 3, 4, 5, 6, 7, 18, 18, 19, 19, 16, 
          16, 17, 17, 21, 21, 20, 20, 23, 23, 22, 22 ], [ 8, 9, 10, 11, 12, 13, 14, 15, 1, 0, 3, 2, 5, 4, 7, 6, 18, 18, 19, 19, 16, 16, 17, 17, 21, 21, 20, 20, 23, 23, 22, 22 ], 
      [ 11, 10, 9, 8, 15, 14, 13, 12, 2, 3, 0, 1, 6, 7, 4, 5, 19, 19, 18, 18, 17, 17, 16, 16, 23, 23, 22, 22, 21, 21, 20, 20 ], [ 10, 11, 8, 9, 14, 15, 
          12, 13, 3, 2, 1, 0, 7, 6, 5, 4, 19, 19, 18, 18, 17, 17, 16, 16, 23, 23, 22, 22, 21, 21, 20, 20 ], [ 13, 12, 15, 14, 9, 8, 11, 10, 4, 5, 6, 7, 0, 1, 2, 3, 21, 21, 23, 23, 20, 
          20, 22, 22, 18, 18, 16, 16, 19, 19, 17, 17 ], [ 12, 13, 14, 15, 8, 9, 10, 11, 5, 4, 7, 6, 1, 0, 3, 2, 21, 21, 23, 23, 20, 20, 22, 22, 18, 18, 16, 16, 19, 19, 17, 17 ], 
      [ 15, 14, 13, 12, 11, 10, 9, 8, 6, 7, 4, 5, 2, 3, 0, 1, 23, 23, 21, 21, 22, 22, 20, 20, 19, 19, 17, 17, 18, 18, 16, 16 ], [ 14, 15, 12, 13, 10, 11, 
          8, 9, 7, 6, 5, 4, 3, 2, 1, 0, 23, 23, 21, 21, 22, 22, 20, 20, 19, 19, 17, 17, 18, 18, 16, 16 ], [ 16, 16, 17, 17, 21, 21, 23, 23, 18, 18, 19, 19, 20, 20, 22, 22, 0, 1, 2, 3, 8, 
          9, 10, 11, 12, 13, 4, 5, 14, 15, 6, 7 ], [ 16, 16, 17, 17, 21, 21, 23, 23, 18, 18, 19, 19, 20, 20, 22, 22, 1, 0, 3, 2, 9, 8, 11, 10, 13, 12, 5, 4, 15, 14, 7, 6 ], 
      [ 17, 17, 16, 16, 23, 23, 21, 21, 19, 19, 18, 18, 22, 22, 20, 20, 2, 3, 0, 1, 10, 11, 8, 9, 14, 15, 6, 7, 12, 13, 4, 5 ], 
      [ 17, 17, 16, 16, 23, 23, 21, 21, 19, 19, 18, 18, 22, 22, 20, 20, 3, 2, 1, 0, 11, 10, 9, 8, 15, 14, 7, 6, 13, 12, 5, 4 ], 
      [ 18, 18, 19, 19, 20, 20, 22, 22, 16, 16, 17, 17, 21, 21, 23, 23, 9, 8, 11, 10, 0, 1, 2, 3, 4, 5, 13, 12, 6, 7, 15, 14 ], [ 18, 18, 19, 19, 20, 20, 22, 22, 16, 16, 17, 17, 21, 21, 23, 23, 8, 9, 
          10, 11, 1, 0, 3, 2, 5, 4, 12, 13, 7, 6, 14, 15 ], [ 19, 19, 18, 18, 22, 22, 20, 20, 17, 17, 16, 16, 23, 23, 21, 21, 11, 10, 9, 8, 2, 3, 0, 1, 6, 7, 15, 14, 4, 5, 13, 12 ], 
      [ 19, 19, 18, 18, 22, 22, 20, 20, 17, 17, 16, 16, 23, 23, 21, 21, 10, 11, 8, 9, 3, 2, 1, 0, 7, 6, 14, 15, 5, 4, 12, 13 ], 
      [ 21, 21, 23, 23, 16, 16, 17, 17, 20, 20, 22, 22, 18, 18, 19, 19, 13, 12, 15, 14, 4, 5, 6, 7, 0, 1, 9, 8, 2, 3, 11, 10 ], 
      [ 21, 21, 23, 23, 16, 16, 17, 17, 20, 20, 22, 22, 18, 18, 19, 19, 12, 13, 14, 15, 5, 4, 7, 6, 1, 0, 8, 9, 3, 2, 10, 11 ], [ 20, 20, 22, 22, 18, 18, 19, 19, 21, 21, 23, 23, 16, 16, 17, 17, 4, 5, 
          6, 7, 12, 13, 14, 15, 8, 9, 0, 1, 10, 11, 2, 3 ], [ 20, 20, 22, 22, 18, 18, 19, 19, 21, 21, 23, 23, 16, 16, 17, 17, 5, 4, 7, 6, 13, 12, 15, 14, 9, 8, 1, 0, 11, 10, 3, 2 ], 
      [ 23, 23, 21, 21, 17, 17, 16, 16, 22, 22, 20, 20, 19, 19, 18, 18, 15, 14, 13, 12, 6, 7, 4, 5, 2, 3, 11, 10, 0, 1, 9, 8 ], 
      [ 23, 23, 21, 21, 17, 17, 16, 16, 22, 22, 20, 20, 19, 19, 18, 18, 14, 15, 12, 13, 7, 6, 5, 4, 3, 2, 10, 11, 1, 0, 8, 9 ], 
      [ 22, 22, 20, 20, 19, 19, 18, 18, 23, 23, 21, 21, 17, 17, 16, 16, 6, 7, 4, 5, 14, 15, 12, 13, 10, 11, 2, 3, 8, 9, 0, 1 ], [ 22, 22, 20, 20, 19, 19, 18, 18, 23, 23, 21, 21, 17, 17, 16, 16, 7, 6, 
          5, 4, 15, 14, 13, 12, 11, 10, 3, 2, 9, 8, 1, 0 ] ],
  SmallSchemeIdentification := 18029 )