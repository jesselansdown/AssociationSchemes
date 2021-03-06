rec(
  CharacterTable := [ [ 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], [ 1, -1, 3, -3, -3, -3, 3, 3, -3, -3, 3, 3, 1 ], [ 1, -1, -1, 1, -1, -1, 1, 1, 1-2*E(4), 1+2*E(4), -1+2*E(4), -1-2*E(4), 3 ], 
      [ 1, -1, -1, 1, -1, -1, 1, 1, 1+2*E(4), 1-2*E(4), -1-2*E(4), -1+2*E(4), 3 ], [ 1, -1, 3, -3, 1, 1, -1, -1, 1, 1, -1, -1, 3 ], 
      [ 1, 1, -1, -1, 1, 1, 1, 1, -1-2*E(4), -1+2*E(4), -1-2*E(4), -1+2*E(4), 3 ], 
      [ 1, 1, -1, -1, 1, 1, 1, 1, -1+2*E(4), -1-2*E(4), -1+2*E(4), -1-2*E(4), 3 ], [ 1, 1, 3, 3, -1, -1, -1, -1, -1, -1, -1, -1, 3 ], [ 2, 0, -2, 0, 0, 0, -2, -2, 0, 0, 2, 2, 6 ] ],
  RelationMatrix := [ [ 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11 ], 
      [ 1, 0, 3, 3, 3, 2, 2, 2, 6, 6, 6, 7, 7, 7, 4, 4, 4, 5, 5, 5, 10, 10, 10, 11, 11, 11, 8, 8, 8, 9, 9, 9 ], [ 2, 3, 0, 2, 2, 1, 3, 3, 5, 8, 9, 4, 8, 9, 7, 10, 11, 6, 10, 11, 4, 5, 9, 
          4, 5, 8, 6, 7, 11, 6, 7, 10 ], [ 2, 3, 2, 0, 2, 3, 1, 3, 8, 9, 5, 9, 4, 8, 11, 7, 10, 10, 11, 6, 5, 9, 4, 8, 4, 5, 11, 6, 7, 7, 10, 6 ], 
      [ 2, 3, 2, 2, 0, 3, 3, 1, 9, 5, 8, 8, 9, 4, 10, 11, 7, 11, 6, 10, 9, 4, 5, 5, 8, 4, 7, 11, 6, 10, 6, 7 ], [ 3, 2, 1, 3, 3, 0, 2, 2, 7, 10, 11, 6, 10, 11, 5, 8, 9, 
          4, 8, 9, 6, 7, 11, 6, 7, 10, 4, 5, 9, 4, 5, 8 ], [ 3, 2, 3, 1, 3, 2, 0, 2, 10, 11, 7, 11, 6, 10, 9, 5, 8, 8, 9, 4, 7, 11, 6, 10, 6, 7, 9, 4, 5, 5, 8, 4 ], 
      [ 3, 2, 3, 3, 1, 2, 2, 0, 11, 7, 10, 10, 11, 6, 8, 9, 5, 9, 4, 8, 11, 6, 7, 7, 10, 6, 5, 9, 4, 8, 4, 5 ], [ 4, 7, 5, 9, 8, 6, 11, 10, 0, 10, 11, 
          2, 6, 6, 3, 5, 5, 1, 8, 9, 7, 10, 2, 7, 11, 2, 8, 4, 3, 9, 4, 3 ], [ 4, 7, 9, 8, 5, 11, 10, 6, 11, 0, 10, 6, 6, 2, 5, 5, 3, 9, 1, 8, 2, 7, 10, 11, 2, 7, 4, 3, 8, 3, 9, 4 ], 
      [ 4, 7, 8, 5, 9, 10, 6, 11, 10, 11, 0, 6, 2, 6, 5, 3, 5, 8, 9, 1, 10, 2, 7, 2, 7, 11, 3, 8, 4, 4, 3, 9 ], [ 5, 6, 4, 8, 9, 7, 
          10, 11, 2, 7, 7, 0, 10, 11, 1, 8, 9, 3, 4, 4, 10, 6, 2, 11, 6, 2, 5, 8, 3, 5, 9, 3 ], [ 5, 6, 9, 4, 8, 11, 7, 10, 7, 7, 2, 11, 0, 10, 9, 1, 8, 4, 4, 3, 6, 2, 10, 2, 11, 6, 3, 5, 8, 9, 3, 5 ],
      [ 5, 6, 8, 9, 4, 10, 11, 7, 7, 2, 7, 10, 11, 0, 8, 9, 1, 4, 3, 4, 2, 10, 6, 6, 2, 11, 8, 3, 5, 3, 5, 9 ], [ 7, 4, 
          6, 10, 11, 5, 8, 9, 3, 5, 5, 1, 8, 9, 0, 10, 11, 2, 6, 6, 8, 4, 3, 9, 4, 3, 7, 10, 2, 7, 11, 2 ], [ 7, 4, 11, 6, 10, 9, 5, 8, 5, 5, 3, 9, 1, 8, 11, 0, 10, 6, 6, 2, 4, 3, 8, 3, 9, 4, 2, 7, 
          10, 11, 2, 7 ], [ 7, 4, 10, 11, 6, 8, 9, 5, 5, 3, 5, 8, 9, 1, 10, 11, 0, 6, 2, 6, 3, 8, 4, 4, 3, 9, 10, 2, 7, 2, 7, 11 ], 
      [ 6, 5, 7, 11, 10, 4, 9, 8, 1, 8, 9, 3, 4, 4, 2, 7, 7, 0, 10, 11, 5, 8, 3, 5, 9, 3, 10, 6, 2, 11, 6, 2 ], [ 6, 5, 11, 10, 7, 9, 8, 4, 9, 1, 8, 4, 4, 3, 7, 7, 2, 11, 0, 10, 3, 5, 
          8, 9, 3, 5, 6, 2, 10, 2, 11, 6 ], [ 6, 5, 10, 7, 11, 8, 4, 9, 8, 9, 1, 4, 3, 4, 7, 2, 7, 10, 11, 0, 8, 3, 5, 3, 5, 9, 2, 10, 6, 6, 2, 11 ], 
      [ 9, 11, 4, 5, 8, 7, 6, 10, 6, 2, 11, 11, 7, 2, 9, 4, 3, 5, 3, 9, 0, 6, 7, 10, 2, 10, 5, 1, 4, 3, 8, 8 ], [ 9, 11, 5, 8, 4, 6, 10, 7, 11, 6, 2, 7, 2, 11, 4, 3, 
          9, 9, 5, 3, 7, 0, 6, 2, 10, 10, 1, 4, 5, 8, 3, 8 ], [ 9, 11, 8, 4, 5, 10, 7, 6, 2, 11, 6, 2, 11, 7, 3, 9, 4, 3, 9, 5, 6, 7, 0, 10, 10, 2, 4, 5, 1, 8, 8, 3 ], 
      [ 8, 10, 4, 9, 5, 7, 11, 6, 6, 10, 2, 10, 2, 7, 8, 3, 4, 5, 8, 3, 11, 2, 11, 0, 6, 7, 3, 9, 9, 5, 1, 4 ], [ 8, 10, 5, 4, 9, 6, 7, 11, 10, 2, 
          6, 7, 10, 2, 4, 8, 3, 8, 3, 5, 2, 11, 11, 7, 0, 6, 9, 3, 9, 1, 4, 5 ], [ 8, 10, 9, 5, 4, 11, 6, 7, 2, 6, 10, 2, 7, 10, 3, 4, 8, 3, 5, 8, 11, 11, 2, 6, 7, 0, 9, 9, 3, 4, 5, 1 ], 
      [ 11, 9, 7, 10, 6, 4, 8, 5, 9, 4, 3, 5, 3, 9, 6, 2, 11, 11, 7, 2, 5, 1, 4, 3, 8, 8, 0, 6, 7, 10, 2, 10 ], [ 11, 9, 6, 7, 
          10, 5, 4, 8, 4, 3, 9, 9, 5, 3, 11, 6, 2, 7, 2, 11, 1, 4, 5, 8, 3, 8, 7, 0, 6, 2, 10, 10 ], [ 11, 9, 10, 6, 7, 8, 5, 4, 3, 9, 4, 3, 9, 5, 2, 11, 6, 2, 11, 7, 4, 5, 1, 8, 8, 3, 6, 7, 
          0, 10, 10, 2 ], [ 10, 8, 7, 6, 11, 4, 5, 9, 8, 3, 4, 5, 8, 3, 6, 10, 2, 10, 2, 7, 3, 9, 9, 5, 1, 4, 11, 2, 11, 0, 6, 7 ], 
      [ 10, 8, 6, 11, 7, 5, 9, 4, 4, 8, 3, 8, 3, 5, 10, 2, 6, 7, 10, 2, 9, 3, 9, 1, 4, 5, 2, 11, 11, 7, 0, 6 ], [ 10, 8, 11, 7, 6, 9, 4, 5, 3, 4, 8, 3, 5, 8, 2, 6, 10, 2, 7, 10, 9, 9, 
          3, 4, 5, 1, 11, 11, 2, 6, 7, 0 ] ],
  SmallSchemeIdentification := 15315 )