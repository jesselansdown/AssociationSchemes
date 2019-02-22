rec(
  ct := [ [ 1, 3, 3, 3, 3, 3, 4, 12, 1 ], [ 1, 3, 3, 3, 3, 3, -4, -12, 1 ], 
      [ 1, 3, -1, -1, -1, -1, -4, 4, 3 ], [ 1, 3, -1, -1, -1, -1, 4, -4, 3 ], 
      [ 1, -1, 1, 1, -1+2*E(4), -1-2*E(4), 0, 0, 6 ], 
      [ 1, -1, 1, 1, -1-2*E(4), -1+2*E(4), 0, 0, 6 ], 
      [ 1, -1, -1+2*E(4), -1-2*E(4), 1, 1, 0, 0, 6 ], 
      [ 1, -1, -1-2*E(4), -1+2*E(4), 1, 1, 0, 0, 6 ] ],
  matrix := 
   [ [ 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 1, 0, 1, 1, 3, 4, 5, 2, 4, 5, 2, 3, 5, 2, 3, 4, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 1, 1, 0, 1, 4, 5, 3, 5, 2, 4, 3, 5, 2, 4, 2, 3, 6, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 1, 1, 1, 0, 5, 3, 4, 4, 5, 2, 5, 2, 3, 3, 4, 2, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 3, 2, 5, 4, 0, 4, 5, 1, 2, 2, 3, 4, 1, 3, 5, 1, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 3, 5, 4, 2, 5, 0, 4, 2, 2, 1, 1, 3, 4, 5, 1, 3, 7, 7, 7, 7, 7, 7, 
          7, 7, 6, 6, 6, 6, 7, 7, 7, 7 ], 
      [ 3, 4, 2, 5, 4, 5, 0, 2, 1, 2, 4, 1, 3, 1, 3, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6 ], [ 2, 3, 4, 5, 1, 3, 3, 0, 4, 5, 4, 2, 1, 5, 2, 1, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 2, 5, 3, 4, 3, 3, 1, 5, 0, 4, 2, 1, 4, 1, 5, 2, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7, 6, 6, 6, 6 ], 
      [ 2, 4, 5, 3, 3, 1, 3, 4, 5, 0, 1, 4, 2, 2, 1, 5, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 
          7, 7 ], [ 5, 3, 2, 4, 2, 1, 5, 5, 3, 1, 0, 2, 3, 4, 1, 4, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6, 7, 7, 7, 7 ], [ 5, 2, 4, 3, 5, 2, 1, 3, 1, 5, 3, 0, 2, 1, 4, 4, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7, 6, 6, 6, 6 ], 
      [ 5, 4, 3, 2, 1, 5, 2, 1, 5, 3, 2, 3, 0, 4, 4, 1, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 4, 3, 5, 2, 2, 4, 1, 4, 1, 3, 5, 1, 5, 0, 2, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7, 6, 6, 6, 6 ], [ 4, 2, 3, 5, 4, 1, 2, 3, 4, 1, 1, 5, 5, 3, 0, 2, 7, 7, 7, 7, 7, 7, 
          7, 7, 6, 6, 6, 6, 7, 7, 7, 7 ], 
      [ 4, 5, 2, 3, 1, 2, 4, 1, 3, 4, 5, 5, 1, 2, 3, 0, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 1, 1, 1, 2, 3, 4, 5, 2, 3, 
          4, 5, 2, 3, 4, 5 ], [ 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 0, 1, 1, 3, 2, 
          5, 4, 4, 5, 2, 3, 5, 4, 3, 2 ], 
      [ 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 1, 0, 1, 4, 5, 2, 3, 5, 4, 3, 2, 3, 2, 
          5, 4 ], [ 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 1, 1, 0, 5, 4, 3, 2, 3, 2, 
          5, 4, 4, 5, 2, 3 ], [ 7, 7, 7, 7, 6, 7, 7, 6, 7, 7, 7, 7, 6, 7, 7, 6, 3, 2, 5, 4, 0, 1, 
          1, 1, 4, 2, 3, 5, 5, 2, 4, 3 ], 
      [ 7, 7, 7, 7, 6, 7, 7, 6, 7, 7, 7, 7, 6, 7, 7, 6, 2, 3, 4, 5, 1, 0, 1, 1, 3, 5, 4, 2, 3, 4, 
          2, 5 ], [ 7, 7, 7, 7, 6, 7, 7, 6, 7, 7, 7, 7, 6, 7, 7, 6, 5, 4, 3, 2, 1, 1, 0, 1, 5, 3, 
          2, 4, 2, 5, 3, 4 ], [ 7, 7, 7, 7, 6, 7, 7, 6, 7, 7, 7, 7, 6, 7, 7, 6, 4, 5, 2, 3, 1, 1, 
          1, 0, 2, 4, 5, 3, 4, 3, 5, 2 ], 
      [ 7, 7, 7, 7, 7, 6, 7, 7, 7, 6, 6, 7, 7, 7, 6, 7, 3, 5, 4, 2, 5, 2, 4, 3, 0, 1, 1, 1, 4, 2, 
          3, 5 ], [ 7, 7, 7, 7, 7, 6, 7, 7, 7, 6, 6, 7, 7, 7, 6, 7, 2, 4, 5, 3, 3, 4, 2, 5, 1, 0, 
          1, 1, 3, 5, 4, 2 ], [ 7, 7, 7, 7, 7, 6, 7, 7, 7, 6, 6, 7, 7, 7, 6, 7, 5, 3, 2, 4, 2, 5, 
          3, 4, 1, 1, 0, 1, 5, 3, 2, 4 ], 
      [ 7, 7, 7, 7, 7, 6, 7, 7, 7, 6, 6, 7, 7, 7, 6, 7, 4, 2, 3, 5, 4, 3, 5, 2, 1, 1, 1, 0, 2, 4, 
          5, 3 ], [ 7, 7, 7, 7, 7, 7, 6, 7, 6, 7, 7, 6, 7, 6, 7, 7, 3, 4, 2, 5, 4, 2, 3, 5, 5, 2, 
          4, 3, 0, 1, 1, 1 ], [ 7, 7, 7, 7, 7, 7, 6, 7, 6, 7, 7, 6, 7, 6, 7, 7, 2, 5, 3, 4, 3, 5, 
          4, 2, 3, 4, 2, 5, 1, 0, 1, 1 ], 
      [ 7, 7, 7, 7, 7, 7, 6, 7, 6, 7, 7, 6, 7, 6, 7, 7, 5, 2, 4, 3, 5, 3, 2, 4, 2, 5, 3, 4, 1, 1, 
          0, 1 ], [ 7, 7, 7, 7, 7, 7, 6, 7, 6, 7, 7, 6, 7, 6, 7, 7, 4, 3, 5, 2, 2, 4, 5, 3, 4, 3, 
          5, 2, 1, 1, 1, 0 ] ] )