rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2, 2, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 
          E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2, 2, E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 
          -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2, -2, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 
          -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2, -2, E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 
          E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 
          15, 16, 16, 17, 17 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 
          13, 13, 12, 12, 16, 16, 17, 17, 14, 14, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 12, 12, 13, 13, 10, 10, 11, 11, 15, 15, 
          14, 14, 17, 17, 16, 16 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 13, 13, 12, 12, 11, 11, 10, 10, 17, 17, 
          16, 16, 15, 15, 14, 14 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 9, 8, 9, 6, 7, 6, 7, 10, 11, 10, 11, 12, 13, 12, 13, 15, 17, 
          14, 16, 15, 17, 14, 16 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6, 11, 10, 11, 10, 13, 12, 13, 12, 17, 15, 
          16, 14, 17, 15, 16, 14 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 8, 9, 8, 6, 7, 6, 7, 12, 13, 12, 13, 10, 11, 10, 11, 14, 16, 
          15, 17, 14, 16, 15, 17 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6, 13, 12, 13, 12, 11, 10, 11, 10, 16, 14, 
          17, 15, 16, 14, 17, 15 ], 
      [ 6, 7, 6, 7, 8, 9, 9, 8, 0, 2, 3, 1, 5, 4, 4, 5, 14, 15, 17, 16, 15, 14, 16, 17, 12, 10, 
          10, 12, 11, 13, 13, 11 ], 
      [ 6, 7, 6, 7, 9, 8, 8, 9, 2, 0, 1, 3, 4, 5, 5, 4, 15, 14, 16, 17, 14, 15, 17, 16, 10, 12, 
          12, 10, 13, 11, 11, 13 ], 
      [ 7, 6, 7, 6, 8, 9, 9, 8, 3, 1, 0, 2, 4, 5, 5, 4, 17, 16, 14, 15, 16, 17, 15, 14, 11, 13, 
          13, 11, 12, 10, 10, 12 ], 
      [ 7, 6, 7, 6, 9, 8, 8, 9, 1, 3, 2, 0, 5, 4, 4, 5, 16, 17, 15, 14, 17, 16, 14, 15, 13, 11, 
          11, 13, 10, 12, 12, 10 ], 
      [ 8, 9, 9, 8, 6, 7, 6, 7, 5, 4, 4, 5, 0, 3, 2, 1, 14, 17, 15, 16, 15, 16, 14, 17, 10, 13, 
          12, 11, 12, 11, 10, 13 ], 
      [ 8, 9, 9, 8, 7, 6, 7, 6, 4, 5, 5, 4, 3, 0, 1, 2, 17, 14, 16, 15, 16, 15, 17, 14, 13, 10, 
          11, 12, 11, 12, 13, 10 ], 
      [ 9, 8, 8, 9, 6, 7, 6, 7, 4, 5, 5, 4, 2, 1, 0, 3, 15, 16, 14, 17, 14, 17, 15, 16, 12, 11, 
          10, 13, 10, 13, 12, 11 ], 
      [ 9, 8, 8, 9, 7, 6, 7, 6, 5, 4, 4, 5, 1, 2, 3, 0, 16, 15, 17, 14, 17, 14, 16, 15, 11, 12, 
          13, 10, 13, 10, 11, 12 ], 
      [ 11, 10, 13, 12, 11, 10, 13, 12, 15, 14, 16, 17, 15, 16, 14, 17, 0, 4, 4, 1, 2, 5, 5, 3, 7, 
          8, 7, 9, 9, 6, 8, 6 ], [ 11, 10, 13, 12, 10, 11, 12, 13, 14, 15, 17, 16, 16, 15, 17, 14, 
          4, 0, 1, 4, 5, 2, 3, 5, 8, 7, 9, 7, 6, 9, 6, 8 ], 
      [ 10, 11, 12, 13, 11, 10, 13, 12, 16, 17, 15, 14, 14, 17, 15, 16, 4, 1, 0, 4, 5, 3, 2, 5, 9, 
          6, 8, 6, 7, 8, 7, 9 ], [ 10, 11, 12, 13, 10, 11, 12, 13, 17, 16, 14, 15, 17, 14, 16, 15, 
          1, 4, 4, 0, 3, 5, 5, 2, 6, 9, 6, 8, 8, 7, 9, 7 ], 
      [ 13, 12, 11, 10, 13, 12, 11, 10, 14, 15, 17, 16, 14, 17, 15, 16, 2, 5, 5, 3, 0, 4, 4, 1, 7, 
          9, 7, 8, 8, 6, 9, 6 ], [ 13, 12, 11, 10, 12, 13, 10, 11, 15, 14, 16, 17, 17, 14, 16, 15, 
          5, 2, 3, 5, 4, 0, 1, 4, 9, 7, 8, 7, 6, 8, 6, 9 ], 
      [ 12, 13, 10, 11, 13, 12, 11, 10, 17, 16, 14, 15, 15, 16, 14, 17, 5, 3, 2, 5, 4, 1, 0, 4, 8, 
          6, 9, 6, 7, 9, 7, 8 ], [ 12, 13, 10, 11, 12, 13, 10, 11, 16, 17, 15, 14, 16, 15, 17, 14, 
          3, 5, 5, 2, 1, 4, 4, 0, 6, 8, 6, 9, 9, 7, 8, 7 ], 
      [ 15, 17, 14, 16, 14, 16, 15, 17, 13, 11, 10, 12, 11, 12, 13, 10, 7, 8, 9, 6, 7, 9, 8, 6, 0, 
          5, 2, 4, 5, 1, 4, 3 ], [ 15, 17, 14, 16, 16, 14, 17, 15, 11, 13, 12, 10, 12, 11, 10, 13, 
          8, 7, 6, 9, 9, 7, 6, 8, 5, 0, 4, 2, 1, 5, 3, 4 ], 
      [ 14, 16, 15, 17, 15, 17, 14, 16, 11, 13, 12, 10, 13, 10, 11, 12, 7, 9, 8, 6, 7, 8, 9, 6, 2, 
          4, 0, 5, 4, 3, 5, 1 ], [ 14, 16, 15, 17, 17, 15, 16, 14, 13, 11, 10, 12, 10, 13, 12, 11, 
          9, 7, 6, 8, 8, 7, 6, 9, 4, 2, 5, 0, 3, 4, 1, 5 ], 
      [ 17, 15, 16, 14, 14, 16, 15, 17, 10, 12, 13, 11, 13, 10, 11, 12, 9, 6, 7, 8, 8, 6, 7, 9, 5, 
          1, 4, 3, 0, 5, 2, 4 ], [ 17, 15, 16, 14, 16, 14, 17, 15, 12, 10, 11, 13, 10, 13, 12, 11, 
          6, 9, 8, 7, 6, 8, 9, 7, 1, 5, 3, 4, 5, 0, 4, 2 ], 
      [ 16, 14, 17, 15, 15, 17, 14, 16, 12, 10, 11, 13, 11, 12, 13, 10, 8, 6, 7, 9, 9, 6, 7, 8, 4, 
          3, 5, 1, 2, 4, 0, 5 ], [ 16, 14, 17, 15, 17, 15, 16, 14, 10, 12, 13, 11, 12, 11, 10, 13, 
          6, 8, 9, 7, 6, 9, 8, 7, 3, 4, 1, 5, 4, 2, 5, 0 ] ] )