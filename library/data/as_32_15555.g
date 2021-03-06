rec(
  CharacterTable := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], [ 1, 1, 2, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -2, 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, -2*E(16)^3+2*E(16)^5, 2*E(16)^3-2*E(16)^5, 2*E(16)-2*E(16)^7, -2*E(16)+2*E(16)^7, 2 ], 
      [ 1, 1, -2, 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 2*E(16)^3-2*E(16)^5, -2*E(16)^3+2*E(16)^5, -2*E(16)+2*E(16)^7, 2*E(16)-2*E(16)^7, 2 ], 
      [ 1, 1, -2, 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, -2*E(16)+2*E(16)^7, 2*E(16)-2*E(16)^7, -2*E(16)^3+2*E(16)^5, 2*E(16)^3-2*E(16)^5, 2 ], 
      [ 1, 1, -2, 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, 2*E(16)-2*E(16)^7, -2*E(16)+2*E(16)^7, 2*E(16)^3-2*E(16)^5, -2*E(16)^3+2*E(16)^5, 2 ], 
      [ 1, 1, 2, -2, -2, 0, 0, 0, 0, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, 2 ], [ 1, 1, 2, -2, -2, 0, 0, 0, 0, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 
          -2*E(8)+2*E(8)^3, 2 ], [ 1, 1, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], [ 1, -1, 0, -E(8)+E(8)^3, E(8)-E(8)^3, -E(16)^3+E(16)^5, E(16)^3-E(16)^5, E(16)-E(16)^7, 
          -E(16)+E(16)^7, 0, 0, 0, 0, 4 ], [ 1, -1, 0, -E(8)+E(8)^3, E(8)-E(8)^3, E(16)^3-E(16)^5, -E(16)^3+E(16)^5, -E(16)+E(16)^7, E(16)-E(16)^7, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 0, E(8)-E(8)^3, -E(8)+E(8)^3, -E(16)+E(16)^7, E(16)-E(16)^7, -E(16)^3+E(16)^5, E(16)^3-E(16)^5, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 0, E(8)-E(8)^3, -E(8)+E(8)^3, E(16)-E(16)^7, -E(16)+E(16)^7, E(16)^3-E(16)^5, -E(16)^3+E(16)^5, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12 ], 
      [ 1, 0, 2, 2, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12 ], [ 2, 2, 0, 1, 3, 4, 3, 4, 7, 8, 7, 8, 5, 6, 5, 6, 10, 10, 10, 10, 9, 9, 
          9, 9, 12, 12, 12, 12, 11, 11, 11, 11 ], [ 2, 2, 1, 0, 4, 3, 4, 3, 8, 7, 8, 7, 6, 5, 6, 5, 10, 10, 10, 10, 9, 9, 9, 9, 12, 12, 12, 12, 11, 11, 11, 11 ], 
      [ 3, 4, 3, 4, 0, 2, 2, 1, 5, 7, 8, 6, 5, 8, 7, 6, 11, 11, 12, 12, 11, 11, 12, 12, 9, 9, 10, 10, 9, 9, 10, 10 ], [ 3, 4, 4, 3, 2, 0, 1, 2, 7, 5, 6, 8, 8, 
          5, 6, 7, 12, 12, 11, 11, 12, 12, 11, 11, 10, 10, 9, 9, 10, 10, 9, 9 ], [ 4, 3, 3, 4, 2, 1, 0, 2, 8, 6, 5, 7, 7, 6, 5, 8, 12, 12, 11, 11, 12, 12, 11, 11, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 4, 3, 4, 3, 1, 2, 2, 0, 6, 8, 7, 5, 6, 7, 8, 5, 11, 11, 12, 12, 11, 11, 12, 12, 9, 9, 10, 10, 9, 9, 10, 10 ], [ 5, 6, 7, 
          8, 5, 7, 8, 6, 0, 3, 4, 1, 3, 2, 2, 4, 9, 9, 11, 11, 12, 12, 10, 10, 9, 9, 12, 12, 11, 11, 10, 10 ], [ 5, 6, 8, 7, 7, 5, 6, 8, 3, 0, 1, 4, 2, 3, 4, 2, 11, 11, 9, 9, 10, 10, 12, 12, 12, 12, 
          9, 9, 10, 10, 11, 11 ], [ 6, 5, 7, 8, 8, 6, 5, 7, 4, 1, 0, 3, 2, 4, 3, 2, 11, 11, 9, 9, 10, 10, 12, 12, 12, 12, 9, 9, 10, 10, 11, 11 ], 
      [ 6, 5, 8, 7, 6, 8, 7, 5, 1, 4, 3, 0, 4, 2, 2, 3, 9, 9, 11, 11, 12, 12, 10, 10, 9, 9, 12, 12, 11, 11, 10, 10 ], 
      [ 7, 8, 5, 6, 5, 8, 7, 6, 3, 2, 2, 4, 0, 4, 3, 1, 12, 12, 10, 10, 9, 9, 11, 11, 11, 11, 10, 10, 9, 9, 12, 12 ], 
      [ 7, 8, 6, 5, 8, 5, 6, 7, 2, 3, 4, 2, 4, 0, 1, 3, 10, 10, 12, 12, 11, 11, 9, 9, 10, 10, 11, 11, 12, 12, 9, 9 ], [ 8, 7, 5, 6, 7, 6, 5, 8, 2, 4, 3, 2, 3, 1, 0, 4, 10, 10, 12, 12, 11, 11, 9, 9, 
          10, 10, 11, 11, 12, 12, 9, 9 ], [ 8, 7, 6, 5, 6, 7, 8, 5, 4, 2, 2, 3, 1, 3, 4, 0, 12, 12, 10, 10, 9, 9, 11, 11, 11, 11, 10, 10, 9, 9, 12, 12 ], 
      [ 9, 9, 10, 10, 11, 12, 12, 11, 9, 11, 11, 9, 12, 10, 10, 12, 0, 1, 5, 6, 7, 8, 2, 2, 5, 6, 3, 4, 3, 4, 7, 8 ], [ 9, 9, 10, 10, 11, 12, 12, 11, 9, 11, 11, 9, 12, 
          10, 10, 12, 1, 0, 6, 5, 8, 7, 2, 2, 6, 5, 4, 3, 4, 3, 8, 7 ], [ 9, 9, 10, 10, 12, 11, 11, 12, 11, 9, 9, 11, 10, 12, 12, 10, 5, 6, 0, 1, 2, 2, 7, 8, 3, 4, 5, 6, 7, 8, 3, 4 ], 
      [ 9, 9, 10, 10, 12, 11, 11, 12, 11, 9, 9, 11, 10, 12, 12, 10, 6, 5, 1, 0, 2, 2, 8, 7, 4, 3, 6, 5, 8, 7, 4, 3 ], [ 10, 10, 9, 9, 11, 
          12, 12, 11, 12, 10, 10, 12, 9, 11, 11, 9, 7, 8, 2, 2, 0, 1, 6, 5, 3, 4, 8, 7, 5, 6, 4, 3 ], [ 10, 10, 9, 9, 11, 12, 12, 11, 12, 10, 10, 12, 9, 11, 11, 9, 8, 7, 2, 2, 1, 0, 5, 6, 
          4, 3, 7, 8, 6, 5, 3, 4 ], [ 10, 10, 9, 9, 12, 11, 11, 12, 10, 12, 12, 10, 11, 9, 9, 11, 2, 2, 7, 8, 6, 5, 0, 1, 8, 7, 3, 4, 4, 3, 5, 6 ], 
      [ 10, 10, 9, 9, 12, 11, 11, 12, 10, 12, 12, 10, 11, 9, 9, 11, 2, 2, 8, 7, 5, 6, 1, 0, 7, 8, 4, 3, 3, 4, 6, 5 ], 
      [ 11, 11, 12, 12, 9, 10, 10, 9, 9, 12, 12, 9, 11, 10, 10, 11, 5, 6, 3, 4, 3, 4, 8, 7, 0, 1, 7, 8, 5, 6, 2, 2 ], 
      [ 11, 11, 12, 12, 9, 10, 10, 9, 9, 12, 12, 9, 11, 10, 10, 11, 6, 5, 4, 3, 4, 3, 7, 8, 1, 0, 8, 7, 6, 5, 2, 2 ], [ 11, 11, 12, 12, 10, 9, 9, 10, 12, 9, 9, 12, 10, 11, 11, 10, 3, 4, 5, 6, 8, 7, 3, 
          4, 7, 8, 0, 1, 2, 2, 5, 6 ], [ 11, 11, 12, 12, 10, 9, 9, 10, 12, 9, 9, 12, 10, 11, 11, 10, 4, 3, 6, 5, 7, 8, 4, 3, 8, 7, 1, 0, 2, 2, 6, 5 ], 
      [ 12, 12, 11, 11, 9, 10, 10, 9, 11, 10, 10, 11, 9, 12, 12, 9, 3, 4, 7, 8, 5, 6, 4, 3, 5, 6, 2, 2, 0, 1, 8, 7 ], [ 12, 12, 11, 11, 9, 10, 10, 9, 11, 10, 10, 11, 9, 
          12, 12, 9, 4, 3, 8, 7, 6, 5, 3, 4, 6, 5, 2, 2, 1, 0, 7, 8 ], [ 12, 12, 11, 11, 10, 9, 9, 10, 10, 11, 11, 10, 12, 9, 9, 12, 7, 8, 3, 4, 4, 3, 5, 6, 2, 2, 5, 6, 8, 7, 0, 1 ], 
      [ 12, 12, 11, 11, 10, 9, 9, 10, 10, 11, 11, 10, 12, 9, 9, 12, 8, 7, 4, 3, 3, 4, 6, 5, 2, 2, 6, 5, 7, 8, 1, 0 ] ],
  SmallSchemeIdentification := 15555 )