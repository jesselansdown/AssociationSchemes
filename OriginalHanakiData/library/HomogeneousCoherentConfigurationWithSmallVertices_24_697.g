rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 1 ], 
      [ 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -3, -3, 3, 3, 1 ], 
      [ 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 3, 3, -3, -3, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -3, -3, -3, -3, 1 ], 
      [ 2, -2, 0, 0, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -E(4), E(4), E(3)^2, E(3), -E(3)^2, -E(3), E(12)^11, -E(12)^7, -E(12)^11, E(12)^7, 
          0, 0, 0, 0, 2 ], [ 1, -1, -E(4), E(4), E(3), E(3)^2, -E(3), -E(3)^2, E(12)^7, -E(12)^11, 
          -E(12)^7, E(12)^11, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(4), -E(4), E(3)^2, E(3), -E(3)^2, -E(3), -E(12)^11, E(12)^7, E(12)^11, -E(12)^7, 
          0, 0, 0, 0, 2 ], [ 1, -1, E(4), -E(4), E(3), E(3)^2, -E(3), -E(3)^2, -E(12)^7, E(12)^11, 
          E(12)^7, -E(12)^11, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, E(3)^2, E(3), E(3)^2, E(3), -E(3)^2, -E(3), -E(3)^2, -E(3), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, E(3), E(3)^2, E(3), E(3)^2, -E(3), -E(3)^2, -E(3), -E(3)^2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, E(3)^2, E(3), E(3)^2, E(3), E(3)^2, E(3), E(3)^2, E(3), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, E(3), E(3)^2, E(3), E(3)^2, E(3), E(3)^2, E(3), E(3)^2, 0, 0, 0, 0, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 10, 11, 8, 9, 13, 13, 13, 12, 12, 12, 15, 15, 15, 14, 14, 14 ], 
      [ 3, 2, 0, 1, 8, 11, 10, 9, 6, 5, 4, 7, 14, 14, 14, 15, 15, 15, 13, 13, 13, 12, 12, 12 ], 
      [ 2, 3, 1, 0, 10, 9, 8, 11, 4, 7, 6, 5, 15, 15, 15, 14, 14, 14, 12, 12, 12, 13, 13, 13 ], 
      [ 5, 7, 9, 11, 0, 4, 1, 6, 3, 10, 2, 8, 12, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 15 ], 
      [ 4, 6, 10, 8, 5, 0, 7, 1, 11, 2, 9, 3, 12, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 15 ], 
      [ 7, 5, 11, 9, 1, 6, 0, 4, 2, 8, 3, 10, 13, 13, 13, 12, 12, 12, 15, 15, 15, 14, 14, 14 ], 
      [ 6, 4, 8, 10, 7, 1, 5, 0, 9, 3, 11, 2, 13, 13, 13, 12, 12, 12, 15, 15, 15, 14, 14, 14 ], 
      [ 9, 11, 7, 5, 2, 10, 3, 8, 0, 6, 1, 4, 15, 15, 15, 14, 14, 14, 12, 12, 12, 13, 13, 13 ], 
      [ 8, 10, 4, 6, 11, 3, 9, 2, 7, 0, 5, 1, 14, 14, 14, 15, 15, 15, 13, 13, 13, 12, 12, 12 ], 
      [ 11, 9, 5, 7, 3, 8, 2, 10, 1, 4, 0, 6, 14, 14, 14, 15, 15, 15, 13, 13, 13, 12, 12, 12 ], 
      [ 10, 8, 6, 4, 9, 2, 11, 3, 5, 1, 7, 0, 15, 15, 15, 14, 14, 14, 12, 12, 12, 13, 13, 13 ], 
      [ 13, 12, 15, 14, 13, 13, 12, 12, 14, 15, 15, 14, 0, 4, 5, 1, 6, 7, 2, 9, 10, 3, 8, 11 ], 
      [ 13, 12, 15, 14, 13, 13, 12, 12, 14, 15, 15, 14, 5, 0, 4, 7, 1, 6, 9, 10, 2, 11, 3, 8 ], 
      [ 13, 12, 15, 14, 13, 13, 12, 12, 14, 15, 15, 14, 4, 5, 0, 6, 7, 1, 10, 2, 9, 8, 11, 3 ], 
      [ 12, 13, 14, 15, 12, 12, 13, 13, 15, 14, 14, 15, 1, 6, 7, 0, 4, 5, 3, 11, 8, 2, 10, 9 ], 
      [ 12, 13, 14, 15, 12, 12, 13, 13, 15, 14, 14, 15, 7, 1, 6, 5, 0, 4, 11, 8, 3, 9, 2, 10 ], 
      [ 12, 13, 14, 15, 12, 12, 13, 13, 15, 14, 14, 15, 6, 7, 1, 4, 5, 0, 8, 3, 11, 10, 9, 2 ], 
      [ 15, 14, 12, 13, 15, 15, 14, 14, 13, 12, 12, 13, 3, 8, 11, 2, 10, 9, 0, 5, 4, 1, 6, 7 ], 
      [ 15, 14, 12, 13, 15, 15, 14, 14, 13, 12, 12, 13, 8, 11, 3, 10, 9, 2, 4, 0, 5, 6, 7, 1 ], 
      [ 15, 14, 12, 13, 15, 15, 14, 14, 13, 12, 12, 13, 11, 3, 8, 9, 2, 10, 5, 4, 0, 7, 1, 6 ], 
      [ 14, 15, 13, 12, 14, 14, 15, 15, 12, 13, 13, 12, 2, 10, 9, 3, 8, 11, 1, 7, 6, 0, 4, 5 ], 
      [ 14, 15, 13, 12, 14, 14, 15, 15, 12, 13, 13, 12, 9, 2, 10, 11, 3, 8, 7, 6, 1, 5, 0, 4 ], 
      [ 14, 15, 13, 12, 14, 14, 15, 15, 12, 13, 13, 12, 10, 9, 2, 8, 11, 3, 6, 1, 7, 4, 5, 0 ] ] )