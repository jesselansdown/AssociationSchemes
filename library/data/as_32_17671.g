rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), -4, 4, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), 4, -4, -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -4, 4, -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), 4, -4, 4*E(4), -4*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 4, 4, -4, -4, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(8), -E(8)^3, -E(8), E(8)^3, -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), -E(8), E(8)^3, E(8), -E(8)^3, 
          E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), E(8)^3, -E(8), -E(8)^3, E(8), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(8)^3, E(8), E(8)^3, -E(8), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 
          -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -E(4), E(4), -E(4), E(4), E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 0, 0, 2 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 12, 13, 14, 15, 8, 9, 10, 11, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 14, 15, 12, 13, 10, 11, 8, 9, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19 ], [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 10, 11, 8, 13, 14, 15, 12, 17, 17, 17, 17, 
          16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 8, 9, 10, 15, 12, 13, 14, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 13, 14, 15, 12, 9, 10, 11, 8, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 6, 7, 4, 5, 3, 2, 
          1, 0, 15, 12, 13, 14, 11, 8, 9, 10, 17, 17, 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 18, 18, 18, 18 ], [ 9, 11, 13, 15, 8, 10, 12, 14, 0, 5, 1, 4, 2, 7, 3, 6, 18, 18, 18, 18, 19, 
          19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 8, 10, 12, 14, 11, 9, 15, 13, 4, 0, 5, 1, 6, 2, 7, 3, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 11, 9, 15, 13, 10, 8, 14, 12, 1, 4, 0, 5, 3, 6, 2, 7, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 10, 8, 14, 12, 9, 11, 
          13, 15, 5, 1, 4, 0, 7, 3, 6, 2, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 13, 15, 9, 11, 12, 14, 8, 10, 2, 7, 3, 6, 0, 5, 1, 4, 18, 18, 18, 18, 19, 
          19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 12, 14, 8, 10, 15, 13, 11, 9, 6, 2, 7, 3, 4, 0, 5, 1, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 15, 13, 11, 9, 14, 12, 10, 8, 3, 6, 2, 7, 1, 4, 0, 5, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 14, 12, 10, 8, 13, 15, 
          9, 11, 7, 3, 6, 2, 5, 1, 4, 0, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 16, 16, 16, 16, 17, 17, 17, 17, 19, 18, 19, 18, 19, 18, 19, 18, 0, 1, 2, 3, 4, 
          5, 6, 7, 9, 11, 13, 15, 8, 10, 12, 14 ], [ 16, 16, 16, 16, 17, 17, 17, 17, 19, 18, 19, 18, 19, 18, 19, 18, 1, 0, 3, 2, 5, 4, 7, 6, 11, 9, 15, 13, 10, 8, 14, 12 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 19, 18, 19, 18, 19, 18, 19, 18, 2, 3, 0, 1, 6, 7, 4, 5, 13, 15, 9, 11, 12, 14, 8, 10 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 19, 18, 19, 18, 19, 18, 19, 18, 3, 2, 1, 0, 7, 6, 5, 4, 15, 13, 11, 9, 14, 12, 10, 8 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 18, 19, 18, 19, 18, 19, 18, 19, 5, 4, 7, 6, 0, 1, 2, 3, 10, 8, 14, 12, 9, 11, 13, 15 ], [ 17, 17, 17, 17, 16, 16, 16, 16, 18, 19, 18, 19, 18, 19, 18, 19, 4, 5, 
          6, 7, 1, 0, 3, 2, 8, 10, 12, 14, 11, 9, 15, 13 ], [ 17, 17, 17, 17, 16, 16, 16, 16, 18, 19, 18, 19, 18, 19, 18, 19, 7, 6, 5, 4, 2, 3, 0, 1, 14, 12, 10, 8, 13, 15, 9, 11 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 18, 19, 18, 19, 18, 19, 18, 19, 6, 7, 4, 5, 3, 2, 1, 0, 12, 14, 8, 10, 15, 13, 11, 9 ], 
      [ 19, 19, 19, 19, 18, 18, 18, 18, 17, 16, 17, 16, 17, 16, 17, 16, 8, 10, 12, 14, 11, 9, 15, 13, 0, 1, 2, 3, 4, 5, 6, 7 ], 
      [ 19, 19, 19, 19, 18, 18, 18, 18, 17, 16, 17, 16, 17, 16, 17, 16, 10, 8, 14, 12, 9, 11, 13, 15, 1, 0, 3, 2, 5, 4, 7, 6 ], [ 19, 19, 19, 19, 18, 18, 18, 18, 17, 16, 17, 16, 17, 16, 17, 16, 12, 
          14, 8, 10, 15, 13, 11, 9, 2, 3, 0, 1, 6, 7, 4, 5 ], [ 19, 19, 19, 19, 18, 18, 18, 18, 17, 16, 17, 16, 17, 16, 17, 16, 14, 12, 10, 8, 13, 15, 9, 11, 3, 2, 1, 0, 7, 6, 5, 4 ], 
      [ 18, 18, 18, 18, 19, 19, 19, 19, 16, 17, 16, 17, 16, 17, 16, 17, 9, 11, 13, 15, 8, 10, 12, 14, 5, 4, 7, 6, 0, 1, 2, 3 ], 
      [ 18, 18, 18, 18, 19, 19, 19, 19, 16, 17, 16, 17, 16, 17, 16, 17, 11, 9, 15, 13, 10, 8, 14, 12, 4, 5, 6, 7, 1, 0, 3, 2 ], 
      [ 18, 18, 18, 18, 19, 19, 19, 19, 16, 17, 16, 17, 16, 17, 16, 17, 13, 15, 9, 11, 12, 14, 8, 10, 7, 6, 5, 4, 2, 3, 0, 1 ], [ 18, 18, 18, 18, 19, 19, 19, 19, 16, 17, 16, 17, 16, 17, 16, 17, 15, 
          13, 11, 9, 14, 12, 10, 8, 6, 7, 4, 5, 3, 2, 1, 0 ] ],
  SmallSchemeIdentification := 17671 )