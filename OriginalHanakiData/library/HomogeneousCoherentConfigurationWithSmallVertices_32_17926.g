rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 14, 14, 13, 13, 12, 12, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 14, 14, 13, 13, 12, 12, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 0, 1, 2, 3, 4, 5, 6, 7, 16, 16, 17, 17, 18, 18, 19, 19, 13, 
          13, 12, 12, 15, 15, 14, 14 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 1, 0, 3, 2, 5, 4, 7, 6, 16, 16, 17, 17, 18, 18, 19, 19, 13, 
          13, 12, 12, 15, 15, 14, 14 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 2, 3, 0, 1, 6, 7, 4, 5, 17, 17, 16, 16, 19, 19, 18, 18, 12, 
          12, 13, 13, 14, 14, 15, 15 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 3, 2, 1, 0, 7, 6, 5, 4, 17, 17, 16, 16, 19, 19, 18, 18, 12, 
          12, 13, 13, 14, 14, 15, 15 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 5, 4, 7, 6, 0, 1, 2, 3, 18, 18, 19, 19, 16, 16, 17, 17, 15, 
          15, 14, 14, 13, 13, 12, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 4, 5, 6, 7, 1, 0, 3, 2, 18, 18, 19, 19, 16, 16, 17, 17, 15, 
          15, 14, 14, 13, 13, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 7, 6, 5, 4, 2, 3, 0, 1, 19, 19, 18, 18, 17, 17, 16, 16, 14, 
          14, 15, 15, 12, 12, 13, 13 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 6, 7, 4, 5, 3, 2, 1, 0, 19, 19, 18, 18, 17, 17, 16, 16, 14, 
          14, 15, 15, 12, 12, 13, 13 ], 
      [ 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16, 19, 19, 18, 18, 0, 1, 2, 3, 4, 5, 6, 7, 8, 
          8, 9, 9, 10, 10, 11, 11 ], 
      [ 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 16, 16, 19, 19, 18, 18, 1, 0, 3, 2, 5, 4, 7, 6, 8, 
          8, 9, 9, 10, 10, 11, 11 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 2, 3, 0, 1, 6, 7, 4, 5, 9, 
          9, 8, 8, 11, 11, 10, 10 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 3, 2, 1, 0, 7, 6, 5, 4, 9, 
          9, 8, 8, 11, 11, 10, 10 ], 
      [ 15, 15, 14, 14, 13, 13, 12, 12, 19, 19, 18, 18, 17, 17, 16, 16, 5, 4, 7, 6, 0, 1, 2, 3, 
          10, 10, 11, 11, 8, 8, 9, 9 ], 
      [ 15, 15, 14, 14, 13, 13, 12, 12, 19, 19, 18, 18, 17, 17, 16, 16, 4, 5, 6, 7, 1, 0, 3, 2, 
          10, 10, 11, 11, 8, 8, 9, 9 ], 
      [ 14, 14, 15, 15, 12, 12, 13, 13, 18, 18, 19, 19, 16, 16, 17, 17, 7, 6, 5, 4, 2, 3, 0, 1, 
          11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 14, 14, 15, 15, 12, 12, 13, 13, 18, 18, 19, 19, 16, 16, 17, 17, 6, 7, 4, 5, 3, 2, 1, 0, 
          11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 17, 17, 16, 16, 19, 19, 18, 18, 12, 12, 13, 13, 14, 14, 15, 15, 9, 9, 8, 8, 11, 11, 10, 
          10, 0, 1, 2, 3, 4, 5, 6, 7 ], 
      [ 17, 17, 16, 16, 19, 19, 18, 18, 12, 12, 13, 13, 14, 14, 15, 15, 9, 9, 8, 8, 11, 11, 10, 
          10, 1, 0, 3, 2, 5, 4, 7, 6 ], 
      [ 16, 16, 17, 17, 18, 18, 19, 19, 13, 13, 12, 12, 15, 15, 14, 14, 8, 8, 9, 9, 10, 10, 11, 
          11, 2, 3, 0, 1, 6, 7, 4, 5 ], 
      [ 16, 16, 17, 17, 18, 18, 19, 19, 13, 13, 12, 12, 15, 15, 14, 14, 8, 8, 9, 9, 10, 10, 11, 
          11, 3, 2, 1, 0, 7, 6, 5, 4 ], 
      [ 19, 19, 18, 18, 17, 17, 16, 16, 14, 14, 15, 15, 12, 12, 13, 13, 11, 11, 10, 10, 9, 9, 8, 
          8, 5, 4, 7, 6, 0, 1, 2, 3 ], 
      [ 19, 19, 18, 18, 17, 17, 16, 16, 14, 14, 15, 15, 12, 12, 13, 13, 11, 11, 10, 10, 9, 9, 8, 
          8, 4, 5, 6, 7, 1, 0, 3, 2 ], 
      [ 18, 18, 19, 19, 16, 16, 17, 17, 15, 15, 14, 14, 13, 13, 12, 12, 10, 10, 11, 11, 8, 8, 9, 
          9, 7, 6, 5, 4, 2, 3, 0, 1 ], 
      [ 18, 18, 19, 19, 16, 16, 17, 17, 15, 15, 14, 14, 13, 13, 12, 12, 10, 10, 11, 11, 8, 8, 9, 
          9, 6, 7, 4, 5, 3, 2, 1, 0 ] ] )