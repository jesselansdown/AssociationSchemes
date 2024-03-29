rec(
  CharacterTable := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ], 
      [ 1, -1, 1, 1, -1, -1, 1, 1, 1, -1, -1, -1, 1, 1, -1, -1, 1, -1, 1 ], 
      [ 1, -1, E(3)^2, 1, -E(3)^2, -1, E(3), E(3)^2, 1, -E(3), -E(3)^2, -1, 
          E(3), E(3)^2, -E(3), -E(3)^2, E(3), -E(3), 1 ], 
      [ 1, -1, E(3), 1, -E(3), -1, E(3)^2, E(3), 1, -E(3)^2, -E(3), -1, 
          E(3)^2, E(3), -E(3)^2, -E(3), E(3)^2, -E(3)^2, 1 ], 
      [ 1, 1, E(3)^2, 1, E(3)^2, 1, E(3), E(3)^2, 1, E(3), E(3)^2, 1, E(3), 
          E(3)^2, E(3), E(3)^2, E(3), E(3), 1 ], 
      [ 1, 1, E(3), 1, E(3), 1, E(3)^2, E(3), 1, E(3)^2, E(3), 1, E(3)^2, 
          E(3), E(3)^2, E(3), E(3)^2, E(3)^2, 1 ], 
      [ 2, 0, 2, -1, 0, 0, 2, -1, -1, 0, 0, 0, -1, -1, 0, 0, -1, 0, 2 ], 
      [ 2, 0, 2*E(3)^2, -1, 0, 0, 2*E(3), -E(3)^2, -1, 0, 0, 0, -E(3), 
          -E(3)^2, 0, 0, -E(3), 0, 2 ], 
      [ 2, 0, 2*E(3), -1, 0, 0, 2*E(3)^2, -E(3), -1, 0, 0, 0, -E(3)^2, -E(3), 
          0, 0, -E(3)^2, 0, 2 ] ],
  RelationMatrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17 ], 
      [ 1, 0, 4, 11, 2, 8, 9, 15, 5, 6, 13, 3, 17, 10, 16, 7, 14, 12 ], 
      [ 6, 9, 0, 12, 1, 14, 2, 3, 16, 4, 5, 17, 7, 8, 10, 11, 13, 15 ], 
      [ 8, 11, 13, 0, 15, 1, 16, 2, 3, 17, 4, 5, 6, 7, 9, 10, 12, 14 ], 
      [ 9, 6, 1, 17, 0, 16, 4, 11, 14, 2, 8, 12, 15, 5, 13, 3, 10, 7 ], 
      [ 5, 3, 10, 1, 7, 0, 14, 4, 11, 12, 2, 8, 9, 15, 6, 13, 17, 16 ], 
      [ 2, 4, 6, 7, 9, 10, 0, 12, 13, 1, 14, 15, 3, 16, 5, 17, 8, 11 ], 
      [ 16, 17, 8, 6, 11, 9, 13, 0, 12, 15, 1, 14, 2, 3, 4, 5, 7, 10 ], 
      [ 3, 5, 7, 8, 10, 11, 12, 13, 0, 14, 15, 1, 16, 2, 17, 4, 6, 9 ], 
      [ 4, 2, 9, 15, 6, 13, 1, 17, 10, 0, 16, 7, 11, 14, 8, 12, 5, 3 ], 
      [ 14, 12, 5, 9, 3, 6, 10, 1, 17, 7, 0, 16, 4, 11, 2, 8, 15, 13 ], 
      [ 11, 8, 15, 5, 13, 3, 17, 10, 1, 16, 7, 0, 14, 4, 12, 2, 9, 6 ], 
      [ 13, 15, 16, 2, 17, 4, 8, 6, 7, 11, 9, 10, 0, 12, 1, 14, 3, 5 ], 
      [ 12, 14, 3, 16, 5, 17, 7, 8, 6, 10, 11, 9, 13, 0, 15, 1, 2, 4 ], 
      [ 10, 7, 14, 4, 12, 2, 5, 9, 15, 3, 6, 13, 1, 17, 0, 16, 11, 8 ], 
      [ 17, 16, 11, 14, 8, 12, 15, 5, 9, 13, 3, 6, 10, 1, 7, 0, 4, 2 ], 
      [ 7, 10, 12, 13, 14, 15, 3, 16, 2, 5, 17, 4, 8, 6, 11, 9, 0, 1 ], 
      [ 15, 13, 17, 10, 16, 7, 11, 14, 4, 8, 12, 2, 5, 9, 3, 6, 1, 0 ] ],
  SmallSchemeIdentification := 93 )