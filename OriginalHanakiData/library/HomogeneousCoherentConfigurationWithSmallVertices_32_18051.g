rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, -2, -2, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 2, 2, -2, -2, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 8, 9, 10, 11, 4, 5, 6, 7, 14, 15, 12, 13, 17, 17, 16, 16, 19, 19, 18, 18, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 3, 2, 1, 0, 9, 8, 11, 10, 5, 4, 7, 6, 15, 14, 13, 12, 17, 17, 16, 16, 19, 19, 18, 18, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 4, 5, 9, 8, 0, 1, 12, 13, 3, 2, 15, 14, 6, 7, 11, 10, 18, 18, 19, 19, 16, 16, 17, 17, 23, 
          23, 22, 22, 21, 21, 20, 20 ], 
      [ 5, 4, 8, 9, 1, 0, 13, 12, 2, 3, 14, 15, 7, 6, 10, 11, 18, 18, 19, 19, 16, 16, 17, 17, 23, 
          23, 22, 22, 21, 21, 20, 20 ], 
      [ 6, 7, 11, 10, 13, 12, 0, 1, 14, 15, 3, 2, 5, 4, 8, 9, 20, 20, 22, 22, 23, 23, 21, 21, 16, 
          16, 19, 19, 17, 17, 18, 18 ], 
      [ 7, 6, 10, 11, 12, 13, 1, 0, 15, 14, 2, 3, 4, 5, 9, 8, 20, 20, 22, 22, 23, 23, 21, 21, 16, 
          16, 19, 19, 17, 17, 18, 18 ], 
      [ 9, 8, 4, 5, 3, 2, 15, 14, 0, 1, 12, 13, 11, 10, 6, 7, 19, 19, 18, 18, 17, 17, 16, 16, 21, 
          21, 20, 20, 23, 23, 22, 22 ], 
      [ 8, 9, 5, 4, 2, 3, 14, 15, 1, 0, 13, 12, 10, 11, 7, 6, 19, 19, 18, 18, 17, 17, 16, 16, 21, 
          21, 20, 20, 23, 23, 22, 22 ], 
      [ 11, 10, 6, 7, 14, 15, 3, 2, 13, 12, 0, 1, 8, 9, 5, 4, 22, 22, 20, 20, 21, 21, 23, 23, 17, 
          17, 18, 18, 16, 16, 19, 19 ], 
      [ 10, 11, 7, 6, 15, 14, 2, 3, 12, 13, 1, 0, 9, 8, 4, 5, 22, 22, 20, 20, 21, 21, 23, 23, 17, 
          17, 18, 18, 16, 16, 19, 19 ], 
      [ 13, 12, 15, 14, 6, 7, 5, 4, 10, 11, 9, 8, 0, 1, 2, 3, 23, 23, 21, 21, 20, 20, 22, 22, 18, 
          18, 17, 17, 19, 19, 16, 16 ], 
      [ 12, 13, 14, 15, 7, 6, 4, 5, 11, 10, 8, 9, 1, 0, 3, 2, 23, 23, 21, 21, 20, 20, 22, 22, 18, 
          18, 17, 17, 19, 19, 16, 16 ], 
      [ 15, 14, 13, 12, 10, 11, 9, 8, 6, 7, 5, 4, 2, 3, 0, 1, 21, 21, 23, 23, 22, 22, 20, 20, 19, 
          19, 16, 16, 18, 18, 17, 17 ], 
      [ 14, 15, 12, 13, 11, 10, 8, 9, 7, 6, 4, 5, 3, 2, 1, 0, 21, 21, 23, 23, 22, 22, 20, 20, 19, 
          19, 16, 16, 18, 18, 17, 17 ], 
      [ 17, 17, 16, 16, 19, 19, 21, 21, 18, 18, 23, 23, 22, 22, 20, 20, 0, 1, 2, 3, 4, 5, 8, 9, 
          12, 13, 10, 11, 14, 15, 6, 7 ], 
      [ 17, 17, 16, 16, 19, 19, 21, 21, 18, 18, 23, 23, 22, 22, 20, 20, 1, 0, 3, 2, 5, 4, 9, 8, 
          13, 12, 11, 10, 15, 14, 7, 6 ], 
      [ 16, 16, 17, 17, 18, 18, 23, 23, 19, 19, 21, 21, 20, 20, 22, 22, 2, 3, 0, 1, 8, 9, 4, 5, 
          14, 15, 6, 7, 12, 13, 10, 11 ], 
      [ 16, 16, 17, 17, 18, 18, 23, 23, 19, 19, 21, 21, 20, 20, 22, 22, 3, 2, 1, 0, 9, 8, 5, 4, 
          15, 14, 7, 6, 13, 12, 11, 10 ], 
      [ 19, 19, 18, 18, 17, 17, 22, 22, 16, 16, 20, 20, 21, 21, 23, 23, 4, 5, 9, 8, 0, 1, 3, 2, 6, 
          7, 15, 14, 11, 10, 12, 13 ], 
      [ 19, 19, 18, 18, 17, 17, 22, 22, 16, 16, 20, 20, 21, 21, 23, 23, 5, 4, 8, 9, 1, 0, 2, 3, 7, 
          6, 14, 15, 10, 11, 13, 12 ], 
      [ 18, 18, 19, 19, 16, 16, 20, 20, 17, 17, 22, 22, 23, 23, 21, 21, 9, 8, 4, 5, 3, 2, 0, 1, 
          11, 10, 12, 13, 6, 7, 15, 14 ], 
      [ 18, 18, 19, 19, 16, 16, 20, 20, 17, 17, 22, 22, 23, 23, 21, 21, 8, 9, 5, 4, 2, 3, 1, 0, 
          10, 11, 13, 12, 7, 6, 14, 15 ], 
      [ 21, 21, 23, 23, 22, 22, 17, 17, 20, 20, 16, 16, 19, 19, 18, 18, 13, 12, 15, 14, 6, 7, 10, 
          11, 0, 1, 9, 8, 2, 3, 5, 4 ], 
      [ 21, 21, 23, 23, 22, 22, 17, 17, 20, 20, 16, 16, 19, 19, 18, 18, 12, 13, 14, 15, 7, 6, 11, 
          10, 1, 0, 8, 9, 3, 2, 4, 5 ], 
      [ 20, 20, 22, 22, 23, 23, 18, 18, 21, 21, 19, 19, 16, 16, 17, 17, 11, 10, 6, 7, 14, 15, 13, 
          12, 8, 9, 0, 1, 5, 4, 3, 2 ], 
      [ 20, 20, 22, 22, 23, 23, 18, 18, 21, 21, 19, 19, 16, 16, 17, 17, 10, 11, 7, 6, 15, 14, 12, 
          13, 9, 8, 1, 0, 4, 5, 2, 3 ], 
      [ 23, 23, 21, 21, 20, 20, 16, 16, 22, 22, 17, 17, 18, 18, 19, 19, 15, 14, 13, 12, 10, 11, 6, 
          7, 2, 3, 5, 4, 0, 1, 9, 8 ], 
      [ 23, 23, 21, 21, 20, 20, 16, 16, 22, 22, 17, 17, 18, 18, 19, 19, 14, 15, 12, 13, 11, 10, 7, 
          6, 3, 2, 4, 5, 1, 0, 8, 9 ], 
      [ 22, 22, 20, 20, 21, 21, 19, 19, 23, 23, 18, 18, 17, 17, 16, 16, 6, 7, 11, 10, 13, 12, 14, 
          15, 5, 4, 3, 2, 8, 9, 0, 1 ], 
      [ 22, 22, 20, 20, 21, 21, 19, 19, 23, 23, 18, 18, 17, 17, 16, 16, 7, 6, 10, 11, 12, 13, 15, 
          14, 4, 5, 2, 3, 9, 8, 1, 0 ] ] )