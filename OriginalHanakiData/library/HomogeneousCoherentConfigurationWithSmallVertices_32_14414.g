rec(
  ct := [ [ 1, 1, 2, 2, 2, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 2, 2, 2, -4, -4, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 2, 2, 2, -4, -4, 4, 4, -4, -4, 1 ], [ 1, 1, 2, 2, 2, 4, 4, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 4, -4, -4, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 0, -E(8)+E(8)^3, E(8)-E(8)^3, 0, 0, 0, 0, 0, 0, 8 ], 
      [ 1, -1, 0, E(8)-E(8)^3, -E(8)+E(8)^3, 0, 0, 0, 0, 0, 0, 8 ], 
      [ 1, 1, -2, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 
          10, 10 ], [ 1, 0, 2, 2, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 
          9, 9, 9, 10, 10, 10, 10 ], 
      [ 2, 2, 0, 1, 3, 4, 3, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 
          10, 10, 10 ], [ 2, 2, 1, 0, 4, 3, 4, 3, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 
          9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 3, 4, 3, 4, 0, 2, 2, 1, 6, 6, 6, 6, 5, 5, 5, 5, 8, 8, 8, 8, 7, 7, 7, 7, 10, 10, 10, 10, 9, 
          9, 9, 9 ], [ 3, 4, 4, 3, 2, 0, 1, 2, 6, 6, 6, 6, 5, 5, 5, 5, 8, 8, 8, 8, 7, 7, 7, 7, 10, 
          10, 10, 10, 9, 9, 9, 9 ], 
      [ 4, 3, 3, 4, 2, 1, 0, 2, 6, 6, 6, 6, 5, 5, 5, 5, 8, 8, 8, 8, 7, 7, 7, 7, 10, 10, 10, 10, 9, 
          9, 9, 9 ], [ 4, 3, 4, 3, 1, 2, 2, 0, 6, 6, 6, 6, 5, 5, 5, 5, 8, 8, 8, 8, 7, 7, 7, 7, 10, 
          10, 10, 10, 9, 9, 9, 9 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 0, 1, 2, 2, 3, 3, 4, 4, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 7, 
          7, 7, 7 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 1, 0, 2, 2, 4, 4, 3, 3, 9, 9, 9, 9, 10, 10, 10, 10, 
          8, 8, 8, 8, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 2, 2, 0, 1, 3, 4, 3, 4, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 7, 
          7, 7, 7 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 2, 2, 1, 0, 4, 3, 4, 3, 9, 9, 9, 9, 10, 10, 10, 10, 
          8, 8, 8, 8, 7, 7, 7, 7 ], 
      [ 5, 5, 5, 5, 6, 6, 6, 6, 3, 4, 3, 4, 0, 2, 2, 1, 10, 10, 10, 10, 9, 9, 9, 9, 7, 7, 7, 7, 8, 
          8, 8, 8 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 3, 4, 4, 3, 2, 0, 1, 2, 10, 10, 10, 10, 9, 9, 9, 9, 
          7, 7, 7, 7, 8, 8, 8, 8 ], 
      [ 5, 5, 5, 5, 6, 6, 6, 6, 4, 3, 3, 4, 2, 1, 0, 2, 10, 10, 10, 10, 9, 9, 9, 9, 7, 7, 7, 7, 8, 
          8, 8, 8 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 4, 3, 4, 3, 1, 2, 2, 0, 10, 10, 10, 10, 9, 9, 9, 9, 
          7, 7, 7, 7, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 7, 7, 7, 7, 10, 10, 10, 10, 9, 9, 9, 9, 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 
          6, 6, 6 ], [ 8, 8, 8, 8, 7, 7, 7, 7, 10, 10, 10, 10, 9, 9, 9, 9, 1, 0, 2, 2, 4, 4, 3, 3, 
          5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 8, 8, 8, 8, 7, 7, 7, 7, 10, 10, 10, 10, 9, 9, 9, 9, 2, 2, 0, 1, 3, 4, 3, 4, 5, 5, 5, 5, 6, 
          6, 6, 6 ], [ 8, 8, 8, 8, 7, 7, 7, 7, 10, 10, 10, 10, 9, 9, 9, 9, 2, 2, 1, 0, 4, 3, 4, 3, 
          5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 3, 4, 3, 4, 0, 2, 2, 1, 6, 6, 6, 6, 5, 
          5, 5, 5 ], [ 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 3, 4, 4, 3, 2, 0, 1, 2, 
          6, 6, 6, 6, 5, 5, 5, 5 ], 
      [ 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 4, 3, 3, 4, 2, 1, 0, 2, 6, 6, 6, 6, 5, 
          5, 5, 5 ], [ 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 4, 3, 4, 3, 1, 2, 2, 0, 
          6, 6, 6, 6, 5, 5, 5, 5 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 7, 7, 7, 7, 8, 8, 8, 8, 6, 6, 6, 6, 5, 5, 5, 5, 0, 1, 2, 2, 3, 
          3, 4, 4 ], [ 10, 10, 10, 10, 9, 9, 9, 9, 7, 7, 7, 7, 8, 8, 8, 8, 6, 6, 6, 6, 5, 5, 5, 5, 
          1, 0, 2, 2, 4, 4, 3, 3 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 7, 7, 7, 7, 8, 8, 8, 8, 6, 6, 6, 6, 5, 5, 5, 5, 2, 2, 0, 1, 3, 
          4, 3, 4 ], [ 10, 10, 10, 10, 9, 9, 9, 9, 7, 7, 7, 7, 8, 8, 8, 8, 6, 6, 6, 6, 5, 5, 5, 5, 
          2, 2, 1, 0, 4, 3, 4, 3 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 7, 7, 7, 7, 5, 5, 5, 5, 6, 6, 6, 6, 3, 4, 3, 4, 0, 
          2, 2, 1 ], [ 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 7, 7, 7, 7, 5, 5, 5, 5, 6, 6, 6, 6, 
          3, 4, 4, 3, 2, 0, 1, 2 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 7, 7, 7, 7, 5, 5, 5, 5, 6, 6, 6, 6, 4, 3, 3, 4, 2, 
          1, 0, 2 ], [ 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 7, 7, 7, 7, 5, 5, 5, 5, 6, 6, 6, 6, 
          4, 3, 4, 3, 1, 2, 2, 0 ] ] )