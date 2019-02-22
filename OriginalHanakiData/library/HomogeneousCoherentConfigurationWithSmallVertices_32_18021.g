rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 0, 0, 
          0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 2 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 0, 0, 
          0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 
          0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, 
          0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 10, 11, 12, 14, 13, 15, 4, 5, 6, 8, 7, 9, 18, 18, 20, 20, 16, 16, 22, 22, 17, 
          17, 23, 23, 19, 19, 21, 21 ], 
      [ 3, 2, 1, 0, 11, 10, 14, 12, 15, 13, 5, 4, 7, 9, 6, 8, 18, 18, 20, 20, 16, 16, 22, 22, 17, 
          17, 23, 23, 19, 19, 21, 21 ], 
      [ 4, 5, 11, 10, 0, 1, 13, 15, 14, 12, 3, 2, 9, 6, 8, 7, 19, 19, 21, 21, 22, 22, 16, 16, 23, 
          23, 17, 17, 18, 18, 20, 20 ], 
      [ 5, 4, 10, 11, 1, 0, 15, 13, 12, 14, 2, 3, 8, 7, 9, 6, 19, 19, 21, 21, 22, 22, 16, 16, 23, 
          23, 17, 17, 18, 18, 20, 20 ], 
      [ 6, 7, 13, 15, 12, 14, 0, 1, 11, 10, 9, 8, 4, 2, 5, 3, 20, 20, 19, 19, 23, 23, 17, 17, 16, 
          16, 22, 22, 21, 21, 18, 18 ], 
      [ 7, 6, 15, 13, 14, 12, 1, 0, 10, 11, 8, 9, 5, 3, 4, 2, 20, 20, 19, 19, 23, 23, 17, 17, 16, 
          16, 22, 22, 21, 21, 18, 18 ], 
      [ 8, 9, 12, 14, 15, 13, 10, 11, 0, 1, 6, 7, 2, 5, 3, 4, 21, 21, 18, 18, 17, 17, 23, 23, 22, 
          22, 16, 16, 20, 20, 19, 19 ], 
      [ 9, 8, 14, 12, 13, 15, 11, 10, 1, 0, 7, 6, 3, 4, 2, 5, 21, 21, 18, 18, 17, 17, 23, 23, 22, 
          22, 16, 16, 20, 20, 19, 19 ], 
      [ 11, 10, 4, 5, 3, 2, 9, 8, 6, 7, 0, 1, 13, 14, 15, 12, 22, 22, 23, 23, 19, 19, 18, 18, 21, 
          21, 20, 20, 16, 16, 17, 17 ], 
      [ 10, 11, 5, 4, 2, 3, 8, 9, 7, 6, 1, 0, 15, 12, 13, 14, 22, 22, 23, 23, 19, 19, 18, 18, 21, 
          21, 20, 20, 16, 16, 17, 17 ], 
      [ 13, 15, 6, 7, 9, 8, 4, 5, 2, 3, 12, 14, 0, 11, 1, 10, 23, 23, 16, 16, 20, 20, 21, 21, 19, 
          19, 18, 18, 17, 17, 22, 22 ], 
      [ 12, 14, 8, 9, 6, 7, 2, 3, 5, 4, 15, 13, 10, 0, 11, 1, 17, 17, 22, 22, 21, 21, 20, 20, 18, 
          18, 19, 19, 23, 23, 16, 16 ], 
      [ 15, 13, 7, 6, 8, 9, 5, 4, 3, 2, 14, 12, 1, 10, 0, 11, 23, 23, 16, 16, 20, 20, 21, 21, 19, 
          19, 18, 18, 17, 17, 22, 22 ], 
      [ 14, 12, 9, 8, 7, 6, 3, 2, 4, 5, 13, 15, 11, 1, 10, 0, 17, 17, 22, 22, 21, 21, 20, 20, 18, 
          18, 19, 19, 23, 23, 16, 16 ], 
      [ 17, 17, 19, 19, 18, 18, 21, 21, 20, 20, 23, 23, 22, 16, 22, 16, 0, 1, 12, 14, 6, 7, 8, 9, 
          4, 5, 2, 3, 10, 11, 13, 15 ], 
      [ 17, 17, 19, 19, 18, 18, 21, 21, 20, 20, 23, 23, 22, 16, 22, 16, 1, 0, 14, 12, 7, 6, 9, 8, 
          5, 4, 3, 2, 11, 10, 15, 13 ], 
      [ 16, 16, 21, 21, 20, 20, 18, 18, 19, 19, 22, 22, 17, 23, 17, 23, 13, 15, 0, 1, 4, 5, 2, 3, 
          9, 8, 6, 7, 12, 14, 11, 10 ], 
      [ 16, 16, 21, 21, 20, 20, 18, 18, 19, 19, 22, 22, 17, 23, 17, 23, 15, 13, 1, 0, 5, 4, 3, 2, 
          8, 9, 7, 6, 14, 12, 10, 11 ], 
      [ 19, 19, 17, 17, 23, 23, 22, 22, 16, 16, 18, 18, 21, 20, 21, 20, 6, 7, 4, 5, 0, 1, 11, 10, 
          12, 14, 13, 15, 9, 8, 2, 3 ], 
      [ 19, 19, 17, 17, 23, 23, 22, 22, 16, 16, 18, 18, 21, 20, 21, 20, 7, 6, 5, 4, 1, 0, 10, 11, 
          14, 12, 15, 13, 8, 9, 3, 2 ], 
      [ 18, 18, 23, 23, 17, 17, 16, 16, 22, 22, 19, 19, 20, 21, 20, 21, 8, 9, 2, 3, 10, 11, 0, 1, 
          15, 13, 12, 14, 6, 7, 5, 4 ], 
      [ 18, 18, 23, 23, 17, 17, 16, 16, 22, 22, 19, 19, 20, 21, 20, 21, 9, 8, 3, 2, 11, 10, 1, 0, 
          13, 15, 14, 12, 7, 6, 4, 5 ], 
      [ 21, 21, 16, 16, 22, 22, 17, 17, 23, 23, 20, 20, 18, 19, 18, 19, 4, 5, 9, 8, 13, 15, 14, 
          12, 0, 1, 11, 10, 3, 2, 6, 7 ], 
      [ 21, 21, 16, 16, 22, 22, 17, 17, 23, 23, 20, 20, 18, 19, 18, 19, 5, 4, 8, 9, 15, 13, 12, 
          14, 1, 0, 10, 11, 2, 3, 7, 6 ], 
      [ 20, 20, 22, 22, 16, 16, 23, 23, 17, 17, 21, 21, 19, 18, 19, 18, 2, 3, 6, 7, 12, 14, 13, 
          15, 10, 11, 0, 1, 4, 5, 8, 9 ], 
      [ 20, 20, 22, 22, 16, 16, 23, 23, 17, 17, 21, 21, 19, 18, 19, 18, 3, 2, 7, 6, 14, 12, 15, 
          13, 11, 10, 1, 0, 5, 4, 9, 8 ], 
      [ 23, 23, 18, 18, 19, 19, 20, 20, 21, 21, 17, 17, 16, 22, 16, 22, 11, 10, 13, 15, 9, 8, 6, 
          7, 3, 2, 4, 5, 0, 1, 14, 12 ], 
      [ 23, 23, 18, 18, 19, 19, 20, 20, 21, 21, 17, 17, 16, 22, 16, 22, 10, 11, 15, 13, 8, 9, 7, 
          6, 2, 3, 5, 4, 1, 0, 12, 14 ], 
      [ 22, 22, 20, 20, 21, 21, 19, 19, 18, 18, 16, 16, 23, 17, 23, 17, 12, 14, 10, 11, 2, 3, 5, 
          4, 6, 7, 8, 9, 15, 13, 0, 1 ], 
      [ 22, 22, 20, 20, 21, 21, 19, 19, 18, 18, 16, 16, 23, 17, 23, 17, 14, 12, 11, 10, 3, 2, 4, 
          5, 7, 6, 9, 8, 13, 15, 1, 0 ] ] )