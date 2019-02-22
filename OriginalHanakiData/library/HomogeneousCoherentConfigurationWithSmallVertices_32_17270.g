rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -4, -4, 1 ], 
      [ 2, 2, 2, 2, -4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 
          14, 15, 15, 15, 15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 12, 12, 13, 13, 
          10, 10, 11, 11, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 13, 13, 12, 12, 11, 11, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 11, 11, 10, 10, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 5, 5, 4, 4, 0, 1, 2, 3, 8, 8, 9, 9, 7, 7, 6, 6, 11, 13, 10, 12, 11, 13, 10, 12, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 5, 5, 4, 4, 1, 0, 3, 2, 8, 8, 9, 9, 7, 7, 6, 6, 13, 11, 12, 10, 13, 11, 12, 10, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 2, 3, 0, 1, 9, 9, 8, 8, 6, 6, 7, 7, 13, 11, 10, 12, 13, 11, 10, 12, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 3, 2, 1, 0, 9, 9, 8, 8, 6, 6, 7, 7, 11, 13, 12, 10, 11, 13, 12, 10, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 0, 1, 2, 3, 4, 4, 5, 5, 14, 14, 15, 15, 14, 14, 15, 15, 10, 10, 
          12, 12, 11, 11, 13, 13 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 1, 0, 3, 2, 4, 4, 5, 5, 14, 14, 15, 15, 14, 14, 15, 15, 12, 12, 
          10, 10, 13, 13, 11, 11 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 2, 3, 0, 1, 5, 5, 4, 4, 14, 14, 15, 15, 14, 14, 15, 15, 10, 10, 
          12, 12, 13, 13, 11, 11 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 3, 2, 1, 0, 5, 5, 4, 4, 14, 14, 15, 15, 14, 14, 15, 15, 12, 12, 
          10, 10, 11, 11, 13, 13 ], 
      [ 9, 9, 8, 8, 6, 6, 7, 7, 5, 5, 4, 4, 0, 1, 2, 3, 15, 15, 14, 14, 15, 15, 14, 14, 11, 13, 
          11, 13, 10, 12, 10, 12 ], 
      [ 9, 9, 8, 8, 6, 6, 7, 7, 5, 5, 4, 4, 1, 0, 3, 2, 15, 15, 14, 14, 15, 15, 14, 14, 13, 11, 
          13, 11, 12, 10, 12, 10 ], 
      [ 8, 8, 9, 9, 7, 7, 6, 6, 4, 4, 5, 5, 2, 3, 0, 1, 15, 15, 14, 14, 15, 15, 14, 14, 13, 11, 
          13, 11, 10, 12, 10, 12 ], 
      [ 8, 8, 9, 9, 7, 7, 6, 6, 4, 4, 5, 5, 3, 2, 1, 0, 15, 15, 14, 14, 15, 15, 14, 14, 11, 13, 
          11, 13, 12, 10, 12, 10 ], 
      [ 11, 13, 11, 13, 10, 12, 12, 10, 14, 14, 14, 14, 15, 15, 15, 15, 0, 3, 4, 5, 2, 1, 5, 4, 8, 
          9, 9, 8, 7, 6, 6, 7 ], [ 11, 13, 11, 13, 12, 10, 10, 12, 14, 14, 14, 14, 15, 15, 15, 15, 
          3, 0, 5, 4, 1, 2, 4, 5, 9, 8, 8, 9, 6, 7, 7, 6 ], 
      [ 10, 12, 12, 10, 11, 13, 11, 13, 15, 15, 15, 15, 14, 14, 14, 14, 5, 4, 0, 2, 4, 5, 3, 1, 7, 
          6, 6, 7, 9, 8, 8, 9 ], [ 10, 12, 12, 10, 13, 11, 13, 11, 15, 15, 15, 15, 14, 14, 14, 14, 
          4, 5, 2, 0, 5, 4, 1, 3, 6, 7, 7, 6, 8, 9, 9, 8 ], 
      [ 13, 11, 13, 11, 10, 12, 12, 10, 14, 14, 14, 14, 15, 15, 15, 15, 2, 1, 5, 4, 0, 3, 4, 5, 9, 
          8, 8, 9, 6, 7, 7, 6 ], [ 13, 11, 13, 11, 12, 10, 10, 12, 14, 14, 14, 14, 15, 15, 15, 15, 
          1, 2, 4, 5, 3, 0, 5, 4, 8, 9, 9, 8, 7, 6, 6, 7 ], 
      [ 12, 10, 10, 12, 11, 13, 11, 13, 15, 15, 15, 15, 14, 14, 14, 14, 4, 5, 3, 1, 5, 4, 0, 2, 6, 
          7, 7, 6, 8, 9, 9, 8 ], [ 12, 10, 10, 12, 13, 11, 13, 11, 15, 15, 15, 15, 14, 14, 14, 14, 
          5, 4, 1, 3, 4, 5, 2, 0, 7, 6, 6, 7, 9, 8, 8, 9 ], 
      [ 14, 14, 14, 14, 15, 15, 15, 15, 11, 13, 11, 13, 10, 12, 12, 10, 9, 8, 6, 7, 8, 9, 7, 6, 0, 
          3, 2, 1, 4, 5, 5, 4 ], [ 14, 14, 14, 14, 15, 15, 15, 15, 11, 13, 11, 13, 12, 10, 10, 12, 
          8, 9, 7, 6, 9, 8, 6, 7, 3, 0, 1, 2, 5, 4, 4, 5 ], 
      [ 14, 14, 14, 14, 15, 15, 15, 15, 13, 11, 13, 11, 10, 12, 12, 10, 8, 9, 7, 6, 9, 8, 6, 7, 2, 
          1, 0, 3, 5, 4, 4, 5 ], [ 14, 14, 14, 14, 15, 15, 15, 15, 13, 11, 13, 11, 12, 10, 10, 12, 
          9, 8, 6, 7, 8, 9, 7, 6, 1, 2, 3, 0, 4, 5, 5, 4 ], 
      [ 15, 15, 15, 15, 14, 14, 14, 14, 10, 12, 12, 10, 11, 13, 11, 13, 6, 7, 8, 9, 7, 6, 9, 8, 5, 
          4, 4, 5, 0, 2, 3, 1 ], [ 15, 15, 15, 15, 14, 14, 14, 14, 10, 12, 12, 10, 13, 11, 13, 11, 
          7, 6, 9, 8, 6, 7, 8, 9, 4, 5, 5, 4, 2, 0, 1, 3 ], 
      [ 15, 15, 15, 15, 14, 14, 14, 14, 12, 10, 10, 12, 11, 13, 11, 13, 7, 6, 9, 8, 6, 7, 8, 9, 4, 
          5, 5, 4, 3, 1, 0, 2 ], [ 15, 15, 15, 15, 14, 14, 14, 14, 12, 10, 10, 12, 13, 11, 13, 11, 
          6, 7, 8, 9, 7, 6, 9, 8, 5, 4, 4, 5, 1, 3, 2, 0 ] ] )