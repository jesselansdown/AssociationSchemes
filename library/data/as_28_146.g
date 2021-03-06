rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 7, 7, 7, 1 ], [ 1, 1, 1, 1, 1, 1, 1, -7, -7, 7, 1 ], [ 1, 1, 1, 1, 1, 1, 1, -7, 7, -7, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 7, -7, -7, 1 ], [ 1, E(7), E(7)^6, E(7)^5, E(7)^2, E(7)^4, E(7)^3, 0, 0, 0, 4 ], [ 1, E(7)^2, E(7)^5, E(7)^3, E(7)^4, E(7), E(7)^6, 0, 0, 0, 4 ], 
      [ 1, E(7)^3, E(7)^4, E(7), E(7)^6, E(7)^5, E(7)^2, 0, 0, 0, 4 ], [ 1, E(7)^4, E(7)^3, E(7)^6, E(7), E(7)^2, E(7)^5, 0, 0, 0, 4 ], [ 1, E(7)^5, E(7)^2, E(7)^4, E(7)^3, E(7)^6, E(7), 0, 0, 0, 4 ], 
      [ 1, E(7)^6, E(7), E(7)^2, E(7)^5, E(7)^3, E(7)^4, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9 ], [ 2, 0, 3, 5, 1, 6, 4, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 1, 4, 0, 2, 6, 3, 5, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9 ], [ 4, 6, 1, 0, 5, 2, 3, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 3, 2, 5, 6, 0, 4, 1, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9 ], [ 6, 5, 4, 1, 3, 0, 2, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 5, 3, 6, 4, 2, 1, 0, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9 ], [ 7, 7, 7, 7, 7, 7, 7, 0, 1, 2, 3, 4, 5, 6, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 2, 0, 3, 5, 1, 6, 4, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8 ], [ 7, 7, 7, 7, 7, 7, 7, 1, 4, 0, 2, 6, 3, 5, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 4, 6, 1, 0, 5, 2, 3, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8 ], [ 7, 7, 7, 7, 7, 7, 7, 3, 2, 5, 6, 0, 4, 1, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 6, 5, 4, 1, 3, 0, 2, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8 ], [ 7, 7, 7, 7, 7, 7, 7, 5, 3, 6, 4, 2, 1, 0, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 0, 1, 2, 3, 4, 5, 6, 7, 7, 7, 7, 7, 7, 7 ], [ 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 2, 0, 3, 5, 1, 6, 4, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 1, 4, 0, 2, 6, 3, 5, 7, 7, 7, 7, 7, 7, 7 ], [ 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 4, 6, 1, 0, 5, 2, 3, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 3, 2, 5, 6, 0, 4, 1, 7, 7, 7, 7, 7, 7, 7 ], [ 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 6, 5, 4, 1, 3, 0, 2, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 5, 3, 6, 4, 2, 1, 0, 7, 7, 7, 7, 7, 7, 7 ], [ 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 0, 1, 2, 3, 4, 5, 6 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 2, 0, 3, 5, 1, 6, 4 ], [ 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 1, 4, 0, 2, 6, 3, 5 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 4, 6, 1, 0, 5, 2, 3 ], [ 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 3, 2, 5, 6, 0, 4, 1 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 6, 5, 4, 1, 3, 0, 2 ], [ 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 5, 3, 6, 4, 2, 1, 0 ] ],
  SmallSchemeIdentification := 146 )