rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 16, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -16, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 0, 2 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 2 ], [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 4 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 4 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 9, 9, 8, 8, 12, 12, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 10, 10, 8, 8, 9, 9, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 11, 11, 9, 9, 8, 8, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], [ 6, 7, 4, 5, 3, 2, 1, 0, 
          11, 11, 10, 10, 8, 8, 9, 9, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], [ 9, 8, 9, 8, 11, 10, 11, 10, 0, 2, 1, 3, 4, 6, 5, 7, 12, 12, 12, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], [ 9, 8, 9, 8, 11, 10, 11, 10, 2, 0, 3, 1, 6, 4, 7, 5, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 8, 9, 8, 9, 10, 11, 10, 11, 1, 3, 0, 2, 5, 7, 4, 6, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], [ 8, 9, 8, 9, 10, 11, 10, 11, 
          3, 1, 2, 0, 7, 5, 6, 4, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], [ 11, 10, 11, 10, 8, 9, 8, 9, 5, 7, 4, 6, 0, 2, 1, 3, 12, 12, 12, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], [ 11, 10, 11, 10, 8, 9, 8, 9, 7, 5, 6, 4, 2, 0, 3, 1, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 10, 11, 10, 11, 9, 8, 9, 8, 4, 6, 5, 7, 1, 3, 0, 2, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], [ 10, 11, 10, 11, 9, 8, 9, 8, 
          6, 4, 7, 5, 3, 1, 2, 0, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 ], [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 1, 2, 3, 4, 5, 
          6, 7, 8, 8, 9, 9, 10, 10, 11, 11 ], [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 8, 8, 11, 11, 10, 10 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 9, 9, 8, 8 ], [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 4, 5, 6, 
          7, 1, 0, 3, 2, 11, 11, 10, 10, 8, 8, 9, 9 ], [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 11, 11, 9, 9, 8, 8 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 8, 8, 9, 9 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 9, 8, 9, 8, 11, 10, 11, 10, 0, 2, 1, 3, 4, 6, 5, 7 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 9, 8, 9, 8, 11, 10, 11, 10, 2, 0, 3, 1, 6, 4, 7, 5 ], [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 8, 9, 8, 
          9, 10, 11, 10, 11, 1, 3, 0, 2, 5, 7, 4, 6 ], [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 8, 9, 8, 9, 10, 11, 10, 11, 3, 1, 2, 0, 7, 5, 6, 4 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 10, 11, 10, 8, 9, 8, 9, 5, 7, 4, 6, 0, 2, 1, 3 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 10, 11, 10, 8, 9, 8, 9, 7, 5, 6, 4, 2, 0, 3, 1 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 10, 11, 10, 11, 9, 8, 9, 8, 4, 6, 5, 7, 1, 3, 0, 2 ], [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 10, 11, 
          10, 11, 9, 8, 9, 8, 6, 4, 7, 5, 3, 1, 2, 0 ] ],
  SmallSchemeIdentification := 15335 )