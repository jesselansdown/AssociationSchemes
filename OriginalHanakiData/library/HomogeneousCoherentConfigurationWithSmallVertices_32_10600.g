rec(
  ct := [ [ 1, 1, 1, 1, 4, 4, 4, 4, 4, 8, 1 ], [ 1, 1, 1, 1, 4, -4, -4, -4, -4, 8, 1 ], 
      [ 1, 1, 1, 1, 4, 0, 0, 0, 0, -8, 2 ], [ 1, 1, -1, -1, 0, -2, -2, 2, 2, 0, 4 ], 
      [ 1, 1, -1, -1, 0, 2, 2, -2, -2, 0, 4 ], [ 1, 1, 1, 1, -4, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 1, 0, 3, 2, 4, 4, 4, 4, 6, 6, 6, 6, 5, 5, 5, 5, 8, 8, 8, 8, 7, 7, 7, 7, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 2, 3, 0, 1, 4, 4, 4, 4, 7, 7, 7, 7, 8, 8, 8, 8, 5, 5, 5, 5, 6, 6, 
          6, 6, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 3, 2, 1, 0, 4, 4, 4, 4, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 4, 4, 4, 4, 0, 1, 2, 3, 5, 6, 7, 8, 5, 6, 7, 8, 5, 6, 7, 8, 5, 6, 7, 8, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 4, 4, 4, 4, 1, 0, 3, 2, 6, 5, 8, 7, 6, 5, 8, 7, 6, 5, 8, 7, 6, 5, 
          8, 7, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 4, 4, 4, 4, 2, 3, 0, 1, 7, 8, 5, 6, 7, 8, 5, 6, 7, 8, 5, 6, 7, 8, 5, 6, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 4, 4, 4, 4, 3, 2, 1, 0, 8, 7, 6, 5, 8, 7, 6, 5, 8, 7, 6, 5, 8, 7, 6, 5, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 5, 6, 8, 7, 5, 6, 8, 7, 0, 4, 9, 9, 4, 1, 9, 9, 9, 9, 3, 4, 9, 9, 
          4, 2, 5, 5, 6, 6, 7, 7, 8, 8 ], 
      [ 5, 6, 8, 7, 6, 5, 7, 8, 4, 0, 9, 9, 1, 4, 9, 9, 9, 9, 4, 3, 9, 9, 2, 4, 7, 8, 7, 8, 5, 6, 
          5, 6 ], [ 5, 6, 8, 7, 8, 7, 5, 6, 9, 9, 0, 4, 9, 9, 4, 1, 3, 4, 9, 9, 4, 2, 9, 9, 6, 7, 
          8, 5, 8, 5, 6, 7 ], [ 5, 6, 8, 7, 7, 8, 6, 5, 9, 9, 4, 0, 9, 9, 1, 4, 4, 3, 9, 9, 2, 4, 
          9, 9, 8, 6, 5, 7, 6, 8, 7, 5 ], 
      [ 6, 5, 7, 8, 5, 6, 8, 7, 4, 1, 9, 9, 0, 4, 9, 9, 9, 9, 4, 2, 9, 9, 3, 4, 8, 7, 8, 7, 6, 5, 
          6, 5 ], [ 6, 5, 7, 8, 6, 5, 7, 8, 1, 4, 9, 9, 4, 0, 9, 9, 9, 9, 2, 4, 9, 9, 4, 3, 6, 6, 
          5, 5, 8, 8, 7, 7 ], [ 6, 5, 7, 8, 8, 7, 5, 6, 9, 9, 4, 1, 9, 9, 0, 4, 4, 2, 9, 9, 3, 4, 
          9, 9, 7, 5, 6, 8, 5, 7, 8, 6 ], 
      [ 6, 5, 7, 8, 7, 8, 6, 5, 9, 9, 1, 4, 9, 9, 4, 0, 2, 4, 9, 9, 4, 3, 9, 9, 5, 8, 7, 6, 7, 6, 
          5, 8 ], [ 8, 7, 5, 6, 5, 6, 8, 7, 9, 9, 3, 4, 9, 9, 4, 2, 0, 4, 9, 9, 4, 1, 9, 9, 7, 6, 
          5, 8, 5, 8, 7, 6 ], [ 8, 7, 5, 6, 6, 5, 7, 8, 9, 9, 4, 3, 9, 9, 2, 4, 4, 0, 9, 9, 1, 4, 
          9, 9, 5, 7, 8, 6, 7, 5, 6, 8 ], 
      [ 8, 7, 5, 6, 8, 7, 5, 6, 3, 4, 9, 9, 4, 2, 9, 9, 9, 9, 0, 4, 9, 9, 4, 1, 8, 8, 7, 7, 6, 6, 
          5, 5 ], [ 8, 7, 5, 6, 7, 8, 6, 5, 4, 3, 9, 9, 2, 4, 9, 9, 9, 9, 4, 0, 9, 9, 1, 4, 6, 5, 
          6, 5, 8, 7, 8, 7 ], [ 7, 8, 6, 5, 5, 6, 8, 7, 9, 9, 4, 2, 9, 9, 3, 4, 4, 1, 9, 9, 0, 4, 
          9, 9, 6, 8, 7, 5, 8, 6, 5, 7 ], 
      [ 7, 8, 6, 5, 6, 5, 7, 8, 9, 9, 2, 4, 9, 9, 4, 3, 1, 4, 9, 9, 4, 0, 9, 9, 8, 5, 6, 7, 6, 7, 
          8, 5 ], [ 7, 8, 6, 5, 8, 7, 5, 6, 4, 2, 9, 9, 3, 4, 9, 9, 9, 9, 4, 1, 9, 9, 0, 4, 5, 6, 
          5, 6, 7, 8, 7, 8 ], [ 7, 8, 6, 5, 7, 8, 6, 5, 2, 4, 9, 9, 4, 3, 9, 9, 9, 9, 1, 4, 9, 9, 
          4, 0, 7, 7, 8, 8, 5, 5, 6, 6 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 9, 5, 8, 6, 7, 7, 6, 8, 5, 8, 5, 7, 6, 6, 7, 5, 8, 0, 4, 4, 1, 3, 4, 
          4, 2 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 5, 7, 8, 6, 8, 6, 5, 7, 6, 8, 7, 5, 7, 5, 6, 8, 4, 0, 
          1, 4, 4, 3, 2, 4 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 6, 8, 7, 5, 7, 5, 6, 8, 5, 7, 8, 6, 8, 6, 
          5, 7, 4, 1, 0, 4, 4, 2, 3, 4 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 9, 6, 7, 5, 8, 8, 5, 7, 6, 7, 6, 8, 5, 5, 8, 6, 7, 1, 4, 4, 0, 2, 4, 
          4, 3 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 8, 5, 7, 6, 6, 7, 5, 8, 5, 8, 6, 7, 7, 6, 8, 5, 3, 4, 
          4, 2, 0, 4, 4, 1 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 8, 6, 5, 7, 5, 7, 8, 6, 7, 5, 6, 8, 6, 8, 
          7, 5, 4, 3, 2, 4, 4, 0, 1, 4 ], 
      [ 9, 9, 9, 9, 9, 9, 9, 9, 7, 5, 6, 8, 6, 8, 7, 5, 8, 6, 5, 7, 5, 7, 8, 6, 4, 2, 3, 4, 4, 1, 
          0, 4 ], [ 9, 9, 9, 9, 9, 9, 9, 9, 7, 6, 8, 5, 5, 8, 6, 7, 6, 7, 5, 8, 8, 5, 7, 6, 2, 4, 
          4, 3, 1, 4, 4, 0 ] ] )