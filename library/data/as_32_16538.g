rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], [ 2, 2, 0, 0, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 4 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 4 ], [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 4 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 11, 11, 
          12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10 ], [ 2, 3, 1, 0, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 12, 12, 11, 11, 13, 13, 10, 10, 12, 12, 11, 11, 13, 13 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 
          7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 10, 10, 13, 13, 11, 11, 12, 12, 10, 10, 13, 13, 11, 11 ], [ 5, 5, 4, 4, 3, 2, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 11, 11, 13, 13, 12, 12, 10, 10, 
          11, 11, 13, 13, 12, 12, 10, 10 ], [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 13, 13, 11, 11, 10, 10, 12, 12, 13, 13, 11, 11, 10, 10, 12, 12 ], 
      [ 6, 6, 9, 9, 7, 7, 8, 8, 0, 1, 4, 4, 5, 5, 2, 3, 11, 13, 11, 13, 10, 12, 10, 12, 11, 13, 11, 13, 10, 12, 10, 12 ], 
      [ 6, 6, 9, 9, 7, 7, 8, 8, 1, 0, 4, 4, 5, 5, 3, 2, 13, 11, 13, 11, 12, 10, 12, 10, 13, 11, 13, 11, 12, 10, 12, 10 ], 
      [ 7, 7, 8, 8, 6, 6, 9, 9, 4, 4, 0, 1, 2, 3, 5, 5, 11, 13, 13, 11, 10, 12, 12, 10, 13, 11, 11, 13, 12, 10, 10, 12 ], [ 7, 7, 8, 8, 6, 6, 9, 9, 4, 4, 1, 0, 3, 2, 5, 5, 13, 11, 11, 13, 12, 10, 10, 
          12, 11, 13, 13, 11, 10, 12, 12, 10 ], [ 9, 9, 6, 6, 8, 8, 7, 7, 5, 5, 3, 2, 0, 1, 4, 4, 12, 10, 10, 12, 11, 13, 13, 11, 10, 12, 12, 10, 13, 11, 11, 13 ], 
      [ 9, 9, 6, 6, 8, 8, 7, 7, 5, 5, 2, 3, 1, 0, 4, 4, 10, 12, 12, 10, 13, 11, 11, 13, 12, 10, 10, 12, 11, 13, 13, 11 ], [ 8, 8, 7, 7, 9, 9, 6, 6, 3, 2, 5, 5, 
          4, 4, 0, 1, 12, 10, 12, 10, 11, 13, 11, 13, 12, 10, 12, 10, 11, 13, 11, 13 ], [ 8, 8, 7, 7, 9, 9, 6, 6, 2, 3, 5, 5, 4, 4, 1, 0, 10, 12, 10, 12, 13, 11, 13, 11, 10, 12, 10, 12, 13, 11, 13, 11 
         ], [ 11, 13, 10, 12, 11, 13, 10, 12, 10, 12, 10, 12, 13, 11, 13, 11, 0, 8, 4, 9, 7, 3, 6, 5, 9, 4, 8, 1, 5, 6, 2, 7 ], 
      [ 11, 13, 10, 12, 11, 13, 10, 12, 12, 10, 12, 10, 11, 13, 11, 13, 9, 0, 8, 4, 3, 6, 5, 7, 4, 8, 1, 9, 7, 5, 6, 2 ], [ 11, 13, 10, 12, 13, 11, 12, 10, 10, 12, 12, 10, 11, 13, 13, 11, 4, 9, 0, 
          8, 6, 5, 7, 3, 8, 1, 9, 4, 2, 7, 5, 6 ], [ 11, 13, 10, 12, 13, 11, 12, 10, 12, 10, 10, 12, 13, 11, 11, 13, 8, 4, 9, 0, 5, 7, 3, 6, 1, 9, 4, 8, 6, 2, 7, 5 ], 
      [ 10, 12, 13, 11, 10, 12, 13, 11, 11, 13, 11, 13, 10, 12, 10, 12, 7, 2, 6, 5, 0, 8, 4, 9, 5, 6, 3, 7, 9, 4, 8, 1 ], 
      [ 10, 12, 13, 11, 10, 12, 13, 11, 13, 11, 13, 11, 12, 10, 12, 10, 2, 6, 5, 7, 9, 0, 8, 4, 7, 5, 6, 3, 4, 8, 1, 9 ], 
      [ 10, 12, 13, 11, 12, 10, 11, 13, 11, 13, 13, 11, 12, 10, 10, 12, 6, 5, 7, 2, 4, 9, 0, 8, 3, 7, 5, 6, 8, 1, 9, 4 ], [ 10, 12, 13, 11, 12, 10, 11, 13, 13, 11, 11, 13, 10, 12, 12, 10, 5, 7, 2, 6, 
          8, 4, 9, 0, 6, 3, 7, 5, 1, 9, 4, 8 ], [ 13, 11, 12, 10, 11, 13, 10, 12, 10, 12, 12, 10, 11, 13, 13, 11, 8, 4, 9, 1, 5, 7, 2, 6, 0, 9, 4, 8, 6, 3, 7, 5 ], 
      [ 13, 11, 12, 10, 11, 13, 10, 12, 12, 10, 10, 12, 13, 11, 11, 13, 4, 9, 1, 8, 6, 5, 7, 2, 8, 0, 9, 4, 3, 7, 5, 6 ], 
      [ 13, 11, 12, 10, 13, 11, 12, 10, 10, 12, 10, 12, 13, 11, 13, 11, 9, 1, 8, 4, 2, 6, 5, 7, 4, 8, 0, 9, 7, 5, 6, 3 ], 
      [ 13, 11, 12, 10, 13, 11, 12, 10, 12, 10, 12, 10, 11, 13, 11, 13, 1, 8, 4, 9, 7, 2, 6, 5, 9, 4, 8, 0, 5, 6, 3, 7 ], [ 12, 10, 11, 13, 10, 12, 13, 11, 11, 13, 13, 11, 12, 10, 10, 12, 5, 7, 3, 6, 
          8, 4, 9, 1, 6, 2, 7, 5, 0, 9, 4, 8 ], [ 12, 10, 11, 13, 10, 12, 13, 11, 13, 11, 11, 13, 10, 12, 12, 10, 6, 5, 7, 3, 4, 9, 1, 8, 2, 7, 5, 6, 8, 0, 9, 4 ], 
      [ 12, 10, 11, 13, 12, 10, 11, 13, 11, 13, 11, 13, 10, 12, 10, 12, 3, 6, 5, 7, 9, 1, 8, 4, 7, 5, 6, 2, 4, 8, 0, 9 ], 
      [ 12, 10, 11, 13, 12, 10, 11, 13, 13, 11, 13, 11, 12, 10, 12, 10, 7, 3, 6, 5, 1, 8, 4, 9, 5, 6, 2, 7, 9, 4, 8, 0 ] ],
  SmallSchemeIdentification := 16538 )