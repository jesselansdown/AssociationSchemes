rec(
  CharacterTable := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 1 ], [ 1, 1, 2, -2, -2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 4, -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 2, -2, -2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 4, 4*E(4), -4*E(4), 1 ], [ 1, 1, 2, -2, -2, 2, 2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -4, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 2, -2, -2, 2, 2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -4, -4*E(4), 4*E(4), 1 ], [ 1, 1, 2, 2, 2, -2, -2, -2, -2, -2, -2, -4, 4, 4, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, 2, 2, 2, 2, -4, -4, -4, 1 ], [ 1, 1, 2, 2, 2, 2, 2, -2, -2, -2, -2, 4, -4, -4, 1 ], [ 1, 1, -2, -2, 2, 0, 0, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 2 ], 
      [ 1, 1, -2, -2, 2, 0, 0, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 2 ], [ 1, 1, -2, 2, -2, 0, 0, -2, -2, 2, 2, 0, 0, 0, 2 ], [ 1, 1, -2, 2, -2, 0, 0, 2, 2, -2, -2, 0, 0, 0, 2 ], 
      [ 1, -1, 0, 0, 0, -E(8)+E(8)^3, E(8)-E(8)^3, 0, 0, 0, 0, 0, 0, 0, 8 ], [ 1, -1, 0, 0, 0, E(8)-E(8)^3, -E(8)+E(8)^3, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 1, 0, 2, 2, 3, 3, 4, 4, 6, 6, 5, 5, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 6, 5, 6, 9, 9, 10, 10, 7, 7, 8, 8, 11, 
          11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 6, 5, 6, 5, 9, 9, 10, 10, 7, 7, 8, 8, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 3, 3, 4, 4, 0, 1, 2, 2, 11, 11, 11, 11, 8, 8, 7, 7, 10, 10, 9, 9, 5, 5, 6, 6, 13, 13, 13, 13, 12, 12, 12, 12 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 11, 11, 
          11, 11, 8, 8, 7, 7, 10, 10, 9, 9, 6, 6, 5, 5, 13, 13, 13, 13, 12, 12, 12, 12 ], [ 4, 4, 3, 3, 2, 2, 0, 1, 11, 11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 5, 6, 5, 6, 13, 13, 13, 13, 12, 12, 12, 12 
         ], [ 4, 4, 3, 3, 2, 2, 1, 0, 11, 11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 5, 6, 5, 13, 13, 13, 13, 12, 12, 12, 12 ], 
      [ 5, 6, 5, 6, 11, 11, 11, 11, 0, 2, 2, 1, 12, 12, 13, 13, 12, 12, 13, 13, 3, 4, 4, 3, 7, 7, 9, 9, 8, 8, 10, 10 ], [ 5, 6, 6, 5, 11, 11, 11, 11, 2, 0, 1, 2, 12, 12, 13, 13, 12, 12, 13, 13, 4, 
          3, 3, 4, 9, 9, 7, 7, 10, 10, 8, 8 ], [ 6, 5, 5, 6, 11, 11, 11, 11, 2, 1, 0, 2, 12, 12, 13, 13, 12, 12, 13, 13, 4, 3, 3, 4, 9, 9, 7, 7, 10, 10, 8, 8 ], 
      [ 6, 5, 6, 5, 11, 11, 11, 11, 1, 2, 2, 0, 12, 12, 13, 13, 12, 12, 13, 13, 3, 4, 4, 3, 7, 7, 9, 9, 8, 8, 10, 10 ], [ 8, 8, 10, 10, 7, 7, 9, 9, 13, 13, 13, 13, 
          0, 1, 3, 3, 2, 2, 4, 4, 12, 12, 12, 12, 5, 6, 5, 6, 11, 11, 11, 11 ], [ 8, 8, 10, 10, 7, 7, 9, 9, 13, 13, 13, 13, 1, 0, 3, 3, 2, 2, 4, 4, 12, 12, 12, 12, 6, 5, 6, 5, 11, 11, 11, 11 ], 
      [ 7, 7, 9, 9, 8, 8, 10, 10, 12, 12, 12, 12, 3, 3, 0, 1, 4, 4, 2, 2, 13, 13, 13, 13, 11, 11, 11, 11, 5, 6, 5, 6 ], [ 7, 7, 
          9, 9, 8, 8, 10, 10, 12, 12, 12, 12, 3, 3, 1, 0, 4, 4, 2, 2, 13, 13, 13, 13, 11, 11, 11, 11, 6, 5, 6, 5 ], [ 10, 10, 8, 8, 9, 9, 7, 7, 13, 13, 13, 13, 2, 2, 4, 4, 0, 1, 3, 3, 12, 12, 12, 12, 
          5, 6, 6, 5, 11, 11, 11, 11 ], [ 10, 10, 8, 8, 9, 9, 7, 7, 13, 13, 13, 13, 2, 2, 4, 4, 1, 0, 3, 3, 12, 12, 12, 12, 6, 5, 5, 6, 11, 11, 11, 11 ], 
      [ 9, 9, 7, 7, 10, 10, 8, 8, 12, 12, 12, 12, 4, 4, 2, 2, 3, 3, 0, 1, 13, 13, 13, 13, 11, 11, 11, 11, 5, 6, 6, 5 ], 
      [ 9, 9, 7, 7, 10, 10, 8, 8, 12, 12, 12, 12, 4, 4, 2, 2, 3, 3, 1, 0, 13, 13, 13, 13, 11, 11, 11, 11, 6, 5, 5, 6 ], 
      [ 11, 11, 11, 11, 5, 6, 5, 6, 3, 4, 4, 3, 13, 13, 12, 12, 13, 13, 12, 12, 0, 2, 2, 1, 8, 8, 10, 10, 7, 7, 9, 9 ], [ 11, 11, 11, 11, 5, 6, 6, 5, 4, 3, 3, 4, 13, 13, 12, 12, 13, 13, 12, 12, 2, 0, 
          1, 2, 10, 10, 8, 8, 9, 9, 7, 7 ], [ 11, 11, 11, 11, 6, 5, 5, 6, 4, 3, 3, 4, 13, 13, 12, 12, 13, 13, 12, 12, 2, 1, 0, 2, 10, 10, 8, 8, 9, 9, 7, 7 ], 
      [ 11, 11, 11, 11, 6, 5, 6, 5, 3, 4, 4, 3, 13, 13, 12, 12, 13, 13, 12, 12, 1, 2, 2, 0, 8, 8, 10, 10, 7, 7, 9, 9 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 8, 10, 10, 8, 5, 6, 11, 11, 5, 6, 11, 11, 7, 9, 9, 7, 0, 1, 2, 2, 3, 3, 4, 4 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 8, 10, 10, 8, 6, 5, 11, 11, 6, 5, 11, 11, 7, 9, 9, 7, 1, 0, 2, 2, 3, 3, 4, 4 ], [ 13, 13, 13, 13, 12, 12, 12, 12, 10, 8, 8, 10, 5, 6, 11, 11, 6, 5, 11, 11, 9, 
          7, 7, 9, 2, 2, 0, 1, 4, 4, 3, 3 ], [ 13, 13, 13, 13, 12, 12, 12, 12, 10, 8, 8, 10, 6, 5, 11, 11, 5, 6, 11, 11, 9, 7, 7, 9, 2, 2, 1, 0, 4, 4, 3, 3 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 7, 9, 9, 7, 11, 11, 5, 6, 11, 11, 5, 6, 8, 10, 10, 8, 3, 3, 4, 4, 0, 1, 2, 2 ], [ 12, 12, 12, 12, 13, 13, 13, 13, 7, 9, 9, 
          7, 11, 11, 6, 5, 11, 11, 6, 5, 8, 10, 10, 8, 3, 3, 4, 4, 1, 0, 2, 2 ], [ 12, 12, 12, 12, 13, 13, 13, 13, 9, 7, 7, 9, 11, 11, 5, 6, 11, 11, 6, 5, 10, 8, 8, 10, 4, 4, 3, 3, 2, 2, 0, 1 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 9, 7, 7, 9, 11, 11, 6, 5, 11, 11, 5, 6, 10, 8, 8, 10, 4, 4, 3, 3, 2, 2, 1, 0 ] ],
  SmallSchemeIdentification := 16641 )