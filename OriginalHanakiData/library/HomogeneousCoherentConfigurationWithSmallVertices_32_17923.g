rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 2, -2, -2*E(4), 2*E(4), -2, -2, 2, 2, 2*E(4), 
          -2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 2, -2, -2*E(4), 2*E(4), 2, 2, -2, -2, -2*E(4), 
          2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 2, -2, 2*E(4), -2*E(4), -2, -2, 2, 2, -2*E(4), 
          2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 2, -2, 2*E(4), -2*E(4), 2, 2, -2, -2, 2*E(4), 
          -2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, 
          -E(8)-E(8)^3, E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, 
          E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, 
          -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, 
          E(8)+E(8)^3, -E(8)-E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -2, 2, 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2 ]
        , [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -2, 2, -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 
          0, 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, 
          E(8)+E(8)^3, -E(8)-E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 
          E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 
          -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 
          E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, E(8)+E(8)^3, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 12, 12, 15, 15, 14, 14, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 15, 15, 14, 14, 13, 13, 12, 12, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 9, 9, 8, 8, 16, 16, 19, 19, 18, 18, 17, 17, 14, 
          14, 13, 13, 12, 12, 15, 15 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 10, 10, 8, 8, 9, 9, 18, 18, 17, 17, 16, 16, 19, 19, 12, 
          12, 15, 15, 14, 14, 13, 13 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 11, 11, 9, 9, 8, 8, 19, 19, 16, 16, 17, 17, 18, 18, 15, 
          15, 12, 12, 13, 13, 14, 14 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 8, 8, 9, 9, 17, 17, 18, 18, 19, 19, 16, 16, 13, 
          13, 14, 14, 15, 15, 12, 12 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 0, 2, 1, 3, 5, 7, 4, 6, 12, 13, 12, 13, 14, 15, 14, 15, 16, 
          19, 17, 18, 17, 18, 16, 19 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 2, 0, 3, 1, 7, 5, 6, 4, 13, 12, 13, 12, 15, 14, 15, 14, 19, 
          16, 18, 17, 18, 17, 19, 16 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 1, 3, 0, 2, 4, 6, 5, 7, 14, 15, 14, 15, 12, 13, 12, 13, 18, 
          17, 19, 16, 19, 16, 18, 17 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 3, 1, 2, 0, 6, 4, 7, 5, 15, 14, 15, 14, 13, 12, 13, 12, 17, 
          18, 16, 19, 16, 19, 17, 18 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 4, 6, 5, 7, 0, 2, 1, 3, 18, 17, 18, 17, 16, 19, 16, 19, 12, 
          13, 15, 14, 15, 14, 12, 13 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 6, 4, 7, 5, 2, 0, 3, 1, 17, 18, 17, 18, 19, 16, 19, 16, 13, 
          12, 14, 15, 14, 15, 13, 12 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 5, 7, 4, 6, 1, 3, 0, 2, 16, 19, 16, 19, 18, 17, 18, 17, 14, 
          15, 13, 12, 13, 12, 14, 15 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 7, 5, 6, 4, 3, 1, 2, 0, 19, 16, 19, 16, 17, 18, 17, 18, 15, 
          14, 12, 13, 12, 13, 15, 14 ], 
      [ 13, 15, 12, 14, 17, 19, 18, 16, 13, 12, 15, 14, 19, 16, 17, 18, 0, 8, 8, 2, 1, 9, 9, 3, 5, 
          10, 6, 11, 11, 4, 10, 7 ], 
      [ 13, 15, 12, 14, 17, 19, 18, 16, 12, 13, 14, 15, 16, 19, 18, 17, 8, 0, 2, 8, 9, 1, 3, 9, 
          10, 5, 11, 6, 4, 11, 7, 10 ], 
      [ 12, 14, 13, 15, 18, 16, 17, 19, 13, 12, 15, 14, 19, 16, 17, 18, 8, 2, 0, 8, 9, 3, 1, 9, 
          10, 7, 11, 4, 6, 11, 5, 10 ], 
      [ 12, 14, 13, 15, 18, 16, 17, 19, 12, 13, 14, 15, 16, 19, 18, 17, 2, 8, 8, 0, 3, 9, 9, 1, 7, 
          10, 4, 11, 11, 6, 10, 5 ], 
      [ 15, 13, 14, 12, 19, 17, 16, 18, 15, 14, 13, 12, 17, 18, 19, 16, 1, 9, 9, 3, 0, 8, 8, 2, 4, 
          11, 7, 10, 10, 5, 11, 6 ], 
      [ 15, 13, 14, 12, 19, 17, 16, 18, 14, 15, 12, 13, 18, 17, 16, 19, 9, 1, 3, 9, 8, 0, 2, 8, 
          11, 4, 10, 7, 5, 10, 6, 11 ], 
      [ 14, 12, 15, 13, 16, 18, 19, 17, 15, 14, 13, 12, 17, 18, 19, 16, 9, 3, 1, 9, 8, 2, 0, 8, 
          11, 6, 10, 5, 7, 10, 4, 11 ], 
      [ 14, 12, 15, 13, 16, 18, 19, 17, 14, 15, 12, 13, 18, 17, 16, 19, 3, 9, 9, 1, 2, 8, 8, 0, 6, 
          11, 5, 10, 10, 7, 11, 4 ], 
      [ 17, 19, 18, 16, 15, 13, 14, 12, 17, 18, 19, 16, 13, 12, 15, 14, 4, 11, 11, 6, 5, 10, 10, 
          7, 0, 8, 3, 9, 9, 1, 8, 2 ], 
      [ 17, 19, 18, 16, 15, 13, 14, 12, 18, 17, 16, 19, 12, 13, 14, 15, 11, 4, 6, 11, 10, 5, 7, 
          10, 8, 0, 9, 3, 1, 9, 2, 8 ], 
      [ 16, 18, 19, 17, 12, 14, 13, 15, 16, 19, 18, 17, 14, 15, 12, 13, 7, 10, 10, 5, 6, 11, 11, 
          4, 3, 9, 0, 8, 8, 2, 9, 1 ], 
      [ 16, 18, 19, 17, 12, 14, 13, 15, 19, 16, 17, 18, 15, 14, 13, 12, 10, 7, 5, 10, 11, 6, 4, 
          11, 9, 3, 8, 0, 2, 8, 1, 9 ], 
      [ 19, 17, 16, 18, 13, 15, 12, 14, 16, 19, 18, 17, 14, 15, 12, 13, 10, 5, 7, 10, 11, 4, 6, 
          11, 9, 1, 8, 2, 0, 8, 3, 9 ], 
      [ 19, 17, 16, 18, 13, 15, 12, 14, 19, 16, 17, 18, 15, 14, 13, 12, 5, 10, 10, 7, 4, 11, 11, 
          6, 1, 9, 2, 8, 8, 0, 9, 3 ], 
      [ 18, 16, 17, 19, 14, 12, 15, 13, 17, 18, 19, 16, 13, 12, 15, 14, 11, 6, 4, 11, 10, 7, 5, 
          10, 8, 2, 9, 1, 3, 9, 0, 8 ], 
      [ 18, 16, 17, 19, 14, 12, 15, 13, 18, 17, 16, 19, 12, 13, 14, 15, 6, 11, 11, 4, 7, 10, 10, 
          5, 2, 8, 1, 9, 9, 3, 8, 0 ] ] )