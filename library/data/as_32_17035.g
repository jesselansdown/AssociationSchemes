rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -4*E(4), 4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 4*E(4), -4*E(4), -4*E(4), 4*E(4), 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 4, 4, -4, -4, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 0, 1, 6, 7, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 1, 0, 7, 6, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15 ], [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 14, 14, 15, 
          15, 15, 15, 12, 12, 12, 12, 13, 13, 13, 13 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 14, 14, 15, 15, 15, 15, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 12, 12, 12, 12, 13, 13, 13, 13 ], [ 6, 7, 5, 4, 2, 3, 1, 0, 
          11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 12, 12, 12, 12, 13, 13, 13, 13 ], [ 9, 9, 8, 8, 11, 11, 10, 10, 0, 1, 2, 3, 4, 5, 6, 7, 13, 13, 13, 13, 12, 12, 
          12, 12, 15, 15, 15, 15, 14, 14, 14, 14 ], [ 9, 9, 8, 8, 11, 11, 10, 10, 1, 0, 3, 2, 5, 4, 7, 6, 13, 13, 13, 13, 12, 12, 12, 12, 15, 15, 15, 15, 14, 14, 14, 14 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 3, 2, 0, 1, 6, 7, 5, 4, 13, 13, 13, 13, 12, 12, 12, 12, 15, 15, 15, 15, 14, 14, 14, 14 ], [ 8, 8, 9, 9, 10, 10, 11, 11, 
          2, 3, 1, 0, 7, 6, 4, 5, 13, 13, 13, 13, 12, 12, 12, 12, 15, 15, 15, 15, 14, 14, 14, 14 ], [ 11, 11, 10, 10, 9, 9, 8, 8, 5, 4, 7, 6, 0, 1, 2, 3, 15, 15, 15, 15, 14, 14, 
          14, 14, 13, 13, 13, 13, 12, 12, 12, 12 ], [ 11, 11, 10, 10, 9, 9, 8, 8, 4, 5, 6, 7, 1, 0, 3, 2, 15, 15, 15, 15, 14, 14, 14, 14, 13, 13, 13, 13, 12, 12, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 7, 6, 4, 5, 3, 2, 0, 1, 15, 15, 15, 15, 14, 14, 14, 14, 13, 13, 13, 13, 12, 12, 12, 12 ], [ 10, 10, 11, 11, 8, 8, 9, 9, 
          6, 7, 5, 4, 2, 3, 1, 0, 15, 15, 15, 15, 14, 14, 14, 14, 13, 13, 13, 13, 12, 12, 12, 12 ], [ 13, 13, 13, 13, 15, 15, 15, 15, 12, 12, 12, 12, 14, 14, 14, 14, 0, 1, 2, 3, 8, 8, 
          9, 9, 4, 5, 6, 7, 10, 10, 11, 11 ], [ 13, 13, 13, 13, 15, 15, 15, 15, 12, 12, 12, 12, 14, 14, 14, 14, 1, 0, 3, 2, 8, 8, 9, 9, 5, 4, 7, 6, 10, 10, 11, 11 ], 
      [ 13, 13, 13, 13, 15, 15, 15, 15, 12, 12, 12, 12, 14, 14, 14, 14, 3, 2, 0, 1, 9, 9, 8, 8, 6, 7, 5, 4, 11, 11, 10, 10 ], 
      [ 13, 13, 13, 13, 15, 15, 15, 15, 12, 12, 12, 12, 14, 14, 14, 14, 2, 3, 1, 0, 9, 9, 8, 8, 7, 6, 4, 5, 11, 11, 10, 10 ], 
      [ 12, 12, 12, 12, 14, 14, 14, 14, 13, 13, 13, 13, 15, 15, 15, 15, 9, 9, 8, 8, 0, 1, 2, 3, 11, 11, 10, 10, 4, 5, 6, 7 ], [ 12, 12, 12, 12, 14, 14, 14, 14, 13, 13, 13, 13, 15, 15, 15, 15, 9, 9, 8, 
          8, 1, 0, 3, 2, 11, 11, 10, 10, 5, 4, 7, 6 ], [ 12, 12, 12, 12, 14, 14, 14, 14, 13, 13, 13, 13, 15, 15, 15, 15, 8, 8, 9, 9, 3, 2, 0, 1, 10, 10, 11, 11, 6, 7, 5, 4 ], 
      [ 12, 12, 12, 12, 14, 14, 14, 14, 13, 13, 13, 13, 15, 15, 15, 15, 8, 8, 9, 9, 2, 3, 1, 0, 10, 10, 11, 11, 7, 6, 4, 5 ], 
      [ 15, 15, 15, 15, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 12, 12, 5, 4, 7, 6, 10, 10, 11, 11, 0, 1, 2, 3, 8, 8, 9, 9 ], 
      [ 15, 15, 15, 15, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 12, 12, 4, 5, 6, 7, 10, 10, 11, 11, 1, 0, 3, 2, 8, 8, 9, 9 ], [ 15, 15, 15, 15, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 12, 12, 7, 6, 4, 
          5, 11, 11, 10, 10, 3, 2, 0, 1, 9, 9, 8, 8 ], [ 15, 15, 15, 15, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 12, 12, 6, 7, 5, 4, 11, 11, 10, 10, 2, 3, 1, 0, 9, 9, 8, 8 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 15, 15, 15, 15, 13, 13, 13, 13, 11, 11, 10, 10, 5, 4, 7, 6, 9, 9, 8, 8, 0, 1, 2, 3 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 15, 15, 15, 15, 13, 13, 13, 13, 11, 11, 10, 10, 4, 5, 6, 7, 9, 9, 8, 8, 1, 0, 3, 2 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 15, 15, 15, 15, 13, 13, 13, 13, 10, 10, 11, 11, 7, 6, 4, 5, 8, 8, 9, 9, 3, 2, 0, 1 ], [ 14, 14, 14, 14, 12, 12, 12, 12, 15, 15, 15, 15, 13, 13, 13, 13, 10, 10, 
          11, 11, 6, 7, 5, 4, 8, 8, 9, 9, 2, 3, 1, 0 ] ],
  SmallSchemeIdentification := 17035 )