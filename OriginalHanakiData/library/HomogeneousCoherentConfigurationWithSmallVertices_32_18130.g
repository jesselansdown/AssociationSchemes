rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), E(4), 2*E(8), 
          -2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), E(4), -2*E(8), 
          2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -E(4), E(4), -E(4), E(4), E(4), -E(4), E(4), -E(4), 2*E(8)^3, 
          -2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -E(4), E(4), -E(4), E(4), E(4), -E(4), E(4), -E(4), -2*E(8)^3, 
          2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), 2*E(8), 
          -2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), -2*E(8), 
          2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), 2*E(8)^3, 
          -2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -2*E(8)^3, 
          2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(4), -E(4), -E(4), E(4), 1, 1, -1, -1, 0, 0, 0, 
          0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), -E(4), E(4), E(4), -E(4), 
          -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), E(4), -E(4), -E(4), E(4), -1, -1, 1, 1, 0, 0, 0, 
          0, 0, 0, 0, 0, 2 ], [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(4), E(4), E(4), -E(4), 
          1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -1, -1, 1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 
          0, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 1, 1, -1, -1, -E(4), E(4), 
          E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -1, -1, 1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 
          0, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 1, 1, -1, -1, E(4), -E(4), 
          -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 8, 11, 10, 15, 14, 13, 12, 18, 18, 19, 19, 16, 16, 17, 17, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 13, 12, 15, 14, 18, 18, 19, 19, 16, 16, 17, 17, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 12, 15, 14, 13, 10, 9, 8, 11, 20, 20, 21, 21, 22, 22, 23, 23, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 14, 13, 12, 15, 8, 11, 10, 9, 20, 20, 21, 21, 22, 22, 23, 23, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 15, 12, 13, 14, 11, 8, 9, 10, 22, 22, 23, 23, 20, 20, 21, 21, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 13, 14, 15, 12, 9, 10, 11, 8, 22, 22, 23, 23, 20, 20, 21, 21, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 9, 11, 8, 10, 13, 15, 14, 12, 0, 2, 1, 3, 5, 6, 4, 7, 17, 17, 18, 18, 19, 19, 16, 16, 21, 
          21, 22, 22, 23, 23, 20, 20 ], 
      [ 8, 10, 9, 11, 14, 12, 13, 15, 2, 0, 3, 1, 7, 4, 6, 5, 19, 19, 16, 16, 17, 17, 18, 18, 23, 
          23, 20, 20, 21, 21, 22, 22 ], 
      [ 11, 9, 10, 8, 15, 13, 12, 14, 1, 3, 0, 2, 4, 7, 5, 6, 17, 17, 18, 18, 19, 19, 16, 16, 21, 
          21, 22, 22, 23, 23, 20, 20 ], 
      [ 10, 8, 11, 9, 12, 14, 15, 13, 3, 1, 2, 0, 6, 5, 7, 4, 19, 19, 16, 16, 17, 17, 18, 18, 23, 
          23, 20, 20, 21, 21, 22, 22 ], 
      [ 13, 15, 14, 12, 11, 9, 10, 8, 4, 6, 5, 7, 0, 3, 1, 2, 21, 21, 22, 22, 23, 23, 20, 20, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 12, 14, 15, 13, 8, 10, 9, 11, 7, 5, 6, 4, 3, 0, 2, 1, 23, 23, 20, 20, 21, 21, 22, 22, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 15, 13, 12, 14, 9, 11, 8, 10, 5, 7, 4, 6, 1, 2, 0, 3, 21, 21, 22, 22, 23, 23, 20, 20, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 14, 12, 13, 15, 10, 8, 11, 9, 6, 4, 7, 5, 2, 1, 3, 0, 23, 23, 20, 20, 21, 21, 22, 22, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 17, 17, 19, 19, 21, 21, 23, 23, 16, 18, 16, 18, 20, 22, 20, 22, 0, 1, 9, 11, 2, 3, 8, 10, 
          4, 5, 13, 15, 6, 7, 12, 14 ], 
      [ 17, 17, 19, 19, 21, 21, 23, 23, 16, 18, 16, 18, 20, 22, 20, 22, 1, 0, 11, 9, 3, 2, 10, 8, 
          5, 4, 15, 13, 7, 6, 14, 12 ], 
      [ 16, 16, 18, 18, 20, 20, 22, 22, 19, 17, 19, 17, 23, 21, 23, 21, 8, 10, 0, 1, 9, 11, 2, 3, 
          14, 12, 4, 5, 13, 15, 7, 6 ], 
      [ 16, 16, 18, 18, 20, 20, 22, 22, 19, 17, 19, 17, 23, 21, 23, 21, 10, 8, 1, 0, 11, 9, 3, 2, 
          12, 14, 5, 4, 15, 13, 6, 7 ], 
      [ 19, 19, 17, 17, 23, 23, 21, 21, 18, 16, 18, 16, 22, 20, 22, 20, 2, 3, 8, 10, 0, 1, 9, 11, 
          6, 7, 14, 12, 4, 5, 15, 13 ], 
      [ 19, 19, 17, 17, 23, 23, 21, 21, 18, 16, 18, 16, 22, 20, 22, 20, 3, 2, 10, 8, 1, 0, 11, 9, 
          7, 6, 12, 14, 5, 4, 13, 15 ], 
      [ 18, 18, 16, 16, 22, 22, 20, 20, 17, 19, 17, 19, 21, 23, 21, 23, 9, 11, 2, 3, 8, 10, 0, 1, 
          13, 15, 6, 7, 14, 12, 5, 4 ], 
      [ 18, 18, 16, 16, 22, 22, 20, 20, 17, 19, 17, 19, 21, 23, 21, 23, 11, 9, 3, 2, 10, 8, 1, 0, 
          15, 13, 7, 6, 12, 14, 4, 5 ], 
      [ 21, 21, 23, 23, 17, 17, 19, 19, 20, 22, 20, 22, 16, 18, 16, 18, 5, 4, 15, 13, 7, 6, 12, 
          14, 0, 1, 9, 11, 2, 3, 10, 8 ], 
      [ 21, 21, 23, 23, 17, 17, 19, 19, 20, 22, 20, 22, 16, 18, 16, 18, 4, 5, 13, 15, 6, 7, 14, 
          12, 1, 0, 11, 9, 3, 2, 8, 10 ], 
      [ 20, 20, 22, 22, 16, 16, 18, 18, 23, 21, 23, 21, 19, 17, 19, 17, 12, 14, 5, 4, 15, 13, 7, 
          6, 8, 10, 0, 1, 9, 11, 3, 2 ], 
      [ 20, 20, 22, 22, 16, 16, 18, 18, 23, 21, 23, 21, 19, 17, 19, 17, 14, 12, 4, 5, 13, 15, 6, 
          7, 10, 8, 1, 0, 11, 9, 2, 3 ], 
      [ 23, 23, 21, 21, 19, 19, 17, 17, 22, 20, 22, 20, 18, 16, 18, 16, 7, 6, 12, 14, 5, 4, 15, 
          13, 2, 3, 8, 10, 0, 1, 11, 9 ], 
      [ 23, 23, 21, 21, 19, 19, 17, 17, 22, 20, 22, 20, 18, 16, 18, 16, 6, 7, 14, 12, 4, 5, 13, 
          15, 3, 2, 10, 8, 1, 0, 9, 11 ], 
      [ 22, 22, 20, 20, 18, 18, 16, 16, 21, 23, 21, 23, 17, 19, 17, 19, 13, 15, 6, 7, 14, 12, 4, 
          5, 11, 9, 3, 2, 10, 8, 0, 1 ], 
      [ 22, 22, 20, 20, 18, 18, 16, 16, 21, 23, 21, 23, 17, 19, 17, 19, 15, 13, 7, 6, 12, 14, 5, 
          4, 9, 11, 2, 3, 8, 10, 1, 0 ] ] )