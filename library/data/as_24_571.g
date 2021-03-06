rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 6, 1 ], [ 1, 1, 1, 1, 1, 1, -2, -2, -2, -3, -3, 6, 1 ], [ 1, 1, 1, 1, 1, 1, -2, -2, -2, 3, 3, -6, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 2, 2, 2, -3, -3, -6, 1 ], [ 1, -1, 1, 1, -1, -1, 0, 0, 0, -3, 3, 0, 2 ], [ 1, -1, 1, 1, -1, -1, 0, 0, 0, 3, -3, 0, 2 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, -2, -2*E(3)^2, -2*E(3), 0, 0, 0, 2 ], [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 2, 2*E(3)^2, 2*E(3), 0, 0, 0, 2 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), -2, -2*E(3), -2*E(3)^2, 0, 0, 0, 2 ], [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 2, 2*E(3), 2*E(3)^2, 0, 0, 0, 2 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11, 11, 11, 11 ], [ 1, 0, 4, 5, 2, 3, 6, 6, 7, 7, 8, 8, 10, 10, 10, 9, 9, 9, 11, 11, 11, 11, 11, 11 ], 
      [ 3, 5, 0, 2, 1, 4, 7, 7, 8, 8, 6, 6, 9, 9, 9, 10, 10, 10, 11, 11, 11, 11, 11, 11 ], [ 2, 4, 3, 0, 5, 1, 8, 8, 6, 6, 7, 7, 9, 9, 9, 10, 10, 10, 11, 11, 11, 11, 11, 11 ], 
      [ 5, 3, 1, 4, 0, 2, 7, 7, 8, 8, 6, 6, 10, 10, 10, 9, 9, 9, 11, 11, 11, 11, 11, 11 ], [ 4, 2, 5, 1, 3, 0, 8, 8, 6, 6, 7, 7, 10, 10, 10, 9, 9, 9, 11, 11, 11, 11, 11, 11 ], 
      [ 6, 6, 8, 7, 8, 7, 0, 1, 3, 5, 2, 4, 11, 11, 11, 11, 11, 11, 9, 9, 9, 10, 10, 10 ], [ 6, 6, 8, 7, 8, 7, 1, 0, 5, 3, 4, 2, 11, 11, 11, 11, 11, 11, 10, 10, 10, 9, 9, 9 ], 
      [ 8, 8, 7, 6, 7, 6, 2, 4, 0, 1, 3, 5, 11, 11, 11, 11, 11, 11, 9, 9, 9, 10, 10, 10 ], [ 8, 8, 7, 6, 7, 6, 4, 2, 1, 0, 5, 3, 11, 11, 11, 11, 11, 11, 10, 10, 10, 9, 9, 9 ], 
      [ 7, 7, 6, 8, 6, 8, 3, 5, 2, 4, 0, 1, 11, 11, 11, 11, 11, 11, 9, 9, 9, 10, 10, 10 ], [ 7, 7, 6, 8, 6, 8, 5, 3, 4, 2, 1, 0, 11, 11, 11, 11, 11, 11, 10, 10, 10, 9, 9, 9 ], 
      [ 9, 10, 9, 9, 10, 10, 11, 11, 11, 11, 11, 11, 0, 2, 3, 1, 4, 5, 6, 7, 8, 6, 7, 8 ], [ 9, 10, 9, 9, 10, 10, 11, 11, 11, 11, 11, 11, 3, 0, 2, 5, 1, 4, 7, 8, 6, 7, 8, 6 ], 
      [ 9, 10, 9, 9, 10, 10, 11, 11, 11, 11, 11, 11, 2, 3, 0, 4, 5, 1, 8, 6, 7, 8, 6, 7 ], [ 10, 9, 10, 10, 9, 9, 11, 11, 11, 11, 11, 11, 1, 4, 5, 0, 2, 3, 6, 7, 8, 6, 7, 8 ], 
      [ 10, 9, 10, 10, 9, 9, 11, 11, 11, 11, 11, 11, 5, 1, 4, 3, 0, 2, 7, 8, 6, 7, 8, 6 ], [ 10, 9, 10, 10, 9, 9, 11, 11, 11, 11, 11, 11, 4, 5, 1, 2, 3, 0, 8, 6, 7, 8, 6, 7 ], 
      [ 11, 11, 11, 11, 11, 11, 9, 10, 9, 10, 9, 10, 6, 8, 7, 6, 8, 7, 0, 3, 2, 1, 5, 4 ], [ 11, 11, 11, 11, 11, 11, 9, 10, 9, 10, 9, 10, 8, 7, 6, 8, 7, 6, 2, 0, 3, 4, 1, 5 ], 
      [ 11, 11, 11, 11, 11, 11, 9, 10, 9, 10, 9, 10, 7, 6, 8, 7, 6, 8, 3, 2, 0, 5, 4, 1 ], [ 11, 11, 11, 11, 11, 11, 10, 9, 10, 9, 10, 9, 6, 8, 7, 6, 8, 7, 1, 5, 4, 0, 3, 2 ], 
      [ 11, 11, 11, 11, 11, 11, 10, 9, 10, 9, 10, 9, 8, 7, 6, 8, 7, 6, 4, 1, 5, 2, 0, 3 ], [ 11, 11, 11, 11, 11, 11, 10, 9, 10, 9, 10, 9, 7, 6, 8, 7, 6, 8, 5, 4, 1, 3, 2, 0 ] ],
  SmallSchemeIdentification := 571 )