rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 1, 1, 2, 2, -4, -4, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], [ 1, 1, 1, 1, 2, 2, -4, -4, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 4, 4, -4, -4, -4, -4, 1 ], [ 1, 1, 1, 1, -2, -2, -4, 4, 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, -2, -2, 4, -4, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 4 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 10, 10, 10, 10, 11, 11, 11, 11, 8, 8, 8, 8, 9, 9, 9, 9 ], [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 11, 11, 
          11, 11, 10, 10, 10, 10, 9, 9, 9, 9 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 6, 6, 6, 6, 7, 7, 7, 7, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 10, 10, 9, 9, 11, 11, 8, 8, 10, 10, 9, 9, 11, 11 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 7, 7, 6, 6, 6, 
          6, 10, 10, 8, 8, 11, 11, 9, 9, 10, 10, 8, 8, 11, 11, 9, 9 ], [ 5, 5, 4, 4, 2, 3, 0, 1, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 10, 10, 11, 11, 9, 9, 8, 8, 10, 10, 11, 11, 9, 9 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 7, 7, 7, 7, 6, 6, 6, 6, 10, 10, 8, 8, 9, 9, 11, 11, 10, 10, 8, 8, 9, 9, 11, 11 ], [ 6, 6, 6, 6, 7, 7, 7, 
          7, 0, 1, 2, 3, 4, 4, 5, 5, 9, 11, 9, 11, 8, 10, 8, 10, 9, 11, 9, 11, 8, 10, 8, 10 ], [ 6, 6, 6, 6, 7, 7, 7, 7, 1, 0, 3, 2, 4, 4, 5, 5, 11, 9, 11, 9, 10, 8, 10, 8, 11, 9, 11, 9, 10, 8, 10, 8 ]
        , [ 6, 6, 6, 6, 7, 7, 7, 7, 2, 3, 0, 1, 5, 5, 4, 4, 11, 9, 11, 9, 8, 10, 8, 10, 11, 9, 11, 9, 8, 10, 8, 10 ], 
      [ 6, 6, 6, 6, 7, 7, 7, 7, 3, 2, 1, 0, 5, 5, 4, 4, 9, 11, 9, 11, 10, 8, 10, 8, 9, 11, 9, 11, 10, 8, 10, 8 ], [ 7, 7, 7, 7, 6, 6, 6, 6, 4, 4, 5, 5, 0, 1, 2, 3, 9, 11, 11, 9, 8, 10, 10, 8, 11, 9, 
          9, 11, 10, 8, 8, 10 ], [ 7, 7, 7, 7, 6, 6, 6, 6, 4, 4, 5, 5, 1, 0, 3, 2, 11, 9, 9, 11, 10, 8, 8, 10, 9, 11, 11, 9, 8, 10, 10, 8 ], 
      [ 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 4, 4, 2, 3, 0, 1, 11, 9, 9, 11, 8, 10, 10, 8, 9, 11, 11, 9, 10, 8, 8, 10 ], [ 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 4, 4, 3, 2, 1, 0, 9, 11, 11, 9, 
          10, 8, 8, 10, 11, 9, 9, 11, 8, 10, 10, 8 ], [ 9, 11, 9, 11, 9, 11, 9, 11, 8, 10, 10, 8, 8, 10, 10, 8, 0, 3, 4, 5, 7, 7, 6, 6, 5, 4, 2, 1, 6, 6, 7, 7 ], 
      [ 9, 11, 9, 11, 9, 11, 9, 11, 10, 8, 8, 10, 10, 8, 8, 10, 3, 0, 5, 4, 7, 7, 6, 6, 4, 5, 1, 2, 6, 6, 7, 7 ], [ 9, 11, 9, 11, 11, 9, 11, 9, 8, 10, 10, 
          8, 10, 8, 8, 10, 4, 5, 0, 3, 6, 6, 7, 7, 2, 1, 5, 4, 7, 7, 6, 6 ], [ 9, 11, 9, 11, 11, 9, 11, 9, 10, 8, 8, 10, 8, 10, 10, 8, 5, 4, 3, 0, 6, 6, 7, 7, 1, 2, 4, 5, 7, 7, 6, 6 ], 
      [ 8, 10, 10, 8, 8, 10, 10, 8, 9, 11, 9, 11, 9, 11, 9, 11, 7, 7, 6, 6, 0, 2, 4, 5, 6, 6, 7, 7, 5, 4, 3, 1 ], [ 8, 10, 10, 8, 8, 
          10, 10, 8, 11, 9, 11, 9, 11, 9, 11, 9, 7, 7, 6, 6, 2, 0, 5, 4, 6, 6, 7, 7, 4, 5, 1, 3 ], [ 8, 10, 10, 8, 10, 8, 8, 10, 9, 11, 9, 11, 11, 9, 11, 9, 6, 6, 7, 7, 4, 5, 0, 2, 7, 7, 
          6, 6, 3, 1, 5, 4 ], [ 8, 10, 10, 8, 10, 8, 8, 10, 11, 9, 11, 9, 9, 11, 9, 11, 6, 6, 7, 7, 5, 4, 2, 0, 7, 7, 6, 6, 1, 3, 4, 5 ], 
      [ 11, 9, 11, 9, 9, 11, 9, 11, 8, 10, 10, 8, 10, 8, 8, 10, 5, 4, 2, 1, 6, 6, 7, 7, 0, 3, 4, 5, 7, 7, 6, 6 ], [ 11, 9, 11, 9, 9, 11, 9, 11, 10, 8, 8, 10, 8, 10, 10, 8, 4, 5, 
          1, 2, 6, 6, 7, 7, 3, 0, 5, 4, 7, 7, 6, 6 ], [ 11, 9, 11, 9, 11, 9, 11, 9, 8, 10, 10, 8, 8, 10, 10, 8, 2, 1, 5, 4, 7, 7, 6, 6, 4, 5, 0, 3, 6, 6, 7, 7 ], 
      [ 11, 9, 11, 9, 11, 9, 11, 9, 10, 8, 8, 10, 10, 8, 8, 10, 1, 2, 4, 5, 7, 7, 6, 6, 5, 4, 3, 0, 6, 6, 7, 7 ], [ 10, 8, 8, 10, 8, 10, 10, 8, 9, 11, 9, 
          11, 11, 9, 11, 9, 6, 6, 7, 7, 5, 4, 3, 1, 7, 7, 6, 6, 0, 2, 4, 5 ], [ 10, 8, 8, 10, 8, 10, 10, 8, 11, 9, 11, 9, 9, 11, 9, 11, 6, 6, 7, 7, 4, 5, 1, 3, 7, 7, 6, 6, 2, 0, 5, 4 ], 
      [ 10, 8, 8, 10, 10, 8, 8, 10, 9, 11, 9, 11, 9, 11, 9, 11, 7, 7, 6, 6, 3, 1, 5, 4, 6, 6, 7, 7, 4, 5, 0, 2 ], [ 10, 8, 8, 10, 
          10, 8, 8, 10, 11, 9, 11, 9, 11, 9, 11, 9, 7, 7, 6, 6, 1, 3, 4, 5, 6, 6, 7, 7, 5, 4, 2, 0 ] ],
  SmallSchemeIdentification := 14929 )