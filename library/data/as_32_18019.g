rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, 2 ], [ 2, 
          2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 2, -2, 0, 0, 
          0, 0, 0, 0, 0, 0, 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, 
          -E(8)+E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 10, 11, 12, 14, 13, 15, 4, 5, 6, 8, 7, 9, 20, 20, 21, 21, 22, 22, 23, 23, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 3, 2, 1, 0, 11, 10, 14, 12, 15, 13, 5, 4, 7, 9, 6, 8, 20, 20, 21, 21, 22, 22, 23, 23, 16, 16, 17, 17, 18, 18, 19, 19 ], [ 4, 5, 11, 10, 0, 1, 13, 15, 14, 12, 3, 2, 9, 6, 8, 7, 22, 22, 23, 23, 
          20, 20, 21, 21, 18, 18, 19, 19, 16, 16, 17, 17 ], [ 5, 4, 10, 11, 1, 0, 15, 13, 12, 14, 2, 3, 8, 7, 9, 6, 22, 22, 23, 23, 20, 20, 21, 21, 18, 18, 19, 19, 16, 16, 17, 17 ], 
      [ 6, 7, 13, 15, 12, 14, 0, 1, 11, 10, 9, 8, 4, 2, 5, 3, 21, 21, 22, 22, 23, 23, 20, 20, 19, 19, 16, 16, 17, 17, 18, 18 ], [ 7, 6, 15, 13, 14, 
          12, 1, 0, 10, 11, 8, 9, 5, 3, 4, 2, 21, 21, 22, 22, 23, 23, 20, 20, 19, 19, 16, 16, 17, 17, 18, 18 ], [ 8, 9, 12, 14, 15, 13, 10, 11, 0, 1, 6, 7, 2, 5, 3, 4, 23, 23, 20, 20, 21, 
          21, 22, 22, 17, 17, 18, 18, 19, 19, 16, 16 ], [ 9, 8, 14, 12, 13, 15, 11, 10, 1, 0, 7, 6, 3, 4, 2, 5, 23, 23, 20, 20, 21, 21, 22, 22, 17, 17, 18, 18, 19, 19, 16, 16 ], 
      [ 11, 10, 4, 5, 3, 2, 9, 8, 6, 7, 0, 1, 13, 14, 15, 12, 18, 18, 19, 19, 16, 16, 17, 17, 22, 22, 23, 23, 20, 20, 21, 21 ], [ 10, 11, 5, 4, 2, 3, 8, 
          9, 7, 6, 1, 0, 15, 12, 13, 14, 18, 18, 19, 19, 16, 16, 17, 17, 22, 22, 23, 23, 20, 20, 21, 21 ], [ 13, 15, 6, 7, 9, 8, 4, 5, 2, 3, 12, 14, 0, 11, 1, 10, 19, 19, 16, 16, 17, 
          17, 18, 18, 21, 21, 22, 22, 23, 23, 20, 20 ], [ 12, 14, 8, 9, 6, 7, 2, 3, 5, 4, 15, 13, 10, 0, 11, 1, 17, 17, 18, 18, 19, 19, 16, 16, 23, 23, 20, 20, 21, 21, 22, 22 ], 
      [ 15, 13, 7, 6, 8, 9, 5, 4, 3, 2, 14, 12, 1, 10, 0, 11, 19, 19, 16, 16, 17, 17, 18, 18, 21, 21, 22, 22, 23, 23, 20, 20 ], [ 14, 12, 9, 8, 7, 6, 3, 
          2, 4, 5, 13, 15, 11, 1, 10, 0, 17, 17, 18, 18, 19, 19, 16, 16, 23, 23, 20, 20, 21, 21, 22, 22 ], [ 16, 16, 21, 21, 23, 23, 20, 20, 22, 22, 18, 18, 19, 17, 19, 17, 0, 1, 13, 15, 10, 
          11, 12, 14, 6, 7, 2, 3, 8, 9, 4, 5 ], [ 16, 16, 21, 21, 23, 23, 20, 20, 22, 22, 18, 18, 19, 17, 19, 17, 1, 0, 15, 13, 11, 10, 14, 12, 7, 6, 3, 2, 9, 8, 5, 4 ], 
      [ 17, 17, 20, 20, 22, 22, 23, 23, 21, 21, 19, 19, 16, 18, 16, 18, 12, 14, 0, 1, 15, 13, 10, 11, 2, 3, 8, 9, 5, 4, 6, 7 ], 
      [ 17, 17, 20, 20, 22, 22, 23, 23, 21, 21, 19, 19, 16, 18, 16, 18, 14, 12, 1, 0, 13, 15, 11, 10, 3, 2, 9, 8, 4, 5, 7, 6 ], 
      [ 18, 18, 23, 23, 21, 21, 22, 22, 20, 20, 16, 16, 17, 19, 17, 19, 11, 10, 14, 12, 0, 1, 13, 15, 9, 8, 4, 5, 6, 7, 3, 2 ], [ 18, 18, 23, 23, 21, 21, 22, 22, 20, 20, 16, 16, 17, 19, 17, 19, 10, 
          11, 12, 14, 1, 0, 15, 13, 8, 9, 5, 4, 7, 6, 2, 3 ], [ 19, 19, 22, 22, 20, 20, 21, 21, 23, 23, 17, 17, 18, 16, 18, 16, 13, 15, 11, 10, 12, 14, 0, 1, 4, 5, 6, 7, 2, 3, 9, 8 ], 
      [ 19, 19, 22, 22, 20, 20, 21, 21, 23, 23, 17, 17, 18, 16, 18, 16, 15, 13, 10, 11, 14, 12, 1, 0, 5, 4, 7, 6, 3, 2, 8, 9 ], [ 21, 21, 16, 16, 
          18, 18, 19, 19, 17, 17, 23, 23, 20, 22, 20, 22, 6, 7, 2, 3, 9, 8, 4, 5, 0, 1, 13, 15, 11, 10, 12, 14 ], [ 21, 21, 16, 16, 18, 18, 19, 19, 17, 17, 23, 23, 20, 22, 20, 22, 7, 6, 3, 
          2, 8, 9, 5, 4, 1, 0, 15, 13, 10, 11, 14, 12 ], [ 20, 20, 17, 17, 19, 19, 16, 16, 18, 18, 22, 22, 23, 21, 23, 21, 2, 3, 8, 9, 4, 5, 6, 7, 12, 14, 0, 1, 13, 15, 10, 11 ], 
      [ 20, 20, 17, 17, 19, 19, 16, 16, 18, 18, 22, 22, 23, 21, 23, 21, 3, 2, 9, 8, 5, 4, 7, 6, 14, 12, 1, 0, 15, 13, 11, 10 ], 
      [ 23, 23, 18, 18, 16, 16, 17, 17, 19, 19, 21, 21, 22, 20, 22, 20, 8, 9, 5, 4, 6, 7, 2, 3, 10, 11, 12, 14, 0, 1, 15, 13 ], 
      [ 23, 23, 18, 18, 16, 16, 17, 17, 19, 19, 21, 21, 22, 20, 22, 20, 9, 8, 4, 5, 7, 6, 3, 2, 11, 10, 14, 12, 1, 0, 13, 15 ], [ 22, 22, 19, 19, 17, 17, 18, 18, 16, 16, 20, 20, 21, 23, 21, 23, 4, 5, 
          6, 7, 3, 2, 9, 8, 13, 15, 11, 10, 14, 12, 0, 1 ], [ 22, 22, 19, 19, 17, 17, 18, 18, 16, 16, 20, 20, 21, 23, 21, 23, 5, 4, 7, 6, 2, 3, 8, 9, 15, 13, 10, 11, 12, 14, 1, 0 ] ],
  SmallSchemeIdentification := 18019 )