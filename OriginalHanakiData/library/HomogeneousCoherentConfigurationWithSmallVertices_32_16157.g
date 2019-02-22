rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 2, 2, -2, -2, 4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 0, 1, 2, 3, 4, 4, 5, 5, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 1, 0, 3, 2, 4, 4, 5, 5, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 2, 3, 0, 1, 5, 5, 4, 4, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 3, 2, 1, 0, 5, 5, 4, 4, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 4, 4, 5, 5, 0, 1, 2, 3, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 4, 4, 5, 5, 1, 0, 3, 2, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 5, 5, 4, 4, 2, 3, 0, 1, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 5, 5, 4, 4, 3, 2, 1, 0, 13, 13, 13, 13, 12, 12, 12, 12, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 13, 13, 12, 12, 13, 13, 0, 1, 4, 4, 2, 3, 5, 5, 6, 
          6, 8, 8, 7, 7, 9, 9 ], [ 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 13, 13, 12, 12, 13, 13, 
          1, 0, 4, 4, 3, 2, 5, 5, 6, 6, 8, 8, 7, 7, 9, 9 ], 
      [ 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 13, 13, 12, 12, 13, 13, 4, 4, 0, 1, 5, 5, 2, 3, 8, 
          8, 6, 6, 9, 9, 7, 7 ], [ 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 13, 13, 12, 12, 13, 13, 
          4, 4, 1, 0, 5, 5, 3, 2, 8, 8, 6, 6, 9, 9, 7, 7 ], 
      [ 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 12, 12, 13, 13, 12, 12, 2, 3, 5, 5, 0, 1, 4, 4, 7, 
          7, 9, 9, 6, 6, 8, 8 ], [ 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 12, 12, 13, 13, 12, 12, 
          3, 2, 5, 5, 1, 0, 4, 4, 7, 7, 9, 9, 6, 6, 8, 8 ], 
      [ 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 12, 12, 13, 13, 12, 12, 5, 5, 2, 3, 4, 4, 0, 1, 9, 
          9, 7, 7, 8, 8, 6, 6 ], [ 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 12, 12, 13, 13, 12, 12, 
          5, 5, 3, 2, 4, 4, 1, 0, 9, 9, 7, 7, 8, 8, 6, 6 ], 
      [ 12, 12, 13, 13, 12, 12, 13, 13, 11, 11, 10, 10, 11, 11, 10, 10, 7, 7, 9, 9, 6, 6, 8, 8, 0, 
          1, 4, 4, 2, 3, 5, 5 ], [ 12, 12, 13, 13, 12, 12, 13, 13, 11, 11, 10, 10, 11, 11, 10, 10, 
          7, 7, 9, 9, 6, 6, 8, 8, 1, 0, 4, 4, 3, 2, 5, 5 ], 
      [ 12, 12, 13, 13, 12, 12, 13, 13, 11, 11, 10, 10, 11, 11, 10, 10, 9, 9, 7, 7, 8, 8, 6, 6, 4, 
          4, 0, 1, 5, 5, 2, 3 ], [ 12, 12, 13, 13, 12, 12, 13, 13, 11, 11, 10, 10, 11, 11, 10, 10, 
          9, 9, 7, 7, 8, 8, 6, 6, 4, 4, 1, 0, 5, 5, 3, 2 ], 
      [ 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 11, 11, 10, 10, 11, 11, 6, 6, 8, 8, 7, 7, 9, 9, 2, 
          3, 5, 5, 0, 1, 4, 4 ], [ 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 11, 11, 10, 10, 11, 11, 
          6, 6, 8, 8, 7, 7, 9, 9, 3, 2, 5, 5, 1, 0, 4, 4 ], 
      [ 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 11, 11, 10, 10, 11, 11, 8, 8, 6, 6, 9, 9, 7, 7, 5, 
          5, 2, 3, 4, 4, 0, 1 ], [ 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 11, 11, 10, 10, 11, 11, 
          8, 8, 6, 6, 9, 9, 7, 7, 5, 5, 3, 2, 4, 4, 1, 0 ] ] )