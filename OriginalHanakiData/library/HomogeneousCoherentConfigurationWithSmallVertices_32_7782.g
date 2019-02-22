rec(
  ct := [ [ 1, 1, 2, 2, 2, 4, 4, 8, 8, 1 ], [ 1, 1, 2, 2, 2, -4, -4, -8, 8, 1 ], 
      [ 1, 1, 2, 2, 2, -4, -4, 8, -8, 1 ], [ 1, 1, 2, 2, 2, 4, 4, -8, -8, 1 ], 
      [ 1, 1, 2, -2, -2, -4, 4, 0, 0, 2 ], [ 1, 1, 2, -2, -2, 4, -4, 0, 0, 2 ], 
      [ 1, 1, -2, -2, 2, 0, 0, 0, 0, 4 ], [ 1, 1, -2, 2, -2, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 16 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 
          8, 8 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 
          8, 8, 8, 8, 8, 8 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 
          8, 8 ], [ 3, 3, 4, 4, 0, 1, 2, 2, 6, 6, 6, 6, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 
          8, 8, 8, 8, 8, 8 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 6, 6, 6, 6, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 
          7, 7, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 6, 6, 6, 6, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 
          8, 8 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 6, 6, 6, 6, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 
          8, 8, 8, 8, 8, 8 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 0, 1, 2, 2, 3, 3, 4, 4, 8, 8, 8, 8, 8, 8, 
          8, 8, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 5, 5, 5, 5, 6, 6, 6, 6, 1, 0, 2, 2, 3, 3, 4, 4, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 2, 2, 0, 1, 4, 4, 3, 3, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 2, 2, 1, 0, 4, 4, 3, 3, 8, 8, 8, 8, 8, 8, 
          8, 8, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 3, 3, 4, 4, 0, 1, 2, 2, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 3, 3, 4, 4, 1, 0, 2, 2, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 0, 1, 8, 8, 8, 8, 8, 8, 
          8, 8, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 1, 0, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 
          5, 5, 6, 6, 6, 6 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 1, 0, 2, 2, 3, 3, 
          4, 4, 5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 
          6, 6 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 2, 2, 1, 0, 4, 4, 3, 3, 5, 5, 
          5, 5, 6, 6, 6, 6 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 3, 3, 4, 4, 0, 1, 
          2, 2, 6, 6, 6, 6, 5, 5, 5, 5 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 3, 3, 4, 4, 1, 0, 2, 2, 6, 6, 6, 6, 5, 5, 
          5, 5 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 4, 4, 3, 3, 2, 2, 0, 1, 6, 6, 
          6, 6, 5, 5, 5, 5 ], [ 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 4, 4, 3, 3, 2, 2, 
          1, 0, 6, 6, 6, 6, 5, 5, 5, 5 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 6, 6, 6, 6, 0, 1, 2, 2, 3, 3, 
          4, 4 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 6, 6, 6, 6, 1, 0, 
          2, 2, 3, 3, 4, 4 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 6, 6, 
          6, 6, 2, 2, 0, 1, 4, 4, 3, 3 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 6, 6, 6, 6, 2, 2, 1, 0, 4, 4, 
          3, 3 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 3, 3, 
          4, 4, 0, 1, 2, 2 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 
          5, 5, 3, 3, 4, 4, 1, 0, 2, 2 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 
          0, 1 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 
          3, 3, 2, 2, 1, 0 ] ] )