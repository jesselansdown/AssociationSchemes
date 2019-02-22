rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2*E(4), -2*E(4), E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, 
          E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2*E(4), -2*E(4), -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, 
          -E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2*E(4), 2*E(4), E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, 
          E(8)+E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2*E(4), 2*E(4), -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, 
          -E(8)-E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, 2 ], 
      [ 1, -1, 1, -1, 0, 0, 2*E(4), -2*E(4), 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, 
          E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 2 ], 
      [ 1, -1, 1, -1, 0, 0, 2*E(4), -2*E(4), 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, 
          -E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 2 ], 
      [ 1, -1, 1, -1, 0, 0, -2*E(4), 2*E(4), 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, 
          E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 2 ], 
      [ 1, -1, 1, -1, 0, 0, -2*E(4), 2*E(4), 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, 
          -E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 
          15, 16, 16, 17, 17 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 13, 13, 
          10, 10, 11, 11, 16, 16, 17, 17, 14, 14, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 17, 17, 
          16, 16, 15, 15, 14, 14 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 13, 13, 12, 12, 11, 11, 10, 10, 15, 15, 
          14, 14, 17, 17, 16, 16 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 9, 8, 9, 6, 7, 6, 7, 10, 12, 11, 13, 10, 12, 11, 13, 15, 17, 
          14, 16, 15, 17, 14, 16 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6, 12, 10, 13, 11, 12, 10, 13, 11, 17, 15, 
          16, 14, 17, 15, 16, 14 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 8, 9, 8, 6, 7, 6, 7, 11, 13, 10, 12, 11, 13, 10, 12, 16, 14, 
          17, 15, 16, 14, 17, 15 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6, 13, 11, 12, 10, 13, 11, 12, 10, 14, 16, 
          15, 17, 14, 16, 15, 17 ], 
      [ 7, 6, 7, 6, 9, 8, 8, 9, 0, 2, 3, 1, 5, 4, 4, 5, 14, 17, 17, 14, 15, 16, 16, 15, 12, 13, 
          11, 10, 11, 10, 12, 13 ], 
      [ 7, 6, 7, 6, 8, 9, 9, 8, 2, 0, 1, 3, 4, 5, 5, 4, 17, 14, 14, 17, 16, 15, 15, 16, 13, 12, 
          10, 11, 10, 11, 13, 12 ], 
      [ 6, 7, 6, 7, 9, 8, 8, 9, 3, 1, 0, 2, 4, 5, 5, 4, 15, 16, 16, 15, 14, 17, 17, 14, 11, 10, 
          12, 13, 12, 13, 11, 10 ], 
      [ 6, 7, 6, 7, 8, 9, 9, 8, 1, 3, 2, 0, 5, 4, 4, 5, 16, 15, 15, 16, 17, 14, 14, 17, 10, 11, 
          13, 12, 13, 12, 10, 11 ], 
      [ 9, 8, 8, 9, 7, 6, 7, 6, 5, 4, 4, 5, 0, 3, 2, 1, 14, 15, 17, 16, 17, 16, 14, 15, 11, 12, 
          12, 11, 10, 13, 13, 10 ], 
      [ 9, 8, 8, 9, 6, 7, 6, 7, 4, 5, 5, 4, 3, 0, 1, 2, 15, 14, 16, 17, 16, 17, 15, 14, 12, 11, 
          11, 12, 13, 10, 10, 13 ], 
      [ 8, 9, 9, 8, 7, 6, 7, 6, 4, 5, 5, 4, 2, 1, 0, 3, 17, 16, 14, 15, 14, 15, 17, 16, 10, 13, 
          13, 10, 11, 12, 12, 11 ], 
      [ 8, 9, 9, 8, 6, 7, 6, 7, 5, 4, 4, 5, 1, 2, 3, 0, 16, 17, 15, 14, 15, 14, 16, 17, 13, 10, 
          10, 13, 12, 11, 11, 12 ], 
      [ 11, 13, 10, 12, 11, 13, 10, 12, 15, 16, 14, 17, 15, 14, 16, 17, 0, 4, 2, 5, 4, 1, 5, 3, 9, 
          7, 9, 6, 6, 8, 7, 8 ], [ 11, 13, 10, 12, 13, 11, 12, 10, 16, 15, 17, 14, 14, 15, 17, 16, 
          4, 0, 5, 2, 1, 4, 3, 5, 7, 9, 6, 9, 8, 6, 8, 7 ], 
      [ 10, 12, 11, 13, 10, 12, 11, 13, 16, 15, 17, 14, 16, 17, 15, 14, 2, 5, 0, 4, 5, 3, 4, 1, 8, 
          7, 8, 6, 6, 9, 7, 9 ], [ 10, 12, 11, 13, 12, 10, 13, 11, 15, 16, 14, 17, 17, 16, 14, 15, 
          5, 2, 4, 0, 3, 5, 1, 4, 7, 8, 6, 8, 9, 6, 9, 7 ], 
      [ 13, 11, 12, 10, 11, 13, 10, 12, 14, 17, 15, 16, 16, 17, 15, 14, 4, 1, 5, 3, 0, 4, 2, 5, 6, 
          8, 7, 8, 9, 7, 9, 6 ], [ 13, 11, 12, 10, 13, 11, 12, 10, 17, 14, 16, 15, 17, 16, 14, 15, 
          1, 4, 3, 5, 4, 0, 5, 2, 8, 6, 8, 7, 7, 9, 6, 9 ], 
      [ 12, 10, 13, 11, 10, 12, 11, 13, 17, 14, 16, 15, 15, 14, 16, 17, 5, 3, 4, 1, 2, 5, 0, 4, 6, 
          9, 7, 9, 8, 7, 8, 6 ], [ 12, 10, 13, 11, 12, 10, 13, 11, 14, 17, 15, 16, 14, 15, 17, 16, 
          3, 5, 1, 4, 5, 2, 4, 0, 9, 6, 9, 7, 7, 8, 6, 8 ], 
      [ 15, 17, 16, 14, 14, 16, 17, 15, 13, 12, 10, 11, 10, 13, 11, 12, 8, 6, 9, 6, 7, 9, 7, 8, 0, 
          5, 3, 4, 5, 1, 4, 2 ], [ 15, 17, 16, 14, 16, 14, 15, 17, 12, 13, 11, 10, 13, 10, 12, 11, 
          6, 8, 6, 9, 9, 7, 8, 7, 5, 0, 4, 3, 1, 5, 2, 4 ], 
      [ 14, 16, 17, 15, 15, 17, 16, 14, 10, 11, 13, 12, 13, 10, 12, 11, 8, 7, 9, 7, 6, 9, 6, 8, 3, 
          4, 0, 5, 4, 2, 5, 1 ], [ 14, 16, 17, 15, 17, 15, 14, 16, 11, 10, 12, 13, 10, 13, 11, 12, 
          7, 8, 7, 9, 9, 6, 8, 6, 4, 3, 5, 0, 2, 4, 1, 5 ], 
      [ 17, 15, 14, 16, 14, 16, 17, 15, 10, 11, 13, 12, 11, 12, 10, 13, 7, 9, 7, 8, 8, 6, 9, 6, 5, 
          1, 4, 2, 0, 5, 3, 4 ], [ 17, 15, 14, 16, 16, 14, 15, 17, 11, 10, 12, 13, 12, 11, 13, 10, 
          9, 7, 8, 7, 6, 8, 6, 9, 1, 5, 2, 4, 5, 0, 4, 3 ], 
      [ 16, 14, 15, 17, 15, 17, 16, 14, 13, 12, 10, 11, 12, 11, 13, 10, 6, 9, 6, 8, 8, 7, 9, 7, 4, 
          2, 5, 1, 3, 4, 0, 5 ], [ 16, 14, 15, 17, 17, 15, 14, 16, 12, 13, 11, 10, 11, 12, 10, 13, 
          9, 6, 8, 6, 7, 8, 7, 9, 2, 4, 1, 5, 4, 3, 5, 0 ] ] )