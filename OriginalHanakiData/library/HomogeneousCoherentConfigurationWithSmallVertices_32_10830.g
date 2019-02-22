rec(
  ct := [ [ 1, 1, 2, 4, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 2, 4, -4, -4, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 2, 4, 0, 0, 0, 0, -4, -4, 2 ], [ 1, 1, -2, 0, -2, -2, 2, 2, 0, 0, 4 ], 
      [ 1, 1, -2, 0, 2, 2, -2, -2, 0, 0, 4 ], [ 1, 1, 2, -4, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 
          9, 9 ], [ 1, 0, 2, 2, 3, 3, 3, 3, 5, 5, 5, 5, 4, 4, 4, 4, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 
          9, 9, 8, 8, 8, 8 ], [ 2, 2, 0, 1, 3, 3, 3, 3, 6, 6, 7, 7, 6, 6, 7, 7, 4, 4, 5, 5, 4, 4, 
          5, 5, 8, 8, 9, 9, 8, 8, 9, 9 ], 
      [ 2, 2, 1, 0, 3, 3, 3, 3, 7, 7, 6, 6, 7, 7, 6, 6, 5, 5, 4, 4, 5, 5, 4, 4, 9, 9, 8, 8, 9, 9, 
          8, 8 ], [ 3, 3, 3, 3, 0, 1, 2, 2, 4, 5, 6, 7, 6, 7, 4, 5, 6, 7, 4, 5, 4, 5, 6, 7, 8, 9, 
          8, 9, 8, 9, 8, 9 ], [ 3, 3, 3, 3, 1, 0, 2, 2, 5, 4, 7, 6, 7, 6, 5, 4, 7, 6, 5, 4, 5, 4, 
          7, 6, 9, 8, 9, 8, 9, 8, 9, 8 ], 
      [ 3, 3, 3, 3, 2, 2, 0, 1, 6, 7, 5, 4, 5, 4, 6, 7, 4, 5, 7, 6, 7, 6, 4, 5, 9, 8, 8, 9, 8, 9, 
          9, 8 ], [ 3, 3, 3, 3, 2, 2, 1, 0, 7, 6, 4, 5, 4, 5, 7, 6, 5, 4, 6, 7, 6, 7, 5, 4, 8, 9, 
          9, 8, 9, 8, 8, 9 ], [ 4, 5, 6, 7, 4, 5, 6, 7, 0, 3, 8, 9, 8, 9, 3, 1, 2, 3, 8, 8, 9, 9, 
          3, 2, 6, 5, 6, 4, 5, 7, 4, 7 ], 
      [ 4, 5, 6, 7, 5, 4, 7, 6, 3, 0, 9, 8, 9, 8, 1, 3, 3, 2, 8, 8, 9, 9, 2, 3, 5, 6, 4, 6, 7, 5, 
          7, 4 ], [ 4, 5, 7, 6, 6, 7, 5, 4, 9, 8, 0, 3, 3, 1, 9, 8, 8, 8, 2, 3, 3, 2, 9, 9, 6, 4, 
          5, 6, 7, 4, 5, 7 ], [ 4, 5, 7, 6, 7, 6, 4, 5, 8, 9, 3, 0, 1, 3, 8, 9, 8, 8, 3, 2, 2, 3, 
          9, 9, 4, 6, 6, 5, 4, 7, 7, 5 ], 
      [ 5, 4, 6, 7, 6, 7, 5, 4, 9, 8, 3, 1, 0, 3, 9, 8, 9, 9, 3, 2, 2, 3, 8, 8, 5, 7, 7, 4, 5, 6, 
          6, 4 ], [ 5, 4, 6, 7, 7, 6, 4, 5, 8, 9, 1, 3, 3, 0, 8, 9, 9, 9, 2, 3, 3, 2, 8, 8, 7, 5, 
          4, 7, 6, 5, 4, 6 ], [ 5, 4, 7, 6, 4, 5, 6, 7, 3, 1, 8, 9, 8, 9, 0, 3, 3, 2, 9, 9, 8, 8, 
          2, 3, 4, 7, 5, 7, 6, 4, 6, 5 ], 
      [ 5, 4, 7, 6, 5, 4, 7, 6, 1, 3, 9, 8, 9, 8, 3, 0, 2, 3, 9, 9, 8, 8, 3, 2, 7, 4, 7, 5, 4, 6, 
          5, 6 ], [ 6, 7, 4, 5, 6, 7, 4, 5, 2, 3, 9, 9, 8, 8, 3, 2, 0, 3, 9, 8, 9, 8, 3, 1, 5, 6, 
          5, 7, 6, 4, 7, 4 ], [ 6, 7, 4, 5, 7, 6, 5, 4, 3, 2, 9, 9, 8, 8, 2, 3, 3, 0, 8, 9, 8, 9, 
          1, 3, 6, 5, 7, 5, 4, 6, 4, 7 ], 
      [ 6, 7, 5, 4, 4, 5, 7, 6, 9, 9, 2, 3, 3, 2, 8, 8, 8, 9, 0, 3, 3, 1, 8, 9, 5, 7, 6, 5, 4, 7, 
          6, 4 ], [ 6, 7, 5, 4, 5, 4, 6, 7, 9, 9, 3, 2, 2, 3, 8, 8, 9, 8, 3, 0, 1, 3, 9, 8, 7, 5, 
          5, 6, 7, 4, 4, 6 ], [ 7, 6, 4, 5, 4, 5, 7, 6, 8, 8, 3, 2, 2, 3, 9, 9, 8, 9, 3, 1, 0, 3, 
          8, 9, 6, 4, 4, 7, 6, 5, 5, 7 ], 
      [ 7, 6, 4, 5, 5, 4, 6, 7, 8, 8, 2, 3, 3, 2, 9, 9, 9, 8, 1, 3, 3, 0, 9, 8, 4, 6, 7, 4, 5, 6, 
          7, 5 ], [ 7, 6, 5, 4, 6, 7, 4, 5, 3, 2, 8, 8, 9, 9, 2, 3, 3, 1, 9, 8, 9, 8, 0, 3, 7, 4, 
          6, 4, 5, 7, 5, 6 ], [ 7, 6, 5, 4, 7, 6, 5, 4, 2, 3, 8, 8, 9, 9, 3, 2, 1, 3, 8, 9, 8, 9, 
          3, 0, 4, 7, 4, 6, 7, 5, 6, 5 ], 
      [ 9, 8, 9, 8, 9, 8, 8, 9, 6, 5, 6, 4, 5, 7, 4, 7, 5, 6, 5, 7, 6, 4, 7, 4, 0, 2, 3, 3, 3, 3, 
          2, 1 ], [ 9, 8, 9, 8, 8, 9, 9, 8, 5, 6, 4, 6, 7, 5, 7, 4, 6, 5, 7, 5, 4, 6, 4, 7, 2, 0, 
          3, 3, 3, 3, 1, 2 ], [ 9, 8, 8, 9, 9, 8, 9, 8, 6, 4, 5, 6, 7, 4, 5, 7, 5, 7, 6, 5, 4, 7, 
          6, 4, 3, 3, 0, 2, 2, 1, 3, 3 ], 
      [ 9, 8, 8, 9, 8, 9, 8, 9, 4, 6, 6, 5, 4, 7, 7, 5, 7, 5, 5, 6, 7, 4, 4, 6, 3, 3, 2, 0, 1, 2, 
          3, 3 ], [ 8, 9, 9, 8, 9, 8, 9, 8, 5, 7, 7, 4, 5, 6, 6, 4, 6, 4, 4, 7, 6, 5, 5, 7, 3, 3, 
          2, 1, 0, 2, 3, 3 ], [ 8, 9, 9, 8, 8, 9, 8, 9, 7, 5, 4, 7, 6, 5, 4, 6, 4, 6, 7, 4, 5, 6, 
          7, 5, 3, 3, 1, 2, 2, 0, 3, 3 ], 
      [ 8, 9, 8, 9, 9, 8, 8, 9, 4, 7, 5, 7, 6, 4, 6, 5, 7, 4, 6, 4, 5, 7, 5, 6, 2, 1, 3, 3, 3, 3, 
          0, 2 ], [ 8, 9, 8, 9, 8, 9, 9, 8, 7, 4, 7, 5, 4, 6, 5, 6, 4, 7, 4, 6, 7, 5, 6, 5, 1, 2, 
          3, 3, 3, 3, 2, 0 ] ] )