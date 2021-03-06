rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), -2, 
          2, -2, 2, 2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), -2, 2, 2, -2, -2, 2, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ],
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), 2, -2, -2, 2, -2, 2, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), 2, -2, 2, -2, 2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -2, 2, -2, 2, 2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ], [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -2, 2, 2, -2, -2, 2, -2*E(4), 
          2*E(4), 2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), 2, -2, -2, 2, -2, 2, 2*E(4), -2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), 2, -2, 2, -2, 2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 2, 2, -2, -2, 1 ],
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, -2, -2, 1 ], [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16, 19, 19, 18, 18 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16, 19, 19, 18, 18 ], [ 5, 7, 4, 6, 0, 3, 1, 2, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 
          9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12 ], [ 4, 6, 7, 5, 2, 0, 3, 1, 15, 15, 14, 14, 17, 17, 16, 16, 19, 19, 18, 18, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12 ], [ 6, 4, 5, 7, 3, 1, 2, 0, 
          15, 15, 14, 14, 17, 17, 16, 16, 19, 19, 18, 18, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13 ], [ 8, 8, 9, 9, 15, 14, 15, 14, 0, 1, 2, 3, 12, 12, 13, 13, 10, 10, 11, 11, 5, 
          7, 4, 6, 18, 18, 19, 19, 16, 16, 17, 17 ], [ 8, 8, 9, 9, 15, 14, 15, 14, 1, 0, 3, 2, 12, 12, 13, 13, 10, 10, 11, 11, 7, 5, 6, 4, 18, 18, 19, 19, 16, 16, 17, 17 ], 
      [ 9, 9, 8, 8, 14, 15, 14, 15, 3, 2, 0, 1, 13, 13, 12, 12, 11, 11, 10, 10, 6, 4, 5, 7, 19, 19, 18, 18, 17, 17, 16, 16 ], [ 9, 9, 8, 8, 14, 15, 14, 15, 
          2, 3, 1, 0, 13, 13, 12, 12, 11, 11, 10, 10, 4, 6, 7, 5, 19, 19, 18, 18, 17, 17, 16, 16 ], [ 10, 10, 11, 11, 17, 16, 17, 16, 12, 12, 13, 13, 0, 1, 2, 3, 8, 8, 9, 9, 18, 
          18, 19, 19, 5, 7, 4, 6, 14, 14, 15, 15 ], [ 10, 10, 11, 11, 17, 16, 17, 16, 12, 12, 13, 13, 1, 0, 3, 2, 8, 8, 9, 9, 18, 18, 19, 19, 7, 5, 6, 4, 14, 14, 15, 15 ], 
      [ 11, 11, 10, 10, 16, 17, 16, 17, 13, 13, 12, 12, 3, 2, 0, 1, 9, 9, 8, 8, 19, 19, 18, 18, 6, 4, 5, 7, 15, 15, 14, 14 ], [ 11, 11, 10, 10, 16, 17, 16, 
          17, 13, 13, 12, 12, 2, 3, 1, 0, 9, 9, 8, 8, 19, 19, 18, 18, 4, 6, 7, 5, 15, 15, 14, 14 ], [ 12, 12, 13, 13, 19, 18, 19, 18, 10, 10, 11, 11, 8, 8, 9, 9, 0, 1, 2, 3, 16, 
          16, 17, 17, 14, 14, 15, 15, 5, 7, 4, 6 ], [ 12, 12, 13, 13, 19, 18, 19, 18, 10, 10, 11, 11, 8, 8, 9, 9, 1, 0, 3, 2, 16, 16, 17, 17, 14, 14, 15, 15, 7, 5, 6, 4 ], 
      [ 13, 13, 12, 12, 18, 19, 18, 19, 11, 11, 10, 10, 9, 9, 8, 8, 3, 2, 0, 1, 17, 17, 16, 16, 15, 15, 14, 14, 6, 4, 5, 7 ], [ 13, 13, 12, 12, 18, 19, 18, 
          19, 11, 11, 10, 10, 9, 9, 8, 8, 2, 3, 1, 0, 17, 17, 16, 16, 15, 15, 14, 14, 4, 6, 7, 5 ], [ 15, 15, 14, 14, 9, 8, 9, 8, 4, 6, 7, 5, 19, 19, 18, 18, 17, 17, 16, 16, 0, 
          1, 2, 3, 12, 12, 13, 13, 10, 10, 11, 11 ], [ 15, 15, 14, 14, 9, 8, 9, 8, 6, 4, 5, 7, 19, 19, 18, 18, 17, 17, 16, 16, 1, 0, 3, 2, 12, 12, 13, 13, 10, 10, 11, 11 ], 
      [ 14, 14, 15, 15, 8, 9, 8, 9, 5, 7, 4, 6, 18, 18, 19, 19, 16, 16, 17, 17, 3, 2, 0, 1, 13, 13, 12, 12, 11, 11, 10, 10 ], [ 14, 14, 15, 15, 8, 9, 8, 9, 
          7, 5, 6, 4, 18, 18, 19, 19, 16, 16, 17, 17, 2, 3, 1, 0, 13, 13, 12, 12, 11, 11, 10, 10 ], [ 17, 17, 16, 16, 11, 10, 11, 10, 19, 19, 18, 18, 4, 6, 7, 5, 15, 15, 14, 14, 12, 
          12, 13, 13, 0, 1, 2, 3, 8, 8, 9, 9 ], [ 17, 17, 16, 16, 11, 10, 11, 10, 19, 19, 18, 18, 6, 4, 5, 7, 15, 15, 14, 14, 12, 12, 13, 13, 1, 0, 3, 2, 8, 8, 9, 9 ], 
      [ 16, 16, 17, 17, 10, 11, 10, 11, 18, 18, 19, 19, 5, 7, 4, 6, 14, 14, 15, 15, 13, 13, 12, 12, 3, 2, 0, 1, 9, 9, 8, 8 ], 
      [ 16, 16, 17, 17, 10, 11, 10, 11, 18, 18, 19, 19, 7, 5, 6, 4, 14, 14, 15, 15, 13, 13, 12, 12, 2, 3, 1, 0, 9, 9, 8, 8 ], 
      [ 19, 19, 18, 18, 13, 12, 13, 12, 17, 17, 16, 16, 15, 15, 14, 14, 4, 6, 7, 5, 10, 10, 11, 11, 8, 8, 9, 9, 0, 1, 2, 3 ], [ 19, 19, 18, 18, 13, 12, 13, 12, 17, 17, 16, 16, 15, 15, 14, 14, 6, 4, 5, 
          7, 10, 10, 11, 11, 8, 8, 9, 9, 1, 0, 3, 2 ], [ 18, 18, 19, 19, 12, 13, 12, 13, 16, 16, 17, 17, 14, 14, 15, 15, 5, 7, 4, 6, 11, 11, 10, 10, 9, 9, 8, 8, 3, 2, 0, 1 ], 
      [ 18, 18, 19, 19, 12, 13, 12, 13, 16, 16, 17, 17, 14, 14, 15, 15, 7, 5, 6, 4, 11, 11, 10, 10, 9, 9, 8, 8, 2, 3, 1, 0 ] ],
  SmallSchemeIdentification := 17960 )