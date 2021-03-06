rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -2, 
          2, 2*E(4), -2*E(4), 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -2, 2, 2*E(4), -2*E(4), -2*E(8), 2*E(8)^3, 
          2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 2, -2, -2*E(4), 2*E(4), 2*E(8), -2*E(8)^3, 
          -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 2, -2, -2*E(4), 2*E(4), -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 
          2*E(8), -2*E(8)^3, 1 ], [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -2, 2, -2*E(4), 2*E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -2, 2, -2*E(4), 2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 2, -2, 2*E(4), -2*E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 2, -2, 2*E(4), -2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13, 18, 18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13, 18, 18, 19, 19, 16, 16, 17, 17 ], [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 9, 9, 8, 8, 13, 13, 14, 14, 15, 
          15, 12, 12, 17, 17, 18, 18, 19, 19, 16, 16 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 12, 12, 13, 13, 14, 14, 19, 19, 16, 16, 17, 17, 18, 18 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 11, 11, 9, 9, 8, 8, 13, 13, 14, 14, 15, 15, 12, 12, 17, 17, 18, 18, 19, 19, 16, 16 ], [ 6, 7, 4, 5, 3, 2, 1, 0, 
          11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 12, 12, 13, 13, 14, 14, 19, 19, 16, 16, 17, 17, 18, 18 ], [ 8, 9, 8, 9, 11, 10, 11, 10, 0, 2, 1, 3, 5, 7, 4, 6, 16, 16, 17, 17, 18, 18, 
          19, 19, 12, 12, 13, 13, 14, 14, 15, 15 ], [ 8, 9, 8, 9, 11, 10, 11, 10, 2, 0, 3, 1, 7, 5, 6, 4, 16, 16, 17, 17, 18, 18, 19, 19, 12, 12, 13, 13, 14, 14, 15, 15 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 1, 3, 0, 2, 4, 6, 5, 7, 18, 18, 19, 19, 16, 16, 17, 17, 14, 14, 15, 15, 12, 12, 13, 13 ], [ 9, 8, 9, 8, 10, 11, 10, 11, 
          3, 1, 2, 0, 6, 4, 7, 5, 18, 18, 19, 19, 16, 16, 17, 17, 14, 14, 15, 15, 12, 12, 13, 13 ], [ 11, 10, 11, 10, 9, 8, 9, 8, 4, 6, 5, 7, 0, 2, 1, 3, 19, 19, 16, 16, 17, 17, 
          18, 18, 15, 15, 12, 12, 13, 13, 14, 14 ], [ 11, 10, 11, 10, 9, 8, 9, 8, 6, 4, 7, 5, 2, 0, 3, 1, 19, 19, 16, 16, 17, 17, 18, 18, 15, 15, 12, 12, 13, 13, 14, 14 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 5, 7, 4, 6, 1, 3, 0, 2, 17, 17, 18, 18, 19, 19, 16, 16, 13, 13, 14, 14, 15, 15, 12, 12 ], [ 10, 11, 10, 11, 8, 9, 8, 9, 
          7, 5, 6, 4, 3, 1, 2, 0, 17, 17, 18, 18, 19, 19, 16, 16, 13, 13, 14, 14, 15, 15, 12, 12 ], [ 13, 15, 13, 15, 12, 14, 12, 14, 17, 17, 19, 19, 18, 18, 16, 16, 0, 2, 5, 7, 1, 3, 
          4, 6, 8, 8, 10, 10, 9, 9, 11, 11 ], [ 13, 15, 13, 15, 12, 14, 12, 14, 17, 17, 19, 19, 18, 18, 16, 16, 2, 0, 7, 5, 3, 1, 6, 4, 8, 8, 10, 10, 9, 9, 11, 11 ], 
      [ 12, 14, 12, 14, 15, 13, 15, 13, 16, 16, 18, 18, 17, 17, 19, 19, 4, 6, 0, 2, 5, 7, 1, 3, 11, 11, 8, 8, 10, 10, 9, 9 ], 
      [ 12, 14, 12, 14, 15, 13, 15, 13, 16, 16, 18, 18, 17, 17, 19, 19, 6, 4, 2, 0, 7, 5, 3, 1, 11, 11, 8, 8, 10, 10, 9, 9 ], 
      [ 15, 13, 15, 13, 14, 12, 14, 12, 19, 19, 17, 17, 16, 16, 18, 18, 1, 3, 4, 6, 0, 2, 5, 7, 9, 9, 11, 11, 8, 8, 10, 10 ], [ 15, 13, 15, 13, 14, 12, 14, 12, 19, 19, 17, 17, 16, 16, 18, 18, 3, 1, 6, 
          4, 2, 0, 7, 5, 9, 9, 11, 11, 8, 8, 10, 10 ], [ 14, 12, 14, 12, 13, 15, 13, 15, 18, 18, 16, 16, 19, 19, 17, 17, 5, 7, 1, 3, 4, 6, 0, 2, 10, 10, 9, 9, 11, 11, 8, 8 ], 
      [ 14, 12, 14, 12, 13, 15, 13, 15, 18, 18, 16, 16, 19, 19, 17, 17, 7, 5, 3, 1, 6, 4, 2, 0, 10, 10, 9, 9, 11, 11, 8, 8 ], 
      [ 17, 19, 17, 19, 16, 18, 16, 18, 13, 13, 15, 15, 14, 14, 12, 12, 8, 8, 10, 10, 9, 9, 11, 11, 0, 2, 5, 7, 1, 3, 4, 6 ], 
      [ 17, 19, 17, 19, 16, 18, 16, 18, 13, 13, 15, 15, 14, 14, 12, 12, 8, 8, 10, 10, 9, 9, 11, 11, 2, 0, 7, 5, 3, 1, 6, 4 ], [ 16, 18, 16, 18, 19, 17, 19, 17, 12, 12, 14, 14, 13, 13, 15, 15, 11, 11, 
          8, 8, 10, 10, 9, 9, 4, 6, 0, 2, 5, 7, 1, 3 ], [ 16, 18, 16, 18, 19, 17, 19, 17, 12, 12, 14, 14, 13, 13, 15, 15, 11, 11, 8, 8, 10, 10, 9, 9, 6, 4, 2, 0, 7, 5, 3, 1 ], 
      [ 19, 17, 19, 17, 18, 16, 18, 16, 15, 15, 13, 13, 12, 12, 14, 14, 9, 9, 11, 11, 8, 8, 10, 10, 1, 3, 4, 6, 0, 2, 5, 7 ], 
      [ 19, 17, 19, 17, 18, 16, 18, 16, 15, 15, 13, 13, 12, 12, 14, 14, 9, 9, 11, 11, 8, 8, 10, 10, 3, 1, 6, 4, 2, 0, 7, 5 ], 
      [ 18, 16, 18, 16, 17, 19, 17, 19, 14, 14, 12, 12, 15, 15, 13, 13, 10, 10, 9, 9, 11, 11, 8, 8, 5, 7, 1, 3, 4, 6, 0, 2 ], [ 18, 16, 18, 16, 17, 19, 17, 19, 14, 14, 12, 12, 15, 15, 13, 13, 10, 10, 
          9, 9, 11, 11, 8, 8, 7, 5, 3, 1, 6, 4, 2, 0 ] ],
  SmallSchemeIdentification := 17916 )