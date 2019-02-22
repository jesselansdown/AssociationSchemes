rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, E(8), -E(8)^3, 
          -E(8), E(8)^3, -2, 2, 2*E(4), -2*E(4), -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, E(8), -E(8)^3, 
          -E(8), E(8)^3, 2, -2, -2*E(4), 2*E(4), 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, -E(8), E(8)^3, E(8), 
          -E(8)^3, -2, 2, 2*E(4), -2*E(4), 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, -E(8), E(8)^3, E(8), 
          -E(8)^3, 2, -2, -2*E(4), 2*E(4), -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), E(8)^3, -E(8), 
          -E(8)^3, E(8), -2, 2, -2*E(4), 2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), E(8)^3, -E(8), 
          -E(8)^3, E(8), 2, -2, 2*E(4), -2*E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), -E(8)^3, E(8), 
          E(8)^3, -E(8), -2, 2, -2*E(4), 2*E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), -E(8)^3, E(8), 
          E(8)^3, -E(8), 2, -2, 2*E(4), -2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), -2, -2, 2, 
          2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), 2, 2, -2, 
          -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -2, -2, 2, 
          2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), 2, 2, -2, 
          -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(8), -E(8)^3, -E(8), E(8)^3, -E(8), E(8)^3, E(8), 
          -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), -E(8), E(8)^3, E(8), -E(8)^3, E(8), -E(8)^3, 
          -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), E(8)^3, -E(8), -E(8)^3, E(8), -E(8)^3, E(8), 
          E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(8)^3, E(8), E(8)^3, -E(8), E(8)^3, -E(8), 
          -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), E(4), 0, 0, 0, 
          0, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, -E(4), E(4), -E(4), E(4), E(4), -E(4), 
          E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 14, 15, 12, 13, 17, 17, 16, 16, 19, 19, 18, 18, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 12, 13, 14, 15, 8, 9, 10, 11, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 14, 15, 12, 13, 10, 11, 8, 9, 17, 17, 16, 16, 19, 19, 18, 18, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 10, 11, 8, 13, 14, 15, 12, 18, 18, 19, 19, 17, 17, 16, 16, 21, 
          21, 22, 22, 23, 23, 20, 20 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 8, 9, 10, 15, 12, 13, 14, 19, 19, 18, 18, 16, 16, 17, 17, 23, 
          23, 20, 20, 21, 21, 22, 22 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 13, 14, 15, 12, 9, 10, 11, 8, 18, 18, 19, 19, 17, 17, 16, 16, 21, 
          21, 22, 22, 23, 23, 20, 20 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 15, 12, 13, 14, 11, 8, 9, 10, 19, 19, 18, 18, 16, 16, 17, 17, 23, 
          23, 20, 20, 21, 21, 22, 22 ], 
      [ 9, 11, 13, 15, 8, 10, 12, 14, 0, 5, 1, 4, 2, 7, 3, 6, 21, 21, 23, 23, 22, 22, 20, 20, 16, 
          16, 18, 18, 17, 17, 19, 19 ], 
      [ 8, 10, 12, 14, 11, 9, 15, 13, 4, 0, 5, 1, 6, 2, 7, 3, 20, 20, 22, 22, 21, 21, 23, 23, 19, 
          19, 16, 16, 18, 18, 17, 17 ], 
      [ 11, 9, 15, 13, 10, 8, 14, 12, 1, 4, 0, 5, 3, 6, 2, 7, 23, 23, 21, 21, 20, 20, 22, 22, 17, 
          17, 19, 19, 16, 16, 18, 18 ], 
      [ 10, 8, 14, 12, 9, 11, 13, 15, 5, 1, 4, 0, 7, 3, 6, 2, 22, 22, 20, 20, 23, 23, 21, 21, 18, 
          18, 17, 17, 19, 19, 16, 16 ], 
      [ 13, 15, 9, 11, 12, 14, 8, 10, 2, 7, 3, 6, 0, 5, 1, 4, 21, 21, 23, 23, 22, 22, 20, 20, 16, 
          16, 18, 18, 17, 17, 19, 19 ], 
      [ 12, 14, 8, 10, 15, 13, 11, 9, 6, 2, 7, 3, 4, 0, 5, 1, 20, 20, 22, 22, 21, 21, 23, 23, 19, 
          19, 16, 16, 18, 18, 17, 17 ], 
      [ 15, 13, 11, 9, 14, 12, 10, 8, 3, 6, 2, 7, 1, 4, 0, 5, 23, 23, 21, 21, 20, 20, 22, 22, 17, 
          17, 19, 19, 16, 16, 18, 18 ], 
      [ 14, 12, 10, 8, 13, 15, 9, 11, 7, 3, 6, 2, 5, 1, 4, 0, 22, 22, 20, 20, 23, 23, 21, 21, 18, 
          18, 17, 17, 19, 19, 16, 16 ], 
      [ 16, 17, 16, 17, 19, 18, 19, 18, 20, 21, 22, 23, 20, 21, 22, 23, 0, 2, 1, 3, 5, 7, 4, 6, 8, 
          12, 9, 13, 10, 14, 11, 15 ], 
      [ 16, 17, 16, 17, 19, 18, 19, 18, 20, 21, 22, 23, 20, 21, 22, 23, 2, 0, 3, 1, 7, 5, 6, 4, 
          12, 8, 13, 9, 14, 10, 15, 11 ], 
      [ 17, 16, 17, 16, 18, 19, 18, 19, 22, 23, 20, 21, 22, 23, 20, 21, 1, 3, 0, 2, 4, 6, 5, 7, 
          10, 14, 11, 15, 8, 12, 9, 13 ], 
      [ 17, 16, 17, 16, 18, 19, 18, 19, 22, 23, 20, 21, 22, 23, 20, 21, 3, 1, 2, 0, 6, 4, 7, 5, 
          14, 10, 15, 11, 12, 8, 13, 9 ], 
      [ 19, 18, 19, 18, 17, 16, 17, 16, 23, 20, 21, 22, 23, 20, 21, 22, 4, 6, 5, 7, 0, 2, 1, 3, 
          11, 15, 8, 12, 9, 13, 10, 14 ], 
      [ 19, 18, 19, 18, 17, 16, 17, 16, 23, 20, 21, 22, 23, 20, 21, 22, 6, 4, 7, 5, 2, 0, 3, 1, 
          15, 11, 12, 8, 13, 9, 14, 10 ], 
      [ 18, 19, 18, 19, 16, 17, 16, 17, 21, 22, 23, 20, 21, 22, 23, 20, 5, 7, 4, 6, 1, 3, 0, 2, 9, 
          13, 10, 14, 11, 15, 8, 12 ], 
      [ 18, 19, 18, 19, 16, 17, 16, 17, 21, 22, 23, 20, 21, 22, 23, 20, 7, 5, 6, 4, 3, 1, 2, 0, 
          13, 9, 14, 10, 15, 11, 12, 8 ], 
      [ 21, 23, 21, 23, 20, 22, 20, 22, 16, 18, 17, 19, 16, 18, 17, 19, 9, 13, 11, 15, 10, 14, 8, 
          12, 0, 2, 5, 7, 1, 3, 4, 6 ], 
      [ 21, 23, 21, 23, 20, 22, 20, 22, 16, 18, 17, 19, 16, 18, 17, 19, 13, 9, 15, 11, 14, 10, 12, 
          8, 2, 0, 7, 5, 3, 1, 6, 4 ], 
      [ 20, 22, 20, 22, 23, 21, 23, 21, 19, 16, 18, 17, 19, 16, 18, 17, 8, 12, 10, 14, 9, 13, 11, 
          15, 4, 6, 0, 2, 5, 7, 1, 3 ], 
      [ 20, 22, 20, 22, 23, 21, 23, 21, 19, 16, 18, 17, 19, 16, 18, 17, 12, 8, 14, 10, 13, 9, 15, 
          11, 6, 4, 2, 0, 7, 5, 3, 1 ], 
      [ 23, 21, 23, 21, 22, 20, 22, 20, 17, 19, 16, 18, 17, 19, 16, 18, 11, 15, 9, 13, 8, 12, 10, 
          14, 1, 3, 4, 6, 0, 2, 5, 7 ], 
      [ 23, 21, 23, 21, 22, 20, 22, 20, 17, 19, 16, 18, 17, 19, 16, 18, 15, 11, 13, 9, 12, 8, 14, 
          10, 3, 1, 6, 4, 2, 0, 7, 5 ], 
      [ 22, 20, 22, 20, 21, 23, 21, 23, 18, 17, 19, 16, 18, 17, 19, 16, 10, 14, 8, 12, 11, 15, 9, 
          13, 5, 7, 1, 3, 4, 6, 0, 2 ], 
      [ 22, 20, 22, 20, 21, 23, 21, 23, 18, 17, 19, 16, 18, 17, 19, 16, 14, 10, 12, 8, 15, 11, 13, 
          9, 7, 5, 3, 1, 6, 4, 2, 0 ] ] )