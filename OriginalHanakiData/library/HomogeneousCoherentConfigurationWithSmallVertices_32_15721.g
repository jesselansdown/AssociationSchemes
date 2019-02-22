rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 4, -4, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 4, -4, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 2, 2, 0, 0, 0, 0, -8, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 9, 9, 9, 9, 8, 8, 8, 8, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 9, 9, 9, 9, 8, 8, 8, 8, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 9, 9, 9, 9, 8, 8, 8, 8, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 9, 9, 9, 9, 8, 8, 8, 8, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 0, 1, 2, 3, 4, 5, 6, 7, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 1, 0, 3, 2, 5, 4, 7, 6, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 2, 3, 0, 1, 6, 7, 4, 5, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 3, 2, 1, 0, 7, 6, 5, 4, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 4, 5, 6, 7, 0, 1, 2, 3, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 5, 4, 7, 6, 1, 0, 3, 2, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 6, 7, 4, 5, 2, 3, 0, 1, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 7, 6, 5, 4, 3, 2, 1, 0, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 10, 10, 10, 10, 13, 13, 13, 13, 11, 11, 11, 11, 12, 12, 12, 12, 0, 1, 2, 3, 8, 8, 8, 8, 9, 
          9, 9, 9, 4, 5, 6, 7 ], [ 10, 10, 10, 10, 13, 13, 13, 13, 11, 11, 11, 11, 12, 12, 12, 12, 
          1, 0, 3, 2, 8, 8, 8, 8, 9, 9, 9, 9, 5, 4, 7, 6 ], 
      [ 10, 10, 10, 10, 13, 13, 13, 13, 11, 11, 11, 11, 12, 12, 12, 12, 2, 3, 0, 1, 8, 8, 8, 8, 9, 
          9, 9, 9, 6, 7, 4, 5 ], [ 10, 10, 10, 10, 13, 13, 13, 13, 11, 11, 11, 11, 12, 12, 12, 12, 
          3, 2, 1, 0, 8, 8, 8, 8, 9, 9, 9, 9, 7, 6, 5, 4 ], 
      [ 11, 11, 11, 11, 12, 12, 12, 12, 10, 10, 10, 10, 13, 13, 13, 13, 8, 8, 8, 8, 0, 1, 2, 3, 4, 
          5, 6, 7, 9, 9, 9, 9 ], [ 11, 11, 11, 11, 12, 12, 12, 12, 10, 10, 10, 10, 13, 13, 13, 13, 
          8, 8, 8, 8, 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 9, 9 ], 
      [ 11, 11, 11, 11, 12, 12, 12, 12, 10, 10, 10, 10, 13, 13, 13, 13, 8, 8, 8, 8, 2, 3, 0, 1, 6, 
          7, 4, 5, 9, 9, 9, 9 ], [ 11, 11, 11, 11, 12, 12, 12, 12, 10, 10, 10, 10, 13, 13, 13, 13, 
          8, 8, 8, 8, 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 9, 9 ], 
      [ 13, 13, 13, 13, 10, 10, 10, 10, 12, 12, 12, 12, 11, 11, 11, 11, 9, 9, 9, 9, 4, 5, 6, 7, 0, 
          1, 2, 3, 8, 8, 8, 8 ], [ 13, 13, 13, 13, 10, 10, 10, 10, 12, 12, 12, 12, 11, 11, 11, 11, 
          9, 9, 9, 9, 5, 4, 7, 6, 1, 0, 3, 2, 8, 8, 8, 8 ], 
      [ 13, 13, 13, 13, 10, 10, 10, 10, 12, 12, 12, 12, 11, 11, 11, 11, 9, 9, 9, 9, 6, 7, 4, 5, 2, 
          3, 0, 1, 8, 8, 8, 8 ], [ 13, 13, 13, 13, 10, 10, 10, 10, 12, 12, 12, 12, 11, 11, 11, 11, 
          9, 9, 9, 9, 7, 6, 5, 4, 3, 2, 1, 0, 8, 8, 8, 8 ], 
      [ 12, 12, 12, 12, 11, 11, 11, 11, 13, 13, 13, 13, 10, 10, 10, 10, 4, 5, 6, 7, 9, 9, 9, 9, 8, 
          8, 8, 8, 0, 1, 2, 3 ], [ 12, 12, 12, 12, 11, 11, 11, 11, 13, 13, 13, 13, 10, 10, 10, 10, 
          5, 4, 7, 6, 9, 9, 9, 9, 8, 8, 8, 8, 1, 0, 3, 2 ], 
      [ 12, 12, 12, 12, 11, 11, 11, 11, 13, 13, 13, 13, 10, 10, 10, 10, 6, 7, 4, 5, 9, 9, 9, 9, 8, 
          8, 8, 8, 2, 3, 0, 1 ], [ 12, 12, 12, 12, 11, 11, 11, 11, 13, 13, 13, 13, 10, 10, 10, 10, 
          7, 6, 5, 4, 9, 9, 9, 9, 8, 8, 8, 8, 3, 2, 1, 0 ] ] )