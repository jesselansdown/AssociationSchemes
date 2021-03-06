rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], [ 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, 4, 4, -4, -4, 1 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -4*E(4), 4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 4*E(4), -4*E(4), -4*E(4), 4*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 4 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 2, 3, 0, 1, 8, 9, 10, 11, 4, 5, 6, 7, 14, 15, 12, 13, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 9, 8, 11, 10, 5, 4, 7, 6, 15, 14, 13, 12, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 4, 5, 9, 8, 0, 1, 12, 13, 3, 2, 15, 14, 6, 7, 11, 10, 18, 18, 18, 18, 
          19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 5, 4, 8, 9, 1, 0, 13, 12, 2, 3, 14, 15, 7, 6, 10, 11, 18, 18, 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 6, 7, 11, 10, 13, 12, 0, 1, 14, 15, 3, 2, 5, 4, 8, 9, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 7, 6, 10, 11, 12, 
          13, 1, 0, 15, 14, 2, 3, 4, 5, 9, 8, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 9, 8, 4, 5, 3, 2, 15, 14, 0, 1, 12, 13, 11, 10, 6, 7, 16, 16, 16, 16, 17, 
          17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], [ 8, 9, 5, 4, 2, 3, 14, 15, 1, 0, 13, 12, 10, 11, 7, 6, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 11, 10, 6, 7, 14, 15, 3, 2, 13, 12, 0, 1, 8, 9, 5, 4, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 10, 11, 7, 6, 15, 14, 
          2, 3, 12, 13, 1, 0, 9, 8, 4, 5, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 13, 12, 15, 14, 6, 7, 5, 4, 10, 11, 9, 8, 0, 1, 2, 3, 17, 17, 17, 17, 16, 
          16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 12, 13, 14, 15, 7, 6, 4, 5, 11, 10, 8, 9, 1, 0, 3, 2, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], 
      [ 15, 14, 13, 12, 10, 11, 9, 8, 6, 7, 5, 4, 2, 3, 0, 1, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 14, 15, 12, 13, 11, 10, 
          8, 9, 7, 6, 4, 5, 3, 2, 1, 0, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 17, 17, 19, 19, 19, 19, 18, 18, 17, 17, 16, 16, 16, 16, 18, 18, 0, 1, 8, 9, 10, 
          11, 12, 13, 2, 3, 4, 5, 6, 7, 14, 15 ], [ 17, 17, 19, 19, 19, 19, 18, 18, 17, 17, 16, 16, 16, 16, 18, 18, 1, 0, 9, 8, 11, 10, 13, 12, 3, 2, 5, 4, 7, 6, 15, 14 ], 
      [ 17, 17, 19, 19, 19, 19, 18, 18, 17, 17, 16, 16, 16, 16, 18, 18, 9, 8, 0, 1, 12, 13, 11, 10, 4, 5, 3, 2, 15, 14, 6, 7 ], 
      [ 17, 17, 19, 19, 19, 19, 18, 18, 17, 17, 16, 16, 16, 16, 18, 18, 8, 9, 1, 0, 13, 12, 10, 11, 5, 4, 2, 3, 14, 15, 7, 6 ], 
      [ 16, 16, 18, 18, 18, 18, 19, 19, 16, 16, 17, 17, 17, 17, 19, 19, 11, 10, 13, 12, 0, 1, 8, 9, 6, 7, 14, 15, 3, 2, 5, 4 ], [ 16, 16, 18, 18, 18, 18, 19, 19, 16, 16, 17, 17, 17, 17, 19, 19, 10, 
          11, 12, 13, 1, 0, 9, 8, 7, 6, 15, 14, 2, 3, 4, 5 ], [ 16, 16, 18, 18, 18, 18, 19, 19, 16, 16, 17, 17, 17, 17, 19, 19, 13, 12, 10, 11, 9, 8, 0, 1, 15, 14, 6, 7, 5, 4, 2, 3 ], 
      [ 16, 16, 18, 18, 18, 18, 19, 19, 16, 16, 17, 17, 17, 17, 19, 19, 12, 13, 11, 10, 8, 9, 1, 0, 14, 15, 7, 6, 4, 5, 3, 2 ], [ 19, 19, 17, 17, 
          17, 17, 16, 16, 19, 19, 18, 18, 18, 18, 16, 16, 2, 3, 4, 5, 6, 7, 14, 15, 0, 1, 8, 9, 10, 11, 12, 13 ], [ 19, 19, 17, 17, 17, 17, 16, 16, 19, 19, 18, 18, 18, 18, 16, 16, 3, 2, 5, 
          4, 7, 6, 15, 14, 1, 0, 9, 8, 11, 10, 13, 12 ], [ 19, 19, 17, 17, 17, 17, 16, 16, 19, 19, 18, 18, 18, 18, 16, 16, 4, 5, 3, 2, 15, 14, 6, 7, 9, 8, 0, 1, 12, 13, 11, 10 ], 
      [ 19, 19, 17, 17, 17, 17, 16, 16, 19, 19, 18, 18, 18, 18, 16, 16, 5, 4, 2, 3, 14, 15, 7, 6, 8, 9, 1, 0, 13, 12, 10, 11 ], 
      [ 18, 18, 16, 16, 16, 16, 17, 17, 18, 18, 19, 19, 19, 19, 17, 17, 6, 7, 14, 15, 3, 2, 5, 4, 11, 10, 13, 12, 0, 1, 8, 9 ], 
      [ 18, 18, 16, 16, 16, 16, 17, 17, 18, 18, 19, 19, 19, 19, 17, 17, 7, 6, 15, 14, 2, 3, 4, 5, 10, 11, 12, 13, 1, 0, 9, 8 ], [ 18, 18, 16, 16, 16, 16, 17, 17, 18, 18, 19, 19, 19, 19, 17, 17, 15, 
          14, 6, 7, 5, 4, 2, 3, 13, 12, 10, 11, 9, 8, 0, 1 ], [ 18, 18, 16, 16, 16, 16, 17, 17, 18, 18, 19, 19, 19, 19, 17, 17, 14, 15, 7, 6, 4, 5, 3, 2, 12, 13, 11, 10, 8, 9, 1, 0 ] ],
  SmallSchemeIdentification := 17637 )