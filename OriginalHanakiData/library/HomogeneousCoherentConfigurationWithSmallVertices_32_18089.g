rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
          0, 0, 2 ], [ 2, -2, 2, -2, 0, 0, 0, 0, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 
          0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 17, 17, 16, 16, 19, 19, 18, 18, 21, 
          21, 20, 20, 23, 23, 22, 22 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 13, 12, 15, 14, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 17, 17, 16, 16, 19, 19, 18, 18, 21, 
          21, 20, 20, 23, 23, 22, 22 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 12, 14, 13, 15, 9, 11, 8, 10, 18, 18, 19, 19, 17, 17, 16, 16, 22, 
          22, 23, 23, 21, 21, 20, 20 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 14, 12, 15, 13, 8, 10, 9, 11, 19, 19, 18, 18, 16, 16, 17, 17, 23, 
          23, 22, 22, 20, 20, 21, 21 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 13, 15, 12, 14, 11, 9, 10, 8, 18, 18, 19, 19, 17, 17, 16, 16, 22, 
          22, 23, 23, 21, 21, 20, 20 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 15, 13, 14, 12, 10, 8, 11, 9, 19, 19, 18, 18, 16, 16, 17, 17, 23, 
          23, 22, 22, 20, 20, 21, 21 ], 
      [ 9, 8, 11, 10, 13, 15, 12, 14, 0, 1, 2, 3, 7, 5, 6, 4, 20, 20, 21, 21, 22, 22, 23, 23, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 8, 9, 10, 11, 15, 13, 14, 12, 1, 0, 3, 2, 6, 4, 7, 5, 21, 21, 20, 20, 23, 23, 22, 22, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 11, 10, 9, 8, 12, 14, 13, 15, 2, 3, 0, 1, 5, 7, 4, 6, 20, 20, 21, 21, 22, 22, 23, 23, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 10, 11, 8, 9, 14, 12, 15, 13, 3, 2, 1, 0, 4, 6, 5, 7, 21, 21, 20, 20, 23, 23, 22, 22, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 13, 15, 12, 14, 8, 9, 10, 11, 6, 7, 4, 5, 0, 2, 1, 3, 23, 23, 22, 22, 20, 20, 21, 21, 18, 
          18, 19, 19, 17, 17, 16, 16 ], 
      [ 12, 14, 13, 15, 10, 11, 8, 9, 4, 5, 6, 7, 2, 0, 3, 1, 23, 23, 22, 22, 20, 20, 21, 21, 18, 
          18, 19, 19, 17, 17, 16, 16 ], 
      [ 15, 13, 14, 12, 9, 8, 11, 10, 7, 6, 5, 4, 1, 3, 0, 2, 22, 22, 23, 23, 21, 21, 20, 20, 19, 
          19, 18, 18, 16, 16, 17, 17 ], 
      [ 14, 12, 15, 13, 11, 10, 9, 8, 5, 4, 7, 6, 3, 1, 2, 0, 22, 22, 23, 23, 21, 21, 20, 20, 19, 
          19, 18, 18, 16, 16, 17, 17 ], 
      [ 16, 17, 16, 17, 18, 19, 18, 19, 21, 20, 21, 20, 22, 22, 23, 23, 0, 2, 1, 3, 4, 6, 5, 7, 9, 
          11, 8, 10, 12, 13, 14, 15 ], 
      [ 16, 17, 16, 17, 18, 19, 18, 19, 21, 20, 21, 20, 22, 22, 23, 23, 2, 0, 3, 1, 6, 4, 7, 5, 
          11, 9, 10, 8, 13, 12, 15, 14 ], 
      [ 17, 16, 17, 16, 19, 18, 19, 18, 20, 21, 20, 21, 23, 23, 22, 22, 1, 3, 0, 2, 5, 7, 4, 6, 8, 
          10, 9, 11, 14, 15, 12, 13 ], 
      [ 17, 16, 17, 16, 19, 18, 19, 18, 20, 21, 20, 21, 23, 23, 22, 22, 3, 1, 2, 0, 7, 5, 6, 4, 
          10, 8, 11, 9, 15, 14, 13, 12 ], 
      [ 18, 19, 18, 19, 17, 16, 17, 16, 23, 22, 23, 22, 21, 21, 20, 20, 5, 7, 4, 6, 0, 2, 1, 3, 
          14, 15, 12, 13, 9, 11, 8, 10 ], 
      [ 18, 19, 18, 19, 17, 16, 17, 16, 23, 22, 23, 22, 21, 21, 20, 20, 7, 5, 6, 4, 2, 0, 3, 1, 
          15, 14, 13, 12, 11, 9, 10, 8 ], 
      [ 19, 18, 19, 18, 16, 17, 16, 17, 22, 23, 22, 23, 20, 20, 21, 21, 4, 6, 5, 7, 1, 3, 0, 2, 
          12, 13, 14, 15, 8, 10, 9, 11 ], 
      [ 19, 18, 19, 18, 16, 17, 16, 17, 22, 23, 22, 23, 20, 20, 21, 21, 6, 4, 7, 5, 3, 1, 2, 0, 
          13, 12, 15, 14, 10, 8, 11, 9 ], 
      [ 21, 20, 21, 20, 23, 22, 23, 22, 17, 16, 17, 16, 18, 18, 19, 19, 8, 10, 9, 11, 15, 14, 13, 
          12, 0, 2, 1, 3, 6, 4, 7, 5 ], 
      [ 21, 20, 21, 20, 23, 22, 23, 22, 17, 16, 17, 16, 18, 18, 19, 19, 10, 8, 11, 9, 14, 15, 12, 
          13, 2, 0, 3, 1, 4, 6, 5, 7 ], 
      [ 20, 21, 20, 21, 22, 23, 22, 23, 16, 17, 16, 17, 19, 19, 18, 18, 9, 11, 8, 10, 13, 12, 15, 
          14, 1, 3, 0, 2, 7, 5, 6, 4 ], 
      [ 20, 21, 20, 21, 22, 23, 22, 23, 16, 17, 16, 17, 19, 19, 18, 18, 11, 9, 10, 8, 12, 13, 14, 
          15, 3, 1, 2, 0, 5, 7, 4, 6 ], 
      [ 23, 22, 23, 22, 20, 21, 20, 21, 19, 18, 19, 18, 17, 17, 16, 16, 13, 12, 15, 14, 8, 10, 9, 
          11, 7, 5, 6, 4, 0, 2, 1, 3 ], 
      [ 23, 22, 23, 22, 20, 21, 20, 21, 19, 18, 19, 18, 17, 17, 16, 16, 12, 13, 14, 15, 10, 8, 11, 
          9, 5, 7, 4, 6, 2, 0, 3, 1 ], 
      [ 22, 23, 22, 23, 21, 20, 21, 20, 18, 19, 18, 19, 16, 16, 17, 17, 15, 14, 13, 12, 9, 11, 8, 
          10, 6, 4, 7, 5, 1, 3, 0, 2 ], 
      [ 22, 23, 22, 23, 21, 20, 21, 20, 18, 19, 18, 19, 16, 16, 17, 17, 14, 15, 12, 13, 11, 9, 10, 
          8, 4, 6, 5, 7, 3, 1, 2, 0 ] ] )