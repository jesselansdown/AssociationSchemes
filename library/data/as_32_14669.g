rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 8, 8, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -8, -8, 1 ], [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, -4*E(8)-4*E(8)^3, 4*E(8)+4*E(8)^3, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 4*E(8)+4*E(8)^3, -4*E(8)-4*E(8)^3, 2 ], [ 1, 1, 1, 1, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 2 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 2 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 9, 9, 8, 8, 7, 7, 11, 11, 11, 11, 
          11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 8, 8, 7, 7, 6, 6, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 9, 6, 8, 7, 9, 6, 8, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 
          9, 7, 8, 6, 9, 7, 8, 6, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 7, 6, 8, 9, 7, 6, 8, 11, 11, 11, 11, 11, 11, 11, 11, 
          10, 10, 10, 10, 10, 10, 10, 10 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 7, 9, 8, 6, 7, 9, 8, 6, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 7, 9, 7, 9, 6, 8, 8, 6, 0, 3, 4, 5, 2, 1, 5, 4, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 7, 9, 7, 9, 8, 6, 6, 8, 3, 0, 5, 4, 1, 2, 4, 5, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10 ], 
      [ 6, 8, 8, 6, 7, 9, 7, 9, 4, 5, 0, 2, 5, 4, 3, 1, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 6, 8, 8, 6, 9, 7, 9, 7, 5, 4, 2, 0, 4, 5, 1, 3, 11, 11, 11, 11, 10, 10, 10, 
          10, 11, 11, 11, 11, 10, 10, 10, 10 ], [ 9, 7, 9, 7, 6, 8, 8, 6, 2, 1, 5, 4, 0, 3, 4, 5, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10 ], 
      [ 9, 7, 9, 7, 8, 6, 6, 8, 1, 2, 4, 5, 3, 0, 5, 4, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 8, 6, 6, 8, 7, 9, 7, 9, 5, 4, 3, 1, 
          4, 5, 0, 2, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10 ], [ 8, 6, 6, 8, 9, 7, 9, 7, 4, 5, 1, 3, 5, 4, 2, 0, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11 
         ], [ 11, 11, 10, 10, 11, 11, 10, 10, 11, 10, 11, 10, 10, 11, 10, 11, 0, 1, 4, 4, 6, 7, 8, 9, 6, 7, 8, 9, 2, 3, 5, 5 ], 
      [ 11, 11, 10, 10, 11, 11, 10, 10, 11, 10, 11, 10, 10, 11, 10, 11, 1, 0, 4, 4, 8, 9, 6, 7, 8, 9, 6, 7, 3, 2, 5, 5 ], [ 11, 11, 10, 10, 11, 11, 10, 10, 11, 10, 11, 10, 10, 11, 10, 11, 4, 4, 0, 
          1, 7, 8, 9, 6, 9, 6, 7, 8, 5, 5, 2, 3 ], [ 11, 11, 10, 10, 11, 11, 10, 10, 11, 10, 11, 10, 10, 11, 10, 11, 4, 4, 1, 0, 9, 6, 7, 8, 7, 8, 9, 6, 5, 5, 3, 2 ], 
      [ 11, 11, 10, 10, 11, 11, 10, 10, 10, 11, 10, 11, 11, 10, 11, 10, 7, 9, 6, 8, 0, 4, 1, 4, 3, 5, 2, 5, 7, 9, 8, 6 ], 
      [ 11, 11, 10, 10, 11, 11, 10, 10, 10, 11, 10, 11, 11, 10, 11, 10, 6, 8, 9, 7, 4, 0, 4, 1, 5, 2, 5, 3, 8, 6, 9, 7 ], 
      [ 11, 11, 10, 10, 11, 11, 10, 10, 10, 11, 10, 11, 11, 10, 11, 10, 9, 7, 8, 6, 1, 4, 0, 4, 2, 5, 3, 5, 9, 7, 6, 8 ], [ 11, 11, 10, 10, 11, 11, 10, 10, 10, 11, 10, 11, 11, 10, 11, 10, 8, 6, 7, 9, 
          4, 1, 4, 0, 5, 3, 5, 2, 6, 8, 7, 9 ], [ 10, 10, 11, 11, 10, 10, 11, 11, 11, 10, 11, 10, 10, 11, 10, 11, 7, 9, 8, 6, 3, 5, 2, 5, 0, 4, 1, 4, 7, 9, 6, 8 ], 
      [ 10, 10, 11, 11, 10, 10, 11, 11, 11, 10, 11, 10, 10, 11, 10, 11, 6, 8, 7, 9, 5, 2, 5, 3, 4, 0, 4, 1, 8, 6, 7, 9 ], 
      [ 10, 10, 11, 11, 10, 10, 11, 11, 11, 10, 11, 10, 10, 11, 10, 11, 9, 7, 6, 8, 2, 5, 3, 5, 1, 4, 0, 4, 9, 7, 8, 6 ], 
      [ 10, 10, 11, 11, 10, 10, 11, 11, 11, 10, 11, 10, 10, 11, 10, 11, 8, 6, 9, 7, 5, 3, 5, 2, 4, 1, 4, 0, 6, 8, 9, 7 ], [ 10, 10, 11, 11, 10, 10, 11, 11, 10, 11, 10, 11, 11, 10, 11, 10, 2, 3, 5, 5, 
          6, 9, 8, 7, 6, 9, 8, 7, 0, 1, 4, 4 ], [ 10, 10, 11, 11, 10, 10, 11, 11, 10, 11, 10, 11, 11, 10, 11, 10, 3, 2, 5, 5, 8, 7, 6, 9, 8, 7, 6, 9, 1, 0, 4, 4 ], 
      [ 10, 10, 11, 11, 10, 10, 11, 11, 10, 11, 10, 11, 11, 10, 11, 10, 5, 5, 2, 3, 9, 8, 7, 6, 7, 6, 9, 8, 4, 4, 0, 1 ], 
      [ 10, 10, 11, 11, 10, 10, 11, 11, 10, 11, 10, 11, 11, 10, 11, 10, 5, 5, 3, 2, 7, 6, 9, 8, 9, 8, 7, 6, 4, 4, 1, 0 ] ],
  SmallSchemeIdentification := 14669 )