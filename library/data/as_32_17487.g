rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(8), 2*E(8)^3, 
          -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, -4*E(4), 4*E(4), 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), 
          4*E(4), -4*E(4), 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, -4*E(4), 4*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ]
        , [ 1, 1, 1, 1, 1, 1, 1, 1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -4, -4, 1 ], [ 1, 1, 1, 1, 1, 
          1, 1, 1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), -4, -4, 1 ], [ 2, -2, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 11, 11, 10, 10, 9, 9, 12, 12, 15, 15, 14, 14, 13, 13, 16, 16, 16, 16, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 10, 10, 9, 9, 8, 8, 11, 11, 14, 14, 13, 13, 12, 12, 15, 15, 16, 16, 16, 16, 17, 17, 17, 17 ], [ 5, 4, 7, 6, 0, 1, 2, 3, 12, 12, 13, 13, 14, 14, 15, 15, 10, 10, 11, 11, 
          8, 8, 9, 9, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 14, 14, 15, 15, 12, 12, 13, 13, 8, 8, 9, 9, 10, 10, 11, 11, 17, 17, 17, 17, 16, 16, 16, 16 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 12, 12, 15, 15, 14, 14, 13, 13, 10, 10, 9, 9, 8, 8, 11, 11, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 6, 7, 4, 5, 3, 2, 1, 0, 
          14, 14, 13, 13, 12, 12, 15, 15, 8, 8, 11, 11, 10, 10, 9, 9, 17, 17, 17, 17, 16, 16, 16, 16 ], [ 9, 11, 9, 11, 13, 15, 13, 15, 0, 3, 16, 16, 1, 2, 16, 16, 4, 7, 17, 17, 5, 
          6, 17, 17, 12, 12, 14, 14, 8, 8, 10, 10 ], [ 9, 11, 9, 11, 13, 15, 13, 15, 3, 0, 16, 16, 2, 1, 16, 16, 7, 4, 17, 17, 6, 5, 17, 17, 14, 14, 12, 12, 10, 10, 8, 8 ], 
      [ 8, 10, 10, 8, 12, 14, 14, 12, 17, 17, 0, 2, 17, 17, 1, 3, 16, 16, 4, 6, 16, 16, 5, 7, 9, 11, 9, 11, 13, 15, 13, 15 ], 
      [ 8, 10, 10, 8, 12, 14, 14, 12, 17, 17, 2, 0, 17, 17, 3, 1, 16, 16, 6, 4, 16, 16, 7, 5, 11, 9, 11, 9, 15, 13, 15, 13 ], 
      [ 11, 9, 11, 9, 15, 13, 15, 13, 1, 2, 16, 16, 0, 3, 16, 16, 5, 6, 17, 17, 4, 7, 17, 17, 14, 14, 12, 12, 10, 10, 8, 8 ], [ 11, 9, 11, 9, 15, 13, 15, 13, 2, 1, 16, 16, 3, 0, 16, 16, 6, 5, 17, 17, 
          7, 4, 17, 17, 12, 12, 14, 14, 8, 8, 10, 10 ], [ 10, 8, 8, 10, 14, 12, 12, 14, 17, 17, 1, 3, 17, 17, 0, 2, 16, 16, 5, 7, 16, 16, 4, 6, 11, 9, 11, 9, 15, 13, 15, 13 ], 
      [ 10, 8, 8, 10, 14, 12, 12, 14, 17, 17, 3, 1, 17, 17, 2, 0, 16, 16, 7, 5, 16, 16, 6, 4, 9, 11, 9, 11, 13, 15, 13, 15 ], [ 13, 15, 13, 15, 11, 9, 11, 
          9, 5, 6, 17, 17, 4, 7, 17, 17, 0, 3, 16, 16, 1, 2, 16, 16, 10, 10, 8, 8, 12, 12, 14, 14 ], [ 13, 15, 13, 15, 11, 9, 11, 9, 6, 5, 17, 17, 7, 4, 17, 17, 3, 0, 16, 16, 2, 
          1, 16, 16, 8, 8, 10, 10, 14, 14, 12, 12 ], [ 12, 14, 14, 12, 10, 8, 8, 10, 16, 16, 5, 7, 16, 16, 4, 6, 17, 17, 0, 2, 17, 17, 1, 3, 13, 15, 13, 15, 11, 9, 11, 9 ], 
      [ 12, 14, 14, 12, 10, 8, 8, 10, 16, 16, 7, 5, 16, 16, 6, 4, 17, 17, 2, 0, 17, 17, 3, 1, 15, 13, 15, 13, 9, 11, 9, 11 ], [ 15, 13, 15, 13, 9, 11, 9, 11, 
          4, 7, 17, 17, 5, 6, 17, 17, 1, 2, 16, 16, 0, 3, 16, 16, 8, 8, 10, 10, 14, 14, 12, 12 ], [ 15, 13, 15, 13, 9, 11, 9, 11, 7, 4, 17, 17, 6, 5, 17, 17, 2, 1, 16, 16, 3, 
          0, 16, 16, 10, 10, 8, 8, 12, 12, 14, 14 ], [ 14, 12, 12, 14, 8, 10, 10, 8, 16, 16, 4, 6, 16, 16, 5, 7, 17, 17, 1, 3, 17, 17, 0, 2, 15, 13, 15, 13, 9, 11, 9, 11 ], 
      [ 14, 12, 12, 14, 8, 10, 10, 8, 16, 16, 6, 4, 16, 16, 7, 5, 17, 17, 3, 1, 17, 17, 2, 0, 13, 15, 13, 15, 11, 9, 11, 9 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 13, 15, 8, 10, 15, 13, 10, 8, 11, 9, 12, 14, 9, 11, 14, 12, 0, 3, 2, 1, 6, 5, 4, 7 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 13, 15, 10, 8, 15, 13, 8, 10, 11, 9, 14, 12, 9, 11, 12, 14, 3, 0, 1, 2, 5, 6, 7, 4 ], [ 17, 17, 17, 17, 16, 16, 16, 16, 15, 13, 8, 10, 13, 15, 10, 8, 9, 11, 12, 
          14, 11, 9, 14, 12, 2, 1, 0, 3, 4, 7, 6, 5 ], [ 17, 17, 17, 17, 16, 16, 16, 16, 15, 13, 10, 8, 13, 15, 8, 10, 9, 11, 14, 12, 11, 9, 12, 14, 1, 2, 3, 0, 7, 4, 5, 6 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 9, 11, 12, 14, 11, 9, 14, 12, 13, 15, 10, 8, 15, 13, 8, 10, 7, 4, 5, 6, 0, 3, 2, 1 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 9, 11, 14, 12, 11, 9, 12, 14, 13, 15, 8, 10, 15, 13, 10, 8, 4, 7, 6, 5, 3, 0, 1, 2 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 11, 9, 12, 14, 9, 11, 14, 12, 15, 13, 10, 8, 13, 15, 8, 10, 5, 6, 7, 4, 2, 1, 0, 3 ], [ 16, 16, 16, 16, 17, 17, 17, 17, 11, 9, 14, 12, 9, 11, 12, 14, 15, 13, 8, 
          10, 13, 15, 10, 8, 6, 5, 4, 7, 1, 2, 3, 0 ] ],
  SmallSchemeIdentification := 17487 )