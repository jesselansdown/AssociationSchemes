rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 
          -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 
          2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 14, 15, 12, 13, 18, 18, 19, 19, 16, 16, 17, 17, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 18, 18, 19, 19, 16, 16, 17, 17, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 13, 14, 15, 8, 9, 10, 11, 17, 17, 16, 16, 19, 19, 18, 18, 21, 
          21, 20, 20, 23, 23, 22, 22 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 13, 12, 15, 14, 9, 8, 11, 10, 17, 17, 16, 16, 19, 19, 18, 18, 21, 
          21, 20, 20, 23, 23, 22, 22 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 14, 15, 12, 13, 10, 11, 8, 9, 19, 19, 18, 18, 17, 17, 16, 16, 23, 
          23, 22, 22, 21, 21, 20, 20 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 19, 19, 18, 18, 17, 17, 16, 16, 23, 
          23, 22, 22, 21, 21, 20, 20 ], 
      [ 8, 9, 10, 11, 13, 12, 15, 14, 0, 1, 2, 3, 5, 4, 7, 6, 20, 20, 21, 21, 22, 22, 23, 23, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 9, 8, 11, 10, 12, 13, 14, 15, 1, 0, 3, 2, 4, 5, 6, 7, 20, 20, 21, 21, 22, 22, 23, 23, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 10, 11, 8, 9, 15, 14, 13, 12, 2, 3, 0, 1, 7, 6, 5, 4, 22, 22, 23, 23, 20, 20, 21, 21, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 11, 10, 9, 8, 14, 15, 12, 13, 3, 2, 1, 0, 6, 7, 4, 5, 22, 22, 23, 23, 20, 20, 21, 21, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 13, 12, 15, 14, 8, 9, 10, 11, 5, 4, 7, 6, 0, 1, 2, 3, 21, 21, 20, 20, 23, 23, 22, 22, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 12, 13, 14, 15, 9, 8, 11, 10, 4, 5, 6, 7, 1, 0, 3, 2, 21, 21, 20, 20, 23, 23, 22, 22, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 15, 14, 13, 12, 10, 11, 8, 9, 7, 6, 5, 4, 2, 3, 0, 1, 23, 23, 22, 22, 21, 21, 20, 20, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 14, 15, 12, 13, 11, 10, 9, 8, 6, 7, 4, 5, 3, 2, 1, 0, 23, 23, 22, 22, 21, 21, 20, 20, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 17, 17, 19, 19, 16, 16, 18, 18, 21, 21, 23, 23, 20, 20, 22, 22, 0, 1, 4, 5, 2, 3, 6, 7, 8, 
          9, 12, 13, 10, 11, 14, 15 ], 
      [ 17, 17, 19, 19, 16, 16, 18, 18, 21, 21, 23, 23, 20, 20, 22, 22, 1, 0, 5, 4, 3, 2, 7, 6, 9, 
          8, 13, 12, 11, 10, 15, 14 ], 
      [ 16, 16, 18, 18, 17, 17, 19, 19, 20, 20, 22, 22, 21, 21, 23, 23, 4, 5, 0, 1, 6, 7, 2, 3, 
          12, 13, 8, 9, 14, 15, 10, 11 ], 
      [ 16, 16, 18, 18, 17, 17, 19, 19, 20, 20, 22, 22, 21, 21, 23, 23, 5, 4, 1, 0, 7, 6, 3, 2, 
          13, 12, 9, 8, 15, 14, 11, 10 ], 
      [ 19, 19, 17, 17, 18, 18, 16, 16, 23, 23, 21, 21, 22, 22, 20, 20, 2, 3, 6, 7, 0, 1, 4, 5, 
          10, 11, 14, 15, 8, 9, 12, 13 ], 
      [ 19, 19, 17, 17, 18, 18, 16, 16, 23, 23, 21, 21, 22, 22, 20, 20, 3, 2, 7, 6, 1, 0, 5, 4, 
          11, 10, 15, 14, 9, 8, 13, 12 ], 
      [ 18, 18, 16, 16, 19, 19, 17, 17, 22, 22, 20, 20, 23, 23, 21, 21, 6, 7, 2, 3, 4, 5, 0, 1, 
          14, 15, 10, 11, 12, 13, 8, 9 ], 
      [ 18, 18, 16, 16, 19, 19, 17, 17, 22, 22, 20, 20, 23, 23, 21, 21, 7, 6, 3, 2, 5, 4, 1, 0, 
          15, 14, 11, 10, 13, 12, 9, 8 ], 
      [ 21, 21, 23, 23, 20, 20, 22, 22, 17, 17, 19, 19, 16, 16, 18, 18, 8, 9, 13, 12, 10, 11, 15, 
          14, 0, 1, 5, 4, 2, 3, 7, 6 ], 
      [ 21, 21, 23, 23, 20, 20, 22, 22, 17, 17, 19, 19, 16, 16, 18, 18, 9, 8, 12, 13, 11, 10, 14, 
          15, 1, 0, 4, 5, 3, 2, 6, 7 ], 
      [ 20, 20, 22, 22, 21, 21, 23, 23, 16, 16, 18, 18, 17, 17, 19, 19, 13, 12, 8, 9, 15, 14, 10, 
          11, 5, 4, 0, 1, 7, 6, 2, 3 ], 
      [ 20, 20, 22, 22, 21, 21, 23, 23, 16, 16, 18, 18, 17, 17, 19, 19, 12, 13, 9, 8, 14, 15, 11, 
          10, 4, 5, 1, 0, 6, 7, 3, 2 ], 
      [ 23, 23, 21, 21, 22, 22, 20, 20, 19, 19, 17, 17, 18, 18, 16, 16, 10, 11, 15, 14, 8, 9, 13, 
          12, 2, 3, 7, 6, 0, 1, 5, 4 ], 
      [ 23, 23, 21, 21, 22, 22, 20, 20, 19, 19, 17, 17, 18, 18, 16, 16, 11, 10, 14, 15, 9, 8, 12, 
          13, 3, 2, 6, 7, 1, 0, 4, 5 ], 
      [ 22, 22, 20, 20, 23, 23, 21, 21, 18, 18, 16, 16, 19, 19, 17, 17, 15, 14, 10, 11, 13, 12, 8, 
          9, 7, 6, 2, 3, 5, 4, 0, 1 ], 
      [ 22, 22, 20, 20, 23, 23, 21, 21, 18, 18, 16, 16, 19, 19, 17, 17, 14, 15, 11, 10, 12, 13, 9, 
          8, 6, 7, 3, 2, 4, 5, 1, 0 ] ] )