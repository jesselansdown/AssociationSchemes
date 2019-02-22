rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 0, 0, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, -2, -2, 2, 2, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 2, 2, -2, -2, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 12, 12, 12, 12, 
          13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 12, 12, 11, 11, 13, 13, 10, 10, 
          12, 12, 11, 11, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 10, 10, 13, 13, 11, 11, 12, 12, 
          10, 10, 13, 13, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 11, 11, 13, 13, 10, 10, 12, 12, 11, 11, 
          13, 13, 10, 10, 12, 12 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 13, 13, 11, 11, 12, 12, 10, 10, 13, 13, 
          11, 11, 12, 12, 10, 10 ], 
      [ 6, 6, 9, 9, 7, 7, 8, 8, 0, 1, 4, 4, 5, 5, 2, 3, 11, 13, 11, 13, 10, 12, 10, 12, 11, 13, 
          11, 13, 10, 12, 10, 12 ], 
      [ 6, 6, 9, 9, 7, 7, 8, 8, 1, 0, 4, 4, 5, 5, 3, 2, 13, 11, 13, 11, 12, 10, 12, 10, 13, 11, 
          13, 11, 12, 10, 12, 10 ], 
      [ 7, 7, 8, 8, 6, 6, 9, 9, 4, 4, 0, 1, 2, 3, 5, 5, 11, 13, 13, 11, 10, 12, 12, 10, 13, 11, 
          11, 13, 12, 10, 10, 12 ], 
      [ 7, 7, 8, 8, 6, 6, 9, 9, 4, 4, 1, 0, 3, 2, 5, 5, 13, 11, 11, 13, 12, 10, 10, 12, 11, 13, 
          13, 11, 10, 12, 12, 10 ], 
      [ 9, 9, 6, 6, 8, 8, 7, 7, 5, 5, 2, 3, 0, 1, 4, 4, 10, 12, 12, 10, 11, 13, 13, 11, 12, 10, 
          10, 12, 13, 11, 11, 13 ], 
      [ 9, 9, 6, 6, 8, 8, 7, 7, 5, 5, 3, 2, 1, 0, 4, 4, 12, 10, 10, 12, 13, 11, 11, 13, 10, 12, 
          12, 10, 11, 13, 13, 11 ], 
      [ 8, 8, 7, 7, 9, 9, 6, 6, 2, 3, 5, 5, 4, 4, 0, 1, 10, 12, 10, 12, 11, 13, 11, 13, 10, 12, 
          10, 12, 11, 13, 11, 13 ], 
      [ 8, 8, 7, 7, 9, 9, 6, 6, 3, 2, 5, 5, 4, 4, 1, 0, 12, 10, 12, 10, 13, 11, 13, 11, 12, 10, 
          12, 10, 13, 11, 13, 11 ], 
      [ 11, 13, 10, 12, 11, 13, 10, 12, 10, 12, 10, 12, 11, 13, 11, 13, 0, 8, 4, 9, 2, 7, 5, 6, 9, 
          4, 8, 1, 6, 5, 7, 3 ], [ 11, 13, 10, 12, 11, 13, 10, 12, 12, 10, 12, 10, 13, 11, 13, 11, 
          9, 0, 8, 4, 6, 2, 7, 5, 4, 8, 1, 9, 5, 7, 3, 6 ], 
      [ 11, 13, 10, 12, 13, 11, 12, 10, 10, 12, 12, 10, 13, 11, 11, 13, 4, 9, 0, 8, 5, 6, 2, 7, 8, 
          1, 9, 4, 7, 3, 6, 5 ], [ 11, 13, 10, 12, 13, 11, 12, 10, 12, 10, 10, 12, 11, 13, 13, 11, 
          8, 4, 9, 0, 7, 5, 6, 2, 1, 9, 4, 8, 3, 6, 5, 7 ], 
      [ 10, 12, 11, 13, 10, 12, 11, 13, 11, 13, 11, 13, 10, 12, 10, 12, 2, 6, 5, 7, 0, 9, 4, 8, 7, 
          5, 6, 3, 8, 4, 9, 1 ], [ 10, 12, 11, 13, 10, 12, 11, 13, 13, 11, 13, 11, 12, 10, 12, 10, 
          7, 2, 6, 5, 8, 0, 9, 4, 5, 6, 3, 7, 4, 9, 1, 8 ], 
      [ 10, 12, 11, 13, 12, 10, 13, 11, 11, 13, 13, 11, 12, 10, 10, 12, 5, 7, 2, 6, 4, 8, 0, 9, 6, 
          3, 7, 5, 9, 1, 8, 4 ], [ 10, 12, 11, 13, 12, 10, 13, 11, 13, 11, 11, 13, 10, 12, 12, 10, 
          6, 5, 7, 2, 9, 4, 8, 0, 3, 7, 5, 6, 1, 8, 4, 9 ], 
      [ 13, 11, 12, 10, 11, 13, 10, 12, 10, 12, 12, 10, 13, 11, 11, 13, 8, 4, 9, 1, 7, 5, 6, 3, 0, 
          9, 4, 8, 2, 6, 5, 7 ], [ 13, 11, 12, 10, 11, 13, 10, 12, 12, 10, 10, 12, 11, 13, 13, 11, 
          4, 9, 1, 8, 5, 6, 3, 7, 8, 0, 9, 4, 7, 2, 6, 5 ], 
      [ 13, 11, 12, 10, 13, 11, 12, 10, 10, 12, 10, 12, 11, 13, 11, 13, 9, 1, 8, 4, 6, 3, 7, 5, 4, 
          8, 0, 9, 5, 7, 2, 6 ], [ 13, 11, 12, 10, 13, 11, 12, 10, 12, 10, 12, 10, 13, 11, 13, 11, 
          1, 8, 4, 9, 3, 7, 5, 6, 9, 4, 8, 0, 6, 5, 7, 2 ], 
      [ 12, 10, 13, 11, 10, 12, 11, 13, 11, 13, 13, 11, 12, 10, 10, 12, 6, 5, 7, 3, 9, 4, 8, 1, 2, 
          7, 5, 6, 0, 8, 4, 9 ], [ 12, 10, 13, 11, 10, 12, 11, 13, 13, 11, 11, 13, 10, 12, 12, 10, 
          5, 7, 3, 6, 4, 8, 1, 9, 6, 2, 7, 5, 9, 0, 8, 4 ], 
      [ 12, 10, 13, 11, 12, 10, 13, 11, 11, 13, 11, 13, 10, 12, 10, 12, 7, 3, 6, 5, 8, 1, 9, 4, 5, 
          6, 2, 7, 4, 9, 0, 8 ], [ 12, 10, 13, 11, 12, 10, 13, 11, 13, 11, 13, 11, 12, 10, 12, 10, 
          3, 6, 5, 7, 1, 9, 4, 8, 7, 5, 6, 2, 8, 4, 9, 0 ] ] )