rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, 2, 2, 4, 4, -4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, -2, -2, 4, -4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 2, 2, -4, -4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, -4, 4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, 2, 2, -4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, 4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, 0, 0, -2, 2, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2, -2, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 
          13, 14, 14, 14, 14 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 8, 8, 9, 9, 10, 10, 11, 11, 
          12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 
          13, 13, 14, 14, 14, 14 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 
          13, 13, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 12, 12, 12, 12, 10, 10, 11, 11, 8, 8, 9, 9, 6, 6, 7, 7, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 12, 12, 12, 12, 10, 10, 11, 11, 8, 8, 9, 9, 7, 7, 6, 6, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 12, 12, 12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 6, 6, 7, 7, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 12, 12, 12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 6, 7, 6, 7, 12, 12, 12, 12, 0, 2, 1, 3, 13, 13, 13, 13, 14, 14, 14, 14, 4, 5, 4, 5, 8, 8, 
          9, 9, 10, 10, 11, 11 ], 
      [ 6, 7, 6, 7, 12, 12, 12, 12, 2, 0, 3, 1, 13, 13, 13, 13, 14, 14, 14, 14, 5, 4, 5, 4, 9, 9, 
          8, 8, 11, 11, 10, 10 ], 
      [ 7, 6, 7, 6, 12, 12, 12, 12, 1, 3, 0, 2, 13, 13, 13, 13, 14, 14, 14, 14, 4, 5, 4, 5, 8, 8, 
          9, 9, 10, 10, 11, 11 ], 
      [ 7, 6, 7, 6, 12, 12, 12, 12, 3, 1, 2, 0, 13, 13, 13, 13, 14, 14, 14, 14, 5, 4, 5, 4, 9, 9, 
          8, 8, 11, 11, 10, 10 ], [ 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 0, 1, 2, 3, 4, 4, 
          5, 5, 14, 14, 14, 14, 6, 7, 6, 7, 12, 12, 12, 12 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 1, 0, 3, 2, 4, 4, 5, 5, 14, 14, 14, 14, 7, 6, 
          7, 6, 12, 12, 12, 12 ], [ 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 13, 13, 2, 3, 0, 1, 5, 5, 
          4, 4, 14, 14, 14, 14, 6, 7, 6, 7, 12, 12, 12, 12 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 13, 13, 3, 2, 1, 0, 5, 5, 4, 4, 14, 14, 14, 14, 7, 6, 
          7, 6, 12, 12, 12, 12 ], [ 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 4, 4, 5, 5, 0, 1, 
          2, 3, 13, 13, 13, 13, 12, 12, 12, 12, 6, 7, 6, 7 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 4, 4, 5, 5, 1, 0, 3, 2, 13, 13, 13, 13, 12, 
          12, 12, 12, 7, 6, 7, 6 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 14, 14, 5, 5, 4, 4, 2, 3, 0, 1, 13, 13, 13, 13, 12, 
          12, 12, 12, 6, 7, 6, 7 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 14, 14, 5, 5, 4, 4, 3, 2, 1, 0, 13, 13, 13, 13, 12, 
          12, 12, 12, 7, 6, 7, 6 ], 
      [ 12, 12, 12, 12, 6, 7, 6, 7, 4, 5, 4, 5, 14, 14, 14, 14, 13, 13, 13, 13, 0, 2, 1, 3, 10, 
          10, 11, 11, 8, 8, 9, 9 ], 
      [ 12, 12, 12, 12, 6, 7, 6, 7, 5, 4, 5, 4, 14, 14, 14, 14, 13, 13, 13, 13, 2, 0, 3, 1, 11, 
          11, 10, 10, 9, 9, 8, 8 ], 
      [ 12, 12, 12, 12, 7, 6, 7, 6, 4, 5, 4, 5, 14, 14, 14, 14, 13, 13, 13, 13, 1, 3, 0, 2, 10, 
          10, 11, 11, 8, 8, 9, 9 ], 
      [ 12, 12, 12, 12, 7, 6, 7, 6, 5, 4, 5, 4, 14, 14, 14, 14, 13, 13, 13, 13, 3, 1, 2, 0, 11, 
          11, 10, 10, 9, 9, 8, 8 ], 
      [ 13, 13, 13, 13, 14, 14, 14, 14, 9, 8, 9, 8, 6, 7, 6, 7, 12, 12, 12, 12, 11, 10, 11, 10, 0, 
          1, 2, 3, 4, 4, 5, 5 ], [ 13, 13, 13, 13, 14, 14, 14, 14, 9, 8, 9, 8, 7, 6, 7, 6, 12, 12, 
          12, 12, 11, 10, 11, 10, 1, 0, 3, 2, 4, 4, 5, 5 ], 
      [ 13, 13, 13, 13, 14, 14, 14, 14, 8, 9, 8, 9, 6, 7, 6, 7, 12, 12, 12, 12, 10, 11, 10, 11, 2, 
          3, 0, 1, 5, 5, 4, 4 ], [ 13, 13, 13, 13, 14, 14, 14, 14, 8, 9, 8, 9, 7, 6, 7, 6, 12, 12, 
          12, 12, 10, 11, 10, 11, 3, 2, 1, 0, 5, 5, 4, 4 ], 
      [ 14, 14, 14, 14, 13, 13, 13, 13, 11, 10, 11, 10, 12, 12, 12, 12, 6, 7, 6, 7, 9, 8, 9, 8, 4, 
          4, 5, 5, 0, 1, 2, 3 ], [ 14, 14, 14, 14, 13, 13, 13, 13, 11, 10, 11, 10, 12, 12, 12, 12, 
          7, 6, 7, 6, 9, 8, 9, 8, 4, 4, 5, 5, 1, 0, 3, 2 ], 
      [ 14, 14, 14, 14, 13, 13, 13, 13, 10, 11, 10, 11, 12, 12, 12, 12, 6, 7, 6, 7, 8, 9, 8, 9, 5, 
          5, 4, 4, 2, 3, 0, 1 ], [ 14, 14, 14, 14, 13, 13, 13, 13, 10, 11, 10, 11, 12, 12, 12, 12, 
          7, 6, 7, 6, 8, 9, 8, 9, 5, 5, 4, 4, 3, 2, 1, 0 ] ] )