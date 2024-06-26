rec(
  CharacterTable := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ], 
      [ 1, -1, 1, 1, -1, -1, 1, 1, 1, -1, -1, -1, 1, 1, -1, -1, 1, -1, 1 ], 
      [ 1, -1, E(3)^2, 1, -E(3)^2, -1, E(3), E(3)^2, 1, -E(3), -E(3)^2, -1, 
          E(3), E(3)^2, -E(3), -E(3)^2, E(3), -E(3), 1 ], 
      [ 1, -1, E(3), 1, -E(3), -1, E(3)^2, E(3), 1, -E(3)^2, -E(3), -1, 
          E(3)^2, E(3), -E(3)^2, -E(3), E(3)^2, -E(3)^2, 1 ], 
      [ 1, -1, -E(9)^2-E(9)^5, E(3)^2, E(9)^2+E(9)^5, -E(3)^2, E(9)^7, 
          E(9)^5, E(3), -E(9)^7, -E(9)^5, -E(3), E(9)^4, E(9)^2, -E(9)^4, 
          -E(9)^2, -E(9)^4-E(9)^7, E(9)^4+E(9)^7, 1 ], 
      [ 1, -1, -E(9)^4-E(9)^7, E(3), E(9)^4+E(9)^7, -E(3), E(9)^2, E(9)^4, 
          E(3)^2, -E(9)^2, -E(9)^4, -E(3)^2, E(9)^5, E(9)^7, -E(9)^5, 
          -E(9)^7, -E(9)^2-E(9)^5, E(9)^2+E(9)^5, 1 ], 
      [ 1, -1, E(9)^7, E(3), -E(9)^7, -E(3), E(9)^5, -E(9)^4-E(9)^7, E(3)^2, 
          -E(9)^5, E(9)^4+E(9)^7, -E(3)^2, -E(9)^2-E(9)^5, E(9)^4, 
          E(9)^2+E(9)^5, -E(9)^4, E(9)^2, -E(9)^2, 1 ], 
      [ 1, -1, E(9)^5, E(3)^2, -E(9)^5, -E(3)^2, -E(9)^4-E(9)^7, E(9)^2, 
          E(3), E(9)^4+E(9)^7, -E(9)^2, -E(3), E(9)^7, -E(9)^2-E(9)^5, 
          -E(9)^7, E(9)^2+E(9)^5, E(9)^4, -E(9)^4, 1 ], 
      [ 1, -1, E(9)^4, E(3), -E(9)^4, -E(3), -E(9)^2-E(9)^5, E(9)^7, E(3)^2, 
          E(9)^2+E(9)^5, -E(9)^7, -E(3)^2, E(9)^2, -E(9)^4-E(9)^7, -E(9)^2, 
          E(9)^4+E(9)^7, E(9)^5, -E(9)^5, 1 ], 
      [ 1, -1, E(9)^2, E(3)^2, -E(9)^2, -E(3)^2, E(9)^4, -E(9)^2-E(9)^5, 
          E(3), -E(9)^4, E(9)^2+E(9)^5, -E(3), -E(9)^4-E(9)^7, E(9)^5, 
          E(9)^4+E(9)^7, -E(9)^5, E(9)^7, -E(9)^7, 1 ], 
      [ 1, 1, E(3)^2, 1, E(3)^2, 1, E(3), E(3)^2, 1, E(3), E(3)^2, 1, E(3), 
          E(3)^2, E(3), E(3)^2, E(3), E(3), 1 ], 
      [ 1, 1, E(3), 1, E(3), 1, E(3)^2, E(3), 1, E(3)^2, E(3), 1, E(3)^2, 
          E(3), E(3)^2, E(3), E(3)^2, E(3)^2, 1 ], 
      [ 1, 1, -E(9)^2-E(9)^5, E(3)^2, -E(9)^2-E(9)^5, E(3)^2, E(9)^7, E(9)^5, 
          E(3), E(9)^7, E(9)^5, E(3), E(9)^4, E(9)^2, E(9)^4, E(9)^2, 
          -E(9)^4-E(9)^7, -E(9)^4-E(9)^7, 1 ], 
      [ 1, 1, -E(9)^4-E(9)^7, E(3), -E(9)^4-E(9)^7, E(3), E(9)^2, E(9)^4, 
          E(3)^2, E(9)^2, E(9)^4, E(3)^2, E(9)^5, E(9)^7, E(9)^5, E(9)^7, 
          -E(9)^2-E(9)^5, -E(9)^2-E(9)^5, 1 ], 
      [ 1, 1, E(9)^7, E(3), E(9)^7, E(3), E(9)^5, -E(9)^4-E(9)^7, E(3)^2, 
          E(9)^5, -E(9)^4-E(9)^7, E(3)^2, -E(9)^2-E(9)^5, E(9)^4, 
          -E(9)^2-E(9)^5, E(9)^4, E(9)^2, E(9)^2, 1 ], 
      [ 1, 1, E(9)^5, E(3)^2, E(9)^5, E(3)^2, -E(9)^4-E(9)^7, E(9)^2, E(3), 
          -E(9)^4-E(9)^7, E(9)^2, E(3), E(9)^7, -E(9)^2-E(9)^5, E(9)^7, 
          -E(9)^2-E(9)^5, E(9)^4, E(9)^4, 1 ], 
      [ 1, 1, E(9)^4, E(3), E(9)^4, E(3), -E(9)^2-E(9)^5, E(9)^7, E(3)^2, 
          -E(9)^2-E(9)^5, E(9)^7, E(3)^2, E(9)^2, -E(9)^4-E(9)^7, E(9)^2, 
          -E(9)^4-E(9)^7, E(9)^5, E(9)^5, 1 ], 
      [ 1, 1, E(9)^2, E(3)^2, E(9)^2, E(3)^2, E(9)^4, -E(9)^2-E(9)^5, E(3), 
          E(9)^4, -E(9)^2-E(9)^5, E(3), -E(9)^4-E(9)^7, E(9)^5, 
          -E(9)^4-E(9)^7, E(9)^5, E(9)^7, E(9)^7, 1 ] ],
  RelationMatrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17 ], 
      [ 1, 0, 4, 5, 2, 3, 9, 10, 11, 6, 7, 8, 14, 15, 12, 13, 17, 16 ], 
      [ 16, 17, 0, 6, 1, 9, 2, 3, 12, 4, 5, 14, 7, 8, 10, 11, 13, 15 ], 
      [ 8, 11, 13, 0, 15, 1, 16, 2, 3, 17, 4, 5, 6, 7, 9, 10, 12, 14 ], 
      [ 17, 16, 1, 9, 0, 6, 4, 5, 14, 2, 3, 12, 10, 11, 7, 8, 15, 13 ], 
      [ 11, 8, 15, 1, 13, 0, 17, 4, 5, 16, 2, 3, 9, 10, 6, 7, 14, 12 ], 
      [ 13, 15, 16, 2, 17, 4, 0, 6, 7, 1, 9, 10, 3, 12, 5, 14, 8, 11 ], 
      [ 12, 14, 8, 16, 11, 17, 13, 0, 6, 15, 1, 9, 2, 3, 4, 5, 7, 10 ], 
      [ 3, 5, 7, 8, 10, 11, 12, 13, 0, 14, 15, 1, 16, 2, 17, 4, 6, 9 ], 
      [ 15, 13, 17, 4, 16, 2, 1, 9, 10, 0, 6, 7, 5, 14, 3, 12, 11, 8 ], 
      [ 14, 12, 11, 17, 8, 16, 15, 1, 9, 13, 0, 6, 4, 5, 2, 3, 10, 7 ], 
      [ 5, 3, 10, 11, 7, 8, 14, 15, 1, 12, 13, 0, 17, 4, 16, 2, 9, 6 ], 
      [ 7, 10, 12, 13, 14, 15, 8, 16, 2, 11, 17, 4, 0, 6, 1, 9, 3, 5 ], 
      [ 6, 9, 3, 12, 5, 14, 7, 8, 16, 10, 11, 17, 13, 0, 15, 1, 2, 4 ], 
      [ 10, 7, 14, 15, 12, 13, 11, 17, 4, 8, 16, 2, 1, 9, 0, 6, 5, 3 ], 
      [ 9, 6, 5, 14, 3, 12, 10, 11, 17, 7, 8, 16, 15, 1, 13, 0, 4, 2 ], 
      [ 2, 4, 6, 7, 9, 10, 3, 12, 13, 5, 14, 15, 8, 16, 11, 17, 0, 1 ], 
      [ 4, 2, 9, 10, 6, 7, 5, 14, 15, 3, 12, 13, 11, 17, 8, 16, 1, 0 ] ],
  SmallSchemeIdentification := 92 )