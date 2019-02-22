rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -4*E(4), 4*E(4), 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4*E(4), -4*E(4), 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 
          0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, 
          0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 3, 2, 0, 1, 6, 7, 5, 4, 10, 11, 9, 8, 13, 14, 15, 12, 17, 17, 16, 16, 19, 19, 18, 18, 21, 
          21, 20, 20, 23, 23, 22, 22 ], 
      [ 2, 3, 1, 0, 7, 6, 4, 5, 11, 10, 8, 9, 15, 12, 13, 14, 17, 17, 16, 16, 19, 19, 18, 18, 21, 
          21, 20, 20, 23, 23, 22, 22 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 12, 14, 15, 13, 9, 10, 8, 11, 18, 18, 19, 19, 16, 16, 17, 17, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 14, 12, 13, 15, 8, 11, 9, 10, 18, 18, 19, 19, 16, 16, 17, 17, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 13, 15, 12, 14, 11, 9, 10, 8, 19, 19, 18, 18, 17, 17, 16, 16, 23, 
          23, 22, 22, 21, 21, 20, 20 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 15, 13, 14, 12, 10, 8, 11, 9, 19, 19, 18, 18, 17, 17, 16, 16, 23, 
          23, 22, 22, 21, 21, 20, 20 ], 
      [ 9, 8, 11, 10, 13, 15, 12, 14, 0, 1, 2, 3, 7, 5, 6, 4, 20, 20, 21, 21, 23, 23, 22, 22, 16, 
          16, 17, 17, 19, 19, 18, 18 ], 
      [ 8, 9, 10, 11, 15, 13, 14, 12, 1, 0, 3, 2, 6, 4, 7, 5, 20, 20, 21, 21, 23, 23, 22, 22, 16, 
          16, 17, 17, 19, 19, 18, 18 ], 
      [ 11, 10, 8, 9, 14, 12, 13, 15, 3, 2, 0, 1, 4, 7, 5, 6, 21, 21, 20, 20, 22, 22, 23, 23, 17, 
          17, 16, 16, 18, 18, 19, 19 ], 
      [ 10, 11, 9, 8, 12, 14, 15, 13, 2, 3, 1, 0, 5, 6, 4, 7, 21, 21, 20, 20, 22, 22, 23, 23, 17, 
          17, 16, 16, 18, 18, 19, 19 ], 
      [ 13, 15, 12, 14, 8, 9, 10, 11, 6, 7, 5, 4, 0, 3, 1, 2, 23, 23, 22, 22, 20, 20, 21, 21, 19, 
          19, 18, 18, 16, 16, 17, 17 ], 
      [ 12, 14, 15, 13, 11, 10, 8, 9, 4, 5, 6, 7, 2, 0, 3, 1, 22, 22, 23, 23, 21, 21, 20, 20, 18, 
          18, 19, 19, 17, 17, 16, 16 ], 
      [ 15, 13, 14, 12, 9, 8, 11, 10, 7, 6, 4, 5, 1, 2, 0, 3, 23, 23, 22, 22, 20, 20, 21, 21, 19, 
          19, 18, 18, 16, 16, 17, 17 ], 
      [ 14, 12, 13, 15, 10, 11, 9, 8, 5, 4, 7, 6, 3, 1, 2, 0, 22, 22, 23, 23, 21, 21, 20, 20, 18, 
          18, 19, 19, 17, 17, 16, 16 ], 
      [ 16, 16, 17, 17, 19, 19, 18, 18, 21, 21, 20, 20, 22, 23, 22, 23, 0, 1, 2, 3, 6, 7, 4, 5, 
          10, 11, 8, 9, 12, 14, 13, 15 ], 
      [ 16, 16, 17, 17, 19, 19, 18, 18, 21, 21, 20, 20, 22, 23, 22, 23, 1, 0, 3, 2, 7, 6, 5, 4, 
          11, 10, 9, 8, 14, 12, 15, 13 ], 
      [ 17, 17, 16, 16, 18, 18, 19, 19, 20, 20, 21, 21, 23, 22, 23, 22, 3, 2, 0, 1, 5, 4, 6, 7, 9, 
          8, 10, 11, 13, 15, 14, 12 ], 
      [ 17, 17, 16, 16, 18, 18, 19, 19, 20, 20, 21, 21, 23, 22, 23, 22, 2, 3, 1, 0, 4, 5, 7, 6, 8, 
          9, 11, 10, 15, 13, 12, 14 ], 
      [ 19, 19, 18, 18, 16, 16, 17, 17, 22, 22, 23, 23, 21, 20, 21, 20, 7, 6, 4, 5, 0, 1, 3, 2, 
          12, 14, 13, 15, 11, 10, 9, 8 ], 
      [ 19, 19, 18, 18, 16, 16, 17, 17, 22, 22, 23, 23, 21, 20, 21, 20, 6, 7, 5, 4, 1, 0, 2, 3, 
          14, 12, 15, 13, 10, 11, 8, 9 ], 
      [ 18, 18, 19, 19, 17, 17, 16, 16, 23, 23, 22, 22, 20, 21, 20, 21, 5, 4, 7, 6, 2, 3, 0, 1, 
          15, 13, 12, 14, 9, 8, 10, 11 ], 
      [ 18, 18, 19, 19, 17, 17, 16, 16, 23, 23, 22, 22, 20, 21, 20, 21, 4, 5, 6, 7, 3, 2, 1, 0, 
          13, 15, 14, 12, 8, 9, 11, 10 ], 
      [ 21, 21, 20, 20, 23, 23, 22, 22, 16, 16, 17, 17, 18, 19, 18, 19, 11, 10, 8, 9, 13, 15, 14, 
          12, 0, 1, 3, 2, 4, 5, 7, 6 ], 
      [ 21, 21, 20, 20, 23, 23, 22, 22, 16, 16, 17, 17, 18, 19, 18, 19, 10, 11, 9, 8, 15, 13, 12, 
          14, 1, 0, 2, 3, 5, 4, 6, 7 ], 
      [ 20, 20, 21, 21, 22, 22, 23, 23, 17, 17, 16, 16, 19, 18, 19, 18, 9, 8, 11, 10, 12, 14, 13, 
          15, 2, 3, 0, 1, 7, 6, 5, 4 ], 
      [ 20, 20, 21, 21, 22, 22, 23, 23, 17, 17, 16, 16, 19, 18, 19, 18, 8, 9, 10, 11, 14, 12, 15, 
          13, 3, 2, 1, 0, 6, 7, 4, 5 ], 
      [ 23, 23, 22, 22, 21, 21, 20, 20, 18, 18, 19, 19, 16, 17, 16, 17, 13, 15, 12, 14, 10, 11, 8, 
          9, 5, 4, 6, 7, 0, 1, 3, 2 ], 
      [ 23, 23, 22, 22, 21, 21, 20, 20, 18, 18, 19, 19, 16, 17, 16, 17, 15, 13, 14, 12, 11, 10, 9, 
          8, 4, 5, 7, 6, 1, 0, 2, 3 ], 
      [ 22, 22, 23, 23, 20, 20, 21, 21, 19, 19, 18, 18, 17, 16, 17, 16, 12, 14, 15, 13, 8, 9, 11, 
          10, 6, 7, 4, 5, 2, 3, 0, 1 ], 
      [ 22, 22, 23, 23, 20, 20, 21, 21, 19, 19, 18, 18, 17, 16, 17, 16, 14, 12, 13, 15, 9, 8, 10, 
          11, 7, 6, 5, 4, 3, 2, 1, 0 ] ] )