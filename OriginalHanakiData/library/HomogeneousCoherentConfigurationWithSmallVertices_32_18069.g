rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, -E(4), E(4), E(4), -E(4), E(4), -E(4), -E(4), E(4), -2*E(8)^3, 
          2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, -E(4), E(4), E(4), -E(4), E(4), -E(4), -E(4), E(4), 2*E(8)^3, 
          -2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, E(4), -E(4), -E(4), E(4), -E(4), E(4), E(4), -E(4), -2*E(8), 
          2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, E(4), -E(4), -E(4), E(4), -E(4), E(4), E(4), -E(4), 2*E(8), 
          -2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(4), E(4), E(4), -E(4), -2*E(8)^3, 
          2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(4), E(4), E(4), -E(4), 2*E(8)^3, 
          -2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(4), -E(4), -E(4), E(4), -2*E(8), 
          2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(4), -E(4), -E(4), E(4), 2*E(8), 
          -2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 18, 18, 19, 19, 16, 16, 17, 17, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 13, 12, 15, 14, 18, 18, 19, 19, 16, 16, 17, 17, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 14, 13, 15, 8, 10, 9, 11, 20, 20, 21, 21, 22, 22, 23, 23, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 14, 12, 15, 13, 9, 11, 8, 10, 22, 22, 23, 23, 20, 20, 21, 21, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 13, 15, 12, 14, 10, 8, 11, 9, 22, 22, 23, 23, 20, 20, 21, 21, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 15, 13, 14, 12, 11, 9, 10, 8, 20, 20, 21, 21, 22, 22, 23, 23, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 9, 8, 11, 10, 13, 15, 12, 14, 0, 1, 2, 3, 7, 5, 6, 4, 17, 17, 18, 18, 19, 19, 16, 16, 21, 
          21, 22, 22, 23, 23, 20, 20 ], 
      [ 8, 9, 10, 11, 15, 13, 14, 12, 1, 0, 3, 2, 6, 4, 7, 5, 19, 19, 16, 16, 17, 17, 18, 18, 23, 
          23, 20, 20, 21, 21, 22, 22 ], 
      [ 11, 10, 9, 8, 12, 14, 13, 15, 2, 3, 0, 1, 5, 7, 4, 6, 19, 19, 16, 16, 17, 17, 18, 18, 23, 
          23, 20, 20, 21, 21, 22, 22 ], 
      [ 10, 11, 8, 9, 14, 12, 15, 13, 3, 2, 1, 0, 4, 6, 5, 7, 17, 17, 18, 18, 19, 19, 16, 16, 21, 
          21, 22, 22, 23, 23, 20, 20 ], 
      [ 13, 15, 12, 14, 9, 8, 11, 10, 7, 6, 5, 4, 0, 2, 1, 3, 21, 21, 22, 22, 23, 23, 20, 20, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 12, 14, 13, 15, 11, 10, 9, 8, 5, 4, 7, 6, 2, 0, 3, 1, 23, 23, 20, 20, 21, 21, 22, 22, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 15, 13, 14, 12, 8, 9, 10, 11, 6, 7, 4, 5, 1, 3, 0, 2, 23, 23, 20, 20, 21, 21, 22, 22, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 14, 12, 15, 13, 10, 11, 8, 9, 4, 5, 6, 7, 3, 1, 2, 0, 21, 21, 22, 22, 23, 23, 20, 20, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 17, 19, 19, 17, 21, 23, 23, 21, 16, 18, 18, 16, 20, 22, 22, 20, 0, 3, 9, 10, 1, 2, 8, 11, 
          4, 7, 13, 14, 5, 6, 12, 15 ], 
      [ 17, 19, 19, 17, 21, 23, 23, 21, 16, 18, 18, 16, 20, 22, 22, 20, 3, 0, 10, 9, 2, 1, 11, 8, 
          7, 4, 14, 13, 6, 5, 15, 12 ], 
      [ 16, 18, 18, 16, 20, 22, 22, 20, 19, 17, 17, 19, 23, 21, 21, 23, 8, 11, 0, 3, 9, 10, 1, 2, 
          15, 12, 4, 7, 13, 14, 6, 5 ], 
      [ 16, 18, 18, 16, 20, 22, 22, 20, 19, 17, 17, 19, 23, 21, 21, 23, 11, 8, 3, 0, 10, 9, 2, 1, 
          12, 15, 7, 4, 14, 13, 5, 6 ], 
      [ 19, 17, 17, 19, 23, 21, 21, 23, 18, 16, 16, 18, 22, 20, 20, 22, 1, 2, 8, 11, 0, 3, 9, 10, 
          5, 6, 15, 12, 4, 7, 14, 13 ], 
      [ 19, 17, 17, 19, 23, 21, 21, 23, 18, 16, 16, 18, 22, 20, 20, 22, 2, 1, 11, 8, 3, 0, 10, 9, 
          6, 5, 12, 15, 7, 4, 13, 14 ], 
      [ 18, 16, 16, 18, 22, 20, 20, 22, 17, 19, 19, 17, 21, 23, 23, 21, 9, 10, 1, 2, 8, 11, 0, 3, 
          13, 14, 5, 6, 15, 12, 7, 4 ], 
      [ 18, 16, 16, 18, 22, 20, 20, 22, 17, 19, 19, 17, 21, 23, 23, 21, 10, 9, 2, 1, 11, 8, 3, 0, 
          14, 13, 6, 5, 12, 15, 4, 7 ], 
      [ 21, 23, 23, 21, 17, 19, 19, 17, 20, 22, 22, 20, 16, 18, 18, 16, 4, 7, 14, 13, 5, 6, 12, 
          15, 0, 3, 10, 9, 1, 2, 8, 11 ], 
      [ 21, 23, 23, 21, 17, 19, 19, 17, 20, 22, 22, 20, 16, 18, 18, 16, 7, 4, 13, 14, 6, 5, 15, 
          12, 3, 0, 9, 10, 2, 1, 11, 8 ], 
      [ 20, 22, 22, 20, 16, 18, 18, 16, 23, 21, 21, 23, 19, 17, 17, 19, 12, 15, 4, 7, 14, 13, 5, 
          6, 11, 8, 0, 3, 10, 9, 2, 1 ], 
      [ 20, 22, 22, 20, 16, 18, 18, 16, 23, 21, 21, 23, 19, 17, 17, 19, 15, 12, 7, 4, 13, 14, 6, 
          5, 8, 11, 3, 0, 9, 10, 1, 2 ], 
      [ 23, 21, 21, 23, 19, 17, 17, 19, 22, 20, 20, 22, 18, 16, 16, 18, 5, 6, 12, 15, 4, 7, 14, 
          13, 1, 2, 11, 8, 0, 3, 9, 10 ], 
      [ 23, 21, 21, 23, 19, 17, 17, 19, 22, 20, 20, 22, 18, 16, 16, 18, 6, 5, 15, 12, 7, 4, 13, 
          14, 2, 1, 8, 11, 3, 0, 10, 9 ], 
      [ 22, 20, 20, 22, 18, 16, 16, 18, 21, 23, 23, 21, 17, 19, 19, 17, 13, 14, 6, 5, 15, 12, 7, 
          4, 9, 10, 2, 1, 8, 11, 0, 3 ], 
      [ 22, 20, 20, 22, 18, 16, 16, 18, 21, 23, 23, 21, 17, 19, 19, 17, 14, 13, 5, 6, 12, 15, 4, 
          7, 10, 9, 1, 2, 11, 8, 3, 0 ] ] )