rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 0, 0, 4, 0, -4, -4, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 7, 7, 6, 6, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 9, 9, 8, 8, 6, 6, 7, 7, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 7, 6, 7, 8, 9, 8, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 6, 7, 6, 9, 8, 9, 8, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 8, 9, 8, 9, 7, 6, 7, 6, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 8, 9, 8, 6, 7, 6, 7, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 7, 6, 9, 8, 7, 6, 9, 8, 0, 4, 4, 1, 2, 5, 5, 3, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 7, 6, 9, 8, 6, 7, 8, 9, 4, 0, 1, 4, 5, 2, 3, 5, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 6, 7, 8, 9, 7, 6, 9, 8, 4, 1, 0, 4, 5, 3, 2, 5, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 6, 7, 8, 9, 6, 7, 8, 9, 1, 4, 4, 0, 3, 5, 5, 2, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 9, 8, 6, 7, 9, 8, 6, 7, 3, 5, 5, 2, 0, 4, 4, 1, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 9, 8, 6, 7, 8, 9, 7, 6, 5, 3, 2, 5, 4, 0, 1, 4, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 8, 9, 7, 6, 9, 8, 6, 7, 5, 2, 3, 5, 4, 1, 0, 4, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 8, 9, 7, 6, 8, 9, 7, 6, 2, 5, 5, 3, 1, 4, 4, 0, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 10, 10, 13, 13, 10, 10, 13, 13, 11, 11, 11, 11, 12, 12, 12, 12, 0, 1, 4, 4, 6, 6, 7, 7, 8, 
          8, 9, 9, 2, 3, 5, 5 ], [ 10, 10, 13, 13, 10, 10, 13, 13, 11, 11, 11, 11, 12, 12, 12, 12, 
          1, 0, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 3, 2, 5, 5 ], 
      [ 10, 10, 13, 13, 10, 10, 13, 13, 11, 11, 11, 11, 12, 12, 12, 12, 4, 4, 0, 1, 6, 7, 6, 7, 8, 
          9, 8, 9, 5, 5, 2, 3 ], [ 10, 10, 13, 13, 10, 10, 13, 13, 11, 11, 11, 11, 12, 12, 12, 12, 
          4, 4, 1, 0, 7, 6, 7, 6, 9, 8, 9, 8, 5, 5, 3, 2 ], 
      [ 11, 11, 12, 12, 11, 11, 12, 12, 10, 10, 10, 10, 13, 13, 13, 13, 7, 6, 7, 6, 0, 4, 4, 1, 2, 
          5, 5, 3, 9, 8, 9, 8 ], [ 11, 11, 12, 12, 11, 11, 12, 12, 10, 10, 10, 10, 13, 13, 13, 13, 
          7, 6, 6, 7, 4, 0, 1, 4, 5, 2, 3, 5, 9, 8, 8, 9 ], 
      [ 11, 11, 12, 12, 11, 11, 12, 12, 10, 10, 10, 10, 13, 13, 13, 13, 6, 7, 7, 6, 4, 1, 0, 4, 5, 
          3, 2, 5, 8, 9, 9, 8 ], [ 11, 11, 12, 12, 11, 11, 12, 12, 10, 10, 10, 10, 13, 13, 13, 13, 
          6, 7, 6, 7, 1, 4, 4, 0, 3, 5, 5, 2, 8, 9, 8, 9 ], 
      [ 13, 13, 10, 10, 13, 13, 10, 10, 12, 12, 12, 12, 11, 11, 11, 11, 9, 8, 9, 8, 3, 5, 5, 2, 0, 
          4, 4, 1, 6, 7, 6, 7 ], [ 13, 13, 10, 10, 13, 13, 10, 10, 12, 12, 12, 12, 11, 11, 11, 11, 
          9, 8, 8, 9, 5, 3, 2, 5, 4, 0, 1, 4, 6, 7, 7, 6 ], 
      [ 13, 13, 10, 10, 13, 13, 10, 10, 12, 12, 12, 12, 11, 11, 11, 11, 8, 9, 9, 8, 5, 2, 3, 5, 4, 
          1, 0, 4, 7, 6, 6, 7 ], [ 13, 13, 10, 10, 13, 13, 10, 10, 12, 12, 12, 12, 11, 11, 11, 11, 
          8, 9, 8, 9, 2, 5, 5, 3, 1, 4, 4, 0, 7, 6, 7, 6 ], 
      [ 12, 12, 11, 11, 12, 12, 11, 11, 13, 13, 13, 13, 10, 10, 10, 10, 3, 2, 5, 5, 8, 8, 9, 9, 7, 
          7, 6, 6, 0, 1, 4, 4 ], [ 12, 12, 11, 11, 12, 12, 11, 11, 13, 13, 13, 13, 10, 10, 10, 10, 
          2, 3, 5, 5, 9, 9, 8, 8, 6, 6, 7, 7, 1, 0, 4, 4 ], 
      [ 12, 12, 11, 11, 12, 12, 11, 11, 13, 13, 13, 13, 10, 10, 10, 10, 5, 5, 3, 2, 8, 9, 8, 9, 7, 
          6, 7, 6, 4, 4, 0, 1 ], [ 12, 12, 11, 11, 12, 12, 11, 11, 13, 13, 13, 13, 10, 10, 10, 10, 
          5, 5, 2, 3, 9, 8, 9, 8, 6, 7, 6, 7, 4, 4, 1, 0 ] ] )