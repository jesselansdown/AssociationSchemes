rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, -2, 2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, -2, 2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -2, 2, -2, 2, 2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 2, -2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2, 2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 11, 11, 11, 11, 
          10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 
          13, 13, 12, 12, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 
          12, 12, 13, 13, 12, 12 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 12, 12, 13, 13, 12, 12, 13, 13, 10, 10, 
          11, 11, 10, 10, 11, 11 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 13, 13, 12, 12, 13, 13, 12, 12, 11, 11, 
          10, 10, 11, 11, 10, 10 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 0, 1, 2, 3, 4, 4, 5, 5, 10, 11, 10, 11, 10, 11, 10, 11, 12, 13, 
          12, 13, 12, 13, 12, 13 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 1, 0, 3, 2, 4, 4, 5, 5, 11, 10, 11, 10, 11, 10, 11, 10, 13, 12, 
          13, 12, 13, 12, 13, 12 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 2, 3, 0, 1, 5, 5, 4, 4, 12, 13, 12, 13, 12, 13, 12, 13, 10, 11, 
          10, 11, 10, 11, 10, 11 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 3, 2, 1, 0, 5, 5, 4, 4, 13, 12, 13, 12, 13, 12, 13, 12, 11, 10, 
          11, 10, 11, 10, 11, 10 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 0, 1, 2, 3, 10, 11, 11, 10, 11, 10, 10, 11, 12, 13, 
          13, 12, 13, 12, 12, 13 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 1, 0, 3, 2, 11, 10, 10, 11, 10, 11, 11, 10, 13, 12, 
          12, 13, 12, 13, 13, 12 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 2, 3, 0, 1, 12, 13, 13, 12, 13, 12, 12, 13, 10, 11, 
          11, 10, 11, 10, 10, 11 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 2, 1, 0, 13, 12, 12, 13, 12, 13, 13, 12, 11, 10, 
          10, 11, 10, 11, 11, 10 ], 
      [ 11, 10, 13, 12, 11, 10, 13, 12, 11, 10, 13, 12, 11, 10, 13, 12, 0, 6, 8, 4, 4, 8, 6, 1, 2, 
          7, 9, 5, 5, 9, 7, 3 ], [ 11, 10, 13, 12, 11, 10, 13, 12, 10, 11, 12, 13, 10, 11, 12, 13, 
          6, 0, 4, 8, 8, 4, 1, 6, 7, 2, 5, 9, 9, 5, 3, 7 ], 
      [ 11, 10, 13, 12, 10, 11, 12, 13, 11, 10, 13, 12, 10, 11, 12, 13, 8, 4, 0, 6, 6, 1, 4, 8, 9, 
          5, 2, 7, 7, 3, 5, 9 ], [ 11, 10, 13, 12, 10, 11, 12, 13, 10, 11, 12, 13, 11, 10, 13, 12, 
          4, 8, 6, 0, 1, 6, 8, 4, 5, 9, 7, 2, 3, 7, 9, 5 ], 
      [ 10, 11, 12, 13, 11, 10, 13, 12, 11, 10, 13, 12, 10, 11, 12, 13, 4, 8, 6, 1, 0, 6, 8, 4, 5, 
          9, 7, 3, 2, 7, 9, 5 ], [ 10, 11, 12, 13, 11, 10, 13, 12, 10, 11, 12, 13, 11, 10, 13, 12, 
          8, 4, 1, 6, 6, 0, 4, 8, 9, 5, 3, 7, 7, 2, 5, 9 ], 
      [ 10, 11, 12, 13, 10, 11, 12, 13, 11, 10, 13, 12, 11, 10, 13, 12, 6, 1, 4, 8, 8, 4, 0, 6, 7, 
          3, 5, 9, 9, 5, 2, 7 ], [ 10, 11, 12, 13, 10, 11, 12, 13, 10, 11, 12, 13, 10, 11, 12, 13, 
          1, 6, 8, 4, 4, 8, 6, 0, 3, 7, 9, 5, 5, 9, 7, 2 ], 
      [ 13, 12, 11, 10, 13, 12, 11, 10, 13, 12, 11, 10, 13, 12, 11, 10, 2, 7, 9, 5, 5, 9, 7, 3, 0, 
          6, 8, 4, 4, 8, 6, 1 ], [ 13, 12, 11, 10, 13, 12, 11, 10, 12, 13, 10, 11, 12, 13, 10, 11, 
          7, 2, 5, 9, 9, 5, 3, 7, 6, 0, 4, 8, 8, 4, 1, 6 ], 
      [ 13, 12, 11, 10, 12, 13, 10, 11, 13, 12, 11, 10, 12, 13, 10, 11, 9, 5, 2, 7, 7, 3, 5, 9, 8, 
          4, 0, 6, 6, 1, 4, 8 ], [ 13, 12, 11, 10, 12, 13, 10, 11, 12, 13, 10, 11, 13, 12, 11, 10, 
          5, 9, 7, 2, 3, 7, 9, 5, 4, 8, 6, 0, 1, 6, 8, 4 ], 
      [ 12, 13, 10, 11, 13, 12, 11, 10, 13, 12, 11, 10, 12, 13, 10, 11, 5, 9, 7, 3, 2, 7, 9, 5, 4, 
          8, 6, 1, 0, 6, 8, 4 ], [ 12, 13, 10, 11, 13, 12, 11, 10, 12, 13, 10, 11, 13, 12, 11, 10, 
          9, 5, 3, 7, 7, 2, 5, 9, 8, 4, 1, 6, 6, 0, 4, 8 ], 
      [ 12, 13, 10, 11, 12, 13, 10, 11, 13, 12, 11, 10, 13, 12, 11, 10, 7, 3, 5, 9, 9, 5, 2, 7, 6, 
          1, 4, 8, 8, 4, 0, 6 ], [ 12, 13, 10, 11, 12, 13, 10, 11, 12, 13, 10, 11, 12, 13, 10, 11, 
          3, 7, 9, 5, 5, 9, 7, 2, 1, 6, 8, 4, 4, 8, 6, 0 ] ] )