rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -4, -4, 1 ], 
      [ 2, 2, -2, -2, 4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, -2, 2, 2, -2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 0, 
          0, 4 ], [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, 
          E(8)+E(8)^3, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 0, 
          0, 4 ], [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 
          -E(8)-E(8)^3, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 
          14, 15, 15, 15, 15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 11, 11, 10, 10, 
          13, 13, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 13, 13, 10, 10, 11, 11, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 13, 13, 12, 12, 11, 11, 10, 10, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 9, 9, 6, 6, 7, 7, 10, 11, 10, 11, 12, 13, 12, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 9, 9, 6, 6, 7, 7, 11, 10, 11, 10, 13, 12, 13, 12, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 12, 13, 12, 13, 10, 11, 10, 11, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 13, 12, 13, 12, 11, 10, 11, 10, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 0, 1, 2, 3, 4, 4, 5, 5, 14, 14, 14, 14, 15, 15, 15, 15, 10, 10, 
          11, 11, 12, 12, 13, 13 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 1, 0, 3, 2, 4, 4, 5, 5, 14, 14, 14, 14, 15, 15, 15, 15, 11, 11, 
          10, 10, 13, 13, 12, 12 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 2, 3, 0, 1, 5, 5, 4, 4, 15, 15, 15, 15, 14, 14, 14, 14, 12, 12, 
          13, 13, 10, 10, 11, 11 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 3, 2, 1, 0, 5, 5, 4, 4, 15, 15, 15, 15, 14, 14, 14, 14, 13, 13, 
          12, 12, 11, 11, 10, 10 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 0, 1, 2, 3, 14, 14, 14, 14, 15, 15, 15, 15, 10, 11, 
          10, 11, 12, 13, 12, 13 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 1, 0, 3, 2, 14, 14, 14, 14, 15, 15, 15, 15, 11, 10, 
          11, 10, 13, 12, 13, 12 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 2, 3, 0, 1, 15, 15, 15, 15, 14, 14, 14, 14, 12, 13, 
          12, 13, 10, 11, 10, 11 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 2, 1, 0, 15, 15, 15, 15, 14, 14, 14, 14, 13, 12, 
          13, 12, 11, 10, 11, 10 ], 
      [ 11, 10, 13, 12, 11, 10, 13, 12, 15, 15, 14, 14, 15, 15, 14, 14, 0, 4, 4, 1, 2, 5, 5, 3, 7, 
          9, 9, 7, 6, 8, 8, 6 ], [ 11, 10, 13, 12, 10, 11, 12, 13, 15, 15, 14, 14, 15, 15, 14, 14, 
          4, 0, 1, 4, 5, 2, 3, 5, 9, 7, 7, 9, 8, 6, 6, 8 ], 
      [ 10, 11, 12, 13, 11, 10, 13, 12, 15, 15, 14, 14, 15, 15, 14, 14, 4, 1, 0, 4, 5, 3, 2, 5, 9, 
          7, 7, 9, 8, 6, 6, 8 ], [ 10, 11, 12, 13, 10, 11, 12, 13, 15, 15, 14, 14, 15, 15, 14, 14, 
          1, 4, 4, 0, 3, 5, 5, 2, 7, 9, 9, 7, 6, 8, 8, 6 ], 
      [ 13, 12, 11, 10, 13, 12, 11, 10, 14, 14, 15, 15, 14, 14, 15, 15, 2, 5, 5, 3, 0, 4, 4, 1, 6, 
          8, 8, 6, 7, 9, 9, 7 ], [ 13, 12, 11, 10, 12, 13, 10, 11, 14, 14, 15, 15, 14, 14, 15, 15, 
          5, 2, 3, 5, 4, 0, 1, 4, 8, 6, 6, 8, 9, 7, 7, 9 ], 
      [ 12, 13, 10, 11, 13, 12, 11, 10, 14, 14, 15, 15, 14, 14, 15, 15, 5, 3, 2, 5, 4, 1, 0, 4, 8, 
          6, 6, 8, 9, 7, 7, 9 ], [ 12, 13, 10, 11, 12, 13, 10, 11, 14, 14, 15, 15, 14, 14, 15, 15, 
          3, 5, 5, 2, 1, 4, 4, 0, 6, 8, 8, 6, 7, 9, 9, 7 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 11, 10, 13, 12, 11, 10, 13, 12, 7, 9, 9, 7, 6, 8, 8, 6, 0, 
          4, 4, 1, 2, 5, 5, 3 ], [ 15, 15, 14, 14, 15, 15, 14, 14, 11, 10, 13, 12, 10, 11, 12, 13, 
          9, 7, 7, 9, 8, 6, 6, 8, 4, 0, 1, 4, 5, 2, 3, 5 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 10, 11, 12, 13, 11, 10, 13, 12, 9, 7, 7, 9, 8, 6, 6, 8, 4, 
          1, 0, 4, 5, 3, 2, 5 ], [ 15, 15, 14, 14, 15, 15, 14, 14, 10, 11, 12, 13, 10, 11, 12, 13, 
          7, 9, 9, 7, 6, 8, 8, 6, 1, 4, 4, 0, 3, 5, 5, 2 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 13, 12, 11, 10, 13, 12, 11, 10, 6, 8, 8, 6, 7, 9, 9, 7, 2, 
          5, 5, 3, 0, 4, 4, 1 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 13, 12, 11, 10, 12, 13, 10, 11, 
          8, 6, 6, 8, 9, 7, 7, 9, 5, 2, 3, 5, 4, 0, 1, 4 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 12, 13, 10, 11, 13, 12, 11, 10, 8, 6, 6, 8, 9, 7, 7, 9, 5, 
          3, 2, 5, 4, 1, 0, 4 ], [ 14, 14, 15, 15, 14, 14, 15, 15, 12, 13, 10, 11, 12, 13, 10, 11, 
          6, 8, 8, 6, 7, 9, 9, 7, 3, 5, 5, 2, 1, 4, 4, 0 ] ] )