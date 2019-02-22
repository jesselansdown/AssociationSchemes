rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, -4, -4, 1 ], 
      [ 2, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          16, 16, 17, 17, 17, 17 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 11, 11, 10, 10, 13, 13, 12, 12, 14, 14, 15, 15, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 10, 10, 11, 11, 12, 12, 13, 13, 15, 15, 14, 14, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 14, 14, 15, 15, 12, 12, 13, 13, 11, 11, 10, 10, 8, 8, 9, 9, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 14, 14, 15, 15, 13, 13, 12, 12, 10, 10, 11, 11, 8, 8, 9, 9, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 15, 15, 14, 14, 12, 12, 13, 13, 11, 11, 10, 10, 9, 9, 8, 8, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 15, 15, 14, 14, 13, 13, 12, 12, 10, 10, 11, 11, 9, 9, 8, 8, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 8, 8, 9, 9, 15, 15, 14, 14, 0, 1, 2, 3, 16, 16, 16, 16, 17, 17, 17, 17, 6, 7, 4, 5, 10, 
          10, 11, 11, 12, 12, 13, 13 ], 
      [ 8, 8, 9, 9, 15, 15, 14, 14, 1, 0, 3, 2, 16, 16, 16, 16, 17, 17, 17, 17, 7, 6, 5, 4, 11, 
          11, 10, 10, 13, 13, 12, 12 ], 
      [ 9, 9, 8, 8, 14, 14, 15, 15, 2, 3, 0, 1, 16, 16, 16, 16, 17, 17, 17, 17, 4, 5, 6, 7, 10, 
          10, 11, 11, 12, 12, 13, 13 ], 
      [ 9, 9, 8, 8, 14, 14, 15, 15, 3, 2, 1, 0, 16, 16, 16, 16, 17, 17, 17, 17, 5, 4, 7, 6, 11, 
          11, 10, 10, 13, 13, 12, 12 ], 
      [ 10, 11, 10, 11, 12, 13, 12, 13, 17, 17, 17, 17, 0, 2, 1, 3, 4, 6, 5, 7, 16, 16, 16, 16, 
          14, 15, 14, 15, 8, 9, 8, 9 ], 
      [ 10, 11, 10, 11, 12, 13, 12, 13, 17, 17, 17, 17, 2, 0, 3, 1, 6, 4, 7, 5, 16, 16, 16, 16, 
          15, 14, 15, 14, 9, 8, 9, 8 ], 
      [ 11, 10, 11, 10, 13, 12, 13, 12, 17, 17, 17, 17, 1, 3, 0, 2, 5, 7, 4, 6, 16, 16, 16, 16, 
          14, 15, 14, 15, 8, 9, 8, 9 ], 
      [ 11, 10, 11, 10, 13, 12, 13, 12, 17, 17, 17, 17, 3, 1, 2, 0, 7, 5, 6, 4, 16, 16, 16, 16, 
          15, 14, 15, 14, 9, 8, 9, 8 ], 
      [ 12, 13, 12, 13, 11, 10, 11, 10, 16, 16, 16, 16, 5, 7, 4, 6, 0, 2, 1, 3, 17, 17, 17, 17, 8, 
          9, 8, 9, 14, 15, 14, 15 ], 
      [ 12, 13, 12, 13, 11, 10, 11, 10, 16, 16, 16, 16, 7, 5, 6, 4, 2, 0, 3, 1, 17, 17, 17, 17, 9, 
          8, 9, 8, 15, 14, 15, 14 ], 
      [ 13, 12, 13, 12, 10, 11, 10, 11, 16, 16, 16, 16, 4, 6, 5, 7, 1, 3, 0, 2, 17, 17, 17, 17, 8, 
          9, 8, 9, 14, 15, 14, 15 ], 
      [ 13, 12, 13, 12, 10, 11, 10, 11, 16, 16, 16, 16, 6, 4, 7, 5, 3, 1, 2, 0, 17, 17, 17, 17, 9, 
          8, 9, 8, 15, 14, 15, 14 ], 
      [ 15, 15, 14, 14, 8, 8, 9, 9, 7, 6, 5, 4, 17, 17, 17, 17, 16, 16, 16, 16, 0, 1, 2, 3, 12, 
          12, 13, 13, 11, 11, 10, 10 ], 
      [ 15, 15, 14, 14, 8, 8, 9, 9, 6, 7, 4, 5, 17, 17, 17, 17, 16, 16, 16, 16, 1, 0, 3, 2, 13, 
          13, 12, 12, 10, 10, 11, 11 ], 
      [ 14, 14, 15, 15, 9, 9, 8, 8, 5, 4, 7, 6, 17, 17, 17, 17, 16, 16, 16, 16, 2, 3, 0, 1, 12, 
          12, 13, 13, 11, 11, 10, 10 ], 
      [ 14, 14, 15, 15, 9, 9, 8, 8, 4, 5, 6, 7, 17, 17, 17, 17, 16, 16, 16, 16, 3, 2, 1, 0, 13, 
          13, 12, 12, 10, 10, 11, 11 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 10, 11, 10, 11, 15, 14, 15, 14, 8, 9, 8, 9, 12, 13, 12, 
          13, 0, 2, 1, 3, 6, 4, 7, 5 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 10, 11, 10, 11, 14, 15, 14, 15, 9, 8, 9, 8, 12, 13, 12, 
          13, 2, 0, 3, 1, 4, 6, 5, 7 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 11, 10, 11, 10, 15, 14, 15, 14, 8, 9, 8, 9, 13, 12, 13, 
          12, 1, 3, 0, 2, 7, 5, 6, 4 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 11, 10, 11, 10, 14, 15, 14, 15, 9, 8, 9, 8, 13, 12, 13, 
          12, 3, 1, 2, 0, 5, 7, 4, 6 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 12, 13, 12, 13, 8, 9, 8, 9, 15, 14, 15, 14, 11, 10, 11, 
          10, 7, 5, 6, 4, 0, 2, 1, 3 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 12, 13, 12, 13, 9, 8, 9, 8, 14, 15, 14, 15, 11, 10, 11, 
          10, 5, 7, 4, 6, 2, 0, 3, 1 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 13, 12, 13, 12, 8, 9, 8, 9, 15, 14, 15, 14, 10, 11, 10, 
          11, 6, 4, 7, 5, 1, 3, 0, 2 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 13, 12, 13, 12, 9, 8, 9, 8, 14, 15, 14, 15, 10, 11, 10, 
          11, 4, 6, 5, 7, 3, 1, 2, 0 ] ] )