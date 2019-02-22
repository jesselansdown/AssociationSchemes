rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 11, 11, 
          10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 9, 8, 9, 6, 7, 6, 7, 12, 12, 13, 13, 12, 12, 13, 13, 10, 10, 
          11, 11, 10, 10, 11, 11 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6, 13, 13, 12, 12, 13, 13, 12, 12, 11, 11, 
          10, 10, 11, 11, 10, 10 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 8, 9, 8, 6, 7, 6, 7, 12, 12, 13, 13, 12, 12, 13, 13, 10, 10, 
          11, 11, 10, 10, 11, 11 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6, 13, 13, 12, 12, 13, 13, 12, 12, 11, 11, 
          10, 10, 11, 11, 10, 10 ], 
      [ 7, 6, 7, 6, 9, 8, 8, 9, 0, 2, 3, 1, 4, 5, 5, 4, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 7, 6, 7, 6, 8, 9, 9, 8, 2, 0, 1, 3, 5, 4, 4, 5, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 6, 7, 6, 7, 9, 8, 8, 9, 3, 1, 0, 2, 5, 4, 4, 5, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 6, 7, 6, 7, 8, 9, 9, 8, 1, 3, 2, 0, 4, 5, 5, 4, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 9, 8, 8, 9, 7, 6, 7, 6, 4, 5, 5, 4, 0, 3, 2, 1, 11, 11, 10, 10, 11, 11, 10, 10, 12, 12, 
          13, 13, 12, 12, 13, 13 ], 
      [ 9, 8, 8, 9, 6, 7, 6, 7, 5, 4, 4, 5, 3, 0, 1, 2, 10, 10, 11, 11, 10, 10, 11, 11, 13, 13, 
          12, 12, 13, 13, 12, 12 ], 
      [ 8, 9, 9, 8, 7, 6, 7, 6, 5, 4, 4, 5, 2, 1, 0, 3, 11, 11, 10, 10, 11, 11, 10, 10, 12, 12, 
          13, 13, 12, 12, 13, 13 ], 
      [ 8, 9, 9, 8, 6, 7, 6, 7, 4, 5, 5, 4, 1, 2, 3, 0, 10, 10, 11, 11, 10, 10, 11, 11, 13, 13, 
          12, 12, 13, 13, 12, 12 ], 
      [ 10, 11, 10, 11, 12, 13, 12, 13, 12, 12, 13, 13, 11, 10, 11, 10, 0, 2, 8, 9, 8, 9, 1, 3, 4, 
          5, 6, 6, 7, 7, 4, 5 ], [ 10, 11, 10, 11, 12, 13, 12, 13, 12, 12, 13, 13, 11, 10, 11, 10, 
          2, 0, 9, 8, 9, 8, 3, 1, 5, 4, 6, 6, 7, 7, 5, 4 ], 
      [ 10, 11, 10, 11, 13, 12, 13, 12, 12, 12, 13, 13, 10, 11, 10, 11, 9, 8, 0, 2, 3, 1, 8, 9, 6, 
          6, 4, 5, 4, 5, 7, 7 ], [ 10, 11, 10, 11, 13, 12, 13, 12, 12, 12, 13, 13, 10, 11, 10, 11, 
          8, 9, 2, 0, 1, 3, 9, 8, 6, 6, 5, 4, 5, 4, 7, 7 ], 
      [ 11, 10, 11, 10, 12, 13, 12, 13, 13, 13, 12, 12, 11, 10, 11, 10, 9, 8, 3, 1, 0, 2, 8, 9, 7, 
          7, 5, 4, 5, 4, 6, 6 ], [ 11, 10, 11, 10, 12, 13, 12, 13, 13, 13, 12, 12, 11, 10, 11, 10, 
          8, 9, 1, 3, 2, 0, 9, 8, 7, 7, 4, 5, 4, 5, 6, 6 ], 
      [ 11, 10, 11, 10, 13, 12, 13, 12, 13, 13, 12, 12, 10, 11, 10, 11, 1, 3, 9, 8, 9, 8, 0, 2, 4, 
          5, 7, 7, 6, 6, 4, 5 ], [ 11, 10, 11, 10, 13, 12, 13, 12, 13, 13, 12, 12, 10, 11, 10, 11, 
          3, 1, 8, 9, 8, 9, 2, 0, 5, 4, 7, 7, 6, 6, 5, 4 ], 
      [ 12, 13, 12, 13, 10, 11, 10, 11, 11, 11, 10, 10, 12, 13, 12, 13, 4, 5, 7, 7, 6, 6, 4, 5, 0, 
          2, 8, 9, 9, 8, 1, 3 ], [ 12, 13, 12, 13, 10, 11, 10, 11, 11, 11, 10, 10, 12, 13, 12, 13, 
          5, 4, 7, 7, 6, 6, 5, 4, 2, 0, 9, 8, 8, 9, 3, 1 ], 
      [ 12, 13, 12, 13, 11, 10, 11, 10, 11, 11, 10, 10, 13, 12, 13, 12, 7, 7, 4, 5, 5, 4, 6, 6, 9, 
          8, 0, 2, 1, 3, 8, 9 ], [ 12, 13, 12, 13, 11, 10, 11, 10, 11, 11, 10, 10, 13, 12, 13, 12, 
          7, 7, 5, 4, 4, 5, 6, 6, 8, 9, 2, 0, 3, 1, 9, 8 ], 
      [ 13, 12, 13, 12, 10, 11, 10, 11, 10, 10, 11, 11, 12, 13, 12, 13, 6, 6, 4, 5, 5, 4, 7, 7, 8, 
          9, 1, 3, 0, 2, 9, 8 ], [ 13, 12, 13, 12, 10, 11, 10, 11, 10, 10, 11, 11, 12, 13, 12, 13, 
          6, 6, 5, 4, 4, 5, 7, 7, 9, 8, 3, 1, 2, 0, 8, 9 ], 
      [ 13, 12, 13, 12, 11, 10, 11, 10, 10, 10, 11, 11, 13, 12, 13, 12, 4, 5, 6, 6, 7, 7, 4, 5, 1, 
          3, 9, 8, 8, 9, 0, 2 ], [ 13, 12, 13, 12, 11, 10, 11, 10, 10, 10, 11, 11, 13, 12, 13, 12, 
          5, 4, 6, 6, 7, 7, 5, 4, 3, 1, 8, 9, 9, 8, 2, 0 ] ] )