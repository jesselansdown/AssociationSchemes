rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 4, 4, 4, 4, 8, 1 ], [ 1, 1, 1, 1, 2, 2, -4, -4, -4, -4, 8, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -4*E(4), 4*E(4), 4*E(4), -4*E(4), -8, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 4*E(4), -4*E(4), -4*E(4), 4*E(4), -8, 1 ], 
      [ 2, 2, 0, 0, 0, -4, 0, 0, 0, 0, 0, 4 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 8 ], [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 
          10, 10, 10 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 
          10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10, 
          10, 10, 10, 10 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 9, 9, 9, 
          9, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 9, 9, 9, 9, 7, 7, 7, 7, 8, 8, 8, 8, 6, 6, 6, 6, 10, 10, 10, 10, 
          10, 10, 10, 10 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 9, 9, 9, 7, 7, 7, 7, 8, 8, 8, 8, 6, 6, 6, 
          6, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 10, 10, 10, 10, 
          10, 10, 10, 10 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 
          6, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 7, 7, 7, 7, 8, 8, 8, 8, 0, 1, 4, 4, 10, 10, 10, 10, 10, 10, 10, 10, 2, 3, 5, 5, 6, 6, 6, 
          6, 9, 9, 9, 9 ], [ 7, 7, 7, 7, 8, 8, 8, 8, 1, 0, 4, 4, 10, 10, 10, 10, 10, 10, 10, 10, 
          3, 2, 5, 5, 6, 6, 6, 6, 9, 9, 9, 9 ], 
      [ 7, 7, 7, 7, 8, 8, 8, 8, 4, 4, 0, 1, 10, 10, 10, 10, 10, 10, 10, 10, 5, 5, 2, 3, 9, 9, 9, 
          9, 6, 6, 6, 6 ], [ 7, 7, 7, 7, 8, 8, 8, 8, 4, 4, 1, 0, 10, 10, 10, 10, 10, 10, 10, 10, 
          5, 5, 3, 2, 9, 9, 9, 9, 6, 6, 6, 6 ], 
      [ 6, 6, 9, 9, 6, 6, 9, 9, 10, 10, 10, 10, 0, 1, 2, 3, 4, 4, 5, 5, 10, 10, 10, 10, 7, 7, 8, 
          8, 7, 7, 8, 8 ], [ 6, 6, 9, 9, 6, 6, 9, 9, 10, 10, 10, 10, 1, 0, 3, 2, 4, 4, 5, 5, 10, 
          10, 10, 10, 7, 7, 8, 8, 7, 7, 8, 8 ], 
      [ 6, 6, 9, 9, 6, 6, 9, 9, 10, 10, 10, 10, 2, 3, 0, 1, 5, 5, 4, 4, 10, 10, 10, 10, 8, 8, 7, 
          7, 8, 8, 7, 7 ], [ 6, 6, 9, 9, 6, 6, 9, 9, 10, 10, 10, 10, 3, 2, 1, 0, 5, 5, 4, 4, 10, 
          10, 10, 10, 8, 8, 7, 7, 8, 8, 7, 7 ], 
      [ 9, 9, 6, 6, 9, 9, 6, 6, 10, 10, 10, 10, 4, 4, 5, 5, 0, 1, 2, 3, 10, 10, 10, 10, 7, 7, 8, 
          8, 7, 7, 8, 8 ], [ 9, 9, 6, 6, 9, 9, 6, 6, 10, 10, 10, 10, 4, 4, 5, 5, 1, 0, 3, 2, 10, 
          10, 10, 10, 7, 7, 8, 8, 7, 7, 8, 8 ], 
      [ 9, 9, 6, 6, 9, 9, 6, 6, 10, 10, 10, 10, 5, 5, 4, 4, 2, 3, 0, 1, 10, 10, 10, 10, 8, 8, 7, 
          7, 8, 8, 7, 7 ], [ 9, 9, 6, 6, 9, 9, 6, 6, 10, 10, 10, 10, 5, 5, 4, 4, 3, 2, 1, 0, 10, 
          10, 10, 10, 8, 8, 7, 7, 8, 8, 7, 7 ], 
      [ 8, 8, 8, 8, 7, 7, 7, 7, 2, 3, 5, 5, 10, 10, 10, 10, 10, 10, 10, 10, 0, 1, 4, 4, 6, 6, 6, 
          6, 9, 9, 9, 9 ], [ 8, 8, 8, 8, 7, 7, 7, 7, 3, 2, 5, 5, 10, 10, 10, 10, 10, 10, 10, 10, 
          1, 0, 4, 4, 6, 6, 6, 6, 9, 9, 9, 9 ], 
      [ 8, 8, 8, 8, 7, 7, 7, 7, 5, 5, 2, 3, 10, 10, 10, 10, 10, 10, 10, 10, 4, 4, 0, 1, 9, 9, 9, 
          9, 6, 6, 6, 6 ], [ 8, 8, 8, 8, 7, 7, 7, 7, 5, 5, 3, 2, 10, 10, 10, 10, 10, 10, 10, 10, 
          4, 4, 1, 0, 9, 9, 9, 9, 6, 6, 6, 6 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 7, 7, 8, 8, 6, 6, 9, 9, 6, 6, 9, 9, 7, 7, 8, 8, 0, 1, 4, 
          4, 2, 3, 5, 5 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 7, 7, 8, 8, 6, 6, 9, 9, 6, 6, 9, 9, 
          7, 7, 8, 8, 1, 0, 4, 4, 3, 2, 5, 5 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 7, 7, 8, 8, 9, 9, 6, 6, 9, 9, 6, 6, 7, 7, 8, 8, 4, 4, 0, 
          1, 5, 5, 2, 3 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 7, 7, 8, 8, 9, 9, 6, 6, 9, 9, 6, 6, 
          7, 7, 8, 8, 4, 4, 1, 0, 5, 5, 3, 2 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 8, 8, 7, 7, 6, 6, 9, 9, 6, 6, 9, 9, 8, 8, 7, 7, 2, 3, 5, 
          5, 0, 1, 4, 4 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 8, 8, 7, 7, 6, 6, 9, 9, 6, 6, 9, 9, 
          8, 8, 7, 7, 3, 2, 5, 5, 1, 0, 4, 4 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 8, 8, 7, 7, 9, 9, 6, 6, 9, 9, 6, 6, 8, 8, 7, 7, 5, 5, 2, 
          3, 4, 4, 0, 1 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 8, 8, 7, 7, 9, 9, 6, 6, 9, 9, 6, 6, 
          8, 8, 7, 7, 5, 5, 3, 2, 4, 4, 1, 0 ] ] )