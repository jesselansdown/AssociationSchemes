rec(
  CharacterTable := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], [ 1, 1, 2, 2, 2, 2, 2, -2, -2, -4, -4, 1 ], [ 2, 2, 4, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], [ 1, 1, -2, 2*E(3)^2, 2*E(3), -2*E(3)^2, -2*E(3), 0, 0, 0, 0, 2 ], [ 1, 1, -2, 2*E(3), 2*E(3)^2, -2*E(3), -2*E(3)^2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 0, 0, 0, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, 0, 0, 6 ], [ 1, -1, 0, 0, 0, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, 0, 0, 6 ] ],
  RelationMatrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 8, 8, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 2, 2, 0, 1, 5, 5, 6, 6, 3, 3, 4, 4, 7, 8, 7, 8, 9, 9, 9, 9, 10, 10, 10, 10 ], [ 2, 2, 1, 0, 5, 5, 6, 6, 3, 3, 4, 4, 8, 7, 8, 7, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 4, 4, 6, 6, 0, 1, 3, 3, 2, 2, 5, 5, 9, 9, 9, 9, 10, 10, 10, 10, 7, 7, 8, 8 ], [ 4, 4, 6, 6, 1, 0, 3, 3, 2, 2, 5, 5, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 7, 7 ], 
      [ 3, 3, 5, 5, 4, 4, 0, 1, 6, 6, 2, 2, 10, 10, 10, 10, 7, 7, 8, 8, 9, 9, 9, 9 ], [ 3, 3, 5, 5, 4, 4, 1, 0, 6, 6, 2, 2, 10, 10, 10, 10, 8, 8, 7, 7, 9, 9, 9, 9 ], 
      [ 6, 6, 4, 4, 2, 2, 5, 5, 0, 1, 3, 3, 9, 9, 9, 9, 10, 10, 10, 10, 7, 8, 7, 8 ], [ 6, 6, 4, 4, 2, 2, 5, 5, 1, 0, 3, 3, 9, 9, 9, 9, 10, 10, 10, 10, 8, 7, 8, 7 ], 
      [ 5, 5, 3, 3, 6, 6, 2, 2, 4, 4, 0, 1, 10, 10, 10, 10, 7, 8, 7, 8, 9, 9, 9, 9 ], [ 5, 5, 3, 3, 6, 6, 2, 2, 4, 4, 1, 0, 10, 10, 10, 10, 8, 7, 8, 7, 9, 9, 9, 9 ], 
      [ 8, 7, 8, 7, 9, 9, 10, 10, 9, 9, 10, 10, 0, 2, 2, 1, 3, 5, 5, 3, 4, 6, 6, 4 ], [ 8, 7, 7, 8, 9, 9, 10, 10, 9, 9, 10, 10, 2, 0, 1, 2, 5, 3, 3, 5, 6, 4, 4, 6 ], 
      [ 7, 8, 8, 7, 9, 9, 10, 10, 9, 9, 10, 10, 2, 1, 0, 2, 5, 3, 3, 5, 6, 4, 4, 6 ], [ 7, 8, 7, 8, 9, 9, 10, 10, 9, 9, 10, 10, 1, 2, 2, 0, 3, 5, 5, 3, 4, 6, 6, 4 ], 
      [ 9, 9, 9, 9, 10, 10, 8, 7, 10, 10, 8, 7, 4, 6, 6, 4, 0, 2, 2, 1, 3, 5, 5, 3 ], [ 9, 9, 9, 9, 10, 10, 8, 7, 10, 10, 7, 8, 6, 4, 4, 6, 2, 0, 1, 2, 5, 3, 3, 5 ], 
      [ 9, 9, 9, 9, 10, 10, 7, 8, 10, 10, 8, 7, 6, 4, 4, 6, 2, 1, 0, 2, 5, 3, 3, 5 ], [ 9, 9, 9, 9, 10, 10, 7, 8, 10, 10, 7, 8, 4, 6, 6, 4, 1, 2, 2, 0, 3, 5, 5, 3 ], 
      [ 10, 10, 10, 10, 8, 7, 9, 9, 8, 7, 9, 9, 3, 5, 5, 3, 4, 6, 6, 4, 0, 2, 2, 1 ], [ 10, 10, 10, 10, 8, 7, 9, 9, 7, 8, 9, 9, 5, 3, 3, 5, 6, 4, 4, 6, 2, 0, 1, 2 ], 
      [ 10, 10, 10, 10, 7, 8, 9, 9, 8, 7, 9, 9, 5, 3, 3, 5, 6, 4, 4, 6, 2, 1, 0, 2 ], [ 10, 10, 10, 10, 7, 8, 9, 9, 7, 8, 9, 9, 3, 5, 5, 3, 4, 6, 6, 4, 1, 2, 2, 0 ] ],
  SmallSchemeIdentification := 541 )