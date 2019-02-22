rec(
  ct := [ [ 1, 1, 2, 2, 2, 3, 3, 6, 6, 6, 1 ], [ 1, 1, -2, -2, 2, 3, 3, -6, -6, 6, 1 ], 
      [ 1, 1, -2, 2, -2, 3, 3, -6, 6, -6, 1 ], [ 1, 1, 2, -2, -2, 3, 3, 6, -6, -6, 1 ], 
      [ 1, 1, -2, -2, 2, -1, -1, 2, 2, -2, 3 ], [ 1, 1, -2, 2, -2, -1, -1, 2, -2, 2, 3 ], 
      [ 1, 1, 2, -2, -2, -1, -1, -2, 2, 2, 3 ], [ 1, 1, 2, 2, 2, -1, -1, -2, -2, -2, 3 ], 
      [ 1, -1, 0, 0, 0, E(3)-E(3)^2, -E(3)+E(3)^2, 0, 0, 0, 8 ], 
      [ 1, -1, 0, 0, 0, -E(3)+E(3)^2, E(3)-E(3)^2, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 
          9, 9 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 6, 6, 6, 5, 5, 5, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 
          9, 9, 9, 9, 9, 9 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 7, 7, 7, 7, 7, 7, 5, 5, 5, 6, 6, 6, 9, 9, 
          9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 7, 7, 7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 
          8, 8 ], [ 3, 3, 4, 4, 0, 1, 2, 2, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 5, 5, 5, 6, 6, 6, 
          7, 7, 7, 7, 7, 7 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 6, 6, 
          6, 5, 5, 5, 7, 7, 7, 7, 7, 7 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 5, 5, 5, 6, 
          6, 6 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 
          6, 6, 6, 5, 5, 5 ], [ 6, 5, 7, 7, 8, 8, 9, 9, 0, 5, 6, 1, 5, 6, 2, 7, 7, 2, 7, 7, 3, 8, 
          8, 3, 8, 8, 4, 9, 9, 4, 9, 9 ], 
      [ 6, 5, 7, 7, 8, 8, 9, 9, 6, 0, 5, 5, 6, 1, 7, 2, 7, 7, 2, 7, 8, 3, 8, 8, 3, 8, 9, 4, 9, 9, 
          4, 9 ], [ 6, 5, 7, 7, 8, 8, 9, 9, 5, 6, 0, 6, 1, 5, 7, 7, 2, 7, 7, 2, 8, 8, 3, 8, 8, 3, 
          9, 9, 4, 9, 9, 4 ], [ 5, 6, 7, 7, 8, 8, 9, 9, 1, 6, 5, 0, 6, 5, 2, 7, 7, 2, 7, 7, 3, 8, 
          8, 3, 8, 8, 4, 9, 9, 4, 9, 9 ], 
      [ 5, 6, 7, 7, 8, 8, 9, 9, 6, 5, 1, 5, 0, 6, 7, 7, 2, 7, 7, 2, 8, 8, 3, 8, 8, 3, 9, 9, 4, 9, 
          9, 4 ], [ 5, 6, 7, 7, 8, 8, 9, 9, 5, 1, 6, 6, 5, 0, 7, 2, 7, 7, 2, 7, 8, 3, 8, 8, 3, 8, 
          9, 4, 9, 9, 4, 9 ], [ 7, 7, 6, 5, 9, 9, 8, 8, 2, 7, 7, 2, 7, 7, 0, 5, 6, 1, 6, 5, 4, 9, 
          9, 4, 9, 9, 3, 8, 8, 3, 8, 8 ], 
      [ 7, 7, 6, 5, 9, 9, 8, 8, 7, 2, 7, 7, 7, 2, 6, 0, 5, 5, 1, 6, 9, 4, 9, 9, 4, 9, 8, 3, 8, 8, 
          3, 8 ], [ 7, 7, 6, 5, 9, 9, 8, 8, 7, 7, 2, 7, 2, 7, 5, 6, 0, 6, 5, 1, 9, 9, 4, 9, 9, 4, 
          8, 8, 3, 8, 8, 3 ], [ 7, 7, 5, 6, 9, 9, 8, 8, 2, 7, 7, 2, 7, 7, 1, 6, 5, 0, 5, 6, 4, 9, 
          9, 4, 9, 9, 3, 8, 8, 3, 8, 8 ], 
      [ 7, 7, 5, 6, 9, 9, 8, 8, 7, 2, 7, 7, 7, 2, 5, 1, 6, 6, 0, 5, 9, 4, 9, 9, 4, 9, 8, 3, 8, 8, 
          3, 8 ], [ 7, 7, 5, 6, 9, 9, 8, 8, 7, 7, 2, 7, 2, 7, 6, 5, 1, 5, 6, 0, 9, 9, 4, 9, 9, 4, 
          8, 8, 3, 8, 8, 3 ], [ 8, 8, 9, 9, 6, 5, 7, 7, 3, 8, 8, 3, 8, 8, 4, 9, 9, 4, 9, 9, 0, 5, 
          6, 1, 6, 5, 2, 7, 7, 2, 7, 7 ], 
      [ 8, 8, 9, 9, 6, 5, 7, 7, 8, 3, 8, 8, 8, 3, 9, 4, 9, 9, 4, 9, 6, 0, 5, 5, 1, 6, 7, 2, 7, 7, 
          2, 7 ], [ 8, 8, 9, 9, 6, 5, 7, 7, 8, 8, 3, 8, 3, 8, 9, 9, 4, 9, 9, 4, 5, 6, 0, 6, 5, 1, 
          7, 7, 2, 7, 7, 2 ], [ 8, 8, 9, 9, 5, 6, 7, 7, 3, 8, 8, 3, 8, 8, 4, 9, 9, 4, 9, 9, 1, 6, 
          5, 0, 5, 6, 2, 7, 7, 2, 7, 7 ], 
      [ 8, 8, 9, 9, 5, 6, 7, 7, 8, 3, 8, 8, 8, 3, 9, 4, 9, 9, 4, 9, 5, 1, 6, 6, 0, 5, 7, 2, 7, 7, 
          2, 7 ], [ 8, 8, 9, 9, 5, 6, 7, 7, 8, 8, 3, 8, 3, 8, 9, 9, 4, 9, 9, 4, 6, 5, 1, 5, 6, 0, 
          7, 7, 2, 7, 7, 2 ], [ 9, 9, 8, 8, 7, 7, 6, 5, 4, 9, 9, 4, 9, 9, 3, 8, 8, 3, 8, 8, 2, 7, 
          7, 2, 7, 7, 0, 5, 6, 1, 6, 5 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 5, 9, 4, 9, 9, 9, 4, 8, 3, 8, 8, 3, 8, 7, 2, 7, 7, 2, 7, 6, 0, 5, 5, 
          1, 6 ], [ 9, 9, 8, 8, 7, 7, 6, 5, 9, 9, 4, 9, 4, 9, 8, 8, 3, 8, 8, 3, 7, 7, 2, 7, 7, 2, 
          5, 6, 0, 6, 5, 1 ], [ 9, 9, 8, 8, 7, 7, 5, 6, 4, 9, 9, 4, 9, 9, 3, 8, 8, 3, 8, 8, 2, 7, 
          7, 2, 7, 7, 1, 6, 5, 0, 5, 6 ], 
      [ 9, 9, 8, 8, 7, 7, 5, 6, 9, 4, 9, 9, 9, 4, 8, 3, 8, 8, 3, 8, 7, 2, 7, 7, 2, 7, 5, 1, 6, 6, 
          0, 5 ], [ 9, 9, 8, 8, 7, 7, 5, 6, 9, 9, 4, 9, 4, 9, 8, 8, 3, 8, 8, 3, 7, 7, 2, 7, 7, 2, 
          6, 5, 1, 5, 6, 0 ] ] )