rec(
  ct := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 1 ], 
      [ 1, 1, 2, -2, -2, -2, -2, -2, -2, 2, 2, 4, 4, -4, 1 ], 
      [ 1, 1, 2, -2, -2, -2, -2, 2, 2, -2, -2, 4, -4, 4, 1 ], 
      [ 1, 1, 2, -2, -2, 2, 2, -2, -2, -2, -2, -4, 4, 4, 1 ], 
      [ 1, 1, 2, -2, -2, 2, 2, 2, 2, 2, 2, -4, -4, -4, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, -2, -2, 2, 2, -4, -4, 4, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, 2, 2, -2, -2, -4, 4, -4, 1 ], 
      [ 1, 1, 2, 2, 2, 2, 2, -2, -2, -2, -2, 4, -4, -4, 1 ], 
      [ 2, 2, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 0, -E(8)+E(8)^3, E(8)-E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ], 
      [ 1, -1, 0, E(8)-E(8)^3, -E(8)+E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 2, 2, 4, 4, 3, 3, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 2, 0, 1, 3, 4, 3, 4, 6, 6, 5, 5, 8, 8, 7, 7, 10, 10, 9, 9, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 2, 2, 1, 0, 4, 3, 4, 3, 6, 6, 5, 5, 8, 8, 7, 7, 10, 10, 9, 9, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 3, 4, 3, 4, 0, 2, 2, 1, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 5, 5, 6, 6, 7, 7, 
          8, 8, 9, 9, 10, 10 ], [ 3, 4, 4, 3, 2, 0, 1, 2, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 
          13, 13, 6, 6, 5, 5, 8, 8, 7, 7, 10, 10, 9, 9 ], 
      [ 4, 3, 3, 4, 2, 1, 0, 2, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 6, 6, 5, 5, 8, 8, 
          7, 7, 10, 10, 9, 9 ], [ 4, 3, 4, 3, 1, 2, 2, 0, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 
          13, 13, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10 ], 
      [ 6, 6, 5, 5, 11, 11, 11, 11, 0, 1, 2, 2, 9, 9, 10, 10, 8, 8, 7, 7, 3, 4, 3, 4, 13, 13, 13, 
          13, 12, 12, 12, 12 ], [ 6, 6, 5, 5, 11, 11, 11, 11, 1, 0, 2, 2, 9, 9, 10, 10, 8, 8, 7, 
          7, 4, 3, 4, 3, 13, 13, 13, 13, 12, 12, 12, 12 ], 
      [ 5, 5, 6, 6, 11, 11, 11, 11, 2, 2, 0, 1, 10, 10, 9, 9, 7, 7, 8, 8, 3, 4, 4, 3, 13, 13, 13, 
          13, 12, 12, 12, 12 ], [ 5, 5, 6, 6, 11, 11, 11, 11, 2, 2, 1, 0, 10, 10, 9, 9, 7, 7, 8, 
          8, 4, 3, 3, 4, 13, 13, 13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 7, 7, 12, 12, 12, 12, 10, 10, 9, 9, 0, 1, 2, 2, 5, 5, 6, 6, 13, 13, 13, 13, 3, 4, 3, 
          4, 11, 11, 11, 11 ], [ 8, 8, 7, 7, 12, 12, 12, 12, 10, 10, 9, 9, 1, 0, 2, 2, 5, 5, 6, 6, 
          13, 13, 13, 13, 4, 3, 4, 3, 11, 11, 11, 11 ], 
      [ 7, 7, 8, 8, 12, 12, 12, 12, 9, 9, 10, 10, 2, 2, 0, 1, 6, 6, 5, 5, 13, 13, 13, 13, 3, 4, 4, 
          3, 11, 11, 11, 11 ], [ 7, 7, 8, 8, 12, 12, 12, 12, 9, 9, 10, 10, 2, 2, 1, 0, 6, 6, 5, 5, 
          13, 13, 13, 13, 4, 3, 3, 4, 11, 11, 11, 11 ], 
      [ 10, 10, 9, 9, 13, 13, 13, 13, 7, 7, 8, 8, 6, 6, 5, 5, 0, 1, 2, 2, 12, 12, 12, 12, 11, 11, 
          11, 11, 3, 4, 3, 4 ], [ 10, 10, 9, 9, 13, 13, 13, 13, 7, 7, 8, 8, 6, 6, 5, 5, 1, 0, 2, 
          2, 12, 12, 12, 12, 11, 11, 11, 11, 4, 3, 4, 3 ], 
      [ 9, 9, 10, 10, 13, 13, 13, 13, 8, 8, 7, 7, 5, 5, 6, 6, 2, 2, 0, 1, 12, 12, 12, 12, 11, 11, 
          11, 11, 3, 4, 4, 3 ], [ 9, 9, 10, 10, 13, 13, 13, 13, 8, 8, 7, 7, 5, 5, 6, 6, 2, 2, 1, 
          0, 12, 12, 12, 12, 11, 11, 11, 11, 4, 3, 3, 4 ], 
      [ 11, 11, 11, 11, 6, 5, 5, 6, 3, 4, 3, 4, 13, 13, 13, 13, 12, 12, 12, 12, 0, 1, 2, 2, 9, 9, 
          10, 10, 8, 8, 7, 7 ], [ 11, 11, 11, 11, 6, 5, 5, 6, 4, 3, 4, 3, 13, 13, 13, 13, 12, 12, 
          12, 12, 1, 0, 2, 2, 9, 9, 10, 10, 8, 8, 7, 7 ], 
      [ 11, 11, 11, 11, 5, 6, 6, 5, 3, 4, 4, 3, 13, 13, 13, 13, 12, 12, 12, 12, 2, 2, 0, 1, 10, 
          10, 9, 9, 7, 7, 8, 8 ], 
      [ 11, 11, 11, 11, 5, 6, 6, 5, 4, 3, 3, 4, 13, 13, 13, 13, 12, 12, 12, 12, 2, 2, 1, 0, 10, 
          10, 9, 9, 7, 7, 8, 8 ], 
      [ 12, 12, 12, 12, 8, 7, 7, 8, 13, 13, 13, 13, 3, 4, 3, 4, 11, 11, 11, 11, 10, 10, 9, 9, 0, 
          1, 2, 2, 5, 5, 6, 6 ], [ 12, 12, 12, 12, 8, 7, 7, 8, 13, 13, 13, 13, 4, 3, 4, 3, 11, 11, 
          11, 11, 10, 10, 9, 9, 1, 0, 2, 2, 5, 5, 6, 6 ], 
      [ 12, 12, 12, 12, 7, 8, 8, 7, 13, 13, 13, 13, 3, 4, 4, 3, 11, 11, 11, 11, 9, 9, 10, 10, 2, 
          2, 0, 1, 6, 6, 5, 5 ], [ 12, 12, 12, 12, 7, 8, 8, 7, 13, 13, 13, 13, 4, 3, 3, 4, 11, 11, 
          11, 11, 9, 9, 10, 10, 2, 2, 1, 0, 6, 6, 5, 5 ], 
      [ 13, 13, 13, 13, 10, 9, 9, 10, 12, 12, 12, 12, 11, 11, 11, 11, 3, 4, 3, 4, 7, 7, 8, 8, 6, 
          6, 5, 5, 0, 1, 2, 2 ], [ 13, 13, 13, 13, 10, 9, 9, 10, 12, 12, 12, 12, 11, 11, 11, 11, 
          4, 3, 4, 3, 7, 7, 8, 8, 6, 6, 5, 5, 1, 0, 2, 2 ], 
      [ 13, 13, 13, 13, 9, 10, 10, 9, 12, 12, 12, 12, 11, 11, 11, 11, 3, 4, 4, 3, 8, 8, 7, 7, 5, 
          5, 6, 6, 2, 2, 0, 1 ], [ 13, 13, 13, 13, 9, 10, 10, 9, 12, 12, 12, 12, 11, 11, 11, 11, 
          4, 3, 3, 4, 8, 8, 7, 7, 5, 5, 6, 6, 2, 2, 1, 0 ] ] )