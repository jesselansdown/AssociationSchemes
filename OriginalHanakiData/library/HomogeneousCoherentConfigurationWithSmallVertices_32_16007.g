rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2, -2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 11, 11, 
          10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 9, 8, 9, 6, 7, 6, 7, 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 
          13, 13, 12, 12, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6, 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 
          12, 12, 13, 13, 12, 12 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 8, 9, 8, 6, 7, 6, 7, 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 
          12, 12, 13, 13, 12, 12 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6, 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 
          13, 13, 12, 12, 13, 13 ], 
      [ 6, 7, 6, 7, 9, 8, 8, 9, 0, 2, 3, 1, 4, 5, 5, 4, 12, 12, 13, 13, 12, 12, 13, 13, 11, 11, 
          10, 10, 11, 11, 10, 10 ], 
      [ 6, 7, 6, 7, 8, 9, 9, 8, 2, 0, 1, 3, 5, 4, 4, 5, 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 
          11, 11, 10, 10, 11, 11 ], 
      [ 7, 6, 7, 6, 9, 8, 8, 9, 3, 1, 0, 2, 5, 4, 4, 5, 12, 12, 13, 13, 12, 12, 13, 13, 11, 11, 
          10, 10, 11, 11, 10, 10 ], 
      [ 7, 6, 7, 6, 8, 9, 9, 8, 1, 3, 2, 0, 4, 5, 5, 4, 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 
          11, 11, 10, 10, 11, 11 ], 
      [ 9, 8, 8, 9, 6, 7, 6, 7, 4, 5, 5, 4, 0, 3, 2, 1, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 9, 8, 8, 9, 7, 6, 7, 6, 5, 4, 4, 5, 3, 0, 1, 2, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 8, 9, 9, 8, 6, 7, 6, 7, 5, 4, 4, 5, 2, 1, 0, 3, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 8, 9, 9, 8, 7, 6, 7, 6, 4, 5, 5, 4, 1, 2, 3, 0, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 10, 11, 11, 10, 10, 11, 11, 10, 12, 13, 12, 13, 12, 12, 13, 13, 0, 3, 4, 5, 4, 5, 1, 2, 8, 
          8, 6, 7, 6, 7, 9, 9 ], [ 10, 11, 11, 10, 10, 11, 11, 10, 12, 13, 12, 13, 12, 12, 13, 13, 
          3, 0, 5, 4, 5, 4, 2, 1, 8, 8, 7, 6, 7, 6, 9, 9 ], 
      [ 10, 11, 11, 10, 11, 10, 10, 11, 13, 12, 13, 12, 12, 12, 13, 13, 4, 5, 0, 3, 1, 2, 4, 5, 6, 
          7, 8, 8, 9, 9, 6, 7 ], [ 10, 11, 11, 10, 11, 10, 10, 11, 13, 12, 13, 12, 12, 12, 13, 13, 
          5, 4, 3, 0, 2, 1, 5, 4, 7, 6, 8, 8, 9, 9, 7, 6 ], 
      [ 11, 10, 10, 11, 10, 11, 11, 10, 12, 13, 12, 13, 13, 13, 12, 12, 4, 5, 1, 2, 0, 3, 4, 5, 7, 
          6, 9, 9, 8, 8, 7, 6 ], [ 11, 10, 10, 11, 10, 11, 11, 10, 12, 13, 12, 13, 13, 13, 12, 12, 
          5, 4, 2, 1, 3, 0, 5, 4, 6, 7, 9, 9, 8, 8, 6, 7 ], 
      [ 11, 10, 10, 11, 11, 10, 10, 11, 13, 12, 13, 12, 13, 13, 12, 12, 1, 2, 4, 5, 4, 5, 0, 3, 9, 
          9, 7, 6, 7, 6, 8, 8 ], [ 11, 10, 10, 11, 11, 10, 10, 11, 13, 12, 13, 12, 13, 13, 12, 12, 
          2, 1, 5, 4, 5, 4, 3, 0, 9, 9, 6, 7, 6, 7, 8, 8 ], 
      [ 12, 13, 13, 12, 12, 13, 13, 12, 11, 10, 11, 10, 11, 11, 10, 10, 9, 9, 6, 7, 7, 6, 8, 8, 0, 
          3, 4, 5, 5, 4, 2, 1 ], [ 12, 13, 13, 12, 12, 13, 13, 12, 11, 10, 11, 10, 11, 11, 10, 10, 
          9, 9, 7, 6, 6, 7, 8, 8, 3, 0, 5, 4, 4, 5, 1, 2 ], 
      [ 12, 13, 13, 12, 13, 12, 12, 13, 10, 11, 10, 11, 11, 11, 10, 10, 6, 7, 9, 9, 8, 8, 7, 6, 4, 
          5, 0, 3, 2, 1, 5, 4 ], [ 12, 13, 13, 12, 13, 12, 12, 13, 10, 11, 10, 11, 11, 11, 10, 10, 
          7, 6, 9, 9, 8, 8, 6, 7, 5, 4, 3, 0, 1, 2, 4, 5 ], 
      [ 13, 12, 12, 13, 12, 13, 13, 12, 11, 10, 11, 10, 10, 10, 11, 11, 6, 7, 8, 8, 9, 9, 7, 6, 5, 
          4, 2, 1, 0, 3, 4, 5 ], [ 13, 12, 12, 13, 12, 13, 13, 12, 11, 10, 11, 10, 10, 10, 11, 11, 
          7, 6, 8, 8, 9, 9, 6, 7, 4, 5, 1, 2, 3, 0, 5, 4 ], 
      [ 13, 12, 12, 13, 13, 12, 12, 13, 10, 11, 10, 11, 10, 10, 11, 11, 8, 8, 6, 7, 7, 6, 9, 9, 2, 
          1, 5, 4, 4, 5, 0, 3 ], [ 13, 12, 12, 13, 13, 12, 12, 13, 10, 11, 10, 11, 10, 10, 11, 11, 
          8, 8, 7, 6, 6, 7, 9, 9, 1, 2, 4, 5, 5, 4, 3, 0 ] ] )