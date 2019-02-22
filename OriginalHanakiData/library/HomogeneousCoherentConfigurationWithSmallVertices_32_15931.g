rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -2, 2, -2, 2, 2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 2, -2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2, 2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 2, -2, 2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 12, 12, 12, 12, 
          13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 
          12, 12, 11, 11, 11, 11 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 
          10, 10, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 12, 12, 11, 11, 13, 13, 10, 10, 
          12, 12, 11, 11, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 9, 9, 6, 6, 7, 7, 12, 12, 10, 10, 13, 13, 11, 11, 12, 12, 
          10, 10, 13, 13, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 10, 10, 12, 12, 13, 13, 11, 11, 10, 10, 
          12, 12, 13, 13, 11, 11 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 12, 12, 10, 10, 11, 11, 13, 13, 12, 12, 
          10, 10, 11, 11, 13, 13 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 0, 1, 2, 3, 4, 4, 5, 5, 11, 13, 11, 13, 10, 12, 10, 12, 11, 13, 
          11, 13, 10, 12, 10, 12 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 1, 0, 3, 2, 4, 4, 5, 5, 13, 11, 13, 11, 12, 10, 12, 10, 13, 11, 
          13, 11, 12, 10, 12, 10 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 2, 3, 0, 1, 5, 5, 4, 4, 13, 11, 13, 11, 10, 12, 10, 12, 13, 11, 
          13, 11, 10, 12, 10, 12 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 3, 2, 1, 0, 5, 5, 4, 4, 11, 13, 11, 13, 12, 10, 12, 10, 11, 13, 
          11, 13, 12, 10, 12, 10 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 0, 1, 2, 3, 11, 13, 13, 11, 10, 12, 12, 10, 13, 11, 
          11, 13, 12, 10, 10, 12 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 1, 0, 3, 2, 13, 11, 11, 13, 12, 10, 10, 12, 11, 13, 
          13, 11, 10, 12, 12, 10 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 2, 3, 0, 1, 13, 11, 11, 13, 10, 12, 12, 10, 11, 13, 
          13, 11, 12, 10, 10, 12 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 2, 1, 0, 11, 13, 13, 11, 12, 10, 10, 12, 13, 11, 
          11, 13, 10, 12, 12, 10 ], 
      [ 11, 13, 11, 13, 11, 13, 11, 13, 10, 12, 12, 10, 10, 12, 12, 10, 0, 3, 4, 5, 8, 9, 6, 7, 5, 
          4, 2, 1, 7, 6, 9, 8 ], [ 11, 13, 11, 13, 11, 13, 11, 13, 12, 10, 10, 12, 12, 10, 10, 12, 
          3, 0, 5, 4, 9, 8, 7, 6, 4, 5, 1, 2, 6, 7, 8, 9 ], 
      [ 11, 13, 11, 13, 13, 11, 13, 11, 10, 12, 12, 10, 12, 10, 10, 12, 4, 5, 0, 3, 6, 7, 8, 9, 2, 
          1, 5, 4, 9, 8, 7, 6 ], [ 11, 13, 11, 13, 13, 11, 13, 11, 12, 10, 10, 12, 10, 12, 12, 10, 
          5, 4, 3, 0, 7, 6, 9, 8, 1, 2, 4, 5, 8, 9, 6, 7 ], 
      [ 10, 12, 12, 10, 10, 12, 12, 10, 11, 13, 11, 13, 11, 13, 11, 13, 8, 9, 6, 7, 0, 2, 4, 5, 7, 
          6, 9, 8, 5, 4, 3, 1 ], [ 10, 12, 12, 10, 10, 12, 12, 10, 13, 11, 13, 11, 13, 11, 13, 11, 
          9, 8, 7, 6, 2, 0, 5, 4, 6, 7, 8, 9, 4, 5, 1, 3 ], 
      [ 10, 12, 12, 10, 12, 10, 10, 12, 11, 13, 11, 13, 13, 11, 13, 11, 6, 7, 8, 9, 4, 5, 0, 2, 9, 
          8, 7, 6, 3, 1, 5, 4 ], [ 10, 12, 12, 10, 12, 10, 10, 12, 13, 11, 13, 11, 11, 13, 11, 13, 
          7, 6, 9, 8, 5, 4, 2, 0, 8, 9, 6, 7, 1, 3, 4, 5 ], 
      [ 13, 11, 13, 11, 11, 13, 11, 13, 10, 12, 12, 10, 12, 10, 10, 12, 5, 4, 2, 1, 7, 6, 9, 8, 0, 
          3, 4, 5, 8, 9, 6, 7 ], [ 13, 11, 13, 11, 11, 13, 11, 13, 12, 10, 10, 12, 10, 12, 12, 10, 
          4, 5, 1, 2, 6, 7, 8, 9, 3, 0, 5, 4, 9, 8, 7, 6 ], 
      [ 13, 11, 13, 11, 13, 11, 13, 11, 10, 12, 12, 10, 10, 12, 12, 10, 2, 1, 5, 4, 9, 8, 7, 6, 4, 
          5, 0, 3, 6, 7, 8, 9 ], [ 13, 11, 13, 11, 13, 11, 13, 11, 12, 10, 10, 12, 12, 10, 10, 12, 
          1, 2, 4, 5, 8, 9, 6, 7, 5, 4, 3, 0, 7, 6, 9, 8 ], 
      [ 12, 10, 10, 12, 10, 12, 12, 10, 11, 13, 11, 13, 13, 11, 13, 11, 7, 6, 9, 8, 5, 4, 3, 1, 8, 
          9, 6, 7, 0, 2, 4, 5 ], [ 12, 10, 10, 12, 10, 12, 12, 10, 13, 11, 13, 11, 11, 13, 11, 13, 
          6, 7, 8, 9, 4, 5, 1, 3, 9, 8, 7, 6, 2, 0, 5, 4 ], 
      [ 12, 10, 10, 12, 12, 10, 10, 12, 11, 13, 11, 13, 11, 13, 11, 13, 9, 8, 7, 6, 3, 1, 5, 4, 6, 
          7, 8, 9, 4, 5, 0, 2 ], [ 12, 10, 10, 12, 12, 10, 10, 12, 13, 11, 13, 11, 13, 11, 13, 11, 
          8, 9, 6, 7, 1, 3, 4, 5, 7, 6, 9, 8, 5, 4, 2, 0 ] ] )