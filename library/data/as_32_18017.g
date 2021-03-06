rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 2 ], [ 2, 
          -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2 ], 
      [ 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 17, 17, 16, 16, 19, 19, 18, 18, 22, 22, 23, 23, 20, 20, 21, 21 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 17, 17, 16, 16, 19, 19, 18, 18, 22, 22, 23, 23, 20, 20, 21, 21 ], [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 13, 14, 15, 8, 9, 10, 11, 20, 20, 22, 22, 
          21, 21, 23, 23, 16, 16, 18, 18, 17, 17, 19, 19 ], [ 5, 4, 7, 6, 1, 0, 3, 2, 13, 12, 15, 14, 9, 8, 11, 10, 22, 22, 20, 20, 23, 23, 21, 21, 17, 17, 19, 19, 16, 16, 18, 18 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 14, 15, 12, 13, 10, 11, 8, 9, 20, 20, 22, 22, 21, 21, 23, 23, 16, 16, 18, 18, 17, 17, 19, 19 ], [ 7, 6, 5, 4, 3, 2, 
          1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 22, 22, 20, 20, 23, 23, 21, 21, 17, 17, 19, 19, 16, 16, 18, 18 ], [ 8, 9, 10, 11, 13, 12, 15, 14, 0, 1, 2, 3, 5, 4, 7, 6, 21, 21, 23, 23, 22, 
          22, 20, 20, 19, 19, 16, 16, 18, 18, 17, 17 ], [ 9, 8, 11, 10, 12, 13, 14, 15, 1, 0, 3, 2, 4, 5, 6, 7, 23, 23, 21, 21, 20, 20, 22, 22, 18, 18, 17, 17, 19, 19, 16, 16 ], 
      [ 10, 11, 8, 9, 15, 14, 13, 12, 2, 3, 0, 1, 7, 6, 5, 4, 21, 21, 23, 23, 22, 22, 20, 20, 19, 19, 16, 16, 18, 18, 17, 17 ], [ 11, 10, 9, 8, 14, 15, 
          12, 13, 3, 2, 1, 0, 6, 7, 4, 5, 23, 23, 21, 21, 20, 20, 22, 22, 18, 18, 17, 17, 19, 19, 16, 16 ], [ 13, 12, 15, 14, 8, 9, 10, 11, 5, 4, 7, 6, 0, 1, 2, 3, 19, 19, 18, 18, 16, 
          16, 17, 17, 21, 21, 22, 22, 23, 23, 20, 20 ], [ 12, 13, 14, 15, 9, 8, 11, 10, 4, 5, 6, 7, 1, 0, 3, 2, 18, 18, 19, 19, 17, 17, 16, 16, 23, 23, 20, 20, 21, 21, 22, 22 ], 
      [ 15, 14, 13, 12, 10, 11, 8, 9, 7, 6, 5, 4, 2, 3, 0, 1, 19, 19, 18, 18, 16, 16, 17, 17, 21, 21, 22, 22, 23, 23, 20, 20 ], [ 14, 15, 12, 13, 11, 10, 
          9, 8, 6, 7, 4, 5, 3, 2, 1, 0, 18, 18, 19, 19, 17, 17, 16, 16, 23, 23, 20, 20, 21, 21, 22, 22 ], [ 17, 16, 17, 16, 21, 23, 21, 23, 20, 22, 20, 22, 18, 19, 18, 19, 0, 2, 1, 3, 13, 
          15, 12, 14, 9, 11, 5, 7, 8, 10, 4, 6 ], [ 17, 16, 17, 16, 21, 23, 21, 23, 20, 22, 20, 22, 18, 19, 18, 19, 2, 0, 3, 1, 15, 13, 14, 12, 11, 9, 7, 5, 10, 8, 6, 4 ], 
      [ 16, 17, 16, 17, 23, 21, 23, 21, 22, 20, 22, 20, 19, 18, 19, 18, 1, 3, 0, 2, 12, 14, 13, 15, 8, 10, 4, 6, 9, 11, 5, 7 ], 
      [ 16, 17, 16, 17, 23, 21, 23, 21, 22, 20, 22, 20, 19, 18, 19, 18, 3, 1, 2, 0, 14, 12, 15, 13, 10, 8, 6, 4, 11, 9, 7, 5 ], 
      [ 19, 18, 19, 18, 20, 22, 20, 22, 23, 21, 23, 21, 17, 16, 17, 16, 12, 14, 13, 15, 0, 2, 1, 3, 5, 7, 8, 10, 4, 6, 9, 11 ], [ 19, 18, 19, 18, 20, 22, 20, 22, 23, 21, 23, 21, 17, 16, 17, 16, 14, 
          12, 15, 13, 2, 0, 3, 1, 7, 5, 10, 8, 6, 4, 11, 9 ], [ 18, 19, 18, 19, 22, 20, 22, 20, 21, 23, 21, 23, 16, 17, 16, 17, 13, 15, 12, 14, 1, 3, 0, 2, 4, 6, 9, 11, 5, 7, 8, 10 ], 
      [ 18, 19, 18, 19, 22, 20, 22, 20, 21, 23, 21, 23, 16, 17, 16, 17, 15, 13, 14, 12, 3, 1, 2, 0, 6, 4, 11, 9, 7, 5, 10, 8 ], 
      [ 21, 23, 21, 23, 17, 16, 17, 16, 18, 19, 18, 19, 20, 22, 20, 22, 9, 11, 8, 10, 5, 7, 4, 6, 0, 2, 13, 15, 1, 3, 12, 14 ], 
      [ 21, 23, 21, 23, 17, 16, 17, 16, 18, 19, 18, 19, 20, 22, 20, 22, 11, 9, 10, 8, 7, 5, 6, 4, 2, 0, 15, 13, 3, 1, 14, 12 ], [ 20, 22, 20, 22, 19, 18, 19, 18, 17, 16, 17, 16, 23, 21, 23, 21, 5, 7, 
          4, 6, 8, 10, 9, 11, 12, 14, 0, 2, 13, 15, 1, 3 ], [ 20, 22, 20, 22, 19, 18, 19, 18, 17, 16, 17, 16, 23, 21, 23, 21, 7, 5, 6, 4, 10, 8, 11, 9, 14, 12, 2, 0, 15, 13, 3, 1 ], 
      [ 23, 21, 23, 21, 16, 17, 16, 17, 19, 18, 19, 18, 22, 20, 22, 20, 8, 10, 9, 11, 4, 6, 5, 7, 1, 3, 12, 14, 0, 2, 13, 15 ], 
      [ 23, 21, 23, 21, 16, 17, 16, 17, 19, 18, 19, 18, 22, 20, 22, 20, 10, 8, 11, 9, 6, 4, 7, 5, 3, 1, 14, 12, 2, 0, 15, 13 ], 
      [ 22, 20, 22, 20, 18, 19, 18, 19, 16, 17, 16, 17, 21, 23, 21, 23, 4, 6, 5, 7, 9, 11, 8, 10, 13, 15, 1, 3, 12, 14, 0, 2 ], [ 22, 20, 22, 20, 18, 19, 18, 19, 16, 17, 16, 17, 21, 23, 21, 23, 6, 4, 
          7, 5, 11, 9, 10, 8, 15, 13, 3, 1, 14, 12, 2, 0 ] ],
  SmallSchemeIdentification := 18017 )