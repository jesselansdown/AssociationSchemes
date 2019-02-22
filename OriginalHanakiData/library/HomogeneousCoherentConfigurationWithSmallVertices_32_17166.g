rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, -4, -4, 1 ], 
      [ 2, 2, -2, -2, 4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 0, 0, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 0, 0, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 
          14, 15, 15, 15, 15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 8, 8, 9, 9, 10, 10, 11, 11, 
          13, 13, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 12, 12, 13, 13, 9, 9, 8, 8, 11, 11, 10, 10, 6, 6, 7, 7, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 13, 13, 12, 12, 9, 9, 8, 8, 11, 11, 10, 10, 7, 7, 6, 6, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 7, 6, 7, 10, 10, 11, 11, 8, 8, 9, 9, 12, 13, 12, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 6, 7, 6, 10, 10, 11, 11, 8, 8, 9, 9, 13, 12, 13, 12, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 12, 13, 12, 13, 11, 11, 10, 10, 9, 9, 8, 8, 6, 7, 6, 7, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 13, 12, 13, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 6, 7, 6, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 6, 7, 13, 12, 6, 7, 13, 12, 0, 4, 4, 1, 14, 14, 15, 15, 14, 14, 15, 15, 3, 5, 5, 2, 8, 8, 
          10, 10, 9, 9, 11, 11 ], 
      [ 6, 7, 13, 12, 7, 6, 12, 13, 4, 0, 1, 4, 14, 14, 15, 15, 14, 14, 15, 15, 5, 3, 2, 5, 10, 
          10, 8, 8, 11, 11, 9, 9 ], 
      [ 7, 6, 12, 13, 6, 7, 13, 12, 4, 1, 0, 4, 14, 14, 15, 15, 14, 14, 15, 15, 5, 2, 3, 5, 10, 
          10, 8, 8, 11, 11, 9, 9 ], 
      [ 7, 6, 12, 13, 7, 6, 12, 13, 1, 4, 4, 0, 14, 14, 15, 15, 14, 14, 15, 15, 2, 5, 5, 3, 8, 8, 
          10, 10, 9, 9, 11, 11 ], [ 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 14, 14, 0, 1, 2, 3, 4, 4, 
          5, 5, 15, 15, 15, 15, 12, 13, 12, 13, 6, 7, 6, 7 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 14, 14, 1, 0, 3, 2, 4, 4, 5, 5, 15, 15, 15, 15, 13, 
          12, 13, 12, 7, 6, 7, 6 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 15, 15, 15, 15, 2, 3, 0, 1, 5, 5, 4, 4, 14, 14, 14, 14, 6, 7, 
          6, 7, 12, 13, 12, 13 ], [ 8, 8, 9, 9, 10, 10, 11, 11, 15, 15, 15, 15, 3, 2, 1, 0, 5, 5, 
          4, 4, 14, 14, 14, 14, 7, 6, 7, 6, 13, 12, 13, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 4, 4, 5, 5, 0, 1, 2, 3, 15, 15, 15, 15, 12, 
          13, 13, 12, 6, 7, 7, 6 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 4, 4, 5, 5, 1, 0, 3, 2, 15, 15, 15, 15, 13, 
          12, 12, 13, 7, 6, 6, 7 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 15, 15, 15, 15, 5, 5, 4, 4, 2, 3, 0, 1, 14, 14, 14, 14, 6, 7, 
          7, 6, 12, 13, 13, 12 ], [ 10, 10, 11, 11, 8, 8, 9, 9, 15, 15, 15, 15, 5, 5, 4, 4, 3, 2, 
          1, 0, 14, 14, 14, 14, 7, 6, 6, 7, 13, 12, 12, 13 ], 
      [ 13, 12, 6, 7, 13, 12, 6, 7, 3, 5, 5, 2, 15, 15, 14, 14, 15, 15, 14, 14, 0, 4, 4, 1, 9, 9, 
          11, 11, 8, 8, 10, 10 ], 
      [ 13, 12, 6, 7, 12, 13, 7, 6, 5, 3, 2, 5, 15, 15, 14, 14, 15, 15, 14, 14, 4, 0, 1, 4, 11, 
          11, 9, 9, 10, 10, 8, 8 ], 
      [ 12, 13, 7, 6, 13, 12, 6, 7, 5, 2, 3, 5, 15, 15, 14, 14, 15, 15, 14, 14, 4, 1, 0, 4, 11, 
          11, 9, 9, 10, 10, 8, 8 ], 
      [ 12, 13, 7, 6, 12, 13, 7, 6, 2, 5, 5, 3, 15, 15, 14, 14, 15, 15, 14, 14, 1, 4, 4, 0, 9, 9, 
          11, 11, 8, 8, 10, 10 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 9, 11, 11, 9, 13, 12, 6, 7, 13, 12, 6, 7, 8, 10, 10, 8, 0, 
          1, 4, 4, 3, 2, 5, 5 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 9, 11, 11, 9, 12, 13, 7, 6, 12, 
          13, 7, 6, 8, 10, 10, 8, 1, 0, 4, 4, 2, 3, 5, 5 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 11, 9, 9, 11, 13, 12, 6, 7, 12, 13, 7, 6, 10, 8, 8, 10, 4, 
          4, 0, 1, 5, 5, 3, 2 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 11, 9, 9, 11, 12, 13, 7, 6, 13, 
          12, 6, 7, 10, 8, 8, 10, 4, 4, 1, 0, 5, 5, 2, 3 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 8, 10, 10, 8, 6, 7, 13, 12, 6, 7, 13, 12, 9, 11, 11, 9, 3, 
          2, 5, 5, 0, 1, 4, 4 ], [ 15, 15, 14, 14, 15, 15, 14, 14, 8, 10, 10, 8, 7, 6, 12, 13, 7, 
          6, 12, 13, 9, 11, 11, 9, 2, 3, 5, 5, 1, 0, 4, 4 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 10, 8, 8, 10, 6, 7, 13, 12, 7, 6, 12, 13, 11, 9, 9, 11, 5, 
          5, 3, 2, 4, 4, 0, 1 ], [ 15, 15, 14, 14, 15, 15, 14, 14, 10, 8, 8, 10, 7, 6, 12, 13, 6, 
          7, 13, 12, 11, 9, 9, 11, 5, 5, 2, 3, 4, 4, 1, 0 ] ] )