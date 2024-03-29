rec(
  CharacterTable := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
          1, 1 ], 
      [ 1, -1, 1, 1, 1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, -1, 
          -1, -1, 1, -1, 1 ], 
      [ 1, -E(4), -1, 1, 1, E(4), -E(4), -E(4), -1, -1, 1, 1, E(4), E(4), 
          -E(4), -E(4), -1, -1, 1, E(4), E(4), -E(4), -1, E(4), 1 ], 
      [ 1, E(4), -1, 1, 1, -E(4), E(4), E(4), -1, -1, 1, 1, -E(4), -E(4), 
          E(4), E(4), -1, -1, 1, -E(4), -E(4), E(4), -1, -E(4), 1 ], 
      [ 1, -E(8), E(4), -1, 1, -E(8)^3, E(8), -E(8), -E(4), E(4), -1, 1, 
          E(8)^3, -E(8)^3, E(8), -E(8), -E(4), E(4), -1, E(8)^3, -E(8)^3, 
          E(8), -E(4), E(8)^3, 1 ], 
      [ 1, -E(8)^3, -E(4), -1, 1, -E(8), E(8)^3, -E(8)^3, E(4), -E(4), -1, 1, 
          E(8), -E(8), E(8)^3, -E(8)^3, E(4), -E(4), -1, E(8), -E(8), E(8)^3, 
          E(4), E(8), 1 ], 
      [ 1, E(8)^3, -E(4), -1, 1, E(8), -E(8)^3, E(8)^3, E(4), -E(4), -1, 1, 
          -E(8), E(8), -E(8)^3, E(8)^3, E(4), -E(4), -1, -E(8), E(8), 
          -E(8)^3, E(4), -E(8), 1 ], 
      [ 1, E(8), E(4), -1, 1, E(8)^3, -E(8), E(8), -E(4), E(4), -1, 1, 
          -E(8)^3, E(8)^3, -E(8), E(8), -E(4), E(4), -1, -E(8)^3, E(8)^3, 
          -E(8), -E(4), -E(8)^3, 1 ], 
      [ 2, 0, -2, 2, -1, 0, 0, 0, -2, 1, -1, -1, 0, 0, 0, 0, 1, 1, -1, 0, 0, 
          0, 1, 0, 2 ], 
      [ 2, 0, 2, 2, -1, 0, 0, 0, 2, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, 0, 0, 
          0, -1, 0, 2 ], 
      [ 2, 0, -2*E(4), -2, -1, 0, 0, 0, 2*E(4), E(4), 1, -1, 0, 0, 0, 0, 
          -E(4), E(4), 1, 0, 0, 0, -E(4), 0, 2 ], 
      [ 2, 0, 2*E(4), -2, -1, 0, 0, 0, -2*E(4), -E(4), 1, -1, 0, 0, 0, 0, 
          E(4), -E(4), 1, 0, 0, 0, E(4), 0, 2 ] ],
  RelationMatrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 
          20, 21, 22, 23 ], 
      [ 12, 0, 1, 5, 23, 2, 3, 11, 6, 15, 20, 19, 8, 17, 18, 4, 21, 7, 13, 
          22, 9, 10, 14, 16 ], 
      [ 8, 12, 0, 2, 16, 1, 5, 19, 3, 4, 9, 22, 6, 7, 13, 23, 10, 11, 17, 14, 
          15, 20, 18, 21 ], 
      [ 3, 6, 8, 0, 10, 12, 1, 14, 2, 16, 4, 18, 5, 19, 7, 21, 9, 22, 11, 13, 
          23, 15, 17, 20 ], 
      [ 11, 15, 17, 18, 0, 20, 21, 1, 22, 2, 3, 4, 23, 5, 6, 7, 8, 9, 10, 12, 
          13, 14, 16, 19 ], 
      [ 6, 8, 12, 1, 21, 0, 2, 22, 5, 23, 15, 14, 3, 11, 17, 16, 20, 19, 7, 
          18, 4, 9, 13, 10 ], 
      [ 5, 3, 6, 12, 20, 8, 0, 18, 1, 21, 23, 13, 2, 22, 11, 10, 15, 14, 19, 
          17, 16, 4, 7, 9 ], 
      [ 19, 4, 7, 13, 12, 9, 10, 0, 14, 1, 5, 23, 16, 2, 3, 11, 6, 15, 20, 8, 
          17, 18, 21, 22 ], 
      [ 2, 5, 3, 8, 9, 6, 12, 13, 0, 10, 16, 17, 1, 14, 19, 20, 4, 18, 22, 7, 
          21, 23, 11, 15 ], 
      [ 22, 23, 11, 17, 8, 15, 20, 12, 18, 0, 2, 16, 21, 1, 5, 19, 3, 4, 9, 
          6, 7, 13, 10, 14 ], 
      [ 18, 21, 22, 11, 3, 23, 15, 6, 17, 8, 0, 10, 20, 12, 1, 14, 2, 16, 4, 
          5, 19, 7, 9, 13 ], 
      [ 4, 7, 9, 10, 11, 13, 14, 15, 16, 17, 18, 0, 19, 20, 21, 1, 22, 2, 3, 
          23, 5, 6, 8, 12 ], 
      [ 1, 2, 5, 6, 15, 3, 8, 17, 12, 20, 21, 7, 0, 18, 22, 9, 23, 13, 14, 
          11, 10, 16, 19, 4 ], 
      [ 14, 16, 19, 7, 6, 4, 9, 8, 13, 12, 1, 21, 10, 0, 2, 22, 5, 23, 15, 3, 
          11, 17, 20, 18 ], 
      [ 13, 10, 14, 19, 5, 16, 4, 3, 7, 6, 12, 20, 9, 8, 0, 18, 1, 21, 23, 2, 
          22, 11, 15, 17 ], 
      [ 23, 11, 15, 20, 19, 17, 18, 4, 21, 7, 13, 12, 22, 9, 10, 0, 14, 1, 5, 
          16, 2, 3, 6, 8 ], 
      [ 17, 20, 18, 22, 2, 21, 23, 5, 11, 3, 8, 9, 15, 6, 12, 13, 0, 10, 16, 
          1, 14, 19, 4, 7 ], 
      [ 16, 19, 4, 9, 22, 7, 13, 23, 10, 11, 17, 8, 14, 15, 20, 12, 18, 0, 2, 
          21, 1, 5, 3, 6 ], 
      [ 10, 14, 16, 4, 18, 19, 7, 21, 9, 22, 11, 3, 13, 23, 15, 6, 17, 8, 0, 
          20, 12, 1, 2, 5 ], 
      [ 7, 9, 13, 14, 1, 10, 16, 2, 19, 5, 6, 15, 4, 3, 8, 17, 12, 20, 21, 0, 
          18, 22, 23, 11 ], 
      [ 21, 22, 23, 15, 14, 11, 17, 16, 20, 19, 7, 6, 18, 4, 9, 8, 13, 12, 1, 
          10, 0, 2, 5, 3 ], 
      [ 20, 18, 21, 23, 13, 22, 11, 10, 15, 14, 19, 5, 17, 16, 4, 3, 7, 6, 
          12, 9, 8, 0, 1, 2 ], 
      [ 9, 13, 10, 16, 17, 14, 19, 20, 4, 18, 22, 2, 7, 21, 23, 5, 11, 3, 8, 
          15, 6, 12, 0, 1 ], 
      [ 15, 17, 20, 21, 7, 18, 22, 9, 23, 13, 14, 1, 11, 10, 16, 2, 19, 5, 6, 
          4, 3, 8, 12, 0 ] ],
  SmallSchemeIdentification := 736 )