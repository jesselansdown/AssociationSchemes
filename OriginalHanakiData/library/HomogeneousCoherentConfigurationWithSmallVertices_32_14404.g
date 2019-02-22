rec(
  ct := [ [ 1, 1, 2, 2, 2, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 2, 2, 2, -4, -4, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 2, 2, 2, -4*E(4), 4*E(4), 4*E(4), -4*E(4), -4, -4, 1 ], 
      [ 1, 1, 2, 2, 2, 4*E(4), -4*E(4), -4*E(4), 4*E(4), -4, -4, 1 ], 
      [ 2, 2, 0, 0, -4, 0, 0, 0, 0, 0, 0, 4 ], [ 1, 1, -2, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 8 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 
          10, 10 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 10, 
          10, 10, 10, 9, 9, 9, 9 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 8, 8, 9, 9, 10, 10, 9, 
          9, 10, 10 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 5, 5, 5, 5, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 8, 8, 
          10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 3, 3, 4, 4, 0, 1, 2, 2, 8, 8, 8, 8, 6, 6, 6, 6, 7, 7, 7, 7, 5, 5, 5, 5, 9, 10, 9, 10, 9, 
          10, 9, 10 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 8, 8, 8, 8, 6, 6, 6, 6, 7, 7, 7, 7, 5, 5, 5, 5, 
          10, 9, 10, 9, 10, 9, 10, 9 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 9, 10, 10, 9, 10, 
          9, 9, 10 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 
          10, 9, 9, 10, 9, 10, 10, 9 ], 
      [ 6, 6, 6, 6, 7, 7, 7, 7, 0, 1, 3, 3, 9, 9, 10, 10, 9, 9, 10, 10, 2, 2, 4, 4, 5, 5, 8, 8, 8, 
          8, 5, 5 ], [ 6, 6, 6, 6, 7, 7, 7, 7, 1, 0, 3, 3, 10, 10, 9, 9, 10, 10, 9, 9, 2, 2, 4, 4, 
          5, 5, 8, 8, 8, 8, 5, 5 ], 
      [ 6, 6, 6, 6, 7, 7, 7, 7, 3, 3, 0, 1, 9, 9, 10, 10, 10, 10, 9, 9, 4, 4, 2, 2, 8, 8, 5, 5, 5, 
          5, 8, 8 ], [ 6, 6, 6, 6, 7, 7, 7, 7, 3, 3, 1, 0, 10, 10, 9, 9, 9, 9, 10, 10, 4, 4, 2, 2, 
          8, 8, 5, 5, 5, 5, 8, 8 ], 
      [ 5, 5, 8, 8, 5, 5, 8, 8, 10, 9, 10, 9, 0, 2, 1, 2, 3, 4, 3, 4, 9, 10, 9, 10, 6, 7, 6, 7, 7, 
          6, 7, 6 ], [ 5, 5, 8, 8, 5, 5, 8, 8, 10, 9, 10, 9, 2, 0, 2, 1, 4, 3, 4, 3, 10, 9, 10, 9, 
          7, 6, 7, 6, 6, 7, 6, 7 ], 
      [ 5, 5, 8, 8, 5, 5, 8, 8, 9, 10, 9, 10, 1, 2, 0, 2, 3, 4, 3, 4, 10, 9, 10, 9, 6, 7, 6, 7, 7, 
          6, 7, 6 ], [ 5, 5, 8, 8, 5, 5, 8, 8, 9, 10, 9, 10, 2, 1, 2, 0, 4, 3, 4, 3, 9, 10, 9, 10, 
          7, 6, 7, 6, 6, 7, 6, 7 ], 
      [ 8, 8, 5, 5, 8, 8, 5, 5, 10, 9, 9, 10, 3, 4, 3, 4, 0, 2, 1, 2, 10, 9, 9, 10, 6, 7, 6, 7, 7, 
          6, 7, 6 ], [ 8, 8, 5, 5, 8, 8, 5, 5, 10, 9, 9, 10, 4, 3, 4, 3, 2, 0, 2, 1, 9, 10, 10, 9, 
          7, 6, 7, 6, 6, 7, 6, 7 ], 
      [ 8, 8, 5, 5, 8, 8, 5, 5, 9, 10, 10, 9, 3, 4, 3, 4, 1, 2, 0, 2, 9, 10, 10, 9, 6, 7, 6, 7, 7, 
          6, 7, 6 ], [ 8, 8, 5, 5, 8, 8, 5, 5, 9, 10, 10, 9, 4, 3, 4, 3, 2, 1, 2, 0, 10, 9, 9, 10, 
          7, 6, 7, 6, 6, 7, 6, 7 ], 
      [ 7, 7, 7, 7, 6, 6, 6, 6, 2, 2, 4, 4, 10, 9, 9, 10, 9, 10, 10, 9, 0, 1, 3, 3, 5, 5, 8, 8, 8, 
          8, 5, 5 ], [ 7, 7, 7, 7, 6, 6, 6, 6, 2, 2, 4, 4, 9, 10, 10, 9, 10, 9, 9, 10, 1, 0, 3, 3, 
          5, 5, 8, 8, 8, 8, 5, 5 ], 
      [ 7, 7, 7, 7, 6, 6, 6, 6, 4, 4, 2, 2, 10, 9, 9, 10, 10, 9, 9, 10, 3, 3, 0, 1, 8, 8, 5, 5, 5, 
          5, 8, 8 ], [ 7, 7, 7, 7, 6, 6, 6, 6, 4, 4, 2, 2, 9, 10, 10, 9, 9, 10, 10, 9, 3, 3, 1, 0, 
          8, 8, 5, 5, 5, 5, 8, 8 ], 
      [ 10, 9, 10, 9, 10, 9, 10, 9, 6, 6, 7, 7, 5, 8, 5, 8, 5, 8, 5, 8, 6, 6, 7, 7, 0, 3, 2, 4, 4, 
          2, 3, 1 ], [ 10, 9, 10, 9, 9, 10, 9, 10, 6, 6, 7, 7, 8, 5, 8, 5, 8, 5, 8, 5, 6, 6, 7, 7, 
          3, 0, 4, 2, 2, 4, 1, 3 ], 
      [ 10, 9, 9, 10, 10, 9, 9, 10, 7, 7, 6, 6, 5, 8, 5, 8, 5, 8, 5, 8, 7, 7, 6, 6, 2, 4, 0, 3, 3, 
          1, 4, 2 ], [ 10, 9, 9, 10, 9, 10, 10, 9, 7, 7, 6, 6, 8, 5, 8, 5, 8, 5, 8, 5, 7, 7, 6, 6, 
          4, 2, 3, 0, 1, 3, 2, 4 ], 
      [ 9, 10, 10, 9, 10, 9, 9, 10, 7, 7, 6, 6, 8, 5, 8, 5, 8, 5, 8, 5, 7, 7, 6, 6, 4, 2, 3, 1, 0, 
          3, 2, 4 ], [ 9, 10, 10, 9, 9, 10, 10, 9, 7, 7, 6, 6, 5, 8, 5, 8, 5, 8, 5, 8, 7, 7, 6, 6, 
          2, 4, 1, 3, 3, 0, 4, 2 ], 
      [ 9, 10, 9, 10, 10, 9, 10, 9, 6, 6, 7, 7, 8, 5, 8, 5, 8, 5, 8, 5, 6, 6, 7, 7, 3, 1, 4, 2, 2, 
          4, 0, 3 ], [ 9, 10, 9, 10, 9, 10, 9, 10, 6, 6, 7, 7, 5, 8, 5, 8, 5, 8, 5, 8, 6, 6, 7, 7, 
          1, 3, 2, 4, 4, 2, 3, 0 ] ] )