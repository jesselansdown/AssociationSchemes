rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 8, 8, 1 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -8, 8, 1 ]
        , [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 8, -8, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -8, -8, 1 ], [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 2 ], [ 1, -1, -1, 1, 0, 0, 0, 0, -2, 2, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2, -2, 0, 0, 4 ], [ 1, -1, 1, -1, 0, 0, -2, 2, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2, -2, 0, 0, 0, 0, 4 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 9, 8, 9, 6, 7, 6, 7, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 8, 9, 8, 6, 7, 6, 7, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 6, 7, 6, 7, 8, 9, 9, 8, 0, 2, 3, 1, 4, 5, 5, 4, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 6, 7, 6, 7, 9, 8, 8, 9, 2, 0, 1, 3, 5, 4, 4, 5, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 7, 6, 7, 6, 8, 9, 9, 8, 3, 1, 0, 2, 5, 4, 4, 5, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 7, 6, 7, 6, 9, 8, 8, 9, 1, 3, 2, 0, 4, 5, 5, 4, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 8, 9, 9, 8, 6, 7, 6, 7, 4, 5, 5, 4, 0, 3, 2, 1, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 8, 9, 9, 8, 7, 6, 7, 6, 5, 4, 4, 5, 3, 0, 1, 2, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 9, 8, 8, 9, 6, 7, 6, 7, 5, 4, 4, 5, 2, 1, 0, 3, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 9, 8, 8, 9, 7, 6, 7, 6, 4, 5, 5, 4, 1, 2, 3, 0, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 0, 1, 2, 3, 4, 4, 5, 5, 6, 
          6, 7, 7, 8, 8, 9, 9 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 2, 3, 0, 1, 5, 5, 4, 4, 6, 
          6, 7, 7, 9, 9, 8, 8 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 4, 4, 5, 5, 0, 1, 2, 3, 8, 
          9, 8, 9, 6, 7, 6, 7 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 5, 5, 4, 4, 2, 3, 0, 1, 9, 
          8, 9, 8, 6, 7, 6, 7 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 6, 7, 6, 7, 8, 9, 9, 8, 0, 
          2, 3, 1, 5, 4, 4, 5 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          6, 7, 6, 7, 9, 8, 8, 9, 2, 0, 1, 3, 4, 5, 5, 4 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 7, 6, 7, 6, 8, 9, 9, 8, 3, 
          1, 0, 2, 4, 5, 5, 4 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          7, 6, 7, 6, 9, 8, 8, 9, 1, 3, 2, 0, 5, 4, 4, 5 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 8, 9, 9, 8, 6, 7, 6, 7, 5, 
          4, 4, 5, 0, 3, 2, 1 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          8, 9, 9, 8, 7, 6, 7, 6, 4, 5, 5, 4, 3, 0, 1, 2 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 9, 8, 8, 9, 6, 7, 6, 7, 4, 
          5, 5, 4, 2, 1, 0, 3 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          9, 8, 8, 9, 7, 6, 7, 6, 5, 4, 4, 5, 1, 2, 3, 0 ] ] )