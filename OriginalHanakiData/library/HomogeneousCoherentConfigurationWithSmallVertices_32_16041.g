rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, -4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, 4, -4, -4, -4, 1 ], 
      [ 2, 2, 2, 2, -4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2, -2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 10, 10, 10, 10, 11, 11, 11, 11, 6, 6, 7, 7, 8, 8, 9, 9, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 10, 10, 10, 10, 11, 11, 11, 11, 7, 7, 6, 6, 9, 9, 8, 8, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 10, 10, 10, 10, 11, 11, 11, 11, 6, 6, 7, 7, 9, 9, 8, 8, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 10, 10, 10, 10, 11, 11, 11, 11, 7, 7, 6, 6, 8, 8, 9, 9, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 6, 7, 6, 7, 10, 10, 10, 10, 0, 2, 1, 3, 12, 12, 12, 12, 4, 5, 4, 5, 13, 13, 13, 13, 8, 8, 
          9, 9, 11, 11, 11, 11 ], [ 6, 7, 6, 7, 10, 10, 10, 10, 2, 0, 3, 1, 12, 12, 12, 12, 5, 4, 
          5, 4, 13, 13, 13, 13, 9, 9, 8, 8, 11, 11, 11, 11 ], 
      [ 7, 6, 7, 6, 10, 10, 10, 10, 1, 3, 0, 2, 12, 12, 12, 12, 4, 5, 4, 5, 13, 13, 13, 13, 9, 9, 
          8, 8, 11, 11, 11, 11 ], [ 7, 6, 7, 6, 10, 10, 10, 10, 3, 1, 2, 0, 12, 12, 12, 12, 5, 4, 
          5, 4, 13, 13, 13, 13, 8, 8, 9, 9, 11, 11, 11, 11 ], 
      [ 9, 8, 8, 9, 11, 11, 11, 11, 13, 13, 13, 13, 0, 3, 1, 2, 12, 12, 12, 12, 4, 5, 4, 5, 10, 
          10, 10, 10, 6, 6, 7, 7 ], 
      [ 9, 8, 8, 9, 11, 11, 11, 11, 13, 13, 13, 13, 3, 0, 2, 1, 12, 12, 12, 12, 5, 4, 5, 4, 10, 
          10, 10, 10, 7, 7, 6, 6 ], 
      [ 8, 9, 9, 8, 11, 11, 11, 11, 13, 13, 13, 13, 1, 2, 0, 3, 12, 12, 12, 12, 4, 5, 4, 5, 10, 
          10, 10, 10, 7, 7, 6, 6 ], 
      [ 8, 9, 9, 8, 11, 11, 11, 11, 13, 13, 13, 13, 2, 1, 3, 0, 12, 12, 12, 12, 5, 4, 5, 4, 10, 
          10, 10, 10, 6, 6, 7, 7 ], 
      [ 10, 10, 10, 10, 6, 7, 6, 7, 4, 5, 4, 5, 13, 13, 13, 13, 0, 2, 1, 3, 12, 12, 12, 12, 11, 
          11, 11, 11, 8, 9, 8, 9 ], 
      [ 10, 10, 10, 10, 6, 7, 6, 7, 5, 4, 5, 4, 13, 13, 13, 13, 2, 0, 3, 1, 12, 12, 12, 12, 11, 
          11, 11, 11, 9, 8, 9, 8 ], 
      [ 10, 10, 10, 10, 7, 6, 7, 6, 4, 5, 4, 5, 13, 13, 13, 13, 1, 3, 0, 2, 12, 12, 12, 12, 11, 
          11, 11, 11, 9, 8, 9, 8 ], 
      [ 10, 10, 10, 10, 7, 6, 7, 6, 5, 4, 5, 4, 13, 13, 13, 13, 3, 1, 2, 0, 12, 12, 12, 12, 11, 
          11, 11, 11, 8, 9, 8, 9 ], 
      [ 11, 11, 11, 11, 9, 8, 8, 9, 12, 12, 12, 12, 4, 5, 4, 5, 13, 13, 13, 13, 0, 3, 1, 2, 6, 7, 
          6, 7, 10, 10, 10, 10 ], 
      [ 11, 11, 11, 11, 9, 8, 8, 9, 12, 12, 12, 12, 5, 4, 5, 4, 13, 13, 13, 13, 3, 0, 2, 1, 7, 6, 
          7, 6, 10, 10, 10, 10 ], 
      [ 11, 11, 11, 11, 8, 9, 9, 8, 12, 12, 12, 12, 4, 5, 4, 5, 13, 13, 13, 13, 1, 2, 0, 3, 7, 6, 
          7, 6, 10, 10, 10, 10 ], 
      [ 11, 11, 11, 11, 8, 9, 9, 8, 12, 12, 12, 12, 5, 4, 5, 4, 13, 13, 13, 13, 2, 1, 3, 0, 6, 7, 
          6, 7, 10, 10, 10, 10 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 9, 8, 8, 9, 10, 10, 10, 10, 11, 11, 11, 11, 6, 7, 7, 6, 0, 
          3, 2, 1, 5, 4, 4, 5 ], [ 13, 13, 13, 13, 12, 12, 12, 12, 9, 8, 8, 9, 10, 10, 10, 10, 11, 
          11, 11, 11, 7, 6, 6, 7, 3, 0, 1, 2, 4, 5, 5, 4 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 8, 9, 9, 8, 10, 10, 10, 10, 11, 11, 11, 11, 6, 7, 7, 6, 2, 
          1, 0, 3, 4, 5, 5, 4 ], [ 13, 13, 13, 13, 12, 12, 12, 12, 8, 9, 9, 8, 10, 10, 10, 10, 11, 
          11, 11, 11, 7, 6, 6, 7, 1, 2, 3, 0, 5, 4, 4, 5 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 11, 11, 6, 7, 7, 6, 9, 8, 8, 9, 10, 10, 10, 10, 5, 
          4, 4, 5, 0, 2, 3, 1 ], [ 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 11, 11, 6, 7, 7, 6, 8, 
          9, 9, 8, 10, 10, 10, 10, 4, 5, 5, 4, 2, 0, 1, 3 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 11, 11, 7, 6, 6, 7, 9, 8, 8, 9, 10, 10, 10, 10, 4, 
          5, 5, 4, 3, 1, 0, 2 ], [ 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 11, 11, 7, 6, 6, 7, 8, 
          9, 9, 8, 10, 10, 10, 10, 5, 4, 4, 5, 1, 3, 2, 0 ] ] )