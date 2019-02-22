rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 2, 2, -4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 9, 9, 8, 8, 7, 7, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 8, 8, 7, 7, 6, 6, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 9, 6, 8, 7, 9, 6, 8, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 7, 8, 6, 9, 7, 8, 6, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 7, 6, 8, 9, 7, 6, 8, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 7, 9, 8, 6, 7, 9, 8, 6, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 7, 9, 7, 9, 6, 8, 8, 6, 0, 3, 4, 5, 2, 1, 5, 4, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 7, 9, 7, 9, 8, 6, 6, 8, 3, 0, 5, 4, 1, 2, 4, 5, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 6, 8, 8, 6, 7, 9, 7, 9, 4, 5, 0, 2, 5, 4, 3, 1, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 6, 8, 8, 6, 9, 7, 9, 7, 5, 4, 2, 0, 4, 5, 1, 3, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 9, 7, 9, 7, 6, 8, 8, 6, 2, 1, 5, 4, 0, 3, 4, 5, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 9, 7, 9, 7, 8, 6, 6, 8, 1, 2, 4, 5, 3, 0, 5, 4, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 8, 6, 6, 8, 7, 9, 7, 9, 5, 4, 3, 1, 4, 5, 0, 2, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 8, 6, 6, 8, 9, 7, 9, 7, 4, 5, 1, 3, 5, 4, 2, 0, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 12, 12, 13, 13, 12, 12, 0, 1, 2, 3, 4, 4, 5, 5, 6, 
          6, 8, 8, 7, 7, 9, 9 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 12, 12, 13, 13, 12, 12, 
          1, 0, 3, 2, 4, 4, 5, 5, 8, 8, 6, 6, 9, 9, 7, 7 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 12, 12, 13, 13, 12, 12, 2, 3, 0, 1, 5, 5, 4, 4, 6, 
          6, 8, 8, 9, 9, 7, 7 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 12, 12, 13, 13, 12, 12, 
          3, 2, 1, 0, 5, 5, 4, 4, 8, 8, 6, 6, 7, 7, 9, 9 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 13, 13, 12, 12, 13, 13, 4, 4, 5, 5, 0, 1, 2, 3, 7, 
          9, 7, 9, 6, 8, 6, 8 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 13, 13, 12, 12, 13, 13, 
          4, 4, 5, 5, 1, 0, 3, 2, 9, 7, 9, 7, 8, 6, 8, 6 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 13, 13, 12, 12, 13, 13, 5, 5, 4, 4, 2, 3, 0, 1, 9, 
          7, 9, 7, 6, 8, 6, 8 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 13, 13, 12, 12, 13, 13, 
          5, 5, 4, 4, 3, 2, 1, 0, 7, 9, 7, 9, 8, 6, 8, 6 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 11, 11, 10, 10, 11, 11, 7, 9, 7, 9, 6, 8, 8, 6, 0, 
          3, 2, 1, 4, 5, 5, 4 ], [ 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 11, 11, 10, 10, 11, 11, 
          7, 9, 7, 9, 8, 6, 6, 8, 3, 0, 1, 2, 5, 4, 4, 5 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 11, 11, 10, 10, 11, 11, 9, 7, 9, 7, 6, 8, 8, 6, 2, 
          1, 0, 3, 5, 4, 4, 5 ], [ 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 11, 11, 10, 10, 11, 11, 
          9, 7, 9, 7, 8, 6, 6, 8, 1, 2, 3, 0, 4, 5, 5, 4 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 10, 10, 11, 11, 10, 10, 6, 8, 8, 6, 7, 9, 7, 9, 4, 
          5, 5, 4, 0, 2, 3, 1 ], [ 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 10, 10, 11, 11, 10, 10, 
          6, 8, 8, 6, 9, 7, 9, 7, 5, 4, 4, 5, 2, 0, 1, 3 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 10, 10, 11, 11, 10, 10, 8, 6, 6, 8, 7, 9, 7, 9, 5, 
          4, 4, 5, 3, 1, 0, 2 ], [ 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 10, 10, 11, 11, 10, 10, 
          8, 6, 6, 8, 9, 7, 9, 7, 4, 5, 5, 4, 1, 3, 2, 0 ] ] )