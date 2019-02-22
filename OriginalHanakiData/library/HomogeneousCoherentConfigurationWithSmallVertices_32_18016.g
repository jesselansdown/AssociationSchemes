rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 
          -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 
          2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, -2, -2, 0, 0, 0, 0, -2, -2, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 0, 0, 2, 2, 0, 0, 0, 0, -2, -2, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 14, 15, 12, 13, 18, 18, 20, 20, 16, 16, 22, 22, 17, 
          17, 23, 23, 19, 19, 21, 21 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 18, 18, 20, 20, 16, 16, 22, 22, 17, 
          17, 23, 23, 19, 19, 21, 21 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 13, 14, 15, 8, 9, 10, 11, 17, 17, 16, 16, 20, 20, 21, 21, 18, 
          18, 19, 19, 23, 23, 22, 22 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 13, 12, 15, 14, 9, 8, 11, 10, 17, 17, 16, 16, 20, 20, 21, 21, 18, 
          18, 19, 19, 23, 23, 22, 22 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 14, 15, 12, 13, 10, 11, 8, 9, 20, 20, 18, 18, 17, 17, 23, 23, 16, 
          16, 22, 22, 21, 21, 19, 19 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 20, 20, 18, 18, 17, 17, 23, 23, 16, 
          16, 22, 22, 21, 21, 19, 19 ], 
      [ 8, 9, 10, 11, 13, 12, 15, 14, 0, 1, 2, 3, 5, 4, 7, 6, 21, 21, 19, 19, 23, 23, 17, 17, 22, 
          22, 16, 16, 20, 20, 18, 18 ], 
      [ 9, 8, 11, 10, 12, 13, 14, 15, 1, 0, 3, 2, 4, 5, 6, 7, 21, 21, 19, 19, 23, 23, 17, 17, 22, 
          22, 16, 16, 20, 20, 18, 18 ], 
      [ 10, 11, 8, 9, 15, 14, 13, 12, 2, 3, 0, 1, 7, 6, 5, 4, 23, 23, 22, 22, 21, 21, 20, 20, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 11, 10, 9, 8, 14, 15, 12, 13, 3, 2, 1, 0, 6, 7, 4, 5, 23, 23, 22, 22, 21, 21, 20, 20, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 13, 12, 15, 14, 8, 9, 10, 11, 5, 4, 7, 6, 0, 1, 2, 3, 19, 19, 21, 21, 22, 22, 16, 16, 23, 
          23, 17, 17, 18, 18, 20, 20 ], 
      [ 12, 13, 14, 15, 9, 8, 11, 10, 4, 5, 6, 7, 1, 0, 3, 2, 19, 19, 21, 21, 22, 22, 16, 16, 23, 
          23, 17, 17, 18, 18, 20, 20 ], 
      [ 15, 14, 13, 12, 10, 11, 8, 9, 7, 6, 5, 4, 2, 3, 0, 1, 22, 22, 23, 23, 19, 19, 18, 18, 21, 
          21, 20, 20, 16, 16, 17, 17 ], 
      [ 14, 15, 12, 13, 11, 10, 9, 8, 6, 7, 4, 5, 3, 2, 1, 0, 22, 22, 23, 23, 19, 19, 18, 18, 21, 
          21, 20, 20, 16, 16, 17, 17 ], 
      [ 17, 17, 19, 19, 16, 16, 21, 21, 20, 20, 22, 22, 18, 18, 23, 23, 0, 1, 4, 5, 8, 9, 6, 7, 
          12, 13, 2, 3, 14, 15, 10, 11 ], 
      [ 17, 17, 19, 19, 16, 16, 21, 21, 20, 20, 22, 22, 18, 18, 23, 23, 1, 0, 5, 4, 9, 8, 7, 6, 
          13, 12, 3, 2, 15, 14, 11, 10 ], 
      [ 16, 16, 21, 21, 17, 17, 19, 19, 18, 18, 23, 23, 20, 20, 22, 22, 4, 5, 0, 1, 12, 13, 2, 3, 
          8, 9, 6, 7, 10, 11, 14, 15 ], 
      [ 16, 16, 21, 21, 17, 17, 19, 19, 18, 18, 23, 23, 20, 20, 22, 22, 5, 4, 1, 0, 13, 12, 3, 2, 
          9, 8, 7, 6, 11, 10, 15, 14 ], 
      [ 19, 19, 17, 17, 21, 21, 16, 16, 22, 22, 20, 20, 23, 23, 18, 18, 8, 9, 13, 12, 0, 1, 15, 
          14, 5, 4, 10, 11, 7, 6, 2, 3 ], 
      [ 19, 19, 17, 17, 21, 21, 16, 16, 22, 22, 20, 20, 23, 23, 18, 18, 9, 8, 12, 13, 1, 0, 14, 
          15, 4, 5, 11, 10, 6, 7, 3, 2 ], 
      [ 18, 18, 23, 23, 20, 20, 22, 22, 16, 16, 21, 21, 17, 17, 19, 19, 6, 7, 2, 3, 14, 15, 0, 1, 
          10, 11, 4, 5, 8, 9, 12, 13 ], 
      [ 18, 18, 23, 23, 20, 20, 22, 22, 16, 16, 21, 21, 17, 17, 19, 19, 7, 6, 3, 2, 15, 14, 1, 0, 
          11, 10, 5, 4, 9, 8, 13, 12 ], 
      [ 21, 21, 16, 16, 19, 19, 17, 17, 23, 23, 18, 18, 22, 22, 20, 20, 13, 12, 8, 9, 5, 4, 10, 
          11, 0, 1, 15, 14, 2, 3, 7, 6 ], 
      [ 21, 21, 16, 16, 19, 19, 17, 17, 23, 23, 18, 18, 22, 22, 20, 20, 12, 13, 9, 8, 4, 5, 11, 
          10, 1, 0, 14, 15, 3, 2, 6, 7 ], 
      [ 20, 20, 22, 22, 18, 18, 23, 23, 17, 17, 19, 19, 16, 16, 21, 21, 2, 3, 6, 7, 10, 11, 4, 5, 
          14, 15, 0, 1, 12, 13, 8, 9 ], 
      [ 20, 20, 22, 22, 18, 18, 23, 23, 17, 17, 19, 19, 16, 16, 21, 21, 3, 2, 7, 6, 11, 10, 5, 4, 
          15, 14, 1, 0, 13, 12, 9, 8 ], 
      [ 23, 23, 18, 18, 22, 22, 20, 20, 21, 21, 16, 16, 19, 19, 17, 17, 15, 14, 10, 11, 7, 6, 8, 
          9, 2, 3, 13, 12, 0, 1, 5, 4 ], 
      [ 23, 23, 18, 18, 22, 22, 20, 20, 21, 21, 16, 16, 19, 19, 17, 17, 14, 15, 11, 10, 6, 7, 9, 
          8, 3, 2, 12, 13, 1, 0, 4, 5 ], 
      [ 22, 22, 20, 20, 23, 23, 18, 18, 19, 19, 17, 17, 21, 21, 16, 16, 10, 11, 15, 14, 2, 3, 13, 
          12, 7, 6, 8, 9, 5, 4, 0, 1 ], 
      [ 22, 22, 20, 20, 23, 23, 18, 18, 19, 19, 17, 17, 21, 21, 16, 16, 11, 10, 14, 15, 3, 2, 12, 
          13, 6, 7, 9, 8, 4, 5, 1, 0 ] ] )