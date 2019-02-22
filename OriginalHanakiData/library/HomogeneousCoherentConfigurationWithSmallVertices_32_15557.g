rec(
  ct := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, 2, 2, 4, -4, -4, -4, 1 ], 
      [ 1, 1, 2, 2, 2, 2, 2, -2, -2, -4, 4, -4, -4, 1 ], 
      [ 1, 1, -2, 2, -2, 0, 0, -2, -2, 4, 0, 0, 0, 2 ], 
      [ 1, 1, -2, 2, -2, 0, 0, 2, 2, -4, 0, 0, 0, 2 ], 
      [ 1, 1, 2, -2, -2, -2, -2, 0, 0, 0, 4, 0, 0, 2 ], 
      [ 1, 1, 2, -2, -2, 2, 2, 0, 0, 0, -4, 0, 0, 2 ], 
      [ 1, 1, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 
          12, 12, 12, 12 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 6, 6, 5, 5, 8, 8, 7, 7, 9, 9, 9, 9, 10, 10, 
          10, 10, 12, 12, 12, 12, 11, 11, 11, 11 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 6, 5, 6, 9, 9, 9, 9, 7, 7, 8, 8, 10, 10, 10, 10, 11, 11, 12, 
          12, 11, 11, 12, 12 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 6, 5, 6, 5, 9, 9, 9, 9, 8, 8, 7, 7, 10, 
          10, 10, 10, 12, 12, 11, 11, 12, 12, 11, 11 ], 
      [ 3, 3, 4, 4, 0, 1, 2, 2, 10, 10, 10, 10, 7, 8, 7, 8, 9, 9, 9, 9, 5, 5, 6, 6, 11, 12, 11, 
          12, 11, 12, 11, 12 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 10, 10, 10, 10, 8, 7, 8, 7, 9, 9, 9, 9, 
          6, 6, 5, 5, 12, 11, 12, 11, 12, 11, 12, 11 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 10, 10, 10, 10, 9, 9, 9, 9, 7, 8, 7, 8, 5, 6, 5, 6, 11, 12, 12, 
          11, 12, 11, 11, 12 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 10, 10, 10, 10, 9, 9, 9, 9, 8, 7, 8, 7, 
          6, 5, 6, 5, 12, 11, 11, 12, 11, 12, 12, 11 ], 
      [ 5, 6, 5, 6, 10, 10, 10, 10, 0, 2, 2, 1, 11, 11, 12, 12, 11, 11, 12, 12, 3, 4, 4, 3, 7, 7, 
          9, 9, 9, 9, 8, 8 ], [ 5, 6, 6, 5, 10, 10, 10, 10, 2, 0, 1, 2, 11, 11, 12, 12, 12, 12, 
          11, 11, 4, 3, 3, 4, 9, 9, 7, 7, 8, 8, 9, 9 ], 
      [ 6, 5, 5, 6, 10, 10, 10, 10, 2, 1, 0, 2, 12, 12, 11, 11, 11, 11, 12, 12, 4, 3, 3, 4, 9, 9, 
          8, 8, 7, 7, 9, 9 ], [ 6, 5, 6, 5, 10, 10, 10, 10, 1, 2, 2, 0, 12, 12, 11, 11, 12, 12, 
          11, 11, 3, 4, 4, 3, 8, 8, 9, 9, 9, 9, 7, 7 ], 
      [ 7, 8, 9, 9, 7, 8, 9, 9, 12, 12, 11, 11, 0, 3, 3, 1, 2, 4, 4, 2, 12, 12, 11, 11, 6, 10, 6, 
          10, 10, 5, 10, 5 ], [ 7, 8, 9, 9, 8, 7, 9, 9, 12, 12, 11, 11, 3, 0, 1, 3, 4, 2, 2, 4, 
          11, 11, 12, 12, 10, 6, 10, 6, 5, 10, 5, 10 ], 
      [ 8, 7, 9, 9, 7, 8, 9, 9, 11, 11, 12, 12, 3, 1, 0, 3, 4, 2, 2, 4, 12, 12, 11, 11, 10, 5, 10, 
          5, 6, 10, 6, 10 ], [ 8, 7, 9, 9, 8, 7, 9, 9, 11, 11, 12, 12, 1, 3, 3, 0, 2, 4, 4, 2, 11, 
          11, 12, 12, 5, 10, 5, 10, 10, 6, 10, 6 ], 
      [ 9, 9, 7, 8, 9, 9, 7, 8, 12, 11, 12, 11, 2, 4, 4, 2, 0, 3, 3, 1, 12, 11, 12, 11, 6, 10, 5, 
          10, 10, 6, 10, 5 ], [ 9, 9, 7, 8, 9, 9, 8, 7, 12, 11, 12, 11, 4, 2, 2, 4, 3, 0, 1, 3, 
          11, 12, 11, 12, 10, 6, 10, 5, 6, 10, 5, 10 ], 
      [ 9, 9, 8, 7, 9, 9, 7, 8, 11, 12, 11, 12, 4, 2, 2, 4, 3, 1, 0, 3, 12, 11, 12, 11, 10, 5, 10, 
          6, 5, 10, 6, 10 ], [ 9, 9, 8, 7, 9, 9, 8, 7, 11, 12, 11, 12, 2, 4, 4, 2, 1, 3, 3, 0, 11, 
          12, 11, 12, 5, 10, 6, 10, 10, 5, 10, 6 ], 
      [ 10, 10, 10, 10, 5, 6, 5, 6, 3, 4, 4, 3, 11, 12, 11, 12, 11, 12, 11, 12, 0, 2, 2, 1, 7, 8, 
          9, 9, 9, 9, 7, 8 ], [ 10, 10, 10, 10, 5, 6, 6, 5, 4, 3, 3, 4, 11, 12, 11, 12, 12, 11, 
          12, 11, 2, 0, 1, 2, 9, 9, 7, 8, 7, 8, 9, 9 ], 
      [ 10, 10, 10, 10, 6, 5, 5, 6, 4, 3, 3, 4, 12, 11, 12, 11, 11, 12, 11, 12, 2, 1, 0, 2, 9, 9, 
          8, 7, 8, 7, 9, 9 ], [ 10, 10, 10, 10, 6, 5, 6, 5, 3, 4, 4, 3, 12, 11, 12, 11, 12, 11, 
          12, 11, 1, 2, 2, 0, 8, 7, 9, 9, 9, 9, 8, 7 ], 
      [ 12, 11, 12, 11, 12, 11, 12, 11, 7, 9, 9, 8, 6, 10, 10, 5, 6, 10, 10, 5, 7, 9, 9, 8, 0, 3, 
          2, 4, 4, 2, 3, 1 ], [ 12, 11, 12, 11, 11, 12, 11, 12, 7, 9, 9, 8, 10, 6, 5, 10, 10, 6, 
          5, 10, 8, 9, 9, 7, 3, 0, 4, 2, 2, 4, 1, 3 ], 
      [ 12, 11, 11, 12, 12, 11, 11, 12, 9, 7, 8, 9, 6, 10, 10, 5, 5, 10, 10, 6, 9, 7, 8, 9, 2, 4, 
          0, 3, 3, 1, 4, 2 ], [ 12, 11, 11, 12, 11, 12, 12, 11, 9, 7, 8, 9, 10, 6, 5, 10, 10, 5, 
          6, 10, 9, 8, 7, 9, 4, 2, 3, 0, 1, 3, 2, 4 ], 
      [ 11, 12, 12, 11, 12, 11, 11, 12, 9, 8, 7, 9, 10, 5, 6, 10, 10, 6, 5, 10, 9, 7, 8, 9, 4, 2, 
          3, 1, 0, 3, 2, 4 ], [ 11, 12, 12, 11, 11, 12, 12, 11, 9, 8, 7, 9, 5, 10, 10, 6, 6, 10, 
          10, 5, 9, 8, 7, 9, 2, 4, 1, 3, 3, 0, 4, 2 ], 
      [ 11, 12, 11, 12, 12, 11, 12, 11, 8, 9, 9, 7, 10, 5, 6, 10, 10, 5, 6, 10, 7, 9, 9, 8, 3, 1, 
          4, 2, 2, 4, 0, 3 ], [ 11, 12, 11, 12, 11, 12, 11, 12, 8, 9, 9, 7, 5, 10, 10, 6, 5, 10, 
          10, 6, 8, 9, 9, 7, 1, 3, 2, 4, 4, 2, 3, 0 ] ] )