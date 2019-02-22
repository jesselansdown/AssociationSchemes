rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 
          -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 
          2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 8, 9, 10, 11, 4, 5, 6, 7, 14, 15, 12, 13, 18, 18, 20, 20, 16, 16, 22, 22, 17, 
          17, 23, 23, 19, 19, 21, 21 ], 
      [ 3, 2, 1, 0, 9, 8, 11, 10, 5, 4, 7, 6, 15, 14, 13, 12, 18, 18, 20, 20, 16, 16, 22, 22, 17, 
          17, 23, 23, 19, 19, 21, 21 ], 
      [ 4, 5, 9, 8, 0, 1, 12, 13, 3, 2, 15, 14, 6, 7, 11, 10, 19, 19, 21, 21, 22, 22, 16, 16, 23, 
          23, 17, 17, 18, 18, 20, 20 ], 
      [ 5, 4, 8, 9, 1, 0, 13, 12, 2, 3, 14, 15, 7, 6, 10, 11, 19, 19, 21, 21, 22, 22, 16, 16, 23, 
          23, 17, 17, 18, 18, 20, 20 ], 
      [ 6, 7, 11, 10, 13, 12, 0, 1, 14, 15, 3, 2, 5, 4, 8, 9, 20, 20, 18, 18, 17, 17, 23, 23, 16, 
          16, 22, 22, 21, 21, 19, 19 ], 
      [ 7, 6, 10, 11, 12, 13, 1, 0, 15, 14, 2, 3, 4, 5, 9, 8, 20, 20, 18, 18, 17, 17, 23, 23, 16, 
          16, 22, 22, 21, 21, 19, 19 ], 
      [ 9, 8, 4, 5, 3, 2, 15, 14, 0, 1, 12, 13, 11, 10, 6, 7, 22, 22, 23, 23, 19, 19, 18, 18, 21, 
          21, 20, 20, 16, 16, 17, 17 ], 
      [ 8, 9, 5, 4, 2, 3, 14, 15, 1, 0, 13, 12, 10, 11, 7, 6, 22, 22, 23, 23, 19, 19, 18, 18, 21, 
          21, 20, 20, 16, 16, 17, 17 ], 
      [ 11, 10, 6, 7, 14, 15, 3, 2, 13, 12, 0, 1, 8, 9, 5, 4, 17, 17, 16, 16, 20, 20, 21, 21, 18, 
          18, 19, 19, 23, 23, 22, 22 ], 
      [ 10, 11, 7, 6, 15, 14, 2, 3, 12, 13, 1, 0, 9, 8, 4, 5, 17, 17, 16, 16, 20, 20, 21, 21, 18, 
          18, 19, 19, 23, 23, 22, 22 ], 
      [ 13, 12, 15, 14, 6, 7, 5, 4, 10, 11, 9, 8, 0, 1, 2, 3, 23, 23, 22, 22, 21, 21, 20, 20, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 12, 13, 14, 15, 7, 6, 4, 5, 11, 10, 8, 9, 1, 0, 3, 2, 23, 23, 22, 22, 21, 21, 20, 20, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 15, 14, 13, 12, 10, 11, 9, 8, 6, 7, 5, 4, 2, 3, 0, 1, 21, 21, 19, 19, 23, 23, 17, 17, 22, 
          22, 16, 16, 20, 20, 18, 18 ], 
      [ 14, 15, 12, 13, 11, 10, 8, 9, 7, 6, 4, 5, 3, 2, 1, 0, 21, 21, 19, 19, 23, 23, 17, 17, 22, 
          22, 16, 16, 20, 20, 18, 18 ], 
      [ 17, 17, 19, 19, 18, 18, 21, 21, 23, 23, 16, 16, 22, 22, 20, 20, 0, 1, 10, 11, 14, 15, 6, 
          7, 4, 5, 2, 3, 8, 9, 12, 13 ], 
      [ 17, 17, 19, 19, 18, 18, 21, 21, 23, 23, 16, 16, 22, 22, 20, 20, 1, 0, 11, 10, 15, 14, 7, 
          6, 5, 4, 3, 2, 9, 8, 13, 12 ], 
      [ 16, 16, 21, 21, 20, 20, 19, 19, 22, 22, 17, 17, 23, 23, 18, 18, 11, 10, 0, 1, 5, 4, 3, 2, 
          14, 15, 6, 7, 13, 12, 8, 9 ], 
      [ 16, 16, 21, 21, 20, 20, 19, 19, 22, 22, 17, 17, 23, 23, 18, 18, 10, 11, 1, 0, 4, 5, 2, 3, 
          15, 14, 7, 6, 12, 13, 9, 8 ], 
      [ 19, 19, 17, 17, 23, 23, 16, 16, 18, 18, 21, 21, 20, 20, 22, 22, 15, 14, 5, 4, 0, 1, 9, 8, 
          10, 11, 13, 12, 6, 7, 2, 3 ], 
      [ 19, 19, 17, 17, 23, 23, 16, 16, 18, 18, 21, 21, 20, 20, 22, 22, 14, 15, 4, 5, 1, 0, 8, 9, 
          11, 10, 12, 13, 7, 6, 3, 2 ], 
      [ 18, 18, 23, 23, 17, 17, 22, 22, 19, 19, 20, 20, 21, 21, 16, 16, 6, 7, 3, 2, 8, 9, 0, 1, 
          13, 12, 11, 10, 14, 15, 5, 4 ], 
      [ 18, 18, 23, 23, 17, 17, 22, 22, 19, 19, 20, 20, 21, 21, 16, 16, 7, 6, 2, 3, 9, 8, 1, 0, 
          12, 13, 10, 11, 15, 14, 4, 5 ], 
      [ 21, 21, 16, 16, 22, 22, 17, 17, 20, 20, 19, 19, 18, 18, 23, 23, 4, 5, 15, 14, 11, 10, 12, 
          13, 0, 1, 9, 8, 3, 2, 6, 7 ], 
      [ 21, 21, 16, 16, 22, 22, 17, 17, 20, 20, 19, 19, 18, 18, 23, 23, 5, 4, 14, 15, 10, 11, 13, 
          12, 1, 0, 8, 9, 2, 3, 7, 6 ], 
      [ 20, 20, 22, 22, 16, 16, 23, 23, 21, 21, 18, 18, 19, 19, 17, 17, 2, 3, 6, 7, 12, 13, 10, 
          11, 8, 9, 0, 1, 4, 5, 14, 15 ], 
      [ 20, 20, 22, 22, 16, 16, 23, 23, 21, 21, 18, 18, 19, 19, 17, 17, 3, 2, 7, 6, 13, 12, 11, 
          10, 9, 8, 1, 0, 5, 4, 15, 14 ], 
      [ 23, 23, 18, 18, 19, 19, 20, 20, 17, 17, 22, 22, 16, 16, 21, 21, 9, 8, 12, 13, 6, 7, 15, 
          14, 3, 2, 4, 5, 0, 1, 11, 10 ], 
      [ 23, 23, 18, 18, 19, 19, 20, 20, 17, 17, 22, 22, 16, 16, 21, 21, 8, 9, 13, 12, 7, 6, 14, 
          15, 2, 3, 5, 4, 1, 0, 10, 11 ], 
      [ 22, 22, 20, 20, 21, 21, 18, 18, 16, 16, 23, 23, 17, 17, 19, 19, 13, 12, 9, 8, 2, 3, 5, 4, 
          6, 7, 15, 14, 10, 11, 0, 1 ], 
      [ 22, 22, 20, 20, 21, 21, 18, 18, 16, 16, 23, 23, 17, 17, 19, 19, 12, 13, 8, 9, 3, 2, 4, 5, 
          7, 6, 14, 15, 11, 10, 1, 0 ] ] )