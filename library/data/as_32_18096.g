rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, -1, -1, 
          1, 1, -E(4), E(4), -E(4), E(4), E(4), -E(4), E(4), -E(4), -2, 2, 2, -2, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ], [ 1, 1, -1, -1, -1, -1, 1, 1, -E(4), E(4), -E(4), E(4), E(4), -E(4), E(4), 
          -E(4), 2, -2, -2, 2, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], [ 1, 1, -1, -1, -1, -1, 1, 1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), E(4), 
          -2, 2, 2, -2, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], [ 1, 1, -1, -1, -1, -1, 1, 1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), E(4), 2, -2, -2, 2, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], [ 2, 2, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(4), E(4), E(4), -E(4), 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), E(4), -E(4), -E(4), E(4), -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, E(4), 
          -E(4), -E(4), E(4), -E(4), E(4), E(4), -E(4), -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(4), -E(4), -E(4), E(4), 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 
          0, 0, 2 ], [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -1, -1, 1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 1, 1, -1, -1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -1, -1, 1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 1, 1, -1, -1, -E(4), E(4), E(4), -E(4), 
          0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 8, 11, 10, 15, 14, 13, 12, 17, 17, 16, 16, 19, 19, 18, 18, 22, 22, 23, 23, 20, 20, 21, 21 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 13, 12, 15, 14, 17, 17, 16, 16, 19, 19, 18, 18, 22, 22, 23, 23, 20, 20, 21, 21 ], [ 5, 4, 7, 6, 0, 1, 2, 3, 12, 15, 14, 13, 10, 9, 8, 11, 18, 18, 19, 19, 
          16, 16, 17, 17, 21, 21, 20, 20, 23, 23, 22, 22 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 14, 13, 12, 15, 8, 11, 10, 9, 18, 18, 19, 19, 16, 16, 17, 17, 21, 21, 20, 20, 23, 23, 22, 22 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 15, 12, 13, 14, 11, 8, 9, 10, 19, 19, 18, 18, 17, 17, 16, 16, 23, 23, 22, 22, 21, 21, 20, 20 ], [ 6, 7, 4, 5, 3, 2, 
          1, 0, 13, 14, 15, 12, 9, 10, 11, 8, 19, 19, 18, 18, 17, 17, 16, 16, 23, 23, 22, 22, 21, 21, 20, 20 ], [ 9, 11, 8, 10, 13, 15, 14, 12, 0, 2, 1, 3, 5, 6, 4, 7, 20, 20, 22, 22, 21, 
          21, 23, 23, 17, 17, 19, 19, 16, 16, 18, 18 ], [ 8, 10, 9, 11, 14, 12, 13, 15, 2, 0, 3, 1, 7, 4, 6, 5, 22, 22, 20, 20, 23, 23, 21, 21, 16, 16, 18, 18, 17, 17, 19, 19 ], 
      [ 11, 9, 10, 8, 15, 13, 12, 14, 1, 3, 0, 2, 4, 7, 5, 6, 20, 20, 22, 22, 21, 21, 23, 23, 17, 17, 19, 19, 16, 16, 18, 18 ], [ 10, 8, 11, 9, 12, 14, 
          15, 13, 3, 1, 2, 0, 6, 5, 7, 4, 22, 22, 20, 20, 23, 23, 21, 21, 16, 16, 18, 18, 17, 17, 19, 19 ], [ 13, 15, 14, 12, 11, 9, 10, 8, 4, 6, 5, 7, 0, 3, 1, 2, 21, 21, 23, 23, 20, 
          20, 22, 22, 19, 19, 17, 17, 18, 18, 16, 16 ], [ 12, 14, 15, 13, 8, 10, 9, 11, 7, 5, 6, 4, 3, 0, 2, 1, 23, 23, 21, 21, 22, 22, 20, 20, 18, 18, 16, 16, 19, 19, 17, 17 ], 
      [ 15, 13, 12, 14, 9, 11, 8, 10, 5, 7, 4, 6, 1, 2, 0, 3, 21, 21, 23, 23, 20, 20, 22, 22, 19, 19, 17, 17, 18, 18, 16, 16 ], [ 14, 12, 13, 15, 10, 8, 
          11, 9, 6, 4, 7, 5, 2, 1, 3, 0, 23, 23, 21, 21, 22, 22, 20, 20, 18, 18, 16, 16, 19, 19, 17, 17 ], [ 16, 16, 17, 17, 18, 18, 19, 19, 21, 23, 21, 23, 20, 22, 20, 22, 0, 1, 2, 3, 4, 
          5, 6, 7, 12, 14, 8, 10, 13, 15, 9, 11 ], [ 16, 16, 17, 17, 18, 18, 19, 19, 21, 23, 21, 23, 20, 22, 20, 22, 1, 0, 3, 2, 5, 4, 7, 6, 14, 12, 10, 8, 15, 13, 11, 9 ], 
      [ 17, 17, 16, 16, 19, 19, 18, 18, 23, 21, 23, 21, 22, 20, 22, 20, 2, 3, 0, 1, 6, 7, 4, 5, 15, 13, 9, 11, 14, 12, 8, 10 ], 
      [ 17, 17, 16, 16, 19, 19, 18, 18, 23, 21, 23, 21, 22, 20, 22, 20, 3, 2, 1, 0, 7, 6, 5, 4, 13, 15, 11, 9, 12, 14, 10, 8 ], 
      [ 18, 18, 19, 19, 16, 16, 17, 17, 20, 22, 20, 22, 21, 23, 21, 23, 5, 4, 7, 6, 0, 1, 2, 3, 10, 8, 12, 14, 9, 11, 15, 13 ], [ 18, 18, 19, 19, 16, 16, 17, 17, 20, 22, 20, 22, 21, 23, 21, 23, 4, 5, 
          6, 7, 1, 0, 3, 2, 8, 10, 14, 12, 11, 9, 13, 15 ], [ 19, 19, 18, 18, 17, 17, 16, 16, 22, 20, 22, 20, 23, 21, 23, 21, 7, 6, 5, 4, 2, 3, 0, 1, 11, 9, 15, 13, 8, 10, 12, 14 ], 
      [ 19, 19, 18, 18, 17, 17, 16, 16, 22, 20, 22, 20, 23, 21, 23, 21, 6, 7, 4, 5, 3, 2, 1, 0, 9, 11, 13, 15, 10, 8, 14, 12 ], 
      [ 21, 21, 23, 23, 20, 20, 22, 22, 17, 16, 17, 16, 19, 18, 19, 18, 13, 15, 14, 12, 11, 9, 10, 8, 0, 1, 4, 5, 3, 2, 6, 7 ], 
      [ 21, 21, 23, 23, 20, 20, 22, 22, 17, 16, 17, 16, 19, 18, 19, 18, 15, 13, 12, 14, 9, 11, 8, 10, 1, 0, 5, 4, 2, 3, 7, 6 ], [ 20, 20, 22, 22, 21, 21, 23, 23, 19, 18, 19, 18, 17, 16, 17, 16, 9, 11, 
          8, 10, 13, 15, 14, 12, 5, 4, 0, 1, 6, 7, 2, 3 ], [ 20, 20, 22, 22, 21, 21, 23, 23, 19, 18, 19, 18, 17, 16, 17, 16, 11, 9, 10, 8, 15, 13, 12, 14, 4, 5, 1, 0, 7, 6, 3, 2 ], 
      [ 23, 23, 21, 21, 22, 22, 20, 20, 16, 17, 16, 17, 18, 19, 18, 19, 12, 14, 15, 13, 8, 10, 9, 11, 3, 2, 7, 6, 0, 1, 5, 4 ], 
      [ 23, 23, 21, 21, 22, 22, 20, 20, 16, 17, 16, 17, 18, 19, 18, 19, 14, 12, 13, 15, 10, 8, 11, 9, 2, 3, 6, 7, 1, 0, 4, 5 ], 
      [ 22, 22, 20, 20, 23, 23, 21, 21, 18, 19, 18, 19, 16, 17, 16, 17, 8, 10, 9, 11, 14, 12, 13, 15, 7, 6, 2, 3, 4, 5, 0, 1 ], [ 22, 22, 20, 20, 23, 23, 21, 21, 18, 19, 18, 19, 16, 17, 16, 17, 10, 8, 
          11, 9, 12, 14, 15, 13, 6, 7, 3, 2, 5, 4, 1, 0 ] ],
  SmallSchemeIdentification := 18096 )