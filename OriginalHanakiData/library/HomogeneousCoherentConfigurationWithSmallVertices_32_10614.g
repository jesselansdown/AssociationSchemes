rec(
  ct := 
   [ [ 1, 1, 1, 1, 4, 4, 4, 4, 6, 6, 1 ], 
      [ 1, -1, 1, -1, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 6, -6, 1 ], 
      [ 1, -1, 1, -1, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 6, -6, 1 ], 
      [ 1, 1, 1, 1, -4, -4, -4, -4, 6, 6, 1 ], 
      [ 1, -1, -1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 4 ], 
      [ 1, -1, -1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 4 ], 
      [ 1, 1, -1, -1, -2, -2, 2, 2, 0, 0, 4 ], [ 1, 1, -1, -1, 2, 2, -2, -2, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, -2, 2, 6 ], [ 1, 1, 1, 1, 0, 0, 0, 0, -2, -2, 6 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 
          9, 9 ], [ 1, 0, 3, 2, 5, 5, 5, 5, 4, 4, 4, 4, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 9, 9, 9, 9, 
          8, 8, 8, 8, 8, 8 ], [ 2, 3, 0, 1, 6, 6, 6, 6, 7, 7, 7, 7, 4, 4, 4, 4, 5, 5, 5, 5, 8, 8, 
          8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 3, 2, 1, 0, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 
          8, 8 ], [ 5, 4, 7, 6, 0, 8, 8, 8, 1, 9, 9, 9, 2, 8, 8, 8, 3, 9, 9, 9, 5, 5, 5, 7, 7, 7, 
          4, 4, 4, 6, 6, 6 ], [ 5, 4, 7, 6, 8, 0, 8, 8, 9, 1, 9, 9, 8, 2, 8, 8, 9, 3, 9, 9, 5, 7, 
          7, 5, 5, 7, 4, 6, 6, 4, 4, 6 ], 
      [ 5, 4, 7, 6, 8, 8, 0, 8, 9, 9, 1, 9, 8, 8, 2, 8, 9, 9, 3, 9, 7, 5, 7, 5, 7, 5, 6, 4, 6, 4, 
          6, 4 ], [ 5, 4, 7, 6, 8, 8, 8, 0, 9, 9, 9, 1, 8, 8, 8, 2, 9, 9, 9, 3, 7, 7, 5, 7, 5, 5, 
          6, 6, 4, 6, 4, 4 ], [ 4, 5, 6, 7, 1, 9, 9, 9, 0, 8, 8, 8, 3, 9, 9, 9, 2, 8, 8, 8, 4, 4, 
          4, 6, 6, 6, 5, 5, 5, 7, 7, 7 ], 
      [ 4, 5, 6, 7, 9, 1, 9, 9, 8, 0, 8, 8, 9, 3, 9, 9, 8, 2, 8, 8, 4, 6, 6, 4, 4, 6, 5, 7, 7, 5, 
          5, 7 ], [ 4, 5, 6, 7, 9, 9, 1, 9, 8, 8, 0, 8, 9, 9, 3, 9, 8, 8, 2, 8, 6, 4, 6, 4, 6, 4, 
          7, 5, 7, 5, 7, 5 ], [ 4, 5, 6, 7, 9, 9, 9, 1, 8, 8, 8, 0, 9, 9, 9, 3, 8, 8, 8, 2, 6, 6, 
          4, 6, 4, 4, 7, 7, 5, 7, 5, 5 ], 
      [ 7, 6, 5, 4, 2, 8, 8, 8, 3, 9, 9, 9, 0, 8, 8, 8, 1, 9, 9, 9, 7, 7, 7, 5, 5, 5, 6, 6, 6, 4, 
          4, 4 ], [ 7, 6, 5, 4, 8, 2, 8, 8, 9, 3, 9, 9, 8, 0, 8, 8, 9, 1, 9, 9, 7, 5, 5, 7, 7, 5, 
          6, 4, 4, 6, 6, 4 ], [ 7, 6, 5, 4, 8, 8, 2, 8, 9, 9, 3, 9, 8, 8, 0, 8, 9, 9, 1, 9, 5, 7, 
          5, 7, 5, 7, 4, 6, 4, 6, 4, 6 ], 
      [ 7, 6, 5, 4, 8, 8, 8, 2, 9, 9, 9, 3, 8, 8, 8, 0, 9, 9, 9, 1, 5, 5, 7, 5, 7, 7, 4, 4, 6, 4, 
          6, 6 ], [ 6, 7, 4, 5, 3, 9, 9, 9, 2, 8, 8, 8, 1, 9, 9, 9, 0, 8, 8, 8, 6, 6, 6, 4, 4, 4, 
          7, 7, 7, 5, 5, 5 ], [ 6, 7, 4, 5, 9, 3, 9, 9, 8, 2, 8, 8, 9, 1, 9, 9, 8, 0, 8, 8, 6, 4, 
          4, 6, 6, 4, 7, 5, 5, 7, 7, 5 ], 
      [ 6, 7, 4, 5, 9, 9, 3, 9, 8, 8, 2, 8, 9, 9, 1, 9, 8, 8, 0, 8, 4, 6, 4, 6, 4, 6, 5, 7, 5, 7, 
          5, 7 ], [ 6, 7, 4, 5, 9, 9, 9, 3, 8, 8, 8, 2, 9, 9, 9, 1, 8, 8, 8, 0, 4, 4, 6, 4, 6, 6, 
          5, 5, 7, 5, 7, 7 ], [ 8, 9, 8, 9, 4, 4, 6, 6, 5, 5, 7, 7, 6, 6, 4, 4, 7, 7, 5, 5, 0, 8, 
          8, 8, 8, 2, 1, 9, 9, 9, 9, 3 ], 
      [ 8, 9, 8, 9, 4, 6, 4, 6, 5, 7, 5, 7, 6, 4, 6, 4, 7, 5, 7, 5, 8, 0, 8, 8, 2, 8, 9, 1, 9, 9, 
          3, 9 ], [ 8, 9, 8, 9, 4, 6, 6, 4, 5, 7, 7, 5, 6, 4, 4, 6, 7, 5, 5, 7, 8, 8, 0, 2, 8, 8, 
          9, 9, 1, 3, 9, 9 ], [ 8, 9, 8, 9, 6, 4, 4, 6, 7, 5, 5, 7, 4, 6, 6, 4, 5, 7, 7, 5, 8, 8, 
          2, 0, 8, 8, 9, 9, 3, 1, 9, 9 ], 
      [ 8, 9, 8, 9, 6, 4, 6, 4, 7, 5, 7, 5, 4, 6, 4, 6, 5, 7, 5, 7, 8, 2, 8, 8, 0, 8, 9, 3, 9, 9, 
          1, 9 ], [ 8, 9, 8, 9, 6, 6, 4, 4, 7, 7, 5, 5, 4, 4, 6, 6, 5, 5, 7, 7, 2, 8, 8, 8, 8, 0, 
          3, 9, 9, 9, 9, 1 ], [ 9, 8, 9, 8, 5, 5, 7, 7, 4, 4, 6, 6, 7, 7, 5, 5, 6, 6, 4, 4, 1, 9, 
          9, 9, 9, 3, 0, 8, 8, 8, 8, 2 ], 
      [ 9, 8, 9, 8, 5, 7, 5, 7, 4, 6, 4, 6, 7, 5, 7, 5, 6, 4, 6, 4, 9, 1, 9, 9, 3, 9, 8, 0, 8, 8, 
          2, 8 ], [ 9, 8, 9, 8, 5, 7, 7, 5, 4, 6, 6, 4, 7, 5, 5, 7, 6, 4, 4, 6, 9, 9, 1, 3, 9, 9, 
          8, 8, 0, 2, 8, 8 ], [ 9, 8, 9, 8, 7, 5, 5, 7, 6, 4, 4, 6, 5, 7, 7, 5, 4, 6, 6, 4, 9, 9, 
          3, 1, 9, 9, 8, 8, 2, 0, 8, 8 ], 
      [ 9, 8, 9, 8, 7, 5, 7, 5, 6, 4, 6, 4, 5, 7, 5, 7, 4, 6, 4, 6, 9, 3, 9, 9, 1, 9, 8, 2, 8, 8, 
          0, 8 ], [ 9, 8, 9, 8, 7, 7, 5, 5, 6, 6, 4, 4, 5, 5, 7, 7, 4, 4, 6, 6, 3, 9, 9, 9, 9, 1, 
          2, 8, 8, 8, 8, 0 ] ] )