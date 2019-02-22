rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 0, 0, 4, 0, 0, 0, -4, -4, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 0, 0, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 6, 6, 9, 9, 7, 7, 8, 8, 0, 1, 4, 4, 5, 5, 2, 3, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 6, 6, 9, 9, 7, 7, 8, 8, 1, 0, 4, 4, 5, 5, 3, 2, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 7, 7, 8, 8, 6, 6, 9, 9, 4, 4, 0, 1, 2, 3, 5, 5, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 7, 7, 8, 8, 6, 6, 9, 9, 4, 4, 1, 0, 3, 2, 5, 5, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 9, 9, 6, 6, 8, 8, 7, 7, 5, 5, 3, 2, 0, 1, 4, 4, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 9, 9, 6, 6, 8, 8, 7, 7, 5, 5, 2, 3, 1, 0, 4, 4, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 7, 7, 9, 9, 6, 6, 3, 2, 5, 5, 4, 4, 0, 1, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 7, 7, 9, 9, 6, 6, 2, 3, 5, 5, 4, 4, 1, 0, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 10, 10, 13, 13, 10, 10, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 0, 1, 4, 4, 8, 8, 9, 9, 6, 
          6, 7, 7, 2, 3, 5, 5 ], [ 10, 10, 13, 13, 10, 10, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 
          1, 0, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 3, 2, 5, 5 ], 
      [ 10, 10, 13, 13, 10, 10, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 4, 4, 0, 1, 9, 9, 8, 8, 7, 
          7, 6, 6, 5, 5, 2, 3 ], [ 10, 10, 13, 13, 10, 10, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 
          4, 4, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 3, 2 ], 
      [ 11, 11, 12, 12, 11, 11, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10, 9, 9, 8, 8, 0, 1, 4, 4, 5, 
          5, 2, 3, 6, 6, 7, 7 ], [ 11, 11, 12, 12, 11, 11, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10, 
          9, 9, 8, 8, 1, 0, 4, 4, 5, 5, 3, 2, 6, 6, 7, 7 ], 
      [ 11, 11, 12, 12, 11, 11, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10, 8, 8, 9, 9, 4, 4, 0, 1, 2, 
          3, 5, 5, 7, 7, 6, 6 ], [ 11, 11, 12, 12, 11, 11, 12, 12, 13, 13, 13, 13, 10, 10, 10, 10, 
          8, 8, 9, 9, 4, 4, 1, 0, 3, 2, 5, 5, 7, 7, 6, 6 ], 
      [ 13, 13, 10, 10, 13, 13, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 6, 6, 7, 7, 5, 5, 3, 2, 0, 
          1, 4, 4, 9, 9, 8, 8 ], [ 13, 13, 10, 10, 13, 13, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 
          6, 6, 7, 7, 5, 5, 2, 3, 1, 0, 4, 4, 9, 9, 8, 8 ], 
      [ 13, 13, 10, 10, 13, 13, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 7, 7, 6, 6, 3, 2, 5, 5, 4, 
          4, 0, 1, 8, 8, 9, 9 ], [ 13, 13, 10, 10, 13, 13, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 
          7, 7, 6, 6, 2, 3, 5, 5, 4, 4, 1, 0, 8, 8, 9, 9 ], 
      [ 12, 12, 11, 11, 12, 12, 11, 11, 10, 10, 10, 10, 13, 13, 13, 13, 3, 2, 5, 5, 6, 6, 7, 7, 8, 
          8, 9, 9, 0, 1, 4, 4 ], [ 12, 12, 11, 11, 12, 12, 11, 11, 10, 10, 10, 10, 13, 13, 13, 13, 
          2, 3, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 1, 0, 4, 4 ], 
      [ 12, 12, 11, 11, 12, 12, 11, 11, 10, 10, 10, 10, 13, 13, 13, 13, 5, 5, 3, 2, 7, 7, 6, 6, 9, 
          9, 8, 8, 4, 4, 0, 1 ], [ 12, 12, 11, 11, 12, 12, 11, 11, 10, 10, 10, 10, 13, 13, 13, 13, 
          5, 5, 2, 3, 7, 7, 6, 6, 9, 9, 8, 8, 4, 4, 1, 0 ] ] )