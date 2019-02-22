rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, -2, -2, 2, 2, 4, -4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, -2, -2, 2, 2, -4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 2, 2, -2, -2, 4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -4, -4, 1 ], 
      [ 2, 2, 0, 0, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 
          14, 15, 15, 15, 15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 11, 11, 10, 10, 
          13, 13, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 12, 12, 13, 13, 11, 11, 10, 10, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 13, 13, 12, 12, 10, 10, 11, 11, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 7, 6, 6, 9, 9, 8, 8, 10, 11, 10, 11, 12, 13, 12, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 6, 6, 9, 9, 8, 8, 11, 10, 11, 10, 13, 12, 13, 12, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 12, 13, 12, 13, 11, 10, 11, 10, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 13, 12, 13, 12, 10, 11, 10, 11, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 6, 6, 9, 9, 7, 7, 8, 8, 0, 1, 4, 4, 5, 5, 2, 3, 14, 14, 14, 14, 15, 15, 15, 15, 10, 10, 
          11, 11, 12, 12, 13, 13 ], 
      [ 6, 6, 9, 9, 7, 7, 8, 8, 1, 0, 4, 4, 5, 5, 3, 2, 14, 14, 14, 14, 15, 15, 15, 15, 11, 11, 
          10, 10, 13, 13, 12, 12 ], 
      [ 7, 7, 8, 8, 6, 6, 9, 9, 4, 4, 0, 1, 2, 3, 5, 5, 14, 14, 14, 14, 15, 15, 15, 15, 10, 11, 
          10, 11, 12, 13, 12, 13 ], 
      [ 7, 7, 8, 8, 6, 6, 9, 9, 4, 4, 1, 0, 3, 2, 5, 5, 14, 14, 14, 14, 15, 15, 15, 15, 11, 10, 
          11, 10, 13, 12, 13, 12 ], 
      [ 9, 9, 6, 6, 8, 8, 7, 7, 5, 5, 3, 2, 0, 1, 4, 4, 15, 15, 15, 15, 14, 14, 14, 14, 12, 13, 
          12, 13, 11, 10, 11, 10 ], 
      [ 9, 9, 6, 6, 8, 8, 7, 7, 5, 5, 2, 3, 1, 0, 4, 4, 15, 15, 15, 15, 14, 14, 14, 14, 13, 12, 
          13, 12, 10, 11, 10, 11 ], 
      [ 8, 8, 7, 7, 9, 9, 6, 6, 3, 2, 5, 5, 4, 4, 0, 1, 15, 15, 15, 15, 14, 14, 14, 14, 12, 12, 
          13, 13, 11, 11, 10, 10 ], 
      [ 8, 8, 7, 7, 9, 9, 6, 6, 2, 3, 5, 5, 4, 4, 1, 0, 15, 15, 15, 15, 14, 14, 14, 14, 13, 13, 
          12, 12, 10, 10, 11, 11 ], 
      [ 11, 10, 13, 12, 11, 10, 13, 12, 14, 14, 14, 14, 15, 15, 15, 15, 0, 4, 4, 1, 2, 5, 5, 3, 6, 
          7, 7, 6, 9, 8, 8, 9 ], [ 11, 10, 13, 12, 10, 11, 12, 13, 14, 14, 14, 14, 15, 15, 15, 15, 
          4, 0, 1, 4, 5, 2, 3, 5, 7, 6, 6, 7, 8, 9, 9, 8 ], 
      [ 10, 11, 12, 13, 11, 10, 13, 12, 14, 14, 14, 14, 15, 15, 15, 15, 4, 1, 0, 4, 5, 3, 2, 5, 7, 
          6, 6, 7, 8, 9, 9, 8 ], [ 10, 11, 12, 13, 10, 11, 12, 13, 14, 14, 14, 14, 15, 15, 15, 15, 
          1, 4, 4, 0, 3, 5, 5, 2, 6, 7, 7, 6, 9, 8, 8, 9 ], 
      [ 13, 12, 10, 11, 13, 12, 10, 11, 15, 15, 15, 15, 14, 14, 14, 14, 3, 5, 5, 2, 0, 4, 4, 1, 8, 
          9, 9, 8, 7, 6, 6, 7 ], [ 13, 12, 10, 11, 12, 13, 11, 10, 15, 15, 15, 15, 14, 14, 14, 14, 
          5, 3, 2, 5, 4, 0, 1, 4, 9, 8, 8, 9, 6, 7, 7, 6 ], 
      [ 12, 13, 11, 10, 13, 12, 10, 11, 15, 15, 15, 15, 14, 14, 14, 14, 5, 2, 3, 5, 4, 1, 0, 4, 9, 
          8, 8, 9, 6, 7, 7, 6 ], [ 12, 13, 11, 10, 12, 13, 11, 10, 15, 15, 15, 15, 14, 14, 14, 14, 
          2, 5, 5, 3, 1, 4, 4, 0, 8, 9, 9, 8, 7, 6, 6, 7 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 11, 10, 11, 10, 13, 12, 13, 12, 6, 7, 7, 6, 9, 8, 8, 9, 0, 
          4, 4, 1, 2, 5, 5, 3 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 11, 10, 10, 11, 12, 13, 13, 12, 
          7, 6, 6, 7, 8, 9, 9, 8, 4, 0, 1, 4, 5, 2, 3, 5 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 10, 11, 11, 10, 13, 12, 12, 13, 7, 6, 6, 7, 8, 9, 9, 8, 4, 
          1, 0, 4, 5, 3, 2, 5 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 10, 11, 10, 11, 12, 13, 12, 13, 
          6, 7, 7, 6, 9, 8, 8, 9, 1, 4, 4, 0, 3, 5, 5, 2 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 13, 12, 13, 12, 10, 11, 10, 11, 8, 9, 9, 8, 7, 6, 6, 7, 3, 
          5, 5, 2, 0, 4, 4, 1 ], [ 15, 15, 14, 14, 15, 15, 14, 14, 13, 12, 12, 13, 11, 10, 10, 11, 
          9, 8, 8, 9, 6, 7, 7, 6, 5, 3, 2, 5, 4, 0, 1, 4 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 12, 13, 13, 12, 10, 11, 11, 10, 9, 8, 8, 9, 6, 7, 7, 6, 5, 
          2, 3, 5, 4, 1, 0, 4 ], [ 15, 15, 14, 14, 15, 15, 14, 14, 12, 13, 12, 13, 11, 10, 11, 10, 
          8, 9, 9, 8, 7, 6, 6, 7, 2, 5, 5, 3, 1, 4, 4, 0 ] ] )