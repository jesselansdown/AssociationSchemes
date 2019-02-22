rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, -2, -2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, 2, 2, -2, -2, -4, -4, 1 ], 
      [ 2, 2, 2, 2, -4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 2, -2, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 
          14, 15, 15, 15, 15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 9, 9, 8, 8, 10, 10, 11, 11, 
          13, 13, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 11, 11, 10, 10, 13, 13, 12, 12, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 10, 10, 11, 11, 12, 13, 12, 13, 6, 6, 7, 7, 8, 9, 8, 9, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 10, 10, 11, 11, 13, 12, 13, 12, 6, 6, 7, 7, 9, 8, 9, 8, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 11, 11, 10, 10, 13, 12, 13, 12, 7, 7, 6, 6, 8, 9, 8, 9, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 11, 11, 10, 10, 12, 13, 12, 13, 7, 7, 6, 6, 9, 8, 9, 8, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 6, 6, 7, 7, 11, 11, 10, 10, 0, 1, 2, 3, 14, 14, 14, 14, 5, 5, 4, 4, 15, 15, 15, 15, 8, 8, 
          9, 9, 12, 12, 13, 13 ], [ 6, 6, 7, 7, 11, 11, 10, 10, 1, 0, 3, 2, 14, 14, 14, 14, 5, 5, 
          4, 4, 15, 15, 15, 15, 9, 9, 8, 8, 13, 13, 12, 12 ], 
      [ 7, 7, 6, 6, 10, 10, 11, 11, 2, 3, 0, 1, 14, 14, 14, 14, 4, 4, 5, 5, 15, 15, 15, 15, 8, 8, 
          9, 9, 13, 13, 12, 12 ], [ 7, 7, 6, 6, 10, 10, 11, 11, 3, 2, 1, 0, 14, 14, 14, 14, 4, 4, 
          5, 5, 15, 15, 15, 15, 9, 9, 8, 8, 12, 12, 13, 13 ], 
      [ 8, 9, 8, 9, 13, 12, 12, 13, 15, 15, 15, 15, 0, 2, 3, 1, 14, 14, 14, 14, 5, 4, 4, 5, 10, 
          11, 10, 11, 6, 7, 6, 7 ], 
      [ 8, 9, 8, 9, 12, 13, 13, 12, 15, 15, 15, 15, 2, 0, 1, 3, 14, 14, 14, 14, 4, 5, 5, 4, 11, 
          10, 11, 10, 7, 6, 7, 6 ], 
      [ 9, 8, 9, 8, 13, 12, 12, 13, 15, 15, 15, 15, 3, 1, 0, 2, 14, 14, 14, 14, 4, 5, 5, 4, 11, 
          10, 11, 10, 7, 6, 7, 6 ], 
      [ 9, 8, 9, 8, 12, 13, 13, 12, 15, 15, 15, 15, 1, 3, 2, 0, 14, 14, 14, 14, 5, 4, 4, 5, 10, 
          11, 10, 11, 6, 7, 6, 7 ], 
      [ 11, 11, 10, 10, 6, 6, 7, 7, 5, 5, 4, 4, 15, 15, 15, 15, 0, 1, 2, 3, 14, 14, 14, 14, 12, 
          13, 13, 12, 9, 8, 8, 9 ], 
      [ 11, 11, 10, 10, 6, 6, 7, 7, 5, 5, 4, 4, 15, 15, 15, 15, 1, 0, 3, 2, 14, 14, 14, 14, 13, 
          12, 12, 13, 8, 9, 9, 8 ], 
      [ 10, 10, 11, 11, 7, 7, 6, 6, 4, 4, 5, 5, 15, 15, 15, 15, 2, 3, 0, 1, 14, 14, 14, 14, 13, 
          12, 12, 13, 9, 8, 8, 9 ], 
      [ 10, 10, 11, 11, 7, 7, 6, 6, 4, 4, 5, 5, 15, 15, 15, 15, 3, 2, 1, 0, 14, 14, 14, 14, 12, 
          13, 13, 12, 8, 9, 9, 8 ], 
      [ 13, 12, 12, 13, 8, 9, 8, 9, 14, 14, 14, 14, 5, 4, 4, 5, 15, 15, 15, 15, 0, 3, 2, 1, 7, 6, 
          7, 6, 11, 10, 11, 10 ], 
      [ 13, 12, 12, 13, 9, 8, 9, 8, 14, 14, 14, 14, 4, 5, 5, 4, 15, 15, 15, 15, 3, 0, 1, 2, 6, 7, 
          6, 7, 10, 11, 10, 11 ], 
      [ 12, 13, 13, 12, 8, 9, 8, 9, 14, 14, 14, 14, 4, 5, 5, 4, 15, 15, 15, 15, 2, 1, 0, 3, 6, 7, 
          6, 7, 10, 11, 10, 11 ], 
      [ 12, 13, 13, 12, 9, 8, 9, 8, 14, 14, 14, 14, 5, 4, 4, 5, 15, 15, 15, 15, 1, 2, 3, 0, 7, 6, 
          7, 6, 11, 10, 11, 10 ], 
      [ 15, 15, 15, 15, 14, 14, 14, 14, 8, 9, 8, 9, 11, 10, 10, 11, 13, 12, 12, 13, 7, 6, 6, 7, 0, 
          2, 1, 3, 5, 4, 5, 4 ], [ 15, 15, 15, 15, 14, 14, 14, 14, 8, 9, 8, 9, 10, 11, 11, 10, 12, 
          13, 13, 12, 6, 7, 7, 6, 2, 0, 3, 1, 4, 5, 4, 5 ], 
      [ 15, 15, 15, 15, 14, 14, 14, 14, 9, 8, 9, 8, 11, 10, 10, 11, 12, 13, 13, 12, 7, 6, 6, 7, 1, 
          3, 0, 2, 5, 4, 5, 4 ], [ 15, 15, 15, 15, 14, 14, 14, 14, 9, 8, 9, 8, 10, 11, 11, 10, 13, 
          12, 12, 13, 6, 7, 7, 6, 3, 1, 2, 0, 4, 5, 4, 5 ], 
      [ 14, 14, 14, 14, 15, 15, 15, 15, 13, 12, 12, 13, 6, 7, 7, 6, 9, 8, 9, 8, 10, 11, 11, 10, 5, 
          4, 5, 4, 0, 3, 1, 2 ], [ 14, 14, 14, 14, 15, 15, 15, 15, 13, 12, 12, 13, 7, 6, 6, 7, 8, 
          9, 8, 9, 11, 10, 10, 11, 4, 5, 4, 5, 3, 0, 2, 1 ], 
      [ 14, 14, 14, 14, 15, 15, 15, 15, 12, 13, 13, 12, 6, 7, 7, 6, 8, 9, 8, 9, 10, 11, 11, 10, 5, 
          4, 5, 4, 1, 2, 0, 3 ], [ 14, 14, 14, 14, 15, 15, 15, 15, 12, 13, 13, 12, 7, 6, 6, 7, 9, 
          8, 9, 8, 11, 10, 10, 11, 4, 5, 4, 5, 2, 1, 3, 0 ] ] )