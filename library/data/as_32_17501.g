rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, 2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, 2 ], 
      [ 2, 2, 0, 0, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2 ], [ 2, 2, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, -4, -4, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ], [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], [ 2, 3, 0, 1, 5, 5, 4, 4, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 
          6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 7, 6, 6, 10, 10, 11, 11, 8, 8, 9, 9, 13, 13, 12, 12, 16, 16, 17, 17, 14, 14, 15, 15 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 6, 
          6, 10, 10, 11, 11, 8, 8, 9, 9, 13, 13, 12, 12, 16, 16, 17, 17, 14, 14, 15, 15 ], [ 5, 5, 4, 4, 2, 3, 0, 1, 13, 13, 12, 12, 16, 16, 17, 17, 14, 14, 15, 15, 7, 7, 6, 6, 
          10, 10, 11, 11, 8, 8, 9, 9 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 13, 13, 12, 12, 16, 16, 17, 17, 14, 14, 15, 15, 7, 7, 6, 6, 10, 10, 11, 11, 8, 8, 9, 9 ], 
      [ 6, 6, 13, 13, 7, 7, 12, 12, 0, 1, 4, 4, 15, 15, 16, 16, 17, 17, 14, 14, 5, 5, 2, 3, 11, 11, 8, 8, 9, 9, 10, 10 ], 
      [ 6, 6, 13, 13, 7, 7, 12, 12, 1, 0, 4, 4, 15, 15, 16, 16, 17, 17, 14, 14, 5, 5, 3, 2, 11, 11, 8, 8, 9, 9, 10, 10 ], 
      [ 7, 7, 12, 12, 6, 6, 13, 13, 4, 4, 0, 1, 17, 17, 14, 14, 15, 15, 16, 16, 2, 3, 5, 5, 9, 9, 10, 10, 11, 11, 8, 8 ], [ 7, 7, 12, 12, 6, 6, 13, 13, 4, 4, 1, 0, 17, 17, 14, 14, 15, 15, 16, 16, 3, 
          2, 5, 5, 9, 9, 10, 10, 11, 11, 8, 8 ], [ 8, 8, 15, 15, 10, 10, 17, 17, 14, 14, 16, 16, 0, 1, 13, 13, 4, 4, 12, 12, 11, 11, 9, 9, 6, 6, 2, 3, 7, 7, 5, 5 ], 
      [ 8, 8, 15, 15, 10, 10, 17, 17, 14, 14, 16, 16, 1, 0, 13, 13, 4, 4, 12, 12, 11, 11, 9, 9, 6, 6, 3, 2, 7, 7, 5, 5 ], 
      [ 9, 9, 14, 14, 11, 11, 16, 16, 17, 17, 15, 15, 12, 12, 0, 1, 13, 13, 4, 4, 8, 8, 10, 10, 2, 3, 7, 7, 5, 5, 6, 6 ], 
      [ 9, 9, 14, 14, 11, 11, 16, 16, 17, 17, 15, 15, 12, 12, 1, 0, 13, 13, 4, 4, 8, 8, 10, 10, 3, 2, 7, 7, 5, 5, 6, 6 ], [ 10, 10, 17, 17, 8, 8, 15, 15, 16, 16, 14, 14, 4, 4, 12, 12, 0, 1, 13, 13, 9, 
          9, 11, 11, 7, 7, 5, 5, 6, 6, 2, 3 ], [ 10, 10, 17, 17, 8, 8, 15, 15, 16, 16, 14, 14, 4, 4, 12, 12, 1, 0, 13, 13, 9, 9, 11, 11, 7, 7, 5, 5, 6, 6, 3, 2 ], 
      [ 11, 11, 16, 16, 9, 9, 14, 14, 15, 15, 17, 17, 13, 13, 4, 4, 12, 12, 0, 1, 10, 10, 8, 8, 5, 5, 6, 6, 2, 3, 7, 7 ], 
      [ 11, 11, 16, 16, 9, 9, 14, 14, 15, 15, 17, 17, 13, 13, 4, 4, 12, 12, 1, 0, 10, 10, 8, 8, 5, 5, 6, 6, 3, 2, 7, 7 ], 
      [ 13, 13, 6, 6, 12, 12, 7, 7, 5, 5, 2, 3, 11, 11, 8, 8, 9, 9, 10, 10, 0, 1, 4, 4, 15, 15, 16, 16, 17, 17, 14, 14 ], [ 13, 13, 6, 6, 12, 12, 7, 7, 5, 5, 3, 2, 11, 11, 8, 8, 9, 9, 10, 10, 1, 0, 4, 
          4, 15, 15, 16, 16, 17, 17, 14, 14 ], [ 12, 12, 7, 7, 13, 13, 6, 6, 2, 3, 5, 5, 9, 9, 10, 10, 11, 11, 8, 8, 4, 4, 0, 1, 17, 17, 14, 14, 15, 15, 16, 16 ], 
      [ 12, 12, 7, 7, 13, 13, 6, 6, 3, 2, 5, 5, 9, 9, 10, 10, 11, 11, 8, 8, 4, 4, 1, 0, 17, 17, 14, 14, 15, 15, 16, 16 ], [ 15, 15, 8, 8, 17, 17, 10, 10, 11, 11, 9, 
          9, 6, 6, 2, 3, 7, 7, 5, 5, 14, 14, 16, 16, 0, 1, 13, 13, 4, 4, 12, 12 ], [ 15, 15, 8, 8, 17, 17, 10, 10, 11, 11, 9, 9, 6, 6, 3, 2, 7, 7, 5, 5, 14, 14, 16, 16, 1, 0, 13, 13, 4, 4, 12, 12 ], 
      [ 14, 14, 9, 9, 16, 16, 11, 11, 8, 8, 10, 10, 2, 3, 7, 7, 5, 5, 6, 6, 17, 17, 15, 15, 12, 12, 0, 1, 13, 13, 4, 4 ], [ 14, 
          14, 9, 9, 16, 16, 11, 11, 8, 8, 10, 10, 3, 2, 7, 7, 5, 5, 6, 6, 17, 17, 15, 15, 12, 12, 1, 0, 13, 13, 4, 4 ], [ 17, 17, 10, 10, 15, 15, 8, 8, 9, 9, 11, 11, 7, 7, 5, 5, 6, 6, 2, 3, 16, 16, 
          14, 14, 4, 4, 12, 12, 0, 1, 13, 13 ], [ 17, 17, 10, 10, 15, 15, 8, 8, 9, 9, 11, 11, 7, 7, 5, 5, 6, 6, 3, 2, 16, 16, 14, 14, 4, 4, 12, 12, 1, 0, 13, 13 ], 
      [ 16, 16, 11, 11, 14, 14, 9, 9, 10, 10, 8, 8, 5, 5, 6, 6, 2, 3, 7, 7, 15, 15, 17, 17, 13, 13, 4, 4, 12, 12, 0, 1 ], [ 16, 16, 11, 11, 14, 14, 9, 9, 10, 10, 
          8, 8, 5, 5, 6, 6, 3, 2, 7, 7, 15, 15, 17, 17, 13, 13, 4, 4, 12, 12, 1, 0 ] ],
  SmallSchemeIdentification := 17501 )