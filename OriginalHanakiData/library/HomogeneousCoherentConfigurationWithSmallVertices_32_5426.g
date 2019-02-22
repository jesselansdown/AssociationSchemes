rec(
  ct := [ [ 1, 1, 2, 2, 2, 4, 4, 16, 1 ], [ 1, 1, 2, 2, 2, 4, 4, -16, 1 ], 
      [ 1, 1, 2, 2, 2, -4, -4, 0, 2 ], [ 1, 1, -2, -2, 2, 0, 0, 0, 4 ], 
      [ 1, 1, -2, 2, -2, 0, 0, 0, 4 ], [ 1, 1, 2, -2, -2, 0, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, 2*E(4), -2*E(4), 0, 8 ], [ 1, -1, 0, 0, 0, -2*E(4), 2*E(4), 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 6, 6, 6, 6, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 6, 6, 5, 5, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 6, 6, 5, 5, 6, 6, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 3, 3, 4, 4, 0, 1, 2, 2, 5, 6, 5, 6, 5, 6, 5, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 6, 5, 6, 5, 6, 5, 6, 5, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 5, 6, 6, 5, 6, 5, 5, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 6, 5, 5, 6, 5, 6, 6, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 6, 5, 6, 5, 6, 5, 6, 5, 0, 2, 4, 3, 3, 4, 2, 1, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 5, 6, 5, 5, 6, 5, 6, 2, 0, 3, 4, 4, 3, 1, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 6, 5, 5, 6, 6, 5, 5, 6, 4, 3, 0, 2, 2, 1, 3, 4, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 6, 5, 5, 6, 5, 6, 6, 5, 3, 4, 2, 0, 1, 2, 4, 3, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 5, 6, 6, 5, 6, 5, 5, 6, 3, 4, 2, 1, 0, 2, 4, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 5, 6, 6, 5, 5, 6, 6, 5, 4, 3, 1, 2, 2, 0, 3, 4, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 5, 6, 5, 6, 6, 5, 6, 5, 2, 1, 3, 4, 4, 3, 0, 2, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 5, 6, 5, 6, 5, 6, 5, 6, 1, 2, 4, 3, 3, 4, 2, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 
          5, 5, 6, 6, 6, 6 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 0, 2, 2, 3, 3, 
          4, 4, 6, 6, 6, 6, 5, 5, 5, 5 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 6, 6, 5, 5, 
          6, 6 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 2, 2, 1, 0, 4, 4, 3, 3, 6, 6, 
          5, 5, 6, 6, 5, 5 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 3, 4, 4, 0, 1, 
          2, 2, 5, 6, 5, 6, 5, 6, 5, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 3, 4, 4, 1, 0, 2, 2, 6, 5, 6, 5, 6, 5, 
          6, 5 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 4, 4, 3, 3, 2, 2, 0, 1, 5, 6, 
          6, 5, 6, 5, 5, 6 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 4, 4, 3, 3, 2, 2, 
          1, 0, 6, 5, 5, 6, 5, 6, 6, 5 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 5, 6, 5, 6, 5, 6, 5, 0, 3, 2, 4, 4, 2, 
          3, 1 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 5, 6, 5, 5, 6, 5, 6, 3, 0, 
          4, 2, 2, 4, 1, 3 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 5, 5, 6, 6, 5, 
          5, 6, 2, 4, 0, 3, 3, 1, 4, 2 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 5, 5, 6, 5, 6, 6, 5, 4, 2, 3, 0, 1, 3, 
          2, 4 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 6, 6, 5, 6, 5, 5, 6, 4, 2, 
          3, 1, 0, 3, 2, 4 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 6, 6, 5, 5, 6, 
          6, 5, 2, 4, 1, 3, 3, 0, 4, 2 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 6, 5, 6, 6, 5, 6, 5, 3, 1, 4, 2, 2, 4, 
          0, 3 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 6, 5, 6, 5, 6, 5, 6, 1, 3, 
          2, 4, 4, 2, 3, 0 ] ] )