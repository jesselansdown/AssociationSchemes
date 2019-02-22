rec(
  ct := [ [ 1, 1, 2, 2, 2, 4, 4, 4, 4, 8, 1 ], [ 1, 1, 2, 2, 2, -4, -4, -4, -4, 8, 1 ], 
      [ 1, 1, 2, 2, 2, -4, -4, 4, 4, -8, 1 ], [ 1, 1, 2, 2, 2, 4, 4, -4, -4, -8, 1 ], 
      [ 1, 1, 2, -2, -2, 4*E(4), -4*E(4), 0, 0, 0, 2 ], 
      [ 1, 1, 2, -2, -2, -4*E(4), 4*E(4), 0, 0, 0, 2 ], [ 1, 1, -2, -2, 2, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -2, 2, -2, 0, 0, 0, 0, 0, 4 ], [ 1, -1, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 8 ], 
      [ 1, -1, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 8, 8, 7, 7, 
          8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 8, 8, 7, 7, 8, 8, 7, 7, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 3, 3, 4, 4, 0, 1, 2, 2, 6, 6, 6, 6, 5, 5, 5, 5, 7, 8, 7, 8, 7, 8, 7, 8, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 6, 6, 6, 6, 5, 5, 5, 5, 8, 7, 8, 7, 8, 7, 
          8, 7, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 6, 6, 6, 6, 5, 5, 5, 5, 7, 8, 8, 7, 8, 7, 7, 8, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 6, 6, 6, 6, 5, 5, 5, 5, 8, 7, 7, 8, 7, 8, 8, 7, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 0, 1, 2, 2, 3, 3, 4, 4, 9, 9, 9, 9, 9, 9, 
          9, 9, 7, 7, 7, 7, 8, 8, 8, 8 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 1, 0, 2, 2, 3, 3, 4, 4, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 
          7, 7 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 2, 2, 0, 1, 4, 4, 3, 3, 9, 9, 9, 9, 9, 9, 9, 9, 7, 7, 
          8, 8, 7, 7, 8, 8 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 2, 2, 1, 0, 4, 4, 3, 3, 9, 9, 9, 9, 9, 9, 
          9, 9, 8, 8, 7, 7, 8, 8, 7, 7 ], 
      [ 5, 5, 5, 5, 6, 6, 6, 6, 3, 3, 4, 4, 0, 1, 2, 2, 9, 9, 9, 9, 9, 9, 9, 9, 7, 8, 7, 8, 7, 8, 
          7, 8 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 3, 3, 4, 4, 1, 0, 2, 2, 9, 9, 9, 9, 9, 9, 9, 9, 8, 7, 
          8, 7, 8, 7, 8, 7 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 4, 4, 3, 3, 2, 2, 0, 1, 9, 9, 9, 9, 9, 9, 
          9, 9, 7, 8, 8, 7, 8, 7, 7, 8 ], 
      [ 5, 5, 5, 5, 6, 6, 6, 6, 4, 4, 3, 3, 2, 2, 1, 0, 9, 9, 9, 9, 9, 9, 9, 9, 8, 7, 7, 8, 7, 8, 
          8, 7 ], [ 8, 7, 8, 7, 8, 7, 8, 7, 9, 9, 9, 9, 9, 9, 9, 9, 0, 2, 4, 3, 3, 4, 2, 1, 5, 6, 
          5, 6, 6, 5, 6, 5 ], [ 8, 7, 8, 7, 7, 8, 7, 8, 9, 9, 9, 9, 9, 9, 9, 9, 2, 0, 3, 4, 4, 3, 
          1, 2, 5, 6, 5, 6, 6, 5, 6, 5 ], 
      [ 8, 7, 7, 8, 8, 7, 7, 8, 9, 9, 9, 9, 9, 9, 9, 9, 4, 3, 0, 2, 2, 1, 3, 4, 6, 5, 6, 5, 5, 6, 
          5, 6 ], [ 8, 7, 7, 8, 7, 8, 8, 7, 9, 9, 9, 9, 9, 9, 9, 9, 3, 4, 2, 0, 1, 2, 4, 3, 6, 5, 
          6, 5, 5, 6, 5, 6 ], [ 7, 8, 8, 7, 8, 7, 7, 8, 9, 9, 9, 9, 9, 9, 9, 9, 3, 4, 2, 1, 0, 2, 
          4, 3, 6, 5, 6, 5, 5, 6, 5, 6 ], 
      [ 7, 8, 8, 7, 7, 8, 8, 7, 9, 9, 9, 9, 9, 9, 9, 9, 4, 3, 1, 2, 2, 0, 3, 4, 6, 5, 6, 5, 5, 6, 
          5, 6 ], [ 7, 8, 7, 8, 8, 7, 8, 7, 9, 9, 9, 9, 9, 9, 9, 9, 2, 1, 3, 4, 4, 3, 0, 2, 5, 6, 
          5, 6, 6, 5, 6, 5 ], [ 7, 8, 7, 8, 7, 8, 7, 8, 9, 9, 9, 9, 9, 9, 9, 9, 1, 2, 4, 3, 3, 4, 
          2, 0, 5, 6, 5, 6, 6, 5, 6, 5 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 9, 8, 7, 8, 7, 8, 7, 8, 7, 6, 6, 5, 5, 5, 5, 6, 6, 0, 4, 2, 3, 3, 2, 
          4, 1 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 8, 7, 8, 7, 7, 8, 7, 8, 5, 5, 6, 6, 6, 6, 5, 5, 4, 0, 
          3, 2, 2, 3, 1, 4 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 8, 7, 7, 8, 8, 7, 7, 8, 6, 6, 5, 5, 5, 5, 
          6, 6, 2, 3, 0, 4, 4, 1, 3, 2 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 9, 8, 7, 7, 8, 7, 8, 8, 7, 5, 5, 6, 6, 6, 6, 5, 5, 3, 2, 4, 0, 1, 4, 
          2, 3 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 7, 8, 8, 7, 8, 7, 7, 8, 5, 5, 6, 6, 6, 6, 5, 5, 3, 2, 
          4, 1, 0, 4, 2, 3 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 7, 8, 8, 7, 7, 8, 8, 7, 6, 6, 5, 5, 5, 5, 
          6, 6, 2, 3, 1, 4, 4, 0, 3, 2 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 9, 7, 8, 7, 8, 8, 7, 8, 7, 5, 5, 6, 6, 6, 6, 5, 5, 4, 1, 3, 2, 2, 3, 
          0, 4 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 7, 8, 7, 8, 7, 8, 7, 8, 6, 6, 5, 5, 5, 5, 6, 6, 1, 4, 
          2, 3, 3, 2, 4, 0 ] ] )