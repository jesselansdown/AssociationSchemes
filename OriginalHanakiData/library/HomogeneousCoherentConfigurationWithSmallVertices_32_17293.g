rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -4, -4, 1 ], 
      [ 2, 2, -2, -2, 4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, -2, -2, 2, 2, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 2, 2, -2, -2, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 
          14, 15, 15, 15, 15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 11, 11, 
          12, 12, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 7, 7, 6, 6, 12, 12, 13, 13, 10, 10, 11, 11, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 9, 9, 8, 8, 6, 6, 7, 7, 12, 12, 13, 13, 10, 10, 11, 11, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 7, 6, 7, 8, 9, 8, 9, 13, 13, 12, 12, 11, 11, 10, 10, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 6, 7, 6, 9, 8, 9, 8, 13, 13, 12, 12, 11, 11, 10, 10, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 8, 9, 8, 9, 7, 6, 7, 6, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 8, 9, 8, 6, 7, 6, 7, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 6, 7, 8, 9, 6, 7, 8, 9, 0, 4, 4, 1, 2, 5, 5, 3, 14, 14, 15, 15, 15, 15, 14, 14, 10, 10, 
          13, 13, 11, 11, 12, 12 ], 
      [ 6, 7, 8, 9, 7, 6, 9, 8, 4, 0, 1, 4, 5, 2, 3, 5, 14, 14, 15, 15, 15, 15, 14, 14, 13, 13, 
          10, 10, 12, 12, 11, 11 ], 
      [ 7, 6, 9, 8, 6, 7, 8, 9, 4, 1, 0, 4, 5, 3, 2, 5, 14, 14, 15, 15, 15, 15, 14, 14, 13, 13, 
          10, 10, 12, 12, 11, 11 ], 
      [ 7, 6, 9, 8, 7, 6, 9, 8, 1, 4, 4, 0, 3, 5, 5, 2, 14, 14, 15, 15, 15, 15, 14, 14, 10, 10, 
          13, 13, 11, 11, 12, 12 ], 
      [ 8, 9, 7, 6, 8, 9, 7, 6, 3, 5, 5, 2, 0, 4, 4, 1, 15, 15, 14, 14, 14, 14, 15, 15, 12, 12, 
          11, 11, 13, 13, 10, 10 ], 
      [ 8, 9, 7, 6, 9, 8, 6, 7, 5, 3, 2, 5, 4, 0, 1, 4, 15, 15, 14, 14, 14, 14, 15, 15, 11, 11, 
          12, 12, 10, 10, 13, 13 ], 
      [ 9, 8, 6, 7, 8, 9, 7, 6, 5, 2, 3, 5, 4, 1, 0, 4, 15, 15, 14, 14, 14, 14, 15, 15, 11, 11, 
          12, 12, 10, 10, 13, 13 ], 
      [ 9, 8, 6, 7, 9, 8, 6, 7, 2, 5, 5, 3, 1, 4, 4, 0, 15, 15, 14, 14, 14, 14, 15, 15, 12, 12, 
          11, 11, 13, 13, 10, 10 ], 
      [ 11, 11, 13, 13, 12, 12, 10, 10, 14, 14, 14, 14, 15, 15, 15, 15, 0, 1, 5, 5, 2, 3, 4, 4, 8, 
          9, 8, 9, 6, 7, 6, 7 ], [ 11, 11, 13, 13, 12, 12, 10, 10, 14, 14, 14, 14, 15, 15, 15, 15, 
          1, 0, 5, 5, 3, 2, 4, 4, 9, 8, 9, 8, 7, 6, 7, 6 ], 
      [ 10, 10, 12, 12, 13, 13, 11, 11, 15, 15, 15, 15, 14, 14, 14, 14, 5, 5, 0, 1, 4, 4, 2, 3, 6, 
          7, 7, 6, 8, 9, 9, 8 ], [ 10, 10, 12, 12, 13, 13, 11, 11, 15, 15, 15, 15, 14, 14, 14, 14, 
          5, 5, 1, 0, 4, 4, 3, 2, 7, 6, 6, 7, 9, 8, 8, 9 ], 
      [ 13, 13, 11, 11, 10, 10, 12, 12, 15, 15, 15, 15, 14, 14, 14, 14, 3, 2, 4, 4, 0, 1, 5, 5, 7, 
          6, 7, 6, 8, 9, 8, 9 ], [ 13, 13, 11, 11, 10, 10, 12, 12, 15, 15, 15, 15, 14, 14, 14, 14, 
          2, 3, 4, 4, 1, 0, 5, 5, 6, 7, 6, 7, 9, 8, 9, 8 ], 
      [ 12, 12, 10, 10, 11, 11, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15, 4, 4, 3, 2, 5, 5, 0, 1, 8, 
          9, 9, 8, 7, 6, 6, 7 ], [ 12, 12, 10, 10, 11, 11, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15, 
          4, 4, 2, 3, 5, 5, 1, 0, 9, 8, 8, 9, 6, 7, 7, 6 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 11, 12, 12, 11, 13, 10, 10, 13, 8, 9, 6, 7, 7, 6, 8, 9, 0, 
          1, 4, 4, 5, 5, 3, 2 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 11, 12, 12, 11, 13, 10, 10, 13, 
          9, 8, 7, 6, 6, 7, 9, 8, 1, 0, 4, 4, 5, 5, 2, 3 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 12, 11, 11, 12, 10, 13, 13, 10, 8, 9, 7, 6, 7, 6, 9, 8, 4, 
          4, 0, 1, 3, 2, 5, 5 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 12, 11, 11, 12, 10, 13, 13, 10, 
          9, 8, 6, 7, 6, 7, 8, 9, 4, 4, 1, 0, 2, 3, 5, 5 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 10, 13, 13, 10, 12, 11, 11, 12, 6, 7, 8, 9, 8, 9, 7, 6, 5, 
          5, 2, 3, 0, 1, 4, 4 ], [ 15, 15, 14, 14, 15, 15, 14, 14, 10, 13, 13, 10, 12, 11, 11, 12, 
          7, 6, 9, 8, 9, 8, 6, 7, 5, 5, 3, 2, 1, 0, 4, 4 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 13, 10, 10, 13, 11, 12, 12, 11, 6, 7, 9, 8, 8, 9, 6, 7, 2, 
          3, 5, 5, 4, 4, 0, 1 ], [ 15, 15, 14, 14, 15, 15, 14, 14, 13, 10, 10, 13, 11, 12, 12, 11, 
          7, 6, 8, 9, 9, 8, 7, 6, 3, 2, 5, 5, 4, 4, 1, 0 ] ] )