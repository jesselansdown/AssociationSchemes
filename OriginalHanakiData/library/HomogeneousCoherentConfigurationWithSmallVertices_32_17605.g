rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 
          0, 0, 0, 0, 4 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, 
          -E(8)+E(8)^3, -E(8)+E(8)^3, 0, 0, 0, 0, 4 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 2, 3, 0, 1, 10, 11, 12, 14, 13, 15, 4, 5, 6, 8, 7, 9, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 11, 10, 14, 12, 15, 13, 5, 4, 7, 9, 6, 8, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 4, 5, 11, 10, 0, 1, 13, 15, 14, 12, 3, 2, 9, 6, 8, 7, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 5, 4, 10, 11, 1, 0, 15, 13, 12, 14, 2, 3, 8, 7, 9, 6, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 6, 7, 13, 15, 12, 14, 0, 1, 11, 10, 9, 8, 4, 2, 5, 3, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 7, 6, 15, 13, 14, 12, 1, 0, 10, 11, 8, 9, 5, 3, 4, 2, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 8, 9, 12, 14, 15, 13, 10, 11, 0, 1, 6, 7, 2, 5, 3, 4, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 9, 8, 14, 12, 13, 15, 11, 10, 1, 0, 7, 6, 3, 4, 2, 5, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 11, 10, 4, 5, 3, 2, 9, 8, 6, 7, 0, 1, 13, 14, 15, 12, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 10, 11, 5, 4, 2, 3, 8, 9, 7, 6, 1, 0, 15, 12, 13, 14, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 13, 15, 6, 7, 9, 8, 4, 5, 2, 3, 12, 14, 0, 11, 1, 10, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 12, 14, 8, 9, 6, 7, 2, 3, 5, 4, 15, 13, 10, 0, 11, 1, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 15, 13, 7, 6, 8, 9, 5, 4, 3, 2, 14, 12, 1, 10, 0, 11, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 14, 12, 9, 8, 7, 6, 3, 2, 4, 5, 13, 15, 11, 1, 10, 0, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 16, 16, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 17, 17, 17, 17, 0, 1, 10, 11, 12, 13, 14, 
          15, 6, 7, 8, 9, 2, 3, 4, 5 ], 
      [ 16, 16, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 17, 17, 17, 17, 1, 0, 11, 10, 14, 15, 12, 
          13, 7, 6, 9, 8, 3, 2, 5, 4 ], 
      [ 16, 16, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 17, 17, 17, 17, 11, 10, 0, 1, 13, 14, 15, 
          12, 9, 8, 6, 7, 4, 5, 3, 2 ], 
      [ 16, 16, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 17, 17, 17, 17, 10, 11, 1, 0, 15, 12, 13, 
          14, 8, 9, 7, 6, 5, 4, 2, 3 ], 
      [ 17, 17, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 16, 16, 16, 16, 13, 15, 12, 14, 0, 11, 1, 
          10, 4, 5, 2, 3, 6, 7, 9, 8 ], 
      [ 17, 17, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 16, 16, 16, 16, 12, 14, 15, 13, 10, 0, 11, 
          1, 2, 3, 5, 4, 8, 9, 6, 7 ], 
      [ 17, 17, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 16, 16, 16, 16, 15, 13, 14, 12, 1, 10, 0, 
          11, 5, 4, 3, 2, 7, 6, 8, 9 ], 
      [ 17, 17, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 16, 16, 16, 16, 14, 12, 13, 15, 11, 1, 10, 
          0, 3, 2, 4, 5, 9, 8, 7, 6 ], 
      [ 19, 19, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 18, 18, 18, 18, 6, 7, 9, 8, 4, 2, 5, 3, 0, 
          1, 11, 10, 13, 15, 12, 14 ], 
      [ 19, 19, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 18, 18, 18, 18, 7, 6, 8, 9, 5, 3, 4, 2, 1, 
          0, 10, 11, 15, 13, 14, 12 ], 
      [ 19, 19, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 18, 18, 18, 18, 8, 9, 6, 7, 2, 5, 3, 4, 
          10, 11, 0, 1, 12, 14, 15, 13 ], 
      [ 19, 19, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 18, 18, 18, 18, 9, 8, 7, 6, 3, 4, 2, 5, 
          11, 10, 1, 0, 14, 12, 13, 15 ], 
      [ 18, 18, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 19, 19, 19, 19, 2, 3, 4, 5, 6, 8, 7, 9, 
          12, 14, 13, 15, 0, 1, 10, 11 ], 
      [ 18, 18, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 19, 19, 19, 19, 3, 2, 5, 4, 7, 9, 6, 8, 
          14, 12, 15, 13, 1, 0, 11, 10 ], 
      [ 18, 18, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 19, 19, 19, 19, 4, 5, 3, 2, 9, 6, 8, 7, 
          13, 15, 14, 12, 11, 10, 0, 1 ], 
      [ 18, 18, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 19, 19, 19, 19, 5, 4, 2, 3, 8, 7, 9, 6, 
          15, 13, 12, 14, 10, 11, 1, 0 ] ] )