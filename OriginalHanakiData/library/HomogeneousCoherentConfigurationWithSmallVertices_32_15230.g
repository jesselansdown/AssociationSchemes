rec(
  ct := [ [ 1, 1, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 2, 2, 2, -2, -2, -4, -4, -4, 4, 4, 1 ]
        , [ 1, 1, 2, 2, 2, -2, -2, -4, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 2, 2, 2, 2, 2, 4, -4, -4, -4, -4, 1 ], [ 1, 1, -2, -2, 2, 0, 0, 0, 0, 0, -4, 4, 2 ], 
      [ 1, 1, -2, -2, 2, 0, 0, 0, 0, 0, 4, -4, 2 ], [ 1, 1, -2, 2, -2, 0, 0, 0, -4, 4, 0, 0, 2 ], 
      [ 1, 1, -2, 2, -2, 0, 0, 0, 4, -4, 0, 0, 2 ], [ 1, 1, 2, -2, -2, -2, -2, 4, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 2, -2, -2, 2, 2, -4, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 0, 0, 0, -E(8)+E(8)^3, E(8)-E(8)^3, 0, 0, 0, 0, 0, 8 ], 
      [ 1, -1, 0, 0, 0, E(8)-E(8)^3, -E(8)+E(8)^3, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 
          11, 11, 11 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 6, 6, 5, 5, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 
          10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 6, 5, 6, 7, 7, 7, 7, 9, 9, 9, 9, 8, 8, 8, 8, 11, 11, 11, 11, 
          10, 10, 10, 10 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 6, 5, 6, 5, 7, 7, 7, 7, 9, 9, 9, 9, 8, 8, 8, 
          8, 11, 11, 11, 11, 10, 10, 10, 10 ], 
      [ 3, 3, 4, 4, 0, 1, 2, 2, 7, 7, 7, 7, 5, 5, 6, 6, 8, 8, 8, 8, 9, 9, 9, 9, 11, 11, 11, 11, 
          10, 10, 10, 10 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 7, 7, 7, 7, 6, 6, 5, 5, 8, 8, 8, 8, 9, 9, 9, 
          9, 11, 11, 11, 11, 10, 10, 10, 10 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 7, 7, 7, 7, 5, 6, 5, 6, 9, 9, 9, 9, 8, 8, 8, 8, 10, 10, 10, 10, 
          11, 11, 11, 11 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 7, 7, 7, 7, 6, 5, 6, 5, 9, 9, 9, 9, 8, 8, 8, 
          8, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 5, 6, 5, 6, 7, 7, 7, 7, 0, 2, 2, 1, 3, 4, 4, 3, 10, 10, 11, 11, 10, 10, 11, 11, 8, 8, 9, 
          9, 8, 8, 9, 9 ], [ 5, 6, 6, 5, 7, 7, 7, 7, 2, 0, 1, 2, 4, 3, 3, 4, 11, 11, 10, 10, 11, 
          11, 10, 10, 9, 9, 8, 8, 9, 9, 8, 8 ], 
      [ 6, 5, 5, 6, 7, 7, 7, 7, 2, 1, 0, 2, 4, 3, 3, 4, 11, 11, 10, 10, 11, 11, 10, 10, 9, 9, 8, 
          8, 9, 9, 8, 8 ], [ 6, 5, 6, 5, 7, 7, 7, 7, 1, 2, 2, 0, 3, 4, 4, 3, 10, 10, 11, 11, 10, 
          10, 11, 11, 8, 8, 9, 9, 8, 8, 9, 9 ], 
      [ 7, 7, 7, 7, 5, 6, 5, 6, 3, 4, 4, 3, 0, 2, 2, 1, 11, 11, 10, 10, 11, 11, 10, 10, 8, 8, 9, 
          9, 8, 8, 9, 9 ], [ 7, 7, 7, 7, 5, 6, 6, 5, 4, 3, 3, 4, 2, 0, 1, 2, 10, 10, 11, 11, 10, 
          10, 11, 11, 9, 9, 8, 8, 9, 9, 8, 8 ], 
      [ 7, 7, 7, 7, 6, 5, 5, 6, 4, 3, 3, 4, 2, 1, 0, 2, 10, 10, 11, 11, 10, 10, 11, 11, 9, 9, 8, 
          8, 9, 9, 8, 8 ], [ 7, 7, 7, 7, 6, 5, 6, 5, 3, 4, 4, 3, 1, 2, 2, 0, 11, 11, 10, 10, 11, 
          11, 10, 10, 8, 8, 9, 9, 8, 8, 9, 9 ], 
      [ 8, 8, 9, 9, 8, 8, 9, 9, 10, 11, 11, 10, 11, 10, 10, 11, 0, 1, 3, 3, 4, 4, 2, 2, 7, 7, 5, 
          6, 5, 6, 7, 7 ], [ 8, 8, 9, 9, 8, 8, 9, 9, 10, 11, 11, 10, 11, 10, 10, 11, 1, 0, 3, 3, 
          4, 4, 2, 2, 7, 7, 6, 5, 6, 5, 7, 7 ], 
      [ 8, 8, 9, 9, 8, 8, 9, 9, 11, 10, 10, 11, 10, 11, 11, 10, 3, 3, 0, 1, 2, 2, 4, 4, 5, 6, 7, 
          7, 7, 7, 5, 6 ], [ 8, 8, 9, 9, 8, 8, 9, 9, 11, 10, 10, 11, 10, 11, 11, 10, 3, 3, 1, 0, 
          2, 2, 4, 4, 6, 5, 7, 7, 7, 7, 6, 5 ], 
      [ 9, 9, 8, 8, 9, 9, 8, 8, 10, 11, 11, 10, 11, 10, 10, 11, 4, 4, 2, 2, 0, 1, 3, 3, 5, 6, 7, 
          7, 7, 7, 6, 5 ], [ 9, 9, 8, 8, 9, 9, 8, 8, 10, 11, 11, 10, 11, 10, 10, 11, 4, 4, 2, 2, 
          1, 0, 3, 3, 6, 5, 7, 7, 7, 7, 5, 6 ], 
      [ 9, 9, 8, 8, 9, 9, 8, 8, 11, 10, 10, 11, 10, 11, 11, 10, 2, 2, 4, 4, 3, 3, 0, 1, 7, 7, 5, 
          6, 6, 5, 7, 7 ], [ 9, 9, 8, 8, 9, 9, 8, 8, 11, 10, 10, 11, 10, 11, 11, 10, 2, 2, 4, 4, 
          3, 3, 1, 0, 7, 7, 6, 5, 5, 6, 7, 7 ], 
      [ 10, 10, 11, 11, 11, 11, 10, 10, 8, 9, 9, 8, 8, 9, 9, 8, 7, 7, 5, 6, 5, 6, 7, 7, 0, 1, 4, 
          4, 3, 3, 2, 2 ], [ 10, 10, 11, 11, 11, 11, 10, 10, 8, 9, 9, 8, 8, 9, 9, 8, 7, 7, 6, 5, 
          6, 5, 7, 7, 1, 0, 4, 4, 3, 3, 2, 2 ], 
      [ 10, 10, 11, 11, 11, 11, 10, 10, 9, 8, 8, 9, 9, 8, 8, 9, 5, 6, 7, 7, 7, 7, 5, 6, 4, 4, 0, 
          1, 2, 2, 3, 3 ], [ 10, 10, 11, 11, 11, 11, 10, 10, 9, 8, 8, 9, 9, 8, 8, 9, 6, 5, 7, 7, 
          7, 7, 6, 5, 4, 4, 1, 0, 2, 2, 3, 3 ], 
      [ 11, 11, 10, 10, 10, 10, 11, 11, 8, 9, 9, 8, 8, 9, 9, 8, 5, 6, 7, 7, 7, 7, 6, 5, 3, 3, 2, 
          2, 0, 1, 4, 4 ], [ 11, 11, 10, 10, 10, 10, 11, 11, 8, 9, 9, 8, 8, 9, 9, 8, 6, 5, 7, 7, 
          7, 7, 5, 6, 3, 3, 2, 2, 1, 0, 4, 4 ], 
      [ 11, 11, 10, 10, 10, 10, 11, 11, 9, 8, 8, 9, 9, 8, 8, 9, 7, 7, 5, 6, 6, 5, 7, 7, 2, 2, 3, 
          3, 4, 4, 0, 1 ], [ 11, 11, 10, 10, 10, 10, 11, 11, 9, 8, 8, 9, 9, 8, 8, 9, 7, 7, 6, 5, 
          5, 6, 7, 7, 2, 2, 3, 3, 4, 4, 1, 0 ] ] )