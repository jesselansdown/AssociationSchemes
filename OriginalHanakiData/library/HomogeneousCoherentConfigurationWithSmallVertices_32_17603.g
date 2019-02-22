rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -4, 4, 4, -4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 4, -4, -4, 4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -4, 4, -4, 4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 4, -4, 4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, -1, -1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, -1, -1, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 
          0, 0, 0, 0, 4 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, 
          -E(8)+E(8)^3, -E(8)+E(8)^3, 0, 0, 0, 0, 4 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 2, 3, 0, 1, 10, 11, 12, 14, 13, 15, 4, 5, 6, 8, 7, 9, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 3, 2, 1, 0, 11, 10, 14, 12, 15, 13, 5, 4, 7, 9, 6, 8, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 4, 5, 11, 10, 0, 1, 13, 15, 14, 12, 3, 2, 9, 6, 8, 7, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 5, 4, 10, 11, 1, 0, 15, 13, 12, 14, 2, 3, 8, 7, 9, 6, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 6, 7, 13, 15, 12, 14, 0, 1, 11, 10, 9, 8, 4, 2, 5, 3, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 7, 6, 15, 13, 14, 12, 1, 0, 10, 11, 8, 9, 5, 3, 4, 2, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 8, 9, 12, 14, 15, 13, 10, 11, 0, 1, 6, 7, 2, 5, 3, 4, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 9, 8, 14, 12, 13, 15, 11, 10, 1, 0, 7, 6, 3, 4, 2, 5, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 11, 10, 4, 5, 3, 2, 9, 8, 6, 7, 0, 1, 13, 14, 15, 12, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 10, 11, 5, 4, 2, 3, 8, 9, 7, 6, 1, 0, 15, 12, 13, 14, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 13, 15, 6, 7, 9, 8, 4, 5, 2, 3, 12, 14, 0, 11, 1, 10, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 12, 14, 8, 9, 6, 7, 2, 3, 5, 4, 15, 13, 10, 0, 11, 1, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 15, 13, 7, 6, 8, 9, 5, 4, 3, 2, 14, 12, 1, 10, 0, 11, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 14, 12, 9, 8, 7, 6, 3, 2, 4, 5, 13, 15, 11, 1, 10, 0, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 16, 16, 19, 19, 19, 19, 0, 1, 10, 11, 2, 3, 4, 5, 
          6, 7, 8, 9, 12, 13, 14, 15 ], 
      [ 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 16, 16, 19, 19, 19, 19, 1, 0, 11, 10, 3, 2, 5, 4, 
          7, 6, 9, 8, 14, 15, 12, 13 ], 
      [ 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 16, 16, 19, 19, 19, 19, 11, 10, 0, 1, 4, 5, 3, 2, 
          9, 8, 6, 7, 13, 14, 15, 12 ], 
      [ 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 16, 16, 19, 19, 19, 19, 10, 11, 1, 0, 5, 4, 2, 3, 
          8, 9, 7, 6, 15, 12, 13, 14 ], 
      [ 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 17, 17, 18, 18, 18, 18, 2, 3, 4, 5, 0, 1, 10, 11, 
          12, 14, 13, 15, 6, 8, 7, 9 ], 
      [ 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 17, 17, 18, 18, 18, 18, 3, 2, 5, 4, 1, 0, 11, 10, 
          14, 12, 15, 13, 7, 9, 6, 8 ], 
      [ 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 17, 17, 18, 18, 18, 18, 4, 5, 3, 2, 11, 10, 0, 1, 
          13, 15, 14, 12, 9, 6, 8, 7 ], 
      [ 17, 17, 16, 16, 16, 16, 19, 19, 19, 19, 17, 17, 18, 18, 18, 18, 5, 4, 2, 3, 10, 11, 1, 0, 
          15, 13, 12, 14, 8, 7, 9, 6 ], 
      [ 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 18, 18, 17, 17, 17, 17, 6, 7, 9, 8, 13, 15, 12, 
          14, 0, 1, 11, 10, 4, 2, 5, 3 ], 
      [ 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 18, 18, 17, 17, 17, 17, 7, 6, 8, 9, 15, 13, 14, 
          12, 1, 0, 10, 11, 5, 3, 4, 2 ], 
      [ 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 18, 18, 17, 17, 17, 17, 8, 9, 6, 7, 12, 14, 15, 
          13, 10, 11, 0, 1, 2, 5, 3, 4 ], 
      [ 18, 18, 19, 19, 19, 19, 16, 16, 16, 16, 18, 18, 17, 17, 17, 17, 9, 8, 7, 6, 14, 12, 13, 
          15, 11, 10, 1, 0, 3, 4, 2, 5 ], 
      [ 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 19, 19, 16, 16, 16, 16, 13, 15, 12, 14, 6, 7, 9, 
          8, 4, 5, 2, 3, 0, 11, 1, 10 ], 
      [ 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 19, 19, 16, 16, 16, 16, 12, 14, 15, 13, 8, 9, 6, 
          7, 2, 3, 5, 4, 10, 0, 11, 1 ], 
      [ 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 19, 19, 16, 16, 16, 16, 15, 13, 14, 12, 7, 6, 8, 
          9, 5, 4, 3, 2, 1, 10, 0, 11 ], 
      [ 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 19, 19, 16, 16, 16, 16, 14, 12, 13, 15, 9, 8, 7, 
          6, 3, 2, 4, 5, 11, 1, 10, 0 ] ] )