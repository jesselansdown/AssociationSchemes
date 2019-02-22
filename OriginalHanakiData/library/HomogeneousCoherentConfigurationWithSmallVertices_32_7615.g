rec(
  ct := [ [ 1, 1, 3, 3, 4, 4, 8, 8, 1 ], [ 1, 1, 3, 3, -4, -4, 8*E(4), -8*E(4), 1 ], 
      [ 1, 1, 3, 3, -4, -4, -8*E(4), 8*E(4), 1 ], [ 1, 1, 3, 3, 4, 4, -8, -8, 1 ], 
      [ 1, -1, 3, -3, 4*E(4), -4*E(4), 0, 0, 2 ], [ 1, -1, 3, -3, -4*E(4), 4*E(4), 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 12 ], [ 1, 1, -1, -1, 0, 0, 0, 0, 12 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 1, 0, 3, 3, 3, 2, 2, 2, 5, 5, 5, 5, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 2, 3, 0, 2, 2, 1, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 
          6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 2, 3, 2, 0, 2, 3, 1, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 2, 3, 2, 2, 0, 3, 3, 1, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 3, 2, 1, 3, 3, 0, 2, 2, 5, 5, 5, 5, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 
          6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 3, 2, 3, 1, 3, 2, 0, 2, 5, 5, 5, 5, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 3, 2, 3, 3, 1, 2, 2, 0, 5, 5, 5, 5, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 5, 4, 5, 5, 5, 4, 4, 4, 0, 2, 2, 2, 1, 3, 3, 3, 7, 7, 7, 7, 7, 7, 
          7, 7, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 5, 4, 5, 5, 5, 4, 4, 4, 2, 0, 2, 2, 3, 1, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 5, 4, 5, 5, 5, 4, 4, 4, 2, 2, 0, 2, 3, 3, 1, 3, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 5, 4, 5, 5, 5, 4, 4, 4, 2, 2, 2, 0, 3, 3, 3, 1, 7, 7, 7, 7, 7, 7, 
          7, 7, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 4, 5, 4, 4, 4, 5, 5, 5, 1, 3, 3, 3, 0, 2, 2, 2, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 4, 5, 4, 4, 4, 5, 5, 5, 3, 1, 3, 3, 2, 0, 2, 2, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 4, 5, 4, 4, 4, 5, 5, 5, 3, 3, 1, 3, 2, 2, 0, 2, 7, 7, 7, 7, 7, 7, 
          7, 7, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 4, 5, 4, 4, 4, 5, 5, 5, 3, 3, 3, 1, 2, 2, 2, 0, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 
          4, 4, 5, 5, 5, 5 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 3, 3, 3, 2, 
          2, 2, 5, 5, 5, 5, 4, 4, 4, 4 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 2, 3, 0, 2, 2, 1, 3, 3, 4, 4, 4, 4, 5, 5, 
          5, 5 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 2, 3, 2, 0, 2, 3, 1, 3, 4, 4, 
          4, 4, 5, 5, 5, 5 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 2, 3, 2, 2, 0, 3, 
          3, 1, 4, 4, 4, 4, 5, 5, 5, 5 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 3, 2, 1, 3, 3, 0, 2, 2, 5, 5, 5, 5, 4, 4, 
          4, 4 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 3, 2, 3, 1, 3, 2, 0, 2, 5, 5, 
          5, 5, 4, 4, 4, 4 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 3, 2, 3, 3, 1, 2, 
          2, 0, 5, 5, 5, 5, 4, 4, 4, 4 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 5, 4, 5, 5, 5, 4, 4, 4, 0, 2, 2, 2, 1, 3, 
          3, 3 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 5, 4, 5, 5, 5, 4, 4, 4, 2, 0, 
          2, 2, 3, 1, 3, 3 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 5, 4, 5, 5, 5, 4, 
          4, 4, 2, 2, 0, 2, 3, 3, 1, 3 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 5, 4, 5, 5, 5, 4, 4, 4, 2, 2, 2, 0, 3, 3, 
          3, 1 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 4, 5, 4, 4, 4, 5, 5, 5, 1, 3, 
          3, 3, 0, 2, 2, 2 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 4, 5, 4, 4, 4, 5, 
          5, 5, 3, 1, 3, 3, 2, 0, 2, 2 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 4, 5, 4, 4, 4, 5, 5, 5, 3, 3, 1, 3, 2, 2, 
          0, 2 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 4, 5, 4, 4, 4, 5, 5, 5, 3, 3, 
          3, 1, 2, 2, 2, 0 ] ] )