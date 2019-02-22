rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 4, -4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, -4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, 2, 2, -4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, 4, -4, 1 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 
          14, 15, 15, 15, 15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 8, 8, 9, 9, 10, 10, 11, 11, 
          13, 13, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 14, 14, 14, 14, 10, 10, 11, 11, 8, 8, 9, 9, 15, 15, 15, 15, 6, 6, 
          7, 7, 12, 12, 13, 13 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 14, 14, 14, 14, 10, 10, 11, 11, 8, 8, 
          9, 9, 15, 15, 15, 15, 7, 7, 6, 6, 13, 13, 12, 12 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 14, 14, 14, 14, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 15, 15, 6, 6, 
          7, 7, 13, 13, 12, 12 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 14, 14, 14, 14, 11, 11, 10, 10, 9, 9, 
          8, 8, 15, 15, 15, 15, 7, 7, 6, 6, 12, 12, 13, 13 ], 
      [ 6, 7, 6, 7, 14, 14, 14, 14, 0, 2, 1, 3, 12, 13, 12, 13, 15, 15, 15, 15, 8, 9, 8, 9, 4, 5, 
          4, 5, 10, 11, 10, 11 ], 
      [ 6, 7, 6, 7, 14, 14, 14, 14, 2, 0, 3, 1, 13, 12, 13, 12, 15, 15, 15, 15, 9, 8, 9, 8, 5, 4, 
          5, 4, 11, 10, 11, 10 ], 
      [ 7, 6, 7, 6, 14, 14, 14, 14, 1, 3, 0, 2, 13, 12, 13, 12, 15, 15, 15, 15, 8, 9, 8, 9, 4, 5, 
          4, 5, 10, 11, 10, 11 ], 
      [ 7, 6, 7, 6, 14, 14, 14, 14, 3, 1, 2, 0, 12, 13, 12, 13, 15, 15, 15, 15, 9, 8, 9, 8, 5, 4, 
          5, 4, 11, 10, 11, 10 ], [ 9, 9, 8, 8, 11, 11, 10, 10, 13, 12, 12, 13, 0, 1, 3, 2, 4, 4, 
          5, 5, 7, 6, 6, 7, 15, 15, 15, 15, 14, 14, 14, 14 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 12, 13, 13, 12, 1, 0, 2, 3, 4, 4, 5, 5, 6, 7, 7, 6, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 13, 12, 12, 13, 3, 2, 0, 1, 5, 5, 4, 4, 6, 7, 7, 6, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 12, 13, 13, 12, 2, 3, 1, 0, 5, 5, 4, 4, 7, 6, 6, 7, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 15, 15, 4, 4, 5, 5, 0, 1, 2, 3, 14, 14, 14, 14, 12, 
          13, 13, 12, 6, 7, 7, 6 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 15, 15, 4, 4, 5, 5, 1, 0, 3, 2, 14, 14, 14, 14, 13, 
          12, 12, 13, 7, 6, 6, 7 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 15, 15, 15, 15, 5, 5, 4, 4, 2, 3, 0, 1, 14, 14, 14, 14, 13, 
          12, 12, 13, 6, 7, 7, 6 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 15, 15, 15, 15, 5, 5, 4, 4, 3, 2, 1, 0, 14, 14, 14, 14, 12, 
          13, 13, 12, 7, 6, 6, 7 ], 
      [ 13, 12, 12, 13, 15, 15, 15, 15, 9, 8, 9, 8, 7, 6, 6, 7, 14, 14, 14, 14, 0, 3, 1, 2, 11, 
          10, 11, 10, 4, 5, 4, 5 ], 
      [ 13, 12, 12, 13, 15, 15, 15, 15, 8, 9, 8, 9, 6, 7, 7, 6, 14, 14, 14, 14, 3, 0, 2, 1, 10, 
          11, 10, 11, 5, 4, 5, 4 ], 
      [ 12, 13, 13, 12, 15, 15, 15, 15, 9, 8, 9, 8, 6, 7, 7, 6, 14, 14, 14, 14, 1, 2, 0, 3, 11, 
          10, 11, 10, 4, 5, 4, 5 ], 
      [ 12, 13, 13, 12, 15, 15, 15, 15, 8, 9, 8, 9, 7, 6, 6, 7, 14, 14, 14, 14, 2, 1, 3, 0, 10, 
          11, 10, 11, 5, 4, 5, 4 ], 
      [ 14, 14, 14, 14, 6, 7, 6, 7, 4, 5, 4, 5, 15, 15, 15, 15, 13, 12, 12, 13, 10, 11, 10, 11, 0, 
          2, 1, 3, 8, 9, 8, 9 ], [ 14, 14, 14, 14, 6, 7, 6, 7, 5, 4, 5, 4, 15, 15, 15, 15, 12, 13, 
          13, 12, 11, 10, 11, 10, 2, 0, 3, 1, 9, 8, 9, 8 ], 
      [ 14, 14, 14, 14, 7, 6, 7, 6, 4, 5, 4, 5, 15, 15, 15, 15, 12, 13, 13, 12, 10, 11, 10, 11, 1, 
          3, 0, 2, 8, 9, 8, 9 ], [ 14, 14, 14, 14, 7, 6, 7, 6, 5, 4, 5, 4, 15, 15, 15, 15, 13, 12, 
          12, 13, 11, 10, 11, 10, 3, 1, 2, 0, 9, 8, 9, 8 ], 
      [ 15, 15, 15, 15, 13, 12, 12, 13, 11, 10, 11, 10, 14, 14, 14, 14, 6, 7, 6, 7, 4, 5, 4, 5, 9, 
          8, 9, 8, 0, 3, 1, 2 ], [ 15, 15, 15, 15, 13, 12, 12, 13, 10, 11, 10, 11, 14, 14, 14, 14, 
          7, 6, 7, 6, 5, 4, 5, 4, 8, 9, 8, 9, 3, 0, 2, 1 ], 
      [ 15, 15, 15, 15, 12, 13, 13, 12, 11, 10, 11, 10, 14, 14, 14, 14, 7, 6, 7, 6, 4, 5, 4, 5, 9, 
          8, 9, 8, 1, 2, 0, 3 ], [ 15, 15, 15, 15, 12, 13, 13, 12, 10, 11, 10, 11, 14, 14, 14, 14, 
          6, 7, 6, 7, 5, 4, 5, 4, 8, 9, 8, 9, 2, 1, 3, 0 ] ] )