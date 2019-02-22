rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, 2, 2, 4, 4, -4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, -2, -2, 4, -4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, -2, -2, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, 2, 2, -4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, -4, -4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, -2, -2, -4, 4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, 4, -4, -4, 1 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 
          13, 14, 14, 14, 14 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 
          12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 
          13, 13, 14, 14, 14, 14 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 
          13, 13, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 6, 6, 7, 7, 8, 8, 
          9, 9, 10, 10, 11, 11 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 7, 7, 6, 6, 9, 9, 
          8, 8, 11, 11, 10, 10 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 6, 6, 7, 7, 8, 8, 
          9, 9, 10, 10, 11, 11 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 7, 7, 6, 6, 9, 9, 
          8, 8, 11, 11, 10, 10 ], [ 7, 6, 7, 6, 12, 12, 12, 12, 0, 2, 1, 3, 10, 10, 11, 11, 9, 9, 
          8, 8, 4, 5, 4, 5, 14, 14, 14, 14, 13, 13, 13, 13 ], 
      [ 7, 6, 7, 6, 12, 12, 12, 12, 2, 0, 3, 1, 10, 10, 11, 11, 9, 9, 8, 8, 5, 4, 5, 4, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 6, 7, 6, 7, 12, 12, 12, 12, 1, 3, 0, 2, 11, 11, 10, 10, 8, 8, 9, 9, 4, 5, 4, 5, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 6, 7, 6, 7, 12, 12, 12, 12, 3, 1, 2, 0, 11, 11, 10, 10, 8, 8, 9, 9, 5, 4, 5, 4, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 9, 8, 9, 8, 13, 13, 13, 13, 11, 11, 10, 10, 0, 2, 1, 3, 6, 6, 7, 7, 14, 14, 14, 14, 4, 5, 
          4, 5, 12, 12, 12, 12 ], [ 9, 8, 9, 8, 13, 13, 13, 13, 11, 11, 10, 10, 2, 0, 3, 1, 6, 6, 
          7, 7, 14, 14, 14, 14, 5, 4, 5, 4, 12, 12, 12, 12 ], 
      [ 8, 9, 8, 9, 13, 13, 13, 13, 10, 10, 11, 11, 1, 3, 0, 2, 7, 7, 6, 6, 14, 14, 14, 14, 4, 5, 
          4, 5, 12, 12, 12, 12 ], [ 8, 9, 8, 9, 13, 13, 13, 13, 10, 10, 11, 11, 3, 1, 2, 0, 7, 7, 
          6, 6, 14, 14, 14, 14, 5, 4, 5, 4, 12, 12, 12, 12 ], 
      [ 11, 10, 11, 10, 14, 14, 14, 14, 8, 8, 9, 9, 7, 7, 6, 6, 0, 2, 1, 3, 13, 13, 13, 13, 12, 
          12, 12, 12, 4, 5, 4, 5 ], 
      [ 11, 10, 11, 10, 14, 14, 14, 14, 8, 8, 9, 9, 7, 7, 6, 6, 2, 0, 3, 1, 13, 13, 13, 13, 12, 
          12, 12, 12, 5, 4, 5, 4 ], 
      [ 10, 11, 10, 11, 14, 14, 14, 14, 9, 9, 8, 8, 6, 6, 7, 7, 1, 3, 0, 2, 13, 13, 13, 13, 12, 
          12, 12, 12, 4, 5, 4, 5 ], 
      [ 10, 11, 10, 11, 14, 14, 14, 14, 9, 9, 8, 8, 6, 6, 7, 7, 3, 1, 2, 0, 13, 13, 13, 13, 12, 
          12, 12, 12, 5, 4, 5, 4 ], 
      [ 12, 12, 12, 12, 7, 6, 7, 6, 4, 5, 4, 5, 14, 14, 14, 14, 13, 13, 13, 13, 0, 2, 1, 3, 10, 
          10, 11, 11, 9, 9, 8, 8 ], 
      [ 12, 12, 12, 12, 7, 6, 7, 6, 5, 4, 5, 4, 14, 14, 14, 14, 13, 13, 13, 13, 2, 0, 3, 1, 10, 
          10, 11, 11, 9, 9, 8, 8 ], 
      [ 12, 12, 12, 12, 6, 7, 6, 7, 4, 5, 4, 5, 14, 14, 14, 14, 13, 13, 13, 13, 1, 3, 0, 2, 11, 
          11, 10, 10, 8, 8, 9, 9 ], 
      [ 12, 12, 12, 12, 6, 7, 6, 7, 5, 4, 5, 4, 14, 14, 14, 14, 13, 13, 13, 13, 3, 1, 2, 0, 11, 
          11, 10, 10, 8, 8, 9, 9 ], 
      [ 13, 13, 13, 13, 9, 8, 9, 8, 14, 14, 14, 14, 4, 5, 4, 5, 12, 12, 12, 12, 11, 11, 10, 10, 0, 
          2, 1, 3, 6, 6, 7, 7 ], [ 13, 13, 13, 13, 9, 8, 9, 8, 14, 14, 14, 14, 5, 4, 5, 4, 12, 12, 
          12, 12, 11, 11, 10, 10, 2, 0, 3, 1, 6, 6, 7, 7 ], 
      [ 13, 13, 13, 13, 8, 9, 8, 9, 14, 14, 14, 14, 4, 5, 4, 5, 12, 12, 12, 12, 10, 10, 11, 11, 1, 
          3, 0, 2, 7, 7, 6, 6 ], [ 13, 13, 13, 13, 8, 9, 8, 9, 14, 14, 14, 14, 5, 4, 5, 4, 12, 12, 
          12, 12, 10, 10, 11, 11, 3, 1, 2, 0, 7, 7, 6, 6 ], 
      [ 14, 14, 14, 14, 11, 10, 11, 10, 13, 13, 13, 13, 12, 12, 12, 12, 4, 5, 4, 5, 8, 8, 9, 9, 7, 
          7, 6, 6, 0, 2, 1, 3 ], [ 14, 14, 14, 14, 11, 10, 11, 10, 13, 13, 13, 13, 12, 12, 12, 12, 
          5, 4, 5, 4, 8, 8, 9, 9, 7, 7, 6, 6, 2, 0, 3, 1 ], 
      [ 14, 14, 14, 14, 10, 11, 10, 11, 13, 13, 13, 13, 12, 12, 12, 12, 4, 5, 4, 5, 9, 9, 8, 8, 6, 
          6, 7, 7, 1, 3, 0, 2 ], [ 14, 14, 14, 14, 10, 11, 10, 11, 13, 13, 13, 13, 12, 12, 12, 12, 
          5, 4, 5, 4, 9, 9, 8, 8, 6, 6, 7, 7, 3, 1, 2, 0 ] ] )