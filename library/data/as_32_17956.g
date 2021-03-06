rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2 ], [ 2, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 
         ], [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 18, 18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 18, 18, 19, 19, 16, 16, 17, 17 ], [ 5, 7, 4, 6, 0, 3, 1, 2, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 15, 15, 13, 
          13, 12, 12, 17, 17, 18, 18, 19, 19, 16, 16 ], [ 4, 6, 7, 5, 2, 0, 3, 1, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 14, 14, 12, 12, 13, 13, 19, 19, 16, 16, 17, 17, 18, 18 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 15, 15, 13, 13, 12, 12, 17, 17, 18, 18, 19, 19, 16, 16 ], [ 6, 4, 5, 7, 3, 1, 2, 0, 
          11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 14, 14, 12, 12, 13, 13, 19, 19, 16, 16, 17, 17, 18, 18 ], [ 8, 8, 9, 9, 10, 11, 10, 11, 0, 1, 2, 3, 4, 6, 5, 7, 16, 16, 18, 18, 19, 19, 
          17, 17, 12, 12, 15, 15, 13, 13, 14, 14 ], [ 8, 8, 9, 9, 10, 11, 10, 11, 1, 0, 3, 2, 6, 4, 7, 5, 16, 16, 18, 18, 19, 19, 17, 17, 12, 12, 15, 15, 13, 13, 14, 14 ], 
      [ 9, 9, 8, 8, 11, 10, 11, 10, 3, 2, 0, 1, 5, 7, 6, 4, 18, 18, 16, 16, 17, 17, 19, 19, 13, 13, 14, 14, 12, 12, 15, 15 ], [ 9, 9, 8, 8, 11, 10, 11, 10, 
          2, 3, 1, 0, 7, 5, 4, 6, 18, 18, 16, 16, 17, 17, 19, 19, 13, 13, 14, 14, 12, 12, 15, 15 ], [ 10, 10, 11, 11, 9, 8, 9, 8, 5, 7, 4, 6, 0, 1, 3, 2, 17, 17, 19, 19, 16, 16, 
          18, 18, 14, 14, 12, 12, 15, 15, 13, 13 ], [ 10, 10, 11, 11, 9, 8, 9, 8, 7, 5, 6, 4, 1, 0, 2, 3, 17, 17, 19, 19, 16, 16, 18, 18, 14, 14, 12, 12, 15, 15, 13, 13 ], 
      [ 11, 11, 10, 10, 8, 9, 8, 9, 4, 6, 7, 5, 2, 3, 0, 1, 19, 19, 17, 17, 18, 18, 16, 16, 15, 15, 13, 13, 14, 14, 12, 12 ], [ 11, 11, 10, 10, 8, 9, 8, 9, 
          6, 4, 5, 7, 3, 2, 1, 0, 19, 19, 17, 17, 18, 18, 16, 16, 15, 15, 13, 13, 14, 14, 12, 12 ], [ 12, 12, 13, 13, 14, 15, 14, 15, 17, 17, 19, 19, 16, 16, 18, 18, 0, 1, 2, 3, 4, 6, 
          5, 7, 10, 10, 8, 8, 11, 11, 9, 9 ], [ 12, 12, 13, 13, 14, 15, 14, 15, 17, 17, 19, 19, 16, 16, 18, 18, 1, 0, 3, 2, 6, 4, 7, 5, 10, 10, 8, 8, 11, 11, 9, 9 ], 
      [ 13, 13, 12, 12, 15, 14, 15, 14, 19, 19, 17, 17, 18, 18, 16, 16, 3, 2, 0, 1, 5, 7, 6, 4, 11, 11, 9, 9, 10, 10, 8, 8 ], 
      [ 13, 13, 12, 12, 15, 14, 15, 14, 19, 19, 17, 17, 18, 18, 16, 16, 2, 3, 1, 0, 7, 5, 4, 6, 11, 11, 9, 9, 10, 10, 8, 8 ], 
      [ 14, 14, 15, 15, 13, 12, 13, 12, 18, 18, 16, 16, 17, 17, 19, 19, 5, 7, 4, 6, 0, 1, 3, 2, 9, 9, 10, 10, 8, 8, 11, 11 ], [ 14, 14, 15, 15, 13, 12, 13, 12, 18, 18, 16, 16, 17, 17, 19, 19, 7, 5, 6, 
          4, 1, 0, 2, 3, 9, 9, 10, 10, 8, 8, 11, 11 ], [ 15, 15, 14, 14, 12, 13, 12, 13, 16, 16, 18, 18, 19, 19, 17, 17, 4, 6, 7, 5, 2, 3, 0, 1, 8, 8, 11, 11, 9, 9, 10, 10 ], 
      [ 15, 15, 14, 14, 12, 13, 12, 13, 16, 16, 18, 18, 19, 19, 17, 17, 6, 4, 5, 7, 3, 2, 1, 0, 8, 8, 11, 11, 9, 9, 10, 10 ], 
      [ 17, 17, 19, 19, 16, 18, 16, 18, 12, 12, 13, 13, 14, 14, 15, 15, 10, 10, 11, 11, 9, 9, 8, 8, 0, 1, 5, 7, 2, 3, 4, 6 ], 
      [ 17, 17, 19, 19, 16, 18, 16, 18, 12, 12, 13, 13, 14, 14, 15, 15, 10, 10, 11, 11, 9, 9, 8, 8, 1, 0, 7, 5, 3, 2, 6, 4 ], [ 16, 16, 18, 18, 19, 17, 19, 17, 15, 15, 14, 14, 12, 12, 13, 13, 8, 8, 9, 
          9, 10, 10, 11, 11, 4, 6, 0, 1, 7, 5, 2, 3 ], [ 16, 16, 18, 18, 19, 17, 19, 17, 15, 15, 14, 14, 12, 12, 13, 13, 8, 8, 9, 9, 10, 10, 11, 11, 6, 4, 1, 0, 5, 7, 3, 2 ], 
      [ 19, 19, 17, 17, 18, 16, 18, 16, 13, 13, 12, 12, 15, 15, 14, 14, 11, 11, 10, 10, 8, 8, 9, 9, 3, 2, 6, 4, 0, 1, 5, 7 ], 
      [ 19, 19, 17, 17, 18, 16, 18, 16, 13, 13, 12, 12, 15, 15, 14, 14, 11, 11, 10, 10, 8, 8, 9, 9, 2, 3, 4, 6, 1, 0, 7, 5 ], 
      [ 18, 18, 16, 16, 17, 19, 17, 19, 14, 14, 15, 15, 13, 13, 12, 12, 9, 9, 8, 8, 11, 11, 10, 10, 5, 7, 3, 2, 4, 6, 0, 1 ], [ 18, 18, 16, 16, 17, 19, 17, 19, 14, 14, 15, 15, 13, 13, 12, 12, 9, 9, 8, 
          8, 11, 11, 10, 10, 7, 5, 2, 3, 6, 4, 1, 0 ] ],
  SmallSchemeIdentification := 17956 )