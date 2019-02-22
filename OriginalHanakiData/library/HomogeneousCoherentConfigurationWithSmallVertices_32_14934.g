rec(
  ct := 
   [ [ 1, 1, 1, 1, 2, 2, 4, 4, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 4, -4, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, 4, -4, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 4, 4, -4, -4, -4, -4, 1 ], [ 1, 1, 1, 1, -2, -2, -4, 4, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -4, -4, 0, 0, 0, 0, 2 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 4 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 
          11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 10, 10, 10, 10, 11, 11, 
          11, 11, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 11, 11, 11, 11, 10, 10, 10, 
          10, 9, 9, 9, 9 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 6, 6, 6, 6, 7, 7, 7, 7, 10, 10, 10, 10, 9, 
          9, 9, 9, 8, 8, 8, 8, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 11, 11, 8, 8, 10, 10, 9, 9, 11, 11, 
          8, 8, 10, 10 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 7, 7, 6, 6, 6, 6, 11, 11, 9, 9, 10, 10, 
          8, 8, 11, 11, 9, 9, 10, 10, 8, 8 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 7, 7, 7, 7, 6, 6, 6, 6, 11, 11, 9, 9, 8, 8, 10, 10, 11, 11, 9, 9, 
          8, 8, 10, 10 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 11, 11, 10, 10, 
          8, 8, 9, 9, 11, 11, 10, 10, 8, 8 ], 
      [ 6, 6, 6, 6, 7, 7, 7, 7, 0, 1, 2, 3, 4, 4, 5, 5, 8, 10, 8, 10, 9, 11, 9, 11, 8, 10, 8, 10, 
          9, 11, 9, 11 ], [ 6, 6, 6, 6, 7, 7, 7, 7, 1, 0, 3, 2, 4, 4, 5, 5, 10, 8, 10, 8, 11, 9, 
          11, 9, 10, 8, 10, 8, 11, 9, 11, 9 ], 
      [ 6, 6, 6, 6, 7, 7, 7, 7, 2, 3, 0, 1, 5, 5, 4, 4, 8, 10, 8, 10, 11, 9, 11, 9, 8, 10, 8, 10, 
          11, 9, 11, 9 ], [ 6, 6, 6, 6, 7, 7, 7, 7, 3, 2, 1, 0, 5, 5, 4, 4, 10, 8, 10, 8, 9, 11, 
          9, 11, 10, 8, 10, 8, 9, 11, 9, 11 ], 
      [ 7, 7, 7, 7, 6, 6, 6, 6, 4, 4, 5, 5, 0, 1, 2, 3, 9, 11, 11, 9, 10, 8, 8, 10, 11, 9, 9, 11, 
          8, 10, 10, 8 ], [ 7, 7, 7, 7, 6, 6, 6, 6, 4, 4, 5, 5, 1, 0, 3, 2, 11, 9, 9, 11, 8, 10, 
          10, 8, 9, 11, 11, 9, 10, 8, 8, 10 ], 
      [ 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 4, 4, 2, 3, 0, 1, 11, 9, 9, 11, 10, 8, 8, 10, 9, 11, 11, 9, 
          8, 10, 10, 8 ], [ 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 4, 4, 3, 2, 1, 0, 9, 11, 11, 9, 8, 10, 
          10, 8, 11, 9, 9, 11, 10, 8, 8, 10 ], 
      [ 9, 11, 9, 11, 8, 10, 10, 8, 9, 11, 9, 11, 8, 10, 10, 8, 0, 6, 3, 6, 4, 7, 5, 7, 6, 2, 6, 
          1, 7, 5, 7, 4 ], [ 9, 11, 9, 11, 8, 10, 10, 8, 11, 9, 11, 9, 10, 8, 8, 10, 6, 0, 6, 3, 
          7, 5, 7, 4, 2, 6, 1, 6, 4, 7, 5, 7 ], 
      [ 9, 11, 9, 11, 10, 8, 8, 10, 9, 11, 9, 11, 10, 8, 8, 10, 3, 6, 0, 6, 5, 7, 4, 7, 6, 1, 6, 
          2, 7, 4, 7, 5 ], [ 9, 11, 9, 11, 10, 8, 8, 10, 11, 9, 11, 9, 8, 10, 10, 8, 6, 3, 6, 0, 
          7, 4, 7, 5, 1, 6, 2, 6, 5, 7, 4, 7 ], 
      [ 8, 10, 10, 8, 9, 11, 9, 11, 8, 10, 10, 8, 11, 9, 11, 9, 4, 7, 5, 7, 0, 6, 2, 6, 7, 5, 7, 
          4, 6, 3, 6, 1 ], [ 8, 10, 10, 8, 9, 11, 9, 11, 10, 8, 8, 10, 9, 11, 9, 11, 7, 5, 7, 4, 
          6, 0, 6, 2, 4, 7, 5, 7, 3, 6, 1, 6 ], 
      [ 8, 10, 10, 8, 11, 9, 11, 9, 8, 10, 10, 8, 9, 11, 9, 11, 5, 7, 4, 7, 2, 6, 0, 6, 7, 4, 7, 
          5, 6, 1, 6, 3 ], [ 8, 10, 10, 8, 11, 9, 11, 9, 10, 8, 8, 10, 11, 9, 11, 9, 7, 4, 7, 5, 
          6, 2, 6, 0, 5, 7, 4, 7, 1, 6, 3, 6 ], 
      [ 11, 9, 11, 9, 8, 10, 10, 8, 9, 11, 9, 11, 10, 8, 8, 10, 6, 2, 6, 1, 7, 4, 7, 5, 0, 6, 3, 
          6, 5, 7, 4, 7 ], [ 11, 9, 11, 9, 8, 10, 10, 8, 11, 9, 11, 9, 8, 10, 10, 8, 2, 6, 1, 6, 
          5, 7, 4, 7, 6, 0, 6, 3, 7, 4, 7, 5 ], 
      [ 11, 9, 11, 9, 10, 8, 8, 10, 9, 11, 9, 11, 8, 10, 10, 8, 6, 1, 6, 2, 7, 5, 7, 4, 3, 6, 0, 
          6, 4, 7, 5, 7 ], [ 11, 9, 11, 9, 10, 8, 8, 10, 11, 9, 11, 9, 10, 8, 8, 10, 1, 6, 2, 6, 
          4, 7, 5, 7, 6, 3, 6, 0, 7, 5, 7, 4 ], 
      [ 10, 8, 8, 10, 9, 11, 9, 11, 8, 10, 10, 8, 9, 11, 9, 11, 7, 4, 7, 5, 6, 3, 6, 1, 5, 7, 4, 
          7, 0, 6, 2, 6 ], [ 10, 8, 8, 10, 9, 11, 9, 11, 10, 8, 8, 10, 11, 9, 11, 9, 5, 7, 4, 7, 
          3, 6, 1, 6, 7, 4, 7, 5, 6, 0, 6, 2 ], 
      [ 10, 8, 8, 10, 11, 9, 11, 9, 8, 10, 10, 8, 11, 9, 11, 9, 7, 5, 7, 4, 6, 1, 6, 3, 4, 7, 5, 
          7, 2, 6, 0, 6 ], [ 10, 8, 8, 10, 11, 9, 11, 9, 10, 8, 8, 10, 9, 11, 9, 11, 4, 7, 5, 7, 
          1, 6, 3, 6, 7, 5, 7, 4, 6, 2, 6, 0 ] ] )