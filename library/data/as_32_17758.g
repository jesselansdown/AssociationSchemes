rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2, 2, -2, -2, 1 ], [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2, -2, 2, 2, 
          1 ], [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2, -2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], [ 2, 2, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 18, 18, 19, 19, 16, 16, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 18, 18, 19, 19, 16, 16, 17, 17 ], [ 4, 5, 6, 7, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 
          12, 13, 13, 17, 17, 16, 16, 19, 19, 18, 18 ], [ 5, 4, 7, 6, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13, 17, 17, 16, 16, 19, 19, 18, 18 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 14, 14, 13, 13, 12, 12, 19, 19, 18, 18, 17, 17, 16, 16 ], [ 7, 6, 5, 4, 3, 2, 1, 0, 
          11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 14, 14, 13, 13, 12, 12, 19, 19, 18, 18, 17, 17, 16, 16 ], [ 9, 9, 8, 8, 11, 11, 10, 10, 0, 1, 2, 3, 4, 5, 6, 7, 16, 16, 18, 18, 17, 17, 
          19, 19, 13, 13, 15, 15, 12, 12, 14, 14 ], [ 9, 9, 8, 8, 11, 11, 10, 10, 1, 0, 3, 2, 5, 4, 7, 6, 16, 16, 18, 18, 17, 17, 19, 19, 13, 13, 15, 15, 12, 12, 14, 14 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 2, 3, 0, 1, 6, 7, 4, 5, 18, 18, 16, 16, 19, 19, 17, 17, 12, 12, 14, 14, 13, 13, 15, 15 ], [ 8, 8, 9, 9, 10, 10, 11, 11, 
          3, 2, 1, 0, 7, 6, 5, 4, 18, 18, 16, 16, 19, 19, 17, 17, 12, 12, 14, 14, 13, 13, 15, 15 ], [ 11, 11, 10, 10, 9, 9, 8, 8, 4, 5, 6, 7, 0, 1, 2, 3, 17, 17, 19, 19, 16, 16, 
          18, 18, 15, 15, 13, 13, 14, 14, 12, 12 ], [ 11, 11, 10, 10, 9, 9, 8, 8, 5, 4, 7, 6, 1, 0, 3, 2, 17, 17, 19, 19, 16, 16, 18, 18, 15, 15, 13, 13, 14, 14, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 6, 7, 4, 5, 2, 3, 0, 1, 19, 19, 17, 17, 18, 18, 16, 16, 14, 14, 12, 12, 15, 15, 13, 13 ], [ 10, 10, 11, 11, 8, 8, 9, 9, 
          7, 6, 5, 4, 3, 2, 1, 0, 19, 19, 17, 17, 18, 18, 16, 16, 14, 14, 12, 12, 15, 15, 13, 13 ], [ 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 19, 19, 16, 16, 18, 18, 0, 1, 2, 3, 4, 5, 
          6, 7, 11, 11, 9, 9, 10, 10, 8, 8 ], [ 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 19, 19, 16, 16, 18, 18, 1, 0, 3, 2, 5, 4, 7, 6, 11, 11, 9, 9, 10, 10, 8, 8 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 19, 19, 17, 17, 18, 18, 16, 16, 2, 3, 0, 1, 6, 7, 4, 5, 10, 10, 8, 8, 11, 11, 9, 9 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 19, 19, 17, 17, 18, 18, 16, 16, 3, 2, 1, 0, 7, 6, 5, 4, 10, 10, 8, 8, 11, 11, 9, 9 ], 
      [ 15, 15, 14, 14, 13, 13, 12, 12, 16, 16, 18, 18, 17, 17, 19, 19, 4, 5, 6, 7, 0, 1, 2, 3, 9, 9, 11, 11, 8, 8, 10, 10 ], [ 15, 15, 14, 14, 13, 13, 12, 12, 16, 16, 18, 18, 17, 17, 19, 19, 5, 4, 7, 
          6, 1, 0, 3, 2, 9, 9, 11, 11, 8, 8, 10, 10 ], [ 14, 14, 15, 15, 12, 12, 13, 13, 18, 18, 16, 16, 19, 19, 17, 17, 6, 7, 4, 5, 2, 3, 0, 1, 8, 8, 10, 10, 9, 9, 11, 11 ], 
      [ 14, 14, 15, 15, 12, 12, 13, 13, 18, 18, 16, 16, 19, 19, 17, 17, 7, 6, 5, 4, 3, 2, 1, 0, 8, 8, 10, 10, 9, 9, 11, 11 ], 
      [ 17, 17, 19, 19, 16, 16, 18, 18, 12, 12, 13, 13, 14, 14, 15, 15, 10, 10, 11, 11, 8, 8, 9, 9, 0, 1, 4, 5, 2, 3, 6, 7 ], 
      [ 17, 17, 19, 19, 16, 16, 18, 18, 12, 12, 13, 13, 14, 14, 15, 15, 10, 10, 11, 11, 8, 8, 9, 9, 1, 0, 5, 4, 3, 2, 7, 6 ], [ 16, 16, 18, 18, 17, 17, 19, 19, 14, 14, 15, 15, 12, 12, 13, 13, 8, 8, 9, 
          9, 10, 10, 11, 11, 4, 5, 0, 1, 6, 7, 2, 3 ], [ 16, 16, 18, 18, 17, 17, 19, 19, 14, 14, 15, 15, 12, 12, 13, 13, 8, 8, 9, 9, 10, 10, 11, 11, 5, 4, 1, 0, 7, 6, 3, 2 ], 
      [ 19, 19, 17, 17, 18, 18, 16, 16, 13, 13, 12, 12, 15, 15, 14, 14, 11, 11, 10, 10, 9, 9, 8, 8, 2, 3, 6, 7, 0, 1, 4, 5 ], 
      [ 19, 19, 17, 17, 18, 18, 16, 16, 13, 13, 12, 12, 15, 15, 14, 14, 11, 11, 10, 10, 9, 9, 8, 8, 3, 2, 7, 6, 1, 0, 5, 4 ], 
      [ 18, 18, 16, 16, 19, 19, 17, 17, 15, 15, 14, 14, 13, 13, 12, 12, 9, 9, 8, 8, 11, 11, 10, 10, 6, 7, 2, 3, 4, 5, 0, 1 ], [ 18, 18, 16, 16, 19, 19, 17, 17, 15, 15, 14, 14, 13, 13, 12, 12, 9, 9, 8, 
          8, 11, 11, 10, 10, 7, 6, 3, 2, 5, 4, 1, 0 ] ],
  SmallSchemeIdentification := 17758 )