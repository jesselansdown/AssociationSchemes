rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, E(4), -E(4), 0, 0, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, -E(16)^5+E(16)^7, -E(16)+E(16)^3, E(16)^5-E(16)^7, E(16)-E(16)^3, E(16)+E(16)^3, -E(16)^5-E(16)^7, 
          -E(16)-E(16)^3, E(16)^5+E(16)^7, 2 ], [ 1, -1, E(4), -E(4), 0, 0, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(16)^5-E(16)^7, E(16)-E(16)^3, -E(16)^5+E(16)^7, -E(16)+E(16)^3, 
          -E(16)-E(16)^3, E(16)^5+E(16)^7, E(16)+E(16)^3, -E(16)^5-E(16)^7, 2 ], [ 1, -1, E(4), -E(4), 0, 0, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, E(16)+E(16)^3, -E(16)^5-E(16)^7, 
          -E(16)-E(16)^3, E(16)^5+E(16)^7, E(16)^5-E(16)^7, E(16)-E(16)^3, -E(16)^5+E(16)^7, -E(16)+E(16)^3, 2 ], [ 1, -1, E(4), -E(4), 0, 0, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 
          -E(16)-E(16)^3, E(16)^5+E(16)^7, E(16)+E(16)^3, -E(16)^5-E(16)^7, -E(16)^5+E(16)^7, -E(16)+E(16)^3, E(16)^5-E(16)^7, E(16)-E(16)^3, 2 ], 
      [ 1, -1, -E(4), E(4), 0, 0, -E(8)+E(8)^3, E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, -E(16)+E(16)^3, -E(16)^5+E(16)^7, E(16)-E(16)^3, E(16)^5-E(16)^7, -E(16)^5-E(16)^7, E(16)+E(16)^3, 
          E(16)^5+E(16)^7, -E(16)-E(16)^3, 2 ], [ 1, -1, -E(4), E(4), 0, 0, -E(8)+E(8)^3, E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, E(16)-E(16)^3, E(16)^5-E(16)^7, -E(16)+E(16)^3, -E(16)^5+E(16)^7, 
          E(16)^5+E(16)^7, -E(16)-E(16)^3, -E(16)^5-E(16)^7, E(16)+E(16)^3, 2 ], [ 1, -1, -E(4), E(4), 0, 0, E(8)-E(8)^3, -E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(16)^5+E(16)^7, -E(16)-E(16)^3, 
          -E(16)^5-E(16)^7, E(16)+E(16)^3, -E(16)+E(16)^3, -E(16)^5+E(16)^7, E(16)-E(16)^3, E(16)^5-E(16)^7, 2 ], [ 1, -1, -E(4), E(4), 0, 0, E(8)-E(8)^3, -E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 
          -E(16)^5-E(16)^7, E(16)+E(16)^3, E(16)^5+E(16)^7, -E(16)-E(16)^3, E(16)-E(16)^3, E(16)^5-E(16)^7, -E(16)+E(16)^3, -E(16)^5+E(16)^7, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 
          E(8)-E(8)^3, 2 ], [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 13, 13, 10, 10, 11, 11, 16, 16, 17, 17, 14, 14, 15, 15 ], [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 7, 7, 6, 6, 11, 11, 12, 12, 
          13, 13, 10, 10, 15, 15, 16, 16, 17, 17, 14, 14 ], [ 2, 3, 1, 0, 5, 5, 4, 4, 9, 9, 8, 8, 6, 6, 7, 7, 13, 13, 10, 10, 11, 11, 12, 12, 17, 17, 14, 14, 15, 15, 16, 16 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 7, 6, 7, 8, 9, 8, 9, 14, 16, 15, 17, 14, 16, 15, 17, 10, 12, 11, 13, 10, 12, 11, 13 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 
          7, 6, 7, 6, 9, 8, 9, 8, 16, 14, 17, 15, 16, 14, 17, 15, 12, 10, 13, 11, 12, 10, 13, 11 ], [ 5, 5, 4, 4, 3, 2, 0, 1, 8, 9, 8, 9, 7, 6, 7, 6, 15, 17, 16, 14, 15, 17, 16, 14, 
          11, 13, 12, 10, 11, 13, 12, 10 ], [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 8, 9, 8, 6, 7, 6, 7, 17, 15, 14, 16, 17, 15, 14, 16, 13, 11, 10, 12, 13, 11, 10, 12 ], 
      [ 6, 7, 9, 8, 6, 7, 9, 8, 0, 4, 4, 1, 3, 5, 5, 2, 10, 14, 11, 15, 16, 12, 17, 13, 10, 16, 11, 17, 14, 12, 15, 13 ], 
      [ 6, 7, 9, 8, 7, 6, 8, 9, 4, 0, 1, 4, 5, 3, 2, 5, 14, 10, 15, 11, 12, 16, 13, 17, 16, 10, 17, 11, 12, 14, 13, 15 ], 
      [ 7, 6, 8, 9, 6, 7, 9, 8, 4, 1, 0, 4, 5, 2, 3, 5, 16, 12, 17, 13, 10, 14, 11, 15, 14, 12, 15, 13, 10, 16, 11, 17 ], [ 7, 6, 8, 9, 7, 6, 8, 9, 1, 4, 4, 0, 2, 5, 5, 3, 12, 16, 13, 17, 14, 10, 15, 
          11, 12, 14, 13, 15, 16, 10, 17, 11 ], [ 9, 8, 7, 6, 9, 8, 7, 6, 2, 5, 5, 3, 0, 4, 4, 1, 13, 17, 10, 14, 15, 11, 16, 12, 13, 15, 10, 16, 17, 11, 14, 12 ], 
      [ 9, 8, 7, 6, 8, 9, 6, 7, 5, 2, 3, 5, 4, 0, 1, 4, 17, 13, 14, 10, 11, 15, 12, 16, 15, 13, 16, 10, 11, 17, 12, 14 ], [ 8, 9, 6, 7, 9, 8, 7, 6, 5, 3, 2, 5, 
          4, 1, 0, 4, 15, 11, 16, 12, 13, 17, 10, 14, 17, 11, 14, 12, 13, 15, 10, 16 ], [ 8, 9, 6, 7, 8, 9, 6, 7, 3, 5, 5, 2, 1, 4, 4, 0, 11, 15, 12, 16, 17, 13, 14, 10, 11, 17, 12, 14, 15, 13, 16, 10 
         ], [ 11, 13, 10, 12, 15, 17, 14, 16, 11, 15, 17, 13, 12, 16, 14, 10, 0, 6, 3, 8, 7, 1, 9, 2, 6, 4, 8, 5, 4, 7, 5, 9 ], 
      [ 11, 13, 10, 12, 17, 15, 16, 14, 15, 11, 13, 17, 16, 12, 10, 14, 6, 0, 8, 3, 1, 7, 2, 9, 4, 6, 5, 8, 7, 4, 9, 5 ], [ 10, 12, 13, 11, 14, 16, 17, 15, 10, 14, 16, 12, 11, 15, 17, 13, 2, 9, 0, 
          6, 8, 3, 7, 1, 9, 5, 6, 4, 5, 8, 4, 7 ], [ 10, 12, 13, 11, 16, 14, 15, 17, 14, 10, 12, 16, 15, 11, 13, 17, 9, 2, 6, 0, 3, 8, 1, 7, 5, 9, 4, 6, 8, 5, 7, 4 ], 
      [ 13, 11, 12, 10, 15, 17, 14, 16, 17, 13, 11, 15, 14, 10, 12, 16, 7, 1, 9, 2, 0, 6, 3, 8, 4, 7, 5, 9, 6, 4, 8, 5 ], 
      [ 13, 11, 12, 10, 17, 15, 16, 14, 13, 17, 15, 11, 10, 14, 16, 12, 1, 7, 2, 9, 6, 0, 8, 3, 7, 4, 9, 5, 4, 6, 5, 8 ], 
      [ 12, 10, 11, 13, 14, 16, 17, 15, 16, 12, 10, 14, 17, 13, 11, 15, 8, 3, 7, 1, 2, 9, 0, 6, 5, 8, 4, 7, 9, 5, 6, 4 ], [ 12, 10, 11, 13, 16, 14, 15, 17, 12, 16, 14, 10, 13, 17, 15, 11, 3, 8, 1, 7, 
          9, 2, 6, 0, 8, 5, 7, 4, 5, 9, 4, 6 ], [ 15, 17, 14, 16, 11, 13, 10, 12, 11, 17, 15, 13, 12, 14, 16, 10, 6, 4, 8, 5, 4, 7, 5, 9, 0, 7, 3, 9, 6, 1, 8, 2 ], 
      [ 15, 17, 14, 16, 13, 11, 12, 10, 17, 11, 13, 15, 14, 12, 10, 16, 4, 6, 5, 8, 7, 4, 9, 5, 7, 0, 9, 3, 1, 6, 2, 8 ], 
      [ 14, 16, 17, 15, 10, 12, 13, 11, 10, 16, 14, 12, 11, 17, 15, 13, 9, 5, 6, 4, 5, 8, 4, 7, 2, 8, 0, 7, 9, 3, 6, 1 ], 
      [ 14, 16, 17, 15, 12, 10, 11, 13, 16, 10, 12, 14, 17, 11, 13, 15, 5, 9, 4, 6, 8, 5, 7, 4, 8, 2, 7, 0, 3, 9, 1, 6 ], [ 17, 15, 16, 14, 11, 13, 10, 12, 15, 13, 11, 17, 16, 10, 12, 14, 4, 7, 5, 9, 
          6, 4, 8, 5, 6, 1, 8, 2, 0, 7, 3, 9 ], [ 17, 15, 16, 14, 13, 11, 12, 10, 13, 15, 17, 11, 10, 16, 14, 12, 7, 4, 9, 5, 4, 6, 5, 8, 1, 6, 2, 8, 7, 0, 9, 3 ], 
      [ 16, 14, 15, 17, 10, 12, 13, 11, 14, 12, 10, 16, 15, 13, 11, 17, 5, 8, 4, 7, 9, 5, 6, 4, 9, 3, 6, 1, 2, 8, 0, 7 ], 
      [ 16, 14, 15, 17, 12, 10, 11, 13, 12, 14, 16, 10, 13, 15, 17, 11, 8, 5, 7, 4, 5, 9, 4, 6, 3, 9, 1, 6, 8, 2, 7, 0 ] ],
  SmallSchemeIdentification := 17571 )