rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 4, 4, -4, -4, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 2, -2, 2, -2, 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, -1, 1, 1, -1, -E(4), E(4), E(4), -E(4), E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, E(4), -E(4), -E(4), E(4), -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 2 
         ], [ 1, -1, -1, 1, 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, -1, 1, -1, 1, 
          -E(4), E(4), -E(4), E(4), E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, -1, 1, -1, 1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 0, 0, 2 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 13, 14, 15, 8, 9, 10, 11, 16, 16, 16, 16, 
          17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], [ 5, 4, 7, 6, 1, 0, 3, 2, 13, 12, 15, 14, 9, 8, 11, 10, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 14, 15, 12, 13, 10, 11, 8, 9, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], [ 7, 6, 5, 4, 3, 2, 
          1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 9, 8, 11, 10, 13, 12, 15, 14, 0, 1, 2, 3, 4, 5, 6, 7, 18, 18, 18, 18, 19, 
          19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 8, 9, 10, 11, 12, 13, 14, 15, 1, 0, 3, 2, 5, 4, 7, 6, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 11, 10, 9, 8, 15, 14, 13, 12, 2, 3, 0, 1, 6, 7, 4, 5, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 10, 11, 8, 9, 14, 15, 
          12, 13, 3, 2, 1, 0, 7, 6, 5, 4, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 13, 12, 15, 14, 9, 8, 11, 10, 4, 5, 6, 7, 0, 1, 2, 3, 18, 18, 18, 18, 19, 
          19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 12, 13, 14, 15, 8, 9, 10, 11, 5, 4, 7, 6, 1, 0, 3, 2, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 15, 14, 13, 12, 11, 10, 9, 8, 6, 7, 4, 5, 2, 3, 0, 1, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 14, 15, 12, 13, 10, 11, 
          8, 9, 7, 6, 5, 4, 3, 2, 1, 0, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 17, 16, 17, 16, 17, 16, 17, 16, 19, 18, 19, 18, 19, 18, 19, 18, 0, 2, 4, 6, 1, 
          3, 5, 7, 8, 10, 12, 14, 9, 11, 13, 15 ], [ 17, 16, 17, 16, 17, 16, 17, 16, 19, 18, 19, 18, 19, 18, 19, 18, 2, 0, 6, 4, 3, 1, 7, 5, 10, 8, 14, 12, 11, 9, 15, 13 ], 
      [ 17, 16, 17, 16, 17, 16, 17, 16, 19, 18, 19, 18, 19, 18, 19, 18, 4, 6, 0, 2, 5, 7, 1, 3, 12, 14, 8, 10, 13, 15, 9, 11 ], 
      [ 17, 16, 17, 16, 17, 16, 17, 16, 19, 18, 19, 18, 19, 18, 19, 18, 6, 4, 2, 0, 7, 5, 3, 1, 14, 12, 10, 8, 15, 13, 11, 9 ], 
      [ 16, 17, 16, 17, 16, 17, 16, 17, 18, 19, 18, 19, 18, 19, 18, 19, 1, 3, 5, 7, 0, 2, 4, 6, 9, 11, 13, 15, 8, 10, 12, 14 ], [ 16, 17, 16, 17, 16, 17, 16, 17, 18, 19, 18, 19, 18, 19, 18, 19, 3, 1, 
          7, 5, 2, 0, 6, 4, 11, 9, 15, 13, 10, 8, 14, 12 ], [ 16, 17, 16, 17, 16, 17, 16, 17, 18, 19, 18, 19, 18, 19, 18, 19, 5, 7, 1, 3, 4, 6, 0, 2, 13, 15, 9, 11, 12, 14, 8, 10 ], 
      [ 16, 17, 16, 17, 16, 17, 16, 17, 18, 19, 18, 19, 18, 19, 18, 19, 7, 5, 3, 1, 6, 4, 2, 0, 15, 13, 11, 9, 14, 12, 10, 8 ], 
      [ 19, 18, 19, 18, 19, 18, 19, 18, 16, 17, 16, 17, 16, 17, 16, 17, 9, 11, 13, 15, 8, 10, 12, 14, 0, 2, 4, 6, 1, 3, 5, 7 ], 
      [ 19, 18, 19, 18, 19, 18, 19, 18, 16, 17, 16, 17, 16, 17, 16, 17, 11, 9, 15, 13, 10, 8, 14, 12, 2, 0, 6, 4, 3, 1, 7, 5 ], [ 19, 18, 19, 18, 19, 18, 19, 18, 16, 17, 16, 17, 16, 17, 16, 17, 13, 
          15, 9, 11, 12, 14, 8, 10, 4, 6, 0, 2, 5, 7, 1, 3 ], [ 19, 18, 19, 18, 19, 18, 19, 18, 16, 17, 16, 17, 16, 17, 16, 17, 15, 13, 11, 9, 14, 12, 10, 8, 6, 4, 2, 0, 7, 5, 3, 1 ], 
      [ 18, 19, 18, 19, 18, 19, 18, 19, 17, 16, 17, 16, 17, 16, 17, 16, 8, 10, 12, 14, 9, 11, 13, 15, 1, 3, 5, 7, 0, 2, 4, 6 ], 
      [ 18, 19, 18, 19, 18, 19, 18, 19, 17, 16, 17, 16, 17, 16, 17, 16, 10, 8, 14, 12, 11, 9, 15, 13, 3, 1, 7, 5, 2, 0, 6, 4 ], 
      [ 18, 19, 18, 19, 18, 19, 18, 19, 17, 16, 17, 16, 17, 16, 17, 16, 12, 14, 8, 10, 13, 15, 9, 11, 5, 7, 1, 3, 4, 6, 0, 2 ], [ 18, 19, 18, 19, 18, 19, 18, 19, 17, 16, 17, 16, 17, 16, 17, 16, 14, 
          12, 10, 8, 15, 13, 11, 9, 7, 5, 3, 1, 6, 4, 2, 0 ] ],
  SmallSchemeIdentification := 17638 )