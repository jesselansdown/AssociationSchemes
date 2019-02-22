rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, -4, 4, 4, -4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 4, -4, -4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, -4, 4, -4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 4, -4, 4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2, 2, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2, -2, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2, -2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 9, 8, 9, 6, 7, 6, 7, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 8, 9, 8, 6, 7, 6, 7, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 6, 7, 6, 7, 8, 9, 9, 8, 0, 2, 3, 1, 5, 4, 4, 5, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 6, 7, 6, 7, 9, 8, 8, 9, 2, 0, 1, 3, 4, 5, 5, 4, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 7, 6, 7, 6, 8, 9, 9, 8, 3, 1, 0, 2, 4, 5, 5, 4, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 7, 6, 7, 6, 9, 8, 8, 9, 1, 3, 2, 0, 5, 4, 4, 5, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 8, 9, 9, 8, 6, 7, 6, 7, 5, 4, 4, 5, 0, 3, 2, 1, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 8, 9, 9, 8, 7, 6, 7, 6, 4, 5, 5, 4, 3, 0, 1, 2, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 9, 8, 8, 9, 6, 7, 6, 7, 4, 5, 5, 4, 2, 1, 0, 3, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 9, 8, 8, 9, 7, 6, 7, 6, 5, 4, 4, 5, 1, 2, 3, 0, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 0, 1, 2, 3, 4, 4, 5, 5, 6, 
          6, 7, 7, 8, 8, 9, 9 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 
          1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 2, 3, 0, 1, 5, 5, 4, 4, 6, 
          6, 7, 7, 9, 9, 8, 8 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 
          3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 4, 4, 5, 5, 0, 1, 2, 3, 8, 
          9, 8, 9, 6, 7, 6, 7 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 
          4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 5, 5, 4, 4, 2, 3, 0, 1, 9, 
          8, 9, 8, 6, 7, 6, 7 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 
          5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11, 6, 7, 6, 7, 8, 9, 9, 8, 0, 
          2, 3, 1, 5, 4, 4, 5 ], [ 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11, 
          6, 7, 6, 7, 9, 8, 8, 9, 2, 0, 1, 3, 4, 5, 5, 4 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11, 7, 6, 7, 6, 8, 9, 9, 8, 3, 
          1, 0, 2, 4, 5, 5, 4 ], [ 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11, 
          7, 6, 7, 6, 9, 8, 8, 9, 1, 3, 2, 0, 5, 4, 4, 5 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 8, 9, 9, 8, 6, 7, 6, 7, 5, 
          4, 4, 5, 0, 3, 2, 1 ], [ 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 
          8, 9, 9, 8, 7, 6, 7, 6, 4, 5, 5, 4, 3, 0, 1, 2 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 9, 8, 8, 9, 6, 7, 6, 7, 4, 
          5, 5, 4, 2, 1, 0, 3 ], [ 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 
          9, 8, 8, 9, 7, 6, 7, 6, 5, 4, 4, 5, 1, 2, 3, 0 ] ] )