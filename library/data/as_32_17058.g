rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -3, -3, 3, 3, -3*E(4), 3*E(4), -3*E(4), 3*E(4), 1 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), -3, -3, 3, 3, 3*E(4), -3*E(4), 3*E(4), -3*E(4), 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 3, 3, 3, 3, -3, -3, -3, -3, 1 ], 
      [ 2, -2, -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 2, -2, 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), 3 ], [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), 3 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 3 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 3 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11, 12, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 9, 9, 9, 8, 8, 8, 11, 11, 11, 10, 10, 10, 14, 14, 14, 15, 15, 15, 12, 12, 12, 13, 13, 13 ], [ 3, 2, 0, 1, 5, 6, 7, 4, 10, 10, 10, 11, 11, 11, 9, 9, 9, 8, 8, 
          8, 13, 13, 13, 14, 14, 14, 15, 15, 15, 12, 12, 12 ], [ 2, 3, 1, 0, 7, 4, 5, 6, 11, 11, 11, 10, 10, 10, 8, 8, 8, 9, 9, 9, 15, 15, 15, 12, 12, 12, 13, 13, 13, 14, 14, 14 ], 
      [ 5, 7, 4, 6, 0, 3, 1, 2, 12, 12, 12, 14, 14, 14, 13, 13, 13, 15, 15, 15, 10, 10, 10, 9, 9, 9, 11, 11, 11, 8, 8, 8 ], [ 4, 6, 7, 5, 2, 0, 3, 
          1, 15, 15, 15, 13, 13, 13, 12, 12, 12, 14, 14, 14, 8, 8, 8, 10, 10, 10, 9, 9, 9, 11, 11, 11 ], [ 7, 5, 6, 4, 1, 2, 0, 3, 14, 14, 14, 12, 12, 12, 15, 15, 15, 13, 13, 13, 11, 11, 
          11, 8, 8, 8, 10, 10, 10, 9, 9, 9 ], [ 6, 4, 5, 7, 3, 1, 2, 0, 13, 13, 13, 15, 15, 15, 14, 14, 14, 12, 12, 12, 9, 9, 9, 11, 11, 11, 8, 8, 8, 10, 10, 10 ], 
      [ 8, 9, 11, 10, 13, 14, 15, 12, 0, 10, 11, 1, 10, 11, 3, 8, 9, 2, 8, 9, 7, 13, 15, 4, 12, 14, 5, 13, 15, 6, 12, 14 ], [ 8, 9, 11, 10, 13, 14, 15, 12, 11, 0, 
          10, 10, 11, 1, 8, 9, 3, 9, 2, 8, 15, 7, 13, 12, 14, 4, 13, 15, 5, 14, 6, 12 ], [ 8, 9, 11, 10, 13, 14, 15, 12, 10, 11, 0, 11, 1, 10, 9, 3, 8, 8, 9, 2, 13, 15, 
          7, 14, 4, 12, 15, 5, 13, 12, 14, 6 ], [ 9, 8, 10, 11, 15, 12, 13, 14, 1, 11, 10, 0, 11, 10, 2, 9, 8, 3, 9, 8, 5, 15, 13, 6, 14, 12, 7, 15, 13, 4, 14, 12 ], 
      [ 9, 8, 10, 11, 15, 12, 13, 14, 11, 10, 1, 10, 0, 11, 8, 2, 9, 9, 8, 3, 15, 13, 5, 12, 6, 14, 13, 7, 15, 14, 12, 4 ], [ 9, 8, 10, 11, 15, 12, 13, 14, 10, 
          1, 11, 11, 10, 0, 9, 8, 2, 8, 3, 9, 13, 5, 15, 14, 12, 6, 15, 13, 7, 12, 4, 14 ], [ 11, 10, 9, 8, 12, 13, 14, 15, 2, 8, 9, 3, 8, 9, 0, 11, 10, 1, 11, 10, 6, 12, 
          14, 7, 15, 13, 4, 12, 14, 5, 15, 13 ], [ 11, 10, 9, 8, 12, 13, 14, 15, 8, 9, 2, 9, 3, 8, 10, 0, 11, 11, 10, 1, 12, 14, 6, 13, 7, 15, 14, 4, 12, 15, 13, 5 ], 
      [ 11, 10, 9, 8, 12, 13, 14, 15, 9, 2, 8, 8, 9, 3, 11, 10, 0, 10, 1, 11, 14, 6, 12, 15, 13, 7, 12, 14, 4, 13, 5, 15 ], [ 10, 11, 8, 9, 14, 15, 12, 13, 3, 
          9, 8, 2, 9, 8, 1, 10, 11, 0, 10, 11, 4, 14, 12, 5, 13, 15, 6, 14, 12, 7, 13, 15 ], [ 10, 11, 8, 9, 14, 15, 12, 13, 8, 3, 9, 9, 8, 2, 10, 11, 1, 11, 0, 10, 12, 4, 
          14, 13, 15, 5, 14, 12, 6, 15, 7, 13 ], [ 10, 11, 8, 9, 14, 15, 12, 13, 9, 8, 3, 8, 2, 9, 11, 1, 10, 10, 11, 0, 14, 12, 4, 15, 5, 13, 12, 6, 14, 13, 15, 7 ], 
      [ 13, 15, 12, 14, 11, 8, 10, 9, 6, 14, 12, 4, 14, 12, 7, 13, 15, 5, 13, 15, 0, 11, 10, 3, 9, 8, 1, 11, 10, 2, 9, 8 ], 
      [ 13, 15, 12, 14, 11, 8, 10, 9, 12, 6, 14, 14, 12, 4, 13, 15, 7, 15, 5, 13, 10, 0, 11, 9, 8, 3, 11, 10, 1, 8, 2, 9 ], 
      [ 13, 15, 12, 14, 11, 8, 10, 9, 14, 12, 6, 12, 4, 14, 15, 7, 13, 13, 15, 5, 11, 10, 0, 8, 3, 9, 10, 1, 11, 9, 8, 2 ], [ 12, 14, 15, 13, 9, 11, 8, 10, 5, 13, 15, 7, 13, 15, 6, 12, 14, 4, 12, 14, 
          2, 9, 8, 0, 10, 11, 3, 9, 8, 1, 10, 11 ], [ 12, 14, 15, 13, 9, 11, 8, 10, 13, 15, 5, 15, 7, 13, 14, 6, 12, 12, 14, 4, 9, 8, 2, 11, 0, 10, 8, 3, 9, 10, 11, 1 ], 
      [ 12, 14, 15, 13, 9, 11, 8, 10, 15, 5, 13, 13, 15, 7, 12, 14, 6, 14, 4, 12, 8, 2, 9, 10, 11, 0, 9, 8, 3, 11, 1, 10 ], [ 15, 13, 14, 12, 10, 9, 11, 8, 
          4, 12, 14, 6, 12, 14, 5, 15, 13, 7, 15, 13, 1, 10, 11, 2, 8, 9, 0, 10, 11, 3, 8, 9 ], [ 15, 13, 14, 12, 10, 9, 11, 8, 12, 14, 4, 14, 6, 12, 13, 5, 15, 15, 13, 7, 10, 
          11, 1, 9, 2, 8, 11, 0, 10, 8, 9, 3 ], [ 15, 13, 14, 12, 10, 9, 11, 8, 14, 4, 12, 12, 14, 6, 15, 13, 5, 13, 7, 15, 11, 1, 10, 8, 9, 2, 10, 11, 0, 9, 3, 8 ], 
      [ 14, 12, 13, 15, 8, 10, 9, 11, 7, 15, 13, 5, 15, 13, 4, 14, 12, 6, 14, 12, 3, 8, 9, 1, 11, 10, 2, 8, 9, 0, 11, 10 ], 
      [ 14, 12, 13, 15, 8, 10, 9, 11, 13, 7, 15, 15, 13, 5, 14, 12, 4, 12, 6, 14, 9, 3, 8, 11, 10, 1, 8, 9, 2, 10, 0, 11 ], 
      [ 14, 12, 13, 15, 8, 10, 9, 11, 15, 13, 7, 13, 5, 15, 12, 4, 14, 14, 12, 6, 8, 9, 3, 10, 1, 11, 9, 2, 8, 11, 10, 0 ] ],
  SmallSchemeIdentification := 17058 )