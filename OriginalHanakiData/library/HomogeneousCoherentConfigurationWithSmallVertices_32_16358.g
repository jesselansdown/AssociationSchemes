rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -4*E(4), 4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 4*E(4), -4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 0, 0, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 0, 0, 0, 0, 4 ] ]
   ,
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 10, 10, 12, 12, 12, 12, 11, 11, 
          11, 11, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 9, 9, 8, 8, 7, 7, 6, 6, 10, 10, 10, 10, 12, 12, 12, 12, 11, 11, 
          11, 11, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 7, 6, 7, 8, 9, 8, 9, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 6, 7, 6, 9, 8, 9, 8, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 8, 9, 8, 9, 6, 7, 6, 7, 13, 13, 13, 13, 11, 11, 11, 11, 12, 12, 
          12, 12, 10, 10, 10, 10 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 8, 9, 8, 7, 6, 7, 6, 13, 13, 13, 13, 11, 11, 11, 11, 12, 12, 
          12, 12, 10, 10, 10, 10 ], 
      [ 7, 6, 9, 8, 7, 6, 9, 8, 0, 4, 4, 1, 2, 5, 5, 3, 11, 11, 12, 12, 10, 10, 13, 13, 10, 10, 
          13, 13, 11, 11, 12, 12 ], 
      [ 7, 6, 9, 8, 6, 7, 8, 9, 4, 0, 1, 4, 5, 2, 3, 5, 12, 12, 11, 11, 13, 13, 10, 10, 13, 13, 
          10, 10, 12, 12, 11, 11 ], 
      [ 6, 7, 8, 9, 7, 6, 9, 8, 4, 1, 0, 4, 5, 3, 2, 5, 12, 12, 11, 11, 13, 13, 10, 10, 13, 13, 
          10, 10, 12, 12, 11, 11 ], 
      [ 6, 7, 8, 9, 6, 7, 8, 9, 1, 4, 4, 0, 3, 5, 5, 2, 11, 11, 12, 12, 10, 10, 13, 13, 10, 10, 
          13, 13, 11, 11, 12, 12 ], 
      [ 9, 8, 7, 6, 9, 8, 7, 6, 2, 5, 5, 3, 0, 4, 4, 1, 12, 12, 11, 11, 10, 10, 13, 13, 10, 10, 
          13, 13, 12, 12, 11, 11 ], 
      [ 9, 8, 7, 6, 8, 9, 6, 7, 5, 2, 3, 5, 4, 0, 1, 4, 11, 11, 12, 12, 13, 13, 10, 10, 13, 13, 
          10, 10, 11, 11, 12, 12 ], 
      [ 8, 9, 6, 7, 9, 8, 7, 6, 5, 3, 2, 5, 4, 1, 0, 4, 11, 11, 12, 12, 13, 13, 10, 10, 13, 13, 
          10, 10, 11, 11, 12, 12 ], 
      [ 8, 9, 6, 7, 8, 9, 6, 7, 3, 5, 5, 2, 1, 4, 4, 0, 12, 12, 11, 11, 10, 10, 13, 13, 10, 10, 
          13, 13, 12, 12, 11, 11 ], 
      [ 11, 11, 11, 11, 12, 12, 12, 12, 10, 13, 13, 10, 13, 10, 10, 13, 0, 1, 5, 5, 8, 9, 6, 7, 6, 
          7, 8, 9, 2, 3, 4, 4 ], [ 11, 11, 11, 11, 12, 12, 12, 12, 10, 13, 13, 10, 13, 10, 10, 13, 
          1, 0, 5, 5, 9, 8, 7, 6, 7, 6, 9, 8, 3, 2, 4, 4 ], 
      [ 11, 11, 11, 11, 12, 12, 12, 12, 13, 10, 10, 13, 10, 13, 13, 10, 5, 5, 0, 1, 6, 7, 8, 9, 9, 
          8, 7, 6, 4, 4, 2, 3 ], [ 11, 11, 11, 11, 12, 12, 12, 12, 13, 10, 10, 13, 10, 13, 13, 10, 
          5, 5, 1, 0, 7, 6, 9, 8, 8, 9, 6, 7, 4, 4, 3, 2 ], 
      [ 10, 10, 13, 13, 13, 13, 10, 10, 11, 12, 12, 11, 11, 12, 12, 11, 9, 8, 7, 6, 0, 1, 2, 3, 5, 
          5, 4, 4, 7, 6, 9, 8 ], [ 10, 10, 13, 13, 13, 13, 10, 10, 11, 12, 12, 11, 11, 12, 12, 11, 
          8, 9, 6, 7, 1, 0, 3, 2, 5, 5, 4, 4, 6, 7, 8, 9 ], 
      [ 10, 10, 13, 13, 13, 13, 10, 10, 12, 11, 11, 12, 12, 11, 11, 12, 7, 6, 9, 8, 2, 3, 0, 1, 4, 
          4, 5, 5, 9, 8, 7, 6 ], [ 10, 10, 13, 13, 13, 13, 10, 10, 12, 11, 11, 12, 12, 11, 11, 12, 
          6, 7, 8, 9, 3, 2, 1, 0, 4, 4, 5, 5, 8, 9, 6, 7 ], 
      [ 13, 13, 10, 10, 10, 10, 13, 13, 11, 12, 12, 11, 11, 12, 12, 11, 7, 6, 8, 9, 5, 5, 4, 4, 0, 
          1, 2, 3, 9, 8, 6, 7 ], [ 13, 13, 10, 10, 10, 10, 13, 13, 11, 12, 12, 11, 11, 12, 12, 11, 
          6, 7, 9, 8, 5, 5, 4, 4, 1, 0, 3, 2, 8, 9, 7, 6 ], 
      [ 13, 13, 10, 10, 10, 10, 13, 13, 12, 11, 11, 12, 12, 11, 11, 12, 9, 8, 6, 7, 4, 4, 5, 5, 2, 
          3, 0, 1, 7, 6, 8, 9 ], [ 13, 13, 10, 10, 10, 10, 13, 13, 12, 11, 11, 12, 12, 11, 11, 12, 
          8, 9, 7, 6, 4, 4, 5, 5, 3, 2, 1, 0, 6, 7, 9, 8 ], 
      [ 12, 12, 12, 12, 11, 11, 11, 11, 10, 13, 13, 10, 13, 10, 10, 13, 2, 3, 4, 4, 6, 7, 8, 9, 8, 
          9, 6, 7, 0, 1, 5, 5 ], [ 12, 12, 12, 12, 11, 11, 11, 11, 10, 13, 13, 10, 13, 10, 10, 13, 
          3, 2, 4, 4, 7, 6, 9, 8, 9, 8, 7, 6, 1, 0, 5, 5 ], 
      [ 12, 12, 12, 12, 11, 11, 11, 11, 13, 10, 10, 13, 10, 13, 13, 10, 4, 4, 2, 3, 8, 9, 6, 7, 7, 
          6, 9, 8, 5, 5, 0, 1 ], [ 12, 12, 12, 12, 11, 11, 11, 11, 13, 10, 10, 13, 10, 13, 13, 10, 
          4, 4, 3, 2, 9, 8, 7, 6, 6, 7, 8, 9, 5, 5, 1, 0 ] ] )