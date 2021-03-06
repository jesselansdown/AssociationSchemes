rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 4, 4, -4, -4, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -4*E(4), 4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 4*E(4), -4*E(4), -4*E(4), 4*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), 1, 1, -1, -1, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), E(4), -E(4), E(4), -E(4), -1, -1, 1, 1, 0, 0, 0, 0, 2 
         ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), E(4), -1, -1, 1, 1, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), 
          -E(4), E(4), -E(4), E(4), -E(4), 1, 1, -1, -1, 0, 0, 0, 0, 2 ], [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 13, 12, 15, 14, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], [ 5, 4, 7, 6, 0, 1, 2, 3, 12, 14, 13, 15, 9, 11, 8, 10, 18, 18, 18, 18, 
          19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 14, 12, 15, 13, 8, 10, 9, 11, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 13, 15, 12, 14, 11, 9, 10, 8, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 6, 7, 4, 5, 3, 2, 
          1, 0, 15, 13, 14, 12, 10, 8, 11, 9, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 9, 8, 11, 10, 13, 15, 12, 14, 0, 1, 2, 3, 7, 5, 6, 4, 19, 19, 19, 19, 18, 
          18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 8, 9, 10, 11, 15, 13, 14, 12, 1, 0, 3, 2, 6, 4, 7, 5, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], 
      [ 11, 10, 9, 8, 12, 14, 13, 15, 2, 3, 0, 1, 5, 7, 4, 6, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 10, 11, 8, 9, 14, 12, 
          15, 13, 3, 2, 1, 0, 4, 6, 5, 7, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 13, 15, 12, 14, 8, 9, 10, 11, 6, 7, 4, 5, 0, 2, 1, 3, 17, 17, 17, 17, 16, 
          16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 12, 14, 13, 15, 10, 11, 8, 9, 4, 5, 6, 7, 2, 0, 3, 1, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], 
      [ 15, 13, 14, 12, 9, 8, 11, 10, 7, 6, 5, 4, 1, 3, 0, 2, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 14, 12, 15, 13, 11, 10, 
          9, 8, 5, 4, 7, 6, 3, 1, 2, 0, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 17, 17, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 0, 1, 2, 3, 12, 
          13, 14, 15, 4, 5, 6, 7, 8, 9, 10, 11 ], [ 17, 17, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 1, 0, 3, 2, 14, 15, 12, 13, 5, 4, 7, 6, 9, 8, 11, 10 ], 
      [ 17, 17, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 2, 3, 0, 1, 13, 12, 15, 14, 6, 7, 4, 5, 10, 11, 8, 9 ], 
      [ 17, 17, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 3, 2, 1, 0, 15, 14, 13, 12, 7, 6, 5, 4, 11, 10, 9, 8 ], 
      [ 16, 16, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 13, 15, 12, 14, 0, 2, 1, 3, 8, 9, 10, 11, 6, 7, 4, 5 ], [ 16, 16, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 12, 
          14, 13, 15, 2, 0, 3, 1, 10, 11, 8, 9, 4, 5, 6, 7 ], [ 16, 16, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 15, 13, 14, 12, 1, 3, 0, 2, 9, 8, 11, 10, 7, 6, 5, 4 ], 
      [ 16, 16, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 14, 12, 15, 13, 3, 1, 2, 0, 11, 10, 9, 8, 5, 4, 7, 6 ], [ 19, 19, 19, 19, 
          17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 18, 18, 5, 4, 7, 6, 9, 11, 8, 10, 0, 1, 2, 3, 12, 14, 13, 15 ], [ 19, 19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 18, 18, 4, 5, 6, 
          7, 8, 10, 9, 11, 1, 0, 3, 2, 14, 12, 15, 13 ], [ 19, 19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 18, 18, 7, 6, 5, 4, 11, 9, 10, 8, 2, 3, 0, 1, 13, 15, 12, 14 ], 
      [ 19, 19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 18, 18, 6, 7, 4, 5, 10, 8, 11, 9, 3, 2, 1, 0, 15, 13, 14, 12 ], 
      [ 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 19, 19, 9, 8, 11, 10, 7, 5, 6, 4, 13, 15, 12, 14, 0, 1, 2, 3 ], 
      [ 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 19, 19, 8, 9, 10, 11, 6, 4, 7, 5, 15, 13, 14, 12, 1, 0, 3, 2 ], [ 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 19, 19, 11, 
          10, 9, 8, 5, 7, 4, 6, 12, 14, 13, 15, 2, 3, 0, 1 ], [ 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 19, 19, 10, 11, 8, 9, 4, 6, 5, 7, 14, 12, 15, 13, 3, 2, 1, 0 ] ],
  SmallSchemeIdentification := 17683 )