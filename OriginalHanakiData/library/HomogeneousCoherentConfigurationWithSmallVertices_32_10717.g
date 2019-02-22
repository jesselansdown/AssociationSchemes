rec(
  ct := [ [ 1, 1, 2, 2, 2, 4, 4, 4, 4, 8, 1 ], [ 1, 1, 2, -2, -2, 4, -4, -4, -4, 8, 1 ], 
      [ 1, 1, 2, -2, -2, 4, -4, 4, 4, -8, 1 ], [ 1, 1, 2, 2, 2, 4, 4, -4, -4, -8, 1 ], 
      [ 1, 1, 2, -2, -2, -4, 4, 0, 0, 0, 2 ], [ 1, 1, 2, 2, 2, -4, -4, 0, 0, 0, 2 ], 
      [ 1, 1, -2, -2, 2, 0, 0, 0, 0, 0, 4 ], [ 1, 1, -2, 2, -2, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 8 ], 
      [ 1, -1, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 8, 8, 7, 7, 
          8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 8, 8, 7, 7, 8, 8, 7, 7, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 3, 3, 4, 4, 0, 1, 2, 2, 6, 6, 6, 6, 5, 5, 5, 5, 9, 9, 9, 9, 9, 9, 9, 9, 7, 7, 
          7, 7, 8, 8, 8, 8 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 6, 6, 6, 6, 5, 5, 5, 5, 9, 9, 9, 9, 9, 9, 
          9, 9, 8, 8, 8, 8, 7, 7, 7, 7 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 6, 6, 6, 6, 5, 5, 5, 5, 9, 9, 9, 9, 9, 9, 9, 9, 7, 7, 8, 8, 7, 7, 
          8, 8 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 6, 6, 6, 6, 5, 5, 5, 5, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 
          7, 7, 8, 8, 7, 7 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 0, 1, 2, 2, 3, 3, 4, 4, 7, 8, 7, 8, 7, 8, 
          7, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 5, 5, 5, 5, 6, 6, 6, 6, 1, 0, 2, 2, 3, 3, 4, 4, 8, 7, 8, 7, 8, 7, 8, 7, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 2, 2, 0, 1, 4, 4, 3, 3, 7, 8, 8, 7, 8, 7, 7, 8, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 2, 2, 1, 0, 4, 4, 3, 3, 8, 7, 7, 8, 7, 8, 
          8, 7, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 3, 3, 4, 4, 0, 1, 2, 2, 9, 9, 9, 9, 9, 9, 9, 9, 7, 8, 7, 8, 7, 8, 
          7, 8 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 3, 3, 4, 4, 1, 0, 2, 2, 9, 9, 9, 9, 9, 9, 9, 9, 8, 7, 
          8, 7, 8, 7, 8, 7 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 0, 1, 9, 9, 9, 9, 9, 9, 
          9, 9, 7, 8, 8, 7, 8, 7, 7, 8 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 1, 0, 9, 9, 9, 9, 9, 9, 9, 9, 8, 7, 7, 8, 7, 8, 
          8, 7 ], [ 8, 7, 8, 7, 9, 9, 9, 9, 8, 7, 8, 7, 9, 9, 9, 9, 0, 2, 5, 5, 5, 5, 2, 1, 3, 6, 
          4, 6, 6, 4, 6, 3 ], [ 8, 7, 8, 7, 9, 9, 9, 9, 7, 8, 7, 8, 9, 9, 9, 9, 2, 0, 5, 5, 5, 5, 
          1, 2, 4, 6, 3, 6, 6, 3, 6, 4 ], 
      [ 8, 7, 7, 8, 9, 9, 9, 9, 8, 7, 7, 8, 9, 9, 9, 9, 5, 5, 0, 2, 2, 1, 5, 5, 6, 4, 6, 3, 3, 6, 
          4, 6 ], [ 8, 7, 7, 8, 9, 9, 9, 9, 7, 8, 8, 7, 9, 9, 9, 9, 5, 5, 2, 0, 1, 2, 5, 5, 6, 3, 
          6, 4, 4, 6, 3, 6 ], [ 7, 8, 8, 7, 9, 9, 9, 9, 8, 7, 7, 8, 9, 9, 9, 9, 5, 5, 2, 1, 0, 2, 
          5, 5, 6, 3, 6, 4, 4, 6, 3, 6 ], 
      [ 7, 8, 8, 7, 9, 9, 9, 9, 7, 8, 8, 7, 9, 9, 9, 9, 5, 5, 1, 2, 2, 0, 5, 5, 6, 4, 6, 3, 3, 6, 
          4, 6 ], [ 7, 8, 7, 8, 9, 9, 9, 9, 8, 7, 8, 7, 9, 9, 9, 9, 2, 1, 5, 5, 5, 5, 0, 2, 4, 6, 
          3, 6, 6, 3, 6, 4 ], [ 7, 8, 7, 8, 9, 9, 9, 9, 7, 8, 7, 8, 9, 9, 9, 9, 1, 2, 5, 5, 5, 5, 
          2, 0, 3, 6, 4, 6, 6, 4, 6, 3 ], 
      [ 9, 9, 9, 9, 8, 7, 8, 7, 9, 9, 9, 9, 8, 7, 8, 7, 3, 4, 6, 6, 6, 6, 4, 3, 0, 5, 2, 5, 5, 2, 
          5, 1 ], [ 9, 9, 9, 9, 8, 7, 8, 7, 9, 9, 9, 9, 7, 8, 7, 8, 6, 6, 4, 3, 3, 4, 6, 6, 5, 0, 
          5, 2, 2, 5, 1, 5 ], [ 9, 9, 9, 9, 8, 7, 7, 8, 9, 9, 9, 9, 8, 7, 7, 8, 4, 3, 6, 6, 6, 6, 
          3, 4, 2, 5, 0, 5, 5, 1, 5, 2 ], 
      [ 9, 9, 9, 9, 8, 7, 7, 8, 9, 9, 9, 9, 7, 8, 8, 7, 6, 6, 3, 4, 4, 3, 6, 6, 5, 2, 5, 0, 1, 5, 
          2, 5 ], [ 9, 9, 9, 9, 7, 8, 8, 7, 9, 9, 9, 9, 8, 7, 7, 8, 6, 6, 3, 4, 4, 3, 6, 6, 5, 2, 
          5, 1, 0, 5, 2, 5 ], [ 9, 9, 9, 9, 7, 8, 8, 7, 9, 9, 9, 9, 7, 8, 8, 7, 4, 3, 6, 6, 6, 6, 
          3, 4, 2, 5, 1, 5, 5, 0, 5, 2 ], 
      [ 9, 9, 9, 9, 7, 8, 7, 8, 9, 9, 9, 9, 8, 7, 8, 7, 6, 6, 4, 3, 3, 4, 6, 6, 5, 1, 5, 2, 2, 5, 
          0, 5 ], [ 9, 9, 9, 9, 7, 8, 7, 8, 9, 9, 9, 9, 7, 8, 7, 8, 3, 4, 6, 6, 6, 6, 4, 3, 1, 5, 
          2, 5, 5, 2, 5, 0 ] ] )