rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -4, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -4, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 4, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 4*E(4), -4*E(4), 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, -4*E(4), 4*E(4), 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, -4, 4, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 4, -4, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 4, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -4, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, 0, 0, -2, 2, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2, -2, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 
          12, 12, 12, 12 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 
          10, 10, 11, 11, 11, 11, 12, 12, 12, 12 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 8, 8, 8, 8, 10, 10, 10, 10, 9, 9, 9, 9, 12, 12, 12, 
          12, 11, 11, 11, 11 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 8, 8, 10, 10, 10, 10, 
          9, 9, 9, 9, 12, 12, 12, 12, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 8, 8, 6, 6, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10, 12, 12, 12, 
          12, 11, 11, 11, 11 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 8, 8, 7, 7, 6, 6, 9, 9, 9, 9, 10, 
          10, 10, 10, 12, 12, 12, 12, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 8, 8, 8, 8, 6, 6, 7, 7, 10, 10, 10, 10, 9, 9, 9, 9, 11, 11, 11, 
          11, 12, 12, 12, 12 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 8, 8, 8, 7, 7, 6, 6, 10, 10, 10, 10, 
          9, 9, 9, 9, 11, 11, 11, 11, 12, 12, 12, 12 ], 
      [ 6, 7, 6, 7, 8, 8, 8, 8, 0, 2, 1, 3, 4, 5, 4, 5, 11, 11, 12, 12, 11, 11, 12, 12, 9, 9, 10, 
          10, 9, 9, 10, 10 ], [ 6, 7, 6, 7, 8, 8, 8, 8, 2, 0, 3, 1, 5, 4, 5, 4, 12, 12, 11, 11, 
          12, 12, 11, 11, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 7, 6, 7, 6, 8, 8, 8, 8, 1, 3, 0, 2, 4, 5, 4, 5, 11, 11, 12, 12, 11, 11, 12, 12, 9, 9, 10, 
          10, 9, 9, 10, 10 ], [ 7, 6, 7, 6, 8, 8, 8, 8, 3, 1, 2, 0, 5, 4, 5, 4, 12, 12, 11, 11, 
          12, 12, 11, 11, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 8, 8, 8, 8, 6, 7, 6, 7, 4, 5, 4, 5, 0, 2, 1, 3, 12, 12, 11, 11, 12, 12, 11, 11, 9, 9, 10, 
          10, 9, 9, 10, 10 ], [ 8, 8, 8, 8, 6, 7, 6, 7, 5, 4, 5, 4, 2, 0, 3, 1, 11, 11, 12, 12, 
          11, 11, 12, 12, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 8, 8, 8, 8, 7, 6, 7, 6, 4, 5, 4, 5, 1, 3, 0, 2, 12, 12, 11, 11, 12, 12, 11, 11, 9, 9, 10, 
          10, 9, 9, 10, 10 ], [ 8, 8, 8, 8, 7, 6, 7, 6, 5, 4, 5, 4, 3, 1, 2, 0, 11, 11, 12, 12, 
          11, 11, 12, 12, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 9, 9, 10, 10, 9, 9, 10, 10, 12, 11, 12, 11, 11, 12, 11, 12, 0, 1, 4, 4, 5, 5, 2, 3, 6, 7, 
          8, 8, 8, 8, 6, 7 ], [ 9, 9, 10, 10, 9, 9, 10, 10, 12, 11, 12, 11, 11, 12, 11, 12, 1, 0, 
          4, 4, 5, 5, 3, 2, 7, 6, 8, 8, 8, 8, 7, 6 ], 
      [ 9, 9, 10, 10, 9, 9, 10, 10, 11, 12, 11, 12, 12, 11, 12, 11, 4, 4, 0, 1, 2, 3, 5, 5, 8, 8, 
          6, 7, 6, 7, 8, 8 ], [ 9, 9, 10, 10, 9, 9, 10, 10, 11, 12, 11, 12, 12, 11, 12, 11, 4, 4, 
          1, 0, 3, 2, 5, 5, 8, 8, 7, 6, 7, 6, 8, 8 ], 
      [ 10, 10, 9, 9, 10, 10, 9, 9, 12, 11, 12, 11, 11, 12, 11, 12, 5, 5, 2, 3, 0, 1, 4, 4, 8, 8, 
          6, 7, 6, 7, 8, 8 ], [ 10, 10, 9, 9, 10, 10, 9, 9, 12, 11, 12, 11, 11, 12, 11, 12, 5, 5, 
          3, 2, 1, 0, 4, 4, 8, 8, 7, 6, 7, 6, 8, 8 ], 
      [ 10, 10, 9, 9, 10, 10, 9, 9, 11, 12, 11, 12, 12, 11, 12, 11, 2, 3, 5, 5, 4, 4, 0, 1, 6, 7, 
          8, 8, 8, 8, 6, 7 ], [ 10, 10, 9, 9, 10, 10, 9, 9, 11, 12, 11, 12, 12, 11, 12, 11, 3, 2, 
          5, 5, 4, 4, 1, 0, 7, 6, 8, 8, 8, 8, 7, 6 ], 
      [ 12, 12, 11, 11, 11, 11, 12, 12, 9, 10, 9, 10, 9, 10, 9, 10, 6, 7, 8, 8, 8, 8, 6, 7, 0, 1, 
          5, 5, 4, 4, 2, 3 ], [ 12, 12, 11, 11, 11, 11, 12, 12, 9, 10, 9, 10, 9, 10, 9, 10, 7, 6, 
          8, 8, 8, 8, 7, 6, 1, 0, 5, 5, 4, 4, 3, 2 ], 
      [ 12, 12, 11, 11, 11, 11, 12, 12, 10, 9, 10, 9, 10, 9, 10, 9, 8, 8, 6, 7, 6, 7, 8, 8, 5, 5, 
          0, 1, 2, 3, 4, 4 ], [ 12, 12, 11, 11, 11, 11, 12, 12, 10, 9, 10, 9, 10, 9, 10, 9, 8, 8, 
          7, 6, 7, 6, 8, 8, 5, 5, 1, 0, 3, 2, 4, 4 ], 
      [ 11, 11, 12, 12, 12, 12, 11, 11, 9, 10, 9, 10, 9, 10, 9, 10, 8, 8, 6, 7, 6, 7, 8, 8, 4, 4, 
          2, 3, 0, 1, 5, 5 ], [ 11, 11, 12, 12, 12, 12, 11, 11, 9, 10, 9, 10, 9, 10, 9, 10, 8, 8, 
          7, 6, 7, 6, 8, 8, 4, 4, 3, 2, 1, 0, 5, 5 ], 
      [ 11, 11, 12, 12, 12, 12, 11, 11, 10, 9, 10, 9, 10, 9, 10, 9, 6, 7, 8, 8, 8, 8, 6, 7, 2, 3, 
          4, 4, 5, 5, 0, 1 ], [ 11, 11, 12, 12, 12, 12, 11, 11, 10, 9, 10, 9, 10, 9, 10, 9, 7, 6, 
          8, 8, 8, 8, 7, 6, 3, 2, 4, 4, 5, 5, 1, 0 ] ] )