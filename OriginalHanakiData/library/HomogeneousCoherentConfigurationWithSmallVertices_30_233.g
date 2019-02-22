rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, -1, 1, 1, -1, -1, 2, 2, -2, -2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 2, 2, -2, -2, 2*E(3), 2*E(3)^2, -2*E(3), -2*E(3)^2, 
          -2*E(3)^2, -2*E(3), 2*E(3)^2, 2*E(3), 1 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 2, 2, -2, -2, 2*E(3)^2, 2*E(3), -2*E(3)^2, -2*E(3), 
          -2*E(3), -2*E(3)^2, 2*E(3), 2*E(3)^2, 1 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 2, 2, 2, 2, 2*E(3), 2*E(3)^2, 2*E(3), 2*E(3)^2, 
          2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3), 1 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 2, 2, 2, 2, 2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3), 2*E(3), 
          2*E(3)^2, 2*E(3), 2*E(3)^2, 1 ], 
      [ 2, 0, 2, 2, 0, 0, -1, -1, 0, 0, -1, -1, 0, 0, 0, 0, -1, -1, 4 ], 
      [ 2, 0, 2*E(3)^2, 2*E(3), 0, 0, -1, -1, 0, 0, -E(3), -E(3)^2, 0, 0, 0, 0, -E(3)^2, -E(3), 4 ]
        , [ 2, 0, 2*E(3), 2*E(3)^2, 0, 0, -1, -1, 0, 0, -E(3)^2, -E(3), 0, 0, 0, 0, -E(3), 
          -E(3)^2, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 
          16, 16, 17, 17 ], [ 1, 0, 4, 5, 2, 3, 8, 8, 9, 9, 6, 6, 7, 7, 12, 12, 14, 14, 10, 10, 
          16, 16, 11, 11, 17, 17, 13, 13, 15, 15 ], 
      [ 3, 5, 0, 2, 1, 4, 10, 10, 17, 17, 12, 12, 15, 15, 11, 11, 6, 6, 14, 14, 9, 9, 8, 8, 13, 
          13, 7, 7, 16, 16 ], [ 2, 4, 3, 0, 5, 1, 11, 11, 16, 16, 14, 14, 13, 13, 6, 6, 10, 10, 8, 
          8, 15, 15, 12, 12, 9, 9, 17, 17, 7, 7 ], 
      [ 5, 3, 1, 4, 0, 2, 12, 12, 15, 15, 10, 10, 17, 17, 14, 14, 8, 8, 11, 11, 7, 7, 6, 6, 16, 
          16, 9, 9, 13, 13 ], [ 4, 2, 5, 1, 3, 0, 14, 14, 13, 13, 11, 11, 16, 16, 8, 8, 12, 12, 6, 
          6, 17, 17, 10, 10, 7, 7, 15, 15, 9, 9 ], 
      [ 6, 9, 11, 10, 13, 15, 0, 7, 6, 7, 8, 9, 1, 8, 3, 17, 2, 16, 12, 15, 4, 14, 13, 14, 5, 12, 
          11, 16, 10, 17 ], [ 6, 9, 11, 10, 13, 15, 7, 0, 7, 6, 9, 8, 8, 1, 17, 3, 16, 2, 15, 12, 
          14, 4, 14, 13, 12, 5, 16, 11, 17, 10 ], 
      [ 7, 8, 16, 17, 14, 12, 6, 7, 0, 6, 9, 1, 9, 8, 10, 17, 11, 16, 15, 5, 13, 14, 4, 13, 15, 
          12, 2, 11, 3, 10 ], [ 7, 8, 16, 17, 14, 12, 7, 6, 6, 0, 1, 9, 8, 9, 17, 10, 16, 11, 5, 
          15, 14, 13, 13, 4, 12, 15, 11, 2, 10, 3 ], 
      [ 9, 6, 13, 15, 11, 10, 9, 8, 8, 1, 0, 7, 6, 7, 15, 12, 13, 14, 3, 17, 11, 16, 16, 2, 10, 
          17, 14, 4, 12, 5 ], [ 9, 6, 13, 15, 11, 10, 8, 9, 1, 8, 7, 0, 7, 6, 12, 15, 14, 13, 17, 
          3, 16, 11, 2, 16, 17, 10, 4, 14, 5, 12 ], 
      [ 8, 7, 14, 12, 16, 17, 1, 9, 8, 9, 6, 7, 0, 6, 5, 15, 4, 13, 10, 17, 2, 11, 16, 11, 3, 10, 
          14, 13, 12, 15 ], [ 8, 7, 14, 12, 16, 17, 9, 1, 9, 8, 7, 6, 6, 0, 15, 5, 13, 4, 17, 10, 
          11, 2, 11, 16, 10, 3, 13, 14, 15, 12 ], 
      [ 11, 13, 10, 6, 15, 9, 2, 16, 11, 16, 14, 13, 4, 14, 0, 7, 3, 17, 8, 9, 5, 12, 15, 12, 1, 
          8, 10, 17, 6, 7 ], [ 11, 13, 10, 6, 15, 9, 16, 2, 16, 11, 13, 14, 14, 4, 7, 0, 17, 3, 9, 
          8, 12, 5, 12, 15, 8, 1, 17, 10, 7, 6 ], 
      [ 10, 15, 6, 11, 9, 13, 3, 17, 10, 17, 12, 15, 5, 12, 2, 16, 0, 7, 14, 13, 1, 8, 9, 8, 4, 
          14, 6, 7, 11, 16 ], [ 10, 15, 6, 11, 9, 13, 17, 3, 17, 10, 15, 12, 12, 5, 16, 2, 7, 0, 
          13, 14, 8, 1, 8, 9, 14, 4, 7, 6, 16, 11 ], 
      [ 13, 11, 15, 9, 10, 6, 13, 14, 14, 4, 2, 16, 11, 16, 9, 8, 15, 12, 0, 7, 10, 17, 17, 3, 6, 
          7, 12, 5, 8, 1 ], [ 13, 11, 15, 9, 10, 6, 14, 13, 4, 14, 16, 2, 16, 11, 8, 9, 12, 15, 7, 
          0, 17, 10, 3, 17, 7, 6, 5, 12, 1, 8 ], 
      [ 12, 17, 8, 14, 7, 16, 5, 15, 12, 15, 10, 17, 3, 10, 4, 13, 1, 9, 11, 16, 0, 6, 7, 6, 2, 
          11, 8, 9, 14, 13 ], [ 12, 17, 8, 14, 7, 16, 15, 5, 15, 12, 17, 10, 10, 3, 13, 4, 9, 1, 
          16, 11, 6, 0, 6, 7, 11, 2, 9, 8, 13, 14 ], 
      [ 15, 10, 9, 13, 6, 11, 12, 15, 5, 12, 17, 3, 17, 10, 14, 13, 8, 9, 16, 2, 7, 6, 0, 7, 16, 
          11, 1, 8, 4, 14 ], [ 15, 10, 9, 13, 6, 11, 15, 12, 12, 5, 3, 17, 10, 17, 13, 14, 9, 8, 
          2, 16, 6, 7, 7, 0, 11, 16, 8, 1, 14, 4 ], 
      [ 14, 16, 12, 8, 17, 7, 4, 13, 14, 13, 11, 16, 2, 11, 1, 9, 5, 15, 6, 7, 3, 10, 17, 10, 0, 
          6, 12, 15, 8, 9 ], [ 14, 16, 12, 8, 17, 7, 13, 4, 13, 14, 16, 11, 11, 2, 9, 1, 15, 5, 7, 
          6, 10, 3, 10, 17, 6, 0, 15, 12, 9, 8 ], 
      [ 17, 12, 7, 16, 8, 14, 10, 17, 3, 10, 15, 5, 15, 12, 11, 16, 6, 7, 13, 4, 9, 8, 1, 9, 13, 
          14, 0, 6, 2, 11 ], [ 17, 12, 7, 16, 8, 14, 17, 10, 10, 3, 5, 15, 12, 15, 16, 11, 7, 6, 
          4, 13, 8, 9, 9, 1, 14, 13, 6, 0, 11, 2 ], 
      [ 16, 14, 17, 7, 12, 8, 11, 16, 2, 11, 13, 4, 13, 14, 6, 7, 10, 17, 9, 1, 15, 12, 5, 15, 9, 
          8, 3, 10, 0, 6 ], [ 16, 14, 17, 7, 12, 8, 16, 11, 11, 2, 4, 13, 14, 13, 7, 6, 17, 10, 1, 
          9, 12, 15, 15, 5, 8, 9, 10, 3, 6, 0 ] ] )