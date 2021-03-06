rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), 1 ], [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(8)^3, -2*E(8), 
          2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), 1 ], [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2*E(8), 2*E(8)^3, 
          -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 
          -2*E(8), 2*E(8)^3, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 14, 14, 15, 15, 12, 12, 13, 13, 18, 18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 16, 16, 17, 17, 18, 18, 19, 19, 12, 12, 13, 13, 14, 14, 15, 15 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 18, 18, 19, 19, 16, 16, 17, 17, 14, 14, 15, 15, 12, 12, 13, 13 ], [ 4, 5, 6, 7, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 15, 15, 14, 
          14, 13, 13, 16, 16, 19, 19, 18, 18, 17, 17 ], [ 5, 4, 7, 6, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 13, 13, 12, 12, 15, 15, 18, 18, 17, 17, 16, 16, 19, 19 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 16, 16, 19, 19, 18, 18, 17, 17, 12, 12, 15, 15, 14, 14, 13, 13 ], [ 7, 6, 5, 4, 3, 2, 1, 0, 
          11, 11, 10, 10, 9, 9, 8, 8, 18, 18, 17, 17, 16, 16, 19, 19, 14, 14, 13, 13, 12, 12, 15, 15 ], [ 9, 9, 8, 8, 11, 11, 10, 10, 0, 1, 2, 3, 4, 5, 6, 7, 13, 15, 16, 18, 13, 15, 
          16, 18, 17, 19, 12, 14, 17, 19, 12, 14 ], [ 9, 9, 8, 8, 11, 11, 10, 10, 1, 0, 3, 2, 5, 4, 7, 6, 15, 13, 18, 16, 15, 13, 18, 16, 19, 17, 14, 12, 19, 17, 14, 12 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 2, 3, 0, 1, 6, 7, 4, 5, 17, 19, 12, 14, 17, 19, 12, 14, 13, 15, 16, 18, 13, 15, 16, 18 ], [ 8, 8, 9, 9, 10, 10, 11, 11, 
          3, 2, 1, 0, 7, 6, 5, 4, 19, 17, 14, 12, 19, 17, 14, 12, 15, 13, 18, 16, 15, 13, 18, 16 ], [ 11, 11, 10, 10, 9, 9, 8, 8, 4, 5, 6, 7, 0, 1, 2, 3, 15, 13, 16, 18, 15, 13, 
          16, 18, 19, 17, 12, 14, 19, 17, 12, 14 ], [ 11, 11, 10, 10, 9, 9, 8, 8, 5, 4, 7, 6, 1, 0, 3, 2, 13, 15, 18, 16, 13, 15, 18, 16, 17, 19, 14, 12, 17, 19, 14, 12 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 6, 7, 4, 5, 2, 3, 0, 1, 19, 17, 12, 14, 19, 17, 12, 14, 15, 13, 16, 18, 15, 13, 16, 18 ], [ 10, 10, 11, 11, 8, 8, 9, 9, 
          7, 6, 5, 4, 3, 2, 1, 0, 17, 19, 14, 12, 17, 19, 14, 12, 13, 15, 18, 16, 13, 15, 18, 16 ], [ 13, 15, 17, 19, 13, 15, 17, 19, 12, 14, 16, 18, 14, 12, 18, 16, 0, 5, 9, 11, 4, 1, 
          11, 9, 2, 7, 8, 10, 6, 3, 10, 8 ], [ 13, 15, 17, 19, 13, 15, 17, 19, 14, 12, 18, 16, 12, 14, 16, 18, 5, 0, 11, 9, 1, 4, 9, 11, 7, 2, 10, 8, 3, 6, 8, 10 ], 
      [ 12, 14, 16, 18, 14, 12, 18, 16, 17, 19, 13, 15, 17, 19, 13, 15, 8, 10, 0, 4, 10, 8, 5, 1, 9, 11, 2, 6, 11, 9, 7, 3 ], 
      [ 12, 14, 16, 18, 14, 12, 18, 16, 19, 17, 15, 13, 19, 17, 15, 13, 10, 8, 4, 0, 8, 10, 1, 5, 11, 9, 6, 2, 9, 11, 3, 7 ], 
      [ 15, 13, 19, 17, 15, 13, 19, 17, 12, 14, 16, 18, 14, 12, 18, 16, 4, 1, 11, 9, 0, 5, 9, 11, 6, 3, 10, 8, 2, 7, 8, 10 ], [ 15, 13, 19, 17, 15, 13, 19, 17, 14, 12, 18, 16, 12, 14, 16, 18, 1, 4, 9, 
          11, 5, 0, 11, 9, 3, 6, 8, 10, 7, 2, 10, 8 ], [ 14, 12, 18, 16, 12, 14, 16, 18, 17, 19, 13, 15, 17, 19, 13, 15, 10, 8, 5, 1, 8, 10, 0, 4, 11, 9, 7, 3, 9, 11, 2, 6 ], 
      [ 14, 12, 18, 16, 12, 14, 16, 18, 19, 17, 15, 13, 19, 17, 15, 13, 8, 10, 1, 5, 10, 8, 4, 0, 9, 11, 3, 7, 11, 9, 6, 2 ], 
      [ 17, 19, 13, 15, 17, 19, 13, 15, 16, 18, 12, 14, 18, 16, 14, 12, 2, 7, 8, 10, 6, 3, 10, 8, 0, 5, 9, 11, 4, 1, 11, 9 ], 
      [ 17, 19, 13, 15, 17, 19, 13, 15, 18, 16, 14, 12, 16, 18, 12, 14, 7, 2, 10, 8, 3, 6, 8, 10, 5, 0, 11, 9, 1, 4, 9, 11 ], [ 16, 18, 12, 14, 18, 16, 14, 12, 13, 15, 17, 19, 13, 15, 17, 19, 9, 11, 
          2, 6, 11, 9, 7, 3, 8, 10, 0, 4, 10, 8, 5, 1 ], [ 16, 18, 12, 14, 18, 16, 14, 12, 15, 13, 19, 17, 15, 13, 19, 17, 11, 9, 6, 2, 9, 11, 3, 7, 10, 8, 4, 0, 8, 10, 1, 5 ], 
      [ 19, 17, 15, 13, 19, 17, 15, 13, 16, 18, 12, 14, 18, 16, 14, 12, 6, 3, 10, 8, 2, 7, 8, 10, 4, 1, 11, 9, 0, 5, 9, 11 ], 
      [ 19, 17, 15, 13, 19, 17, 15, 13, 18, 16, 14, 12, 16, 18, 12, 14, 3, 6, 8, 10, 7, 2, 10, 8, 1, 4, 9, 11, 5, 0, 11, 9 ], 
      [ 18, 16, 14, 12, 16, 18, 12, 14, 13, 15, 17, 19, 13, 15, 17, 19, 11, 9, 7, 3, 9, 11, 2, 6, 10, 8, 5, 1, 8, 10, 0, 4 ], [ 18, 16, 14, 12, 16, 18, 12, 14, 15, 13, 19, 17, 15, 13, 19, 17, 9, 11, 
          3, 7, 11, 9, 6, 2, 8, 10, 1, 5, 10, 8, 4, 0 ] ],
  SmallSchemeIdentification := 17769 )