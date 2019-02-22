rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 4, 8, 8, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, 4, -8, -8, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 4, 0, 0, 2 ], [ 1, 1, 1, 1, -2, -2, 2, 2, -4, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -4, 0, 0, 2 ], [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 4*E(4), -4*E(4), 4 
         ], [ 1, -1, -1, 1, 0, 0, 0, 0, 0, -4*E(4), 4*E(4), 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 4 ], [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 
          10, 10, 10 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 
          10, 10, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 
          9, 9, 9, 9, 9 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 
          9, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 8, 8, 6, 6, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 
          10, 10, 10, 10 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 8, 8, 7, 7, 6, 6, 10, 10, 10, 10, 9, 
          9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 8, 8, 8, 8, 6, 6, 7, 7, 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 
          10, 9, 9, 9, 9 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 8, 8, 8, 7, 7, 6, 6, 9, 9, 9, 9, 10, 10, 
          10, 10, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 7, 6, 7, 6, 8, 8, 8, 8, 0, 2, 1, 3, 4, 5, 4, 5, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 
          9, 9, 10, 10 ], [ 7, 6, 7, 6, 8, 8, 8, 8, 2, 0, 3, 1, 5, 4, 5, 4, 10, 10, 9, 9, 10, 10, 
          9, 9, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 6, 7, 6, 7, 8, 8, 8, 8, 1, 3, 0, 2, 4, 5, 4, 5, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 
          10, 10, 9, 9 ], [ 6, 7, 6, 7, 8, 8, 8, 8, 3, 1, 2, 0, 5, 4, 5, 4, 9, 9, 10, 10, 9, 9, 
          10, 10, 9, 9, 10, 10, 9, 9, 10, 10 ], 
      [ 8, 8, 8, 8, 7, 6, 7, 6, 4, 5, 4, 5, 0, 2, 1, 3, 10, 10, 9, 9, 9, 9, 10, 10, 9, 9, 10, 10, 
          10, 10, 9, 9 ], [ 8, 8, 8, 8, 7, 6, 7, 6, 5, 4, 5, 4, 2, 0, 3, 1, 9, 9, 10, 10, 10, 10, 
          9, 9, 10, 10, 9, 9, 9, 9, 10, 10 ], 
      [ 8, 8, 8, 8, 6, 7, 6, 7, 4, 5, 4, 5, 1, 3, 0, 2, 9, 9, 10, 10, 10, 10, 9, 9, 10, 10, 9, 9, 
          9, 9, 10, 10 ], [ 8, 8, 8, 8, 6, 7, 6, 7, 5, 4, 5, 4, 3, 1, 2, 0, 10, 10, 9, 9, 9, 9, 
          10, 10, 9, 9, 10, 10, 10, 10, 9, 9 ], 
      [ 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 0, 3, 8, 8, 6, 7, 4, 5, 4, 5, 6, 
          7, 8, 8, 1, 2 ], [ 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 3, 0, 8, 8, 
          7, 6, 5, 4, 5, 4, 7, 6, 8, 8, 2, 1 ], 
      [ 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 8, 8, 0, 3, 4, 5, 6, 7, 7, 6, 5, 
          4, 1, 2, 8, 8 ], [ 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 8, 8, 3, 0, 
          5, 4, 7, 6, 6, 7, 4, 5, 2, 1, 8, 8 ], 
      [ 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 7, 6, 4, 5, 0, 3, 8, 8, 8, 8, 2, 
          1, 4, 5, 6, 7 ], [ 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 6, 7, 5, 4, 
          3, 0, 8, 8, 8, 8, 1, 2, 5, 4, 7, 6 ], 
      [ 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 4, 5, 7, 6, 8, 8, 0, 3, 1, 2, 8, 
          8, 6, 7, 4, 5 ], [ 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 5, 4, 6, 7, 
          8, 8, 3, 0, 2, 1, 8, 8, 7, 6, 5, 4 ], 
      [ 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 4, 5, 6, 7, 8, 8, 1, 2, 0, 3, 8, 
          8, 7, 6, 4, 5 ], [ 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 5, 4, 7, 6, 
          8, 8, 2, 1, 3, 0, 8, 8, 6, 7, 5, 4 ], 
      [ 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 7, 6, 5, 4, 2, 1, 8, 8, 8, 8, 0, 
          3, 5, 4, 6, 7 ], [ 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 6, 7, 4, 5, 
          1, 2, 8, 8, 8, 8, 3, 0, 4, 5, 7, 6 ], 
      [ 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 8, 8, 1, 2, 4, 5, 7, 6, 6, 7, 5, 
          4, 0, 3, 8, 8 ], [ 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 8, 8, 2, 1, 
          5, 4, 6, 7, 7, 6, 4, 5, 3, 0, 8, 8 ], 
      [ 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 1, 2, 8, 8, 7, 6, 4, 5, 4, 5, 7, 
          6, 8, 8, 0, 3 ], [ 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 2, 1, 8, 8, 
          6, 7, 5, 4, 5, 4, 6, 7, 8, 8, 3, 0 ] ] )