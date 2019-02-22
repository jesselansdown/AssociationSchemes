rec(
  ct := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 2, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 2, -2, -2, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 2, 2, 2, 2, 2, -2, -2, 2, 2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -4*E(4), 4*E(4), 2 ], 
      [ 2, 2, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4*E(4), -4*E(4), 2 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 
          14, 15, 15, 16, 16 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 
          11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 10, 10, 9, 9, 12, 12, 11, 11, 14, 14, 13, 
          13, 16, 16, 15, 15 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 10, 10, 9, 9, 
          12, 12, 11, 11, 14, 14, 13, 13, 16, 16, 15, 15 ], 
      [ 3, 3, 4, 4, 0, 1, 2, 2, 9, 9, 10, 10, 11, 11, 12, 12, 5, 5, 6, 6, 7, 7, 8, 8, 15, 15, 16, 
          16, 13, 13, 14, 14 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 9, 9, 10, 10, 11, 11, 12, 12, 5, 5, 6, 
          6, 7, 7, 8, 8, 15, 15, 16, 16, 13, 13, 14, 14 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 10, 10, 9, 9, 12, 12, 11, 11, 6, 6, 5, 5, 8, 8, 7, 7, 16, 16, 15, 
          15, 14, 14, 13, 13 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 10, 10, 9, 9, 12, 12, 11, 11, 6, 6, 5, 
          5, 8, 8, 7, 7, 16, 16, 15, 15, 14, 14, 13, 13 ], 
      [ 5, 5, 6, 6, 10, 10, 9, 9, 0, 1, 2, 2, 13, 13, 14, 14, 4, 4, 3, 3, 16, 16, 15, 15, 7, 7, 8, 
          8, 12, 12, 11, 11 ], [ 5, 5, 6, 6, 10, 10, 9, 9, 1, 0, 2, 2, 13, 13, 14, 14, 4, 4, 3, 3, 
          16, 16, 15, 15, 7, 7, 8, 8, 12, 12, 11, 11 ], 
      [ 6, 6, 5, 5, 9, 9, 10, 10, 2, 2, 0, 1, 14, 14, 13, 13, 3, 3, 4, 4, 15, 15, 16, 16, 8, 8, 7, 
          7, 11, 11, 12, 12 ], [ 6, 6, 5, 5, 9, 9, 10, 10, 2, 2, 1, 0, 14, 14, 13, 13, 3, 3, 4, 4, 
          15, 15, 16, 16, 8, 8, 7, 7, 11, 11, 12, 12 ], 
      [ 7, 7, 8, 8, 12, 12, 11, 11, 14, 14, 13, 13, 0, 1, 2, 2, 15, 15, 16, 16, 4, 4, 3, 3, 6, 6, 
          5, 5, 9, 9, 10, 10 ], [ 7, 7, 8, 8, 12, 12, 11, 11, 14, 14, 13, 13, 1, 0, 2, 2, 15, 15, 
          16, 16, 4, 4, 3, 3, 6, 6, 5, 5, 9, 9, 10, 10 ], 
      [ 8, 8, 7, 7, 11, 11, 12, 12, 13, 13, 14, 14, 2, 2, 0, 1, 16, 16, 15, 15, 3, 3, 4, 4, 5, 5, 
          6, 6, 10, 10, 9, 9 ], [ 8, 8, 7, 7, 11, 11, 12, 12, 13, 13, 14, 14, 2, 2, 1, 0, 16, 16, 
          15, 15, 3, 3, 4, 4, 5, 5, 6, 6, 10, 10, 9, 9 ], 
      [ 10, 10, 9, 9, 5, 5, 6, 6, 4, 4, 3, 3, 16, 16, 15, 15, 0, 1, 2, 2, 13, 13, 14, 14, 12, 12, 
          11, 11, 7, 7, 8, 8 ], [ 10, 10, 9, 9, 5, 5, 6, 6, 4, 4, 3, 3, 16, 16, 15, 15, 1, 0, 2, 
          2, 13, 13, 14, 14, 12, 12, 11, 11, 7, 7, 8, 8 ], 
      [ 9, 9, 10, 10, 6, 6, 5, 5, 3, 3, 4, 4, 15, 15, 16, 16, 2, 2, 0, 1, 14, 14, 13, 13, 11, 11, 
          12, 12, 8, 8, 7, 7 ], [ 9, 9, 10, 10, 6, 6, 5, 5, 3, 3, 4, 4, 15, 15, 16, 16, 2, 2, 1, 
          0, 14, 14, 13, 13, 11, 11, 12, 12, 8, 8, 7, 7 ], 
      [ 12, 12, 11, 11, 7, 7, 8, 8, 15, 15, 16, 16, 4, 4, 3, 3, 14, 14, 13, 13, 0, 1, 2, 2, 9, 9, 
          10, 10, 6, 6, 5, 5 ], [ 12, 12, 11, 11, 7, 7, 8, 8, 15, 15, 16, 16, 4, 4, 3, 3, 14, 14, 
          13, 13, 1, 0, 2, 2, 9, 9, 10, 10, 6, 6, 5, 5 ], 
      [ 11, 11, 12, 12, 8, 8, 7, 7, 16, 16, 15, 15, 3, 3, 4, 4, 13, 13, 14, 14, 2, 2, 0, 1, 10, 
          10, 9, 9, 5, 5, 6, 6 ], 
      [ 11, 11, 12, 12, 8, 8, 7, 7, 16, 16, 15, 15, 3, 3, 4, 4, 13, 13, 14, 14, 2, 2, 1, 0, 10, 
          10, 9, 9, 5, 5, 6, 6 ], 
      [ 14, 14, 13, 13, 16, 16, 15, 15, 7, 7, 8, 8, 6, 6, 5, 5, 11, 11, 12, 12, 10, 10, 9, 9, 0, 
          1, 2, 2, 3, 3, 4, 4 ], [ 14, 14, 13, 13, 16, 16, 15, 15, 7, 7, 8, 8, 6, 6, 5, 5, 11, 11, 
          12, 12, 10, 10, 9, 9, 1, 0, 2, 2, 3, 3, 4, 4 ], 
      [ 13, 13, 14, 14, 15, 15, 16, 16, 8, 8, 7, 7, 5, 5, 6, 6, 12, 12, 11, 11, 9, 9, 10, 10, 2, 
          2, 0, 1, 4, 4, 3, 3 ], [ 13, 13, 14, 14, 15, 15, 16, 16, 8, 8, 7, 7, 5, 5, 6, 6, 12, 12, 
          11, 11, 9, 9, 10, 10, 2, 2, 1, 0, 4, 4, 3, 3 ], 
      [ 16, 16, 15, 15, 14, 14, 13, 13, 11, 11, 12, 12, 10, 10, 9, 9, 7, 7, 8, 8, 6, 6, 5, 5, 3, 
          3, 4, 4, 0, 1, 2, 2 ], [ 16, 16, 15, 15, 14, 14, 13, 13, 11, 11, 12, 12, 10, 10, 9, 9, 
          7, 7, 8, 8, 6, 6, 5, 5, 3, 3, 4, 4, 1, 0, 2, 2 ], 
      [ 15, 15, 16, 16, 13, 13, 14, 14, 12, 12, 11, 11, 9, 9, 10, 10, 8, 8, 7, 7, 5, 5, 6, 6, 4, 
          4, 3, 3, 2, 2, 0, 1 ], [ 15, 15, 16, 16, 13, 13, 14, 14, 12, 12, 11, 11, 9, 9, 10, 10, 
          8, 8, 7, 7, 5, 5, 6, 6, 4, 4, 3, 3, 2, 2, 1, 0 ] ] )