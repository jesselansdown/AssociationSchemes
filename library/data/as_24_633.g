rec(
  CharacterTable := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, 2, 2, 2, 2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3), 2*E(3), 2*E(3)^2, 2*E(3), 2*E(3)^2, 1 ], 
      [ 1, 1, 2, 2, 2, 2*E(3), 2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3), 1 ], [ 3, 3, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 3 ], [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12 ] ],
  RelationMatrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 7, 7, 9, 9, 5, 5, 11, 11, 6, 6, 12, 12, 8, 8, 10, 10 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 7, 7, 9, 9, 5, 5, 11, 11, 6, 6, 12, 12, 8, 8, 10, 10 ], 
      [ 3, 3, 4, 4, 0, 1, 2, 2, 10, 10, 11, 11, 12, 12, 9, 9, 8, 8, 5, 5, 6, 6, 7, 7 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 10, 10, 11, 11, 12, 12, 9, 9, 8, 8, 5, 5, 6, 6, 7, 7 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 12, 12, 8, 8, 10, 10, 6, 6, 11, 11, 7, 7, 9, 9, 5, 5 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 12, 12, 8, 8, 10, 10, 6, 6, 11, 11, 7, 7, 9, 9, 5, 5 ], 
      [ 6, 6, 8, 8, 9, 9, 11, 11, 0, 1, 5, 5, 4, 4, 10, 10, 12, 12, 2, 2, 7, 7, 3, 3 ], [ 6, 6, 8, 8, 9, 9, 11, 11, 1, 0, 5, 5, 4, 4, 10, 10, 12, 12, 2, 2, 7, 7, 3, 3 ], 
      [ 5, 5, 10, 10, 12, 12, 7, 7, 6, 6, 0, 1, 11, 11, 2, 2, 3, 3, 8, 8, 4, 4, 9, 9 ], [ 5, 5, 10, 10, 12, 12, 7, 7, 6, 6, 1, 0, 11, 11, 2, 2, 3, 3, 8, 8, 4, 4, 9, 9 ], 
      [ 8, 8, 6, 6, 11, 11, 9, 9, 4, 4, 12, 12, 0, 1, 7, 7, 5, 5, 3, 3, 10, 10, 2, 2 ], [ 8, 8, 6, 6, 11, 11, 9, 9, 4, 4, 12, 12, 1, 0, 7, 7, 5, 5, 3, 3, 10, 10, 2, 2 ], 
      [ 7, 7, 12, 12, 10, 10, 5, 5, 9, 9, 2, 2, 8, 8, 0, 1, 4, 4, 11, 11, 3, 3, 6, 6 ], [ 7, 7, 12, 12, 10, 10, 5, 5, 9, 9, 2, 2, 8, 8, 1, 0, 4, 4, 11, 11, 3, 3, 6, 6 ], 
      [ 10, 10, 5, 5, 7, 7, 12, 12, 11, 11, 3, 3, 6, 6, 4, 4, 0, 1, 9, 9, 2, 2, 8, 8 ], [ 10, 10, 5, 5, 7, 7, 12, 12, 11, 11, 3, 3, 6, 6, 4, 4, 1, 0, 9, 9, 2, 2, 8, 8 ], 
      [ 9, 9, 11, 11, 6, 6, 8, 8, 2, 2, 7, 7, 3, 3, 12, 12, 10, 10, 0, 1, 5, 5, 4, 4 ], [ 9, 9, 11, 11, 6, 6, 8, 8, 2, 2, 7, 7, 3, 3, 12, 12, 10, 10, 1, 0, 5, 5, 4, 4 ], 
      [ 12, 12, 7, 7, 5, 5, 10, 10, 8, 8, 4, 4, 9, 9, 3, 3, 2, 2, 6, 6, 0, 1, 11, 11 ], [ 12, 12, 7, 7, 5, 5, 10, 10, 8, 8, 4, 4, 9, 9, 3, 3, 2, 2, 6, 6, 1, 0, 11, 11 ], 
      [ 11, 11, 9, 9, 8, 8, 6, 6, 3, 3, 10, 10, 2, 2, 5, 5, 7, 7, 4, 4, 12, 12, 0, 1 ], [ 11, 11, 9, 9, 8, 8, 6, 6, 3, 3, 10, 10, 2, 2, 5, 5, 7, 7, 4, 4, 12, 12, 1, 0 ] ],
  SmallSchemeIdentification := 633 )