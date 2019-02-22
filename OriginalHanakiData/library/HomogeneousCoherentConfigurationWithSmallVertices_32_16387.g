rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 9, 9, 8, 8, 7, 7, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 8, 8, 7, 7, 6, 6, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 9, 6, 8, 7, 9, 6, 8, 10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 
          12, 12, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 7, 8, 6, 9, 7, 8, 6, 10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 
          12, 12, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 7, 6, 8, 9, 7, 6, 8, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 
          10, 10, 13, 13, 13, 13 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 7, 9, 8, 6, 7, 9, 8, 6, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 
          10, 10, 13, 13, 13, 13 ], 
      [ 7, 9, 7, 9, 6, 8, 8, 6, 0, 3, 4, 5, 2, 1, 5, 4, 11, 11, 13, 13, 10, 10, 12, 12, 11, 11, 
          13, 13, 10, 10, 12, 12 ], 
      [ 7, 9, 7, 9, 8, 6, 6, 8, 3, 0, 5, 4, 1, 2, 4, 5, 13, 13, 11, 11, 12, 12, 10, 10, 13, 13, 
          11, 11, 12, 12, 10, 10 ], 
      [ 6, 8, 8, 6, 7, 9, 7, 9, 4, 5, 0, 2, 5, 4, 3, 1, 13, 13, 11, 11, 10, 10, 12, 12, 13, 13, 
          11, 11, 10, 10, 12, 12 ], 
      [ 6, 8, 8, 6, 9, 7, 9, 7, 5, 4, 2, 0, 4, 5, 1, 3, 11, 11, 13, 13, 12, 12, 10, 10, 11, 11, 
          13, 13, 12, 12, 10, 10 ], 
      [ 9, 7, 9, 7, 6, 8, 8, 6, 2, 1, 5, 4, 0, 3, 4, 5, 13, 13, 11, 11, 12, 12, 10, 10, 13, 13, 
          11, 11, 12, 12, 10, 10 ], 
      [ 9, 7, 9, 7, 8, 6, 6, 8, 1, 2, 4, 5, 3, 0, 5, 4, 11, 11, 13, 13, 10, 10, 12, 12, 11, 11, 
          13, 13, 10, 10, 12, 12 ], 
      [ 8, 6, 6, 8, 7, 9, 7, 9, 5, 4, 3, 1, 4, 5, 0, 2, 11, 11, 13, 13, 12, 12, 10, 10, 11, 11, 
          13, 13, 12, 12, 10, 10 ], 
      [ 8, 6, 6, 8, 9, 7, 9, 7, 4, 5, 1, 3, 5, 4, 2, 0, 13, 13, 11, 11, 10, 10, 12, 12, 13, 13, 
          11, 11, 10, 10, 12, 12 ], 
      [ 11, 11, 13, 13, 11, 11, 13, 13, 10, 12, 12, 10, 12, 10, 10, 12, 0, 1, 5, 5, 6, 8, 7, 9, 4, 
          4, 2, 3, 7, 9, 6, 8 ], [ 11, 11, 13, 13, 11, 11, 13, 13, 10, 12, 12, 10, 12, 10, 10, 12, 
          1, 0, 5, 5, 8, 6, 9, 7, 4, 4, 3, 2, 9, 7, 8, 6 ], 
      [ 11, 11, 13, 13, 11, 11, 13, 13, 12, 10, 10, 12, 10, 12, 12, 10, 5, 5, 0, 1, 7, 9, 6, 8, 2, 
          3, 4, 4, 8, 6, 9, 7 ], [ 11, 11, 13, 13, 11, 11, 13, 13, 12, 10, 10, 12, 10, 12, 12, 10, 
          5, 5, 1, 0, 9, 7, 8, 6, 3, 2, 4, 4, 6, 8, 7, 9 ], 
      [ 10, 10, 12, 12, 12, 12, 10, 10, 11, 13, 11, 13, 13, 11, 13, 11, 7, 9, 6, 8, 0, 1, 4, 4, 8, 
          6, 7, 9, 5, 5, 3, 2 ], [ 10, 10, 12, 12, 12, 12, 10, 10, 11, 13, 11, 13, 13, 11, 13, 11, 
          9, 7, 8, 6, 1, 0, 4, 4, 6, 8, 9, 7, 5, 5, 2, 3 ], 
      [ 10, 10, 12, 12, 12, 12, 10, 10, 13, 11, 13, 11, 11, 13, 11, 13, 6, 8, 7, 9, 4, 4, 0, 1, 7, 
          9, 8, 6, 2, 3, 5, 5 ], [ 10, 10, 12, 12, 12, 12, 10, 10, 13, 11, 13, 11, 11, 13, 11, 13, 
          8, 6, 9, 7, 4, 4, 1, 0, 9, 7, 6, 8, 3, 2, 5, 5 ], 
      [ 13, 13, 11, 11, 13, 13, 11, 11, 10, 12, 12, 10, 12, 10, 10, 12, 4, 4, 2, 3, 9, 7, 6, 8, 0, 
          1, 5, 5, 8, 6, 7, 9 ], [ 13, 13, 11, 11, 13, 13, 11, 11, 10, 12, 12, 10, 12, 10, 10, 12, 
          4, 4, 3, 2, 7, 9, 8, 6, 1, 0, 5, 5, 6, 8, 9, 7 ], 
      [ 13, 13, 11, 11, 13, 13, 11, 11, 12, 10, 10, 12, 10, 12, 12, 10, 2, 3, 4, 4, 6, 8, 9, 7, 5, 
          5, 0, 1, 9, 7, 6, 8 ], [ 13, 13, 11, 11, 13, 13, 11, 11, 12, 10, 10, 12, 10, 12, 12, 10, 
          3, 2, 4, 4, 8, 6, 7, 9, 5, 5, 1, 0, 7, 9, 8, 6 ], 
      [ 12, 12, 10, 10, 10, 10, 12, 12, 11, 13, 11, 13, 13, 11, 13, 11, 6, 8, 9, 7, 5, 5, 2, 3, 9, 
          7, 8, 6, 0, 1, 4, 4 ], [ 12, 12, 10, 10, 10, 10, 12, 12, 11, 13, 11, 13, 13, 11, 13, 11, 
          8, 6, 7, 9, 5, 5, 3, 2, 7, 9, 6, 8, 1, 0, 4, 4 ], 
      [ 12, 12, 10, 10, 10, 10, 12, 12, 13, 11, 13, 11, 11, 13, 11, 13, 7, 9, 8, 6, 3, 2, 5, 5, 6, 
          8, 7, 9, 4, 4, 0, 1 ], [ 12, 12, 10, 10, 10, 10, 12, 12, 13, 11, 13, 11, 11, 13, 11, 13, 
          9, 7, 6, 8, 2, 3, 5, 5, 8, 6, 9, 7, 4, 4, 1, 0 ] ] )