rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -4*E(4), 4*E(4), 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4*E(4), -4*E(4), 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 12, 13, 13, 14, 14, 15, 15, 8, 8, 9, 9, 10, 10, 11, 11, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 12, 12, 13, 13, 14, 14, 15, 15, 8, 8, 9, 9, 10, 10, 11, 11, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 13, 13, 12, 12, 15, 15, 14, 14, 9, 9, 8, 8, 11, 11, 10, 10, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 13, 13, 12, 12, 15, 15, 14, 14, 9, 9, 8, 8, 11, 11, 10, 10, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 8, 8, 9, 9, 13, 13, 12, 12, 0, 1, 2, 3, 16, 16, 17, 17, 6, 7, 4, 5, 19, 19, 18, 18, 10, 
          10, 11, 11, 15, 15, 14, 14 ], 
      [ 8, 8, 9, 9, 13, 13, 12, 12, 1, 0, 3, 2, 16, 16, 17, 17, 7, 6, 5, 4, 19, 19, 18, 18, 10, 
          10, 11, 11, 15, 15, 14, 14 ], 
      [ 9, 9, 8, 8, 12, 12, 13, 13, 2, 3, 0, 1, 17, 17, 16, 16, 4, 5, 6, 7, 18, 18, 19, 19, 11, 
          11, 10, 10, 14, 14, 15, 15 ], 
      [ 9, 9, 8, 8, 12, 12, 13, 13, 3, 2, 1, 0, 17, 17, 16, 16, 5, 4, 7, 6, 18, 18, 19, 19, 11, 
          11, 10, 10, 14, 14, 15, 15 ], 
      [ 10, 10, 11, 11, 15, 15, 14, 14, 17, 17, 16, 16, 0, 1, 2, 3, 18, 18, 19, 19, 6, 7, 4, 5, 9, 
          9, 8, 8, 12, 12, 13, 13 ], 
      [ 10, 10, 11, 11, 15, 15, 14, 14, 17, 17, 16, 16, 1, 0, 3, 2, 18, 18, 19, 19, 7, 6, 5, 4, 9, 
          9, 8, 8, 12, 12, 13, 13 ], 
      [ 11, 11, 10, 10, 14, 14, 15, 15, 16, 16, 17, 17, 2, 3, 0, 1, 19, 19, 18, 18, 4, 5, 6, 7, 8, 
          8, 9, 9, 13, 13, 12, 12 ], 
      [ 11, 11, 10, 10, 14, 14, 15, 15, 16, 16, 17, 17, 3, 2, 1, 0, 19, 19, 18, 18, 5, 4, 7, 6, 8, 
          8, 9, 9, 13, 13, 12, 12 ], 
      [ 13, 13, 12, 12, 8, 8, 9, 9, 6, 7, 4, 5, 19, 19, 18, 18, 0, 1, 2, 3, 16, 16, 17, 17, 15, 
          15, 14, 14, 10, 10, 11, 11 ], 
      [ 13, 13, 12, 12, 8, 8, 9, 9, 7, 6, 5, 4, 19, 19, 18, 18, 1, 0, 3, 2, 16, 16, 17, 17, 15, 
          15, 14, 14, 10, 10, 11, 11 ], 
      [ 12, 12, 13, 13, 9, 9, 8, 8, 4, 5, 6, 7, 18, 18, 19, 19, 2, 3, 0, 1, 17, 17, 16, 16, 14, 
          14, 15, 15, 11, 11, 10, 10 ], 
      [ 12, 12, 13, 13, 9, 9, 8, 8, 5, 4, 7, 6, 18, 18, 19, 19, 3, 2, 1, 0, 17, 17, 16, 16, 14, 
          14, 15, 15, 11, 11, 10, 10 ], 
      [ 15, 15, 14, 14, 10, 10, 11, 11, 18, 18, 19, 19, 6, 7, 4, 5, 17, 17, 16, 16, 0, 1, 2, 3, 
          12, 12, 13, 13, 9, 9, 8, 8 ], 
      [ 15, 15, 14, 14, 10, 10, 11, 11, 18, 18, 19, 19, 7, 6, 5, 4, 17, 17, 16, 16, 1, 0, 3, 2, 
          12, 12, 13, 13, 9, 9, 8, 8 ], 
      [ 14, 14, 15, 15, 11, 11, 10, 10, 19, 19, 18, 18, 4, 5, 6, 7, 16, 16, 17, 17, 2, 3, 0, 1, 
          13, 13, 12, 12, 8, 8, 9, 9 ], 
      [ 14, 14, 15, 15, 11, 11, 10, 10, 19, 19, 18, 18, 5, 4, 7, 6, 16, 16, 17, 17, 3, 2, 1, 0, 
          13, 13, 12, 12, 8, 8, 9, 9 ], 
      [ 17, 17, 16, 16, 19, 19, 18, 18, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 15, 15, 13, 13, 12, 
          12, 0, 1, 2, 3, 4, 5, 6, 7 ], 
      [ 17, 17, 16, 16, 19, 19, 18, 18, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 15, 15, 13, 13, 12, 
          12, 1, 0, 3, 2, 5, 4, 7, 6 ], 
      [ 16, 16, 17, 17, 18, 18, 19, 19, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 14, 14, 12, 12, 13, 
          13, 2, 3, 0, 1, 6, 7, 4, 5 ], 
      [ 16, 16, 17, 17, 18, 18, 19, 19, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 14, 14, 12, 12, 13, 
          13, 3, 2, 1, 0, 7, 6, 5, 4 ], 
      [ 19, 19, 18, 18, 17, 17, 16, 16, 14, 14, 15, 15, 13, 13, 12, 12, 10, 10, 11, 11, 9, 9, 8, 
          8, 4, 5, 6, 7, 0, 1, 2, 3 ], 
      [ 19, 19, 18, 18, 17, 17, 16, 16, 14, 14, 15, 15, 13, 13, 12, 12, 10, 10, 11, 11, 9, 9, 8, 
          8, 5, 4, 7, 6, 1, 0, 3, 2 ], 
      [ 18, 18, 19, 19, 16, 16, 17, 17, 15, 15, 14, 14, 12, 12, 13, 13, 11, 11, 10, 10, 8, 8, 9, 
          9, 6, 7, 4, 5, 2, 3, 0, 1 ], 
      [ 18, 18, 19, 19, 16, 16, 17, 17, 15, 15, 14, 14, 12, 12, 13, 13, 11, 11, 10, 10, 8, 8, 9, 
          9, 7, 6, 5, 4, 3, 2, 1, 0 ] ] )