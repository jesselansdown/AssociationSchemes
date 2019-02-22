rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 4, -4, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 4, -4, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, -4, -4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -4, 4, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 8, 8, 9, 9, 9, 9, 11, 11, 11, 11, 
          10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 8, 8, 8, 8, 9, 9, 9, 9, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 9, 9, 9, 8, 8, 8, 8, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 9, 9, 9, 9, 8, 8, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 9, 9, 9, 9, 8, 8, 8, 8, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 9, 9, 9, 9, 8, 8, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 0, 1, 2, 3, 4, 5, 6, 7, 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 
          13, 13, 12, 12, 13, 13 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 1, 0, 3, 2, 5, 4, 7, 6, 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 
          12, 12, 13, 13, 12, 12 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 2, 3, 0, 1, 6, 7, 4, 5, 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 
          13, 13, 12, 12, 13, 13 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 3, 2, 1, 0, 7, 6, 5, 4, 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 
          12, 12, 13, 13, 12, 12 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 5, 4, 7, 6, 0, 1, 2, 3, 12, 12, 13, 13, 12, 12, 13, 13, 11, 11, 
          10, 10, 11, 11, 10, 10 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 4, 5, 6, 7, 1, 0, 3, 2, 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 
          11, 11, 10, 10, 11, 11 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 7, 6, 5, 4, 2, 3, 0, 1, 12, 12, 13, 13, 12, 12, 13, 13, 11, 11, 
          10, 10, 11, 11, 10, 10 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 6, 7, 4, 5, 3, 2, 1, 0, 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 
          11, 11, 10, 10, 11, 11 ], 
      [ 10, 11, 10, 11, 12, 13, 12, 13, 10, 11, 10, 11, 12, 13, 12, 13, 0, 2, 8, 8, 8, 8, 1, 3, 4, 
          6, 9, 9, 9, 9, 5, 7 ], [ 10, 11, 10, 11, 12, 13, 12, 13, 10, 11, 10, 11, 12, 13, 12, 13, 
          2, 0, 8, 8, 8, 8, 3, 1, 6, 4, 9, 9, 9, 9, 7, 5 ], 
      [ 10, 11, 10, 11, 12, 13, 12, 13, 11, 10, 11, 10, 13, 12, 13, 12, 8, 8, 0, 2, 1, 3, 8, 8, 9, 
          9, 4, 6, 5, 7, 9, 9 ], [ 10, 11, 10, 11, 12, 13, 12, 13, 11, 10, 11, 10, 13, 12, 13, 12, 
          8, 8, 2, 0, 3, 1, 8, 8, 9, 9, 6, 4, 7, 5, 9, 9 ], 
      [ 11, 10, 11, 10, 13, 12, 13, 12, 10, 11, 10, 11, 12, 13, 12, 13, 8, 8, 1, 3, 0, 2, 8, 8, 9, 
          9, 5, 7, 4, 6, 9, 9 ], [ 11, 10, 11, 10, 13, 12, 13, 12, 10, 11, 10, 11, 12, 13, 12, 13, 
          8, 8, 3, 1, 2, 0, 8, 8, 9, 9, 7, 5, 6, 4, 9, 9 ], 
      [ 11, 10, 11, 10, 13, 12, 13, 12, 11, 10, 11, 10, 13, 12, 13, 12, 1, 3, 8, 8, 8, 8, 0, 2, 5, 
          7, 9, 9, 9, 9, 4, 6 ], [ 11, 10, 11, 10, 13, 12, 13, 12, 11, 10, 11, 10, 13, 12, 13, 12, 
          3, 1, 8, 8, 8, 8, 2, 0, 7, 5, 9, 9, 9, 9, 6, 4 ], 
      [ 12, 13, 12, 13, 11, 10, 11, 10, 12, 13, 12, 13, 11, 10, 11, 10, 5, 7, 9, 9, 9, 9, 4, 6, 0, 
          2, 8, 8, 8, 8, 1, 3 ], [ 12, 13, 12, 13, 11, 10, 11, 10, 12, 13, 12, 13, 11, 10, 11, 10, 
          7, 5, 9, 9, 9, 9, 6, 4, 2, 0, 8, 8, 8, 8, 3, 1 ], 
      [ 12, 13, 12, 13, 11, 10, 11, 10, 13, 12, 13, 12, 10, 11, 10, 11, 9, 9, 5, 7, 4, 6, 9, 9, 8, 
          8, 0, 2, 1, 3, 8, 8 ], [ 12, 13, 12, 13, 11, 10, 11, 10, 13, 12, 13, 12, 10, 11, 10, 11, 
          9, 9, 7, 5, 6, 4, 9, 9, 8, 8, 2, 0, 3, 1, 8, 8 ], 
      [ 13, 12, 13, 12, 10, 11, 10, 11, 12, 13, 12, 13, 11, 10, 11, 10, 9, 9, 4, 6, 5, 7, 9, 9, 8, 
          8, 1, 3, 0, 2, 8, 8 ], [ 13, 12, 13, 12, 10, 11, 10, 11, 12, 13, 12, 13, 11, 10, 11, 10, 
          9, 9, 6, 4, 7, 5, 9, 9, 8, 8, 3, 1, 2, 0, 8, 8 ], 
      [ 13, 12, 13, 12, 10, 11, 10, 11, 13, 12, 13, 12, 10, 11, 10, 11, 4, 6, 9, 9, 9, 9, 5, 7, 1, 
          3, 8, 8, 8, 8, 0, 2 ], [ 13, 12, 13, 12, 10, 11, 10, 11, 13, 12, 13, 12, 10, 11, 10, 11, 
          6, 4, 9, 9, 9, 9, 7, 5, 3, 1, 8, 8, 8, 8, 2, 0 ] ] )