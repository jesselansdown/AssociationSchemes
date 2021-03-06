rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2, 2, -2, -2, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 2, 2, 2 ], [ 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, -2, -2, 2 ], 
      [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 3 ], [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 3 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 3 ], [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 3 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15 ], [ 1, 0, 3, 2, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13 ], [ 2, 3, 1, 0, 7, 4, 5, 6, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13 ], 
      [ 5, 7, 4, 6, 0, 3, 1, 2, 12, 12, 14, 14, 13, 13, 15, 15, 9, 9, 11, 11, 8, 8, 10, 10 ], [ 4, 6, 7, 5, 2, 0, 3, 1, 14, 14, 12, 12, 15, 15, 13, 13, 8, 8, 10, 10, 9, 9, 11, 11 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 12, 12, 14, 14, 13, 13, 15, 15, 9, 9, 11, 11, 8, 8, 10, 10 ], [ 6, 4, 5, 7, 3, 1, 2, 0, 14, 14, 12, 12, 15, 15, 13, 13, 8, 8, 10, 10, 9, 9, 11, 11 ], 
      [ 9, 9, 8, 8, 13, 15, 13, 15, 0, 1, 2, 3, 12, 12, 14, 14, 11, 11, 5, 7, 10, 10, 4, 6 ], [ 9, 9, 8, 8, 13, 15, 13, 15, 1, 0, 3, 2, 12, 12, 14, 14, 11, 11, 7, 5, 10, 10, 6, 4 ], 
      [ 8, 8, 9, 9, 15, 13, 15, 13, 3, 2, 0, 1, 14, 14, 12, 12, 10, 10, 6, 4, 11, 11, 5, 7 ], [ 8, 8, 9, 9, 15, 13, 15, 13, 2, 3, 1, 0, 14, 14, 12, 12, 10, 10, 4, 6, 11, 11, 7, 5 ], 
      [ 11, 11, 10, 10, 12, 14, 12, 14, 13, 13, 15, 15, 0, 1, 2, 3, 5, 7, 9, 9, 4, 6, 8, 8 ], [ 11, 11, 10, 10, 12, 14, 12, 14, 13, 13, 15, 15, 1, 0, 3, 2, 7, 5, 9, 9, 6, 4, 8, 8 ], 
      [ 10, 10, 11, 11, 14, 12, 14, 12, 15, 15, 13, 13, 3, 2, 0, 1, 6, 4, 8, 8, 5, 7, 9, 9 ], [ 10, 10, 11, 11, 14, 12, 14, 12, 15, 15, 13, 13, 2, 3, 1, 0, 4, 6, 8, 8, 7, 5, 9, 9 ], 
      [ 13, 13, 15, 15, 8, 9, 8, 9, 10, 10, 11, 11, 4, 6, 7, 5, 0, 1, 12, 12, 2, 3, 14, 14 ], [ 13, 13, 15, 15, 8, 9, 8, 9, 10, 10, 11, 11, 6, 4, 5, 7, 1, 0, 12, 12, 3, 2, 14, 14 ], 
      [ 12, 12, 14, 14, 10, 11, 10, 11, 4, 6, 7, 5, 8, 8, 9, 9, 13, 13, 0, 1, 15, 15, 2, 3 ], [ 12, 12, 14, 14, 10, 11, 10, 11, 6, 4, 5, 7, 8, 8, 9, 9, 13, 13, 1, 0, 15, 15, 3, 2 ], 
      [ 15, 15, 13, 13, 9, 8, 9, 8, 11, 11, 10, 10, 5, 7, 4, 6, 3, 2, 14, 14, 0, 1, 12, 12 ], [ 15, 15, 13, 13, 9, 8, 9, 8, 11, 11, 10, 10, 7, 5, 6, 4, 2, 3, 14, 14, 1, 0, 12, 12 ], 
      [ 14, 14, 12, 12, 11, 10, 11, 10, 5, 7, 4, 6, 9, 9, 8, 8, 15, 15, 3, 2, 13, 13, 0, 1 ], [ 14, 14, 12, 12, 11, 10, 11, 10, 7, 5, 6, 4, 9, 9, 8, 8, 15, 15, 2, 3, 13, 13, 1, 0 ] ],
  SmallSchemeIdentification := 724 )