rec(
  CharacterTable := [ [ 1, 1, 1, 2, 2, 2, 6, 12, 1 ], [ 1, 1, 1, -1, -1, -1, 6, -6, 2 ], [ 1, 1, 1, 2, 2, 2, -3, -6, 2 ], [ 1, E(3), E(3)^2, 2, 2*E(3)^2, 2*E(3), 0, 0, 3 ], 
      [ 1, E(3)^2, E(3), 2, 2*E(3), 2*E(3)^2, 0, 0, 3 ], [ 1, 1, 1, -1, -1, -1, -3, 3, 4 ], [ 1, E(3), E(3)^2, -1, -E(3)^2, -E(3), 0, 0, 6 ], [ 1, E(3)^2, E(3), -1, -E(3), -E(3)^2, 0, 0, 6 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 3, 4, 4, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], [ 2, 0, 1, 4, 4, 5, 5, 3, 3, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 1, 2, 0, 5, 5, 3, 3, 4, 4, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], [ 3, 5, 4, 0, 3, 2, 4, 1, 5, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 3, 5, 4, 3, 0, 4, 2, 5, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], [ 5, 4, 3, 1, 5, 0, 3, 2, 4, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 5, 4, 3, 5, 1, 3, 0, 4, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], [ 4, 3, 5, 2, 4, 1, 5, 0, 3, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 4, 3, 5, 4, 2, 5, 1, 3, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], [ 6, 6, 6, 7, 7, 7, 7, 7, 7, 0, 1, 2, 6, 6, 6, 3, 4, 5, 7, 7, 7, 3, 4, 5, 7, 7, 7 ], 
      [ 6, 6, 6, 7, 7, 7, 7, 7, 7, 2, 0, 1, 6, 6, 6, 4, 5, 3, 7, 7, 7, 4, 5, 3, 7, 7, 7 ], [ 6, 6, 6, 7, 7, 7, 7, 7, 7, 1, 2, 0, 6, 6, 6, 5, 3, 4, 7, 7, 7, 5, 3, 4, 7, 7, 7 ], 
      [ 6, 6, 6, 7, 7, 7, 7, 7, 7, 6, 6, 6, 0, 1, 2, 7, 7, 7, 3, 4, 5, 7, 7, 7, 3, 4, 5 ], [ 6, 6, 6, 7, 7, 7, 7, 7, 7, 6, 6, 6, 2, 0, 1, 7, 7, 7, 4, 5, 3, 7, 7, 7, 4, 5, 3 ], 
      [ 6, 6, 6, 7, 7, 7, 7, 7, 7, 6, 6, 6, 1, 2, 0, 7, 7, 7, 5, 3, 4, 7, 7, 7, 5, 3, 4 ], [ 7, 7, 7, 6, 7, 6, 7, 6, 7, 3, 5, 4, 7, 7, 7, 0, 2, 1, 6, 6, 6, 3, 4, 5, 7, 7, 7 ], 
      [ 7, 7, 7, 6, 7, 6, 7, 6, 7, 5, 4, 3, 7, 7, 7, 1, 0, 2, 6, 6, 6, 5, 3, 4, 7, 7, 7 ], [ 7, 7, 7, 6, 7, 6, 7, 6, 7, 4, 3, 5, 7, 7, 7, 2, 1, 0, 6, 6, 6, 4, 5, 3, 7, 7, 7 ], 
      [ 7, 7, 7, 6, 7, 6, 7, 6, 7, 7, 7, 7, 3, 5, 4, 6, 6, 6, 0, 2, 1, 7, 7, 7, 3, 4, 5 ], [ 7, 7, 7, 6, 7, 6, 7, 6, 7, 7, 7, 7, 5, 4, 3, 6, 6, 6, 1, 0, 2, 7, 7, 7, 5, 3, 4 ], 
      [ 7, 7, 7, 6, 7, 6, 7, 6, 7, 7, 7, 7, 4, 3, 5, 6, 6, 6, 2, 1, 0, 7, 7, 7, 4, 5, 3 ], [ 7, 7, 7, 7, 6, 7, 6, 7, 6, 3, 5, 4, 7, 7, 7, 3, 4, 5, 7, 7, 7, 0, 2, 1, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 6, 7, 6, 7, 6, 5, 4, 3, 7, 7, 7, 5, 3, 4, 7, 7, 7, 1, 0, 2, 6, 6, 6 ], [ 7, 7, 7, 7, 6, 7, 6, 7, 6, 4, 3, 5, 7, 7, 7, 4, 5, 3, 7, 7, 7, 2, 1, 0, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 6, 7, 6, 7, 6, 7, 7, 7, 3, 5, 4, 7, 7, 7, 3, 4, 5, 6, 6, 6, 0, 2, 1 ], [ 7, 7, 7, 7, 6, 7, 6, 7, 6, 7, 7, 7, 5, 4, 3, 7, 7, 7, 5, 3, 4, 6, 6, 6, 1, 0, 2 ], 
      [ 7, 7, 7, 7, 6, 7, 6, 7, 6, 7, 7, 7, 4, 3, 5, 7, 7, 7, 4, 5, 3, 6, 6, 6, 2, 1, 0 ] ],
  SmallSchemeIdentification := 435 )