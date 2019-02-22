rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 1 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ]
        , [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, -4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 
          15, 16, 16, 17, 17 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 
          12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 13, 13, 10, 10, 11, 11, 16, 16, 
          17, 17, 14, 14, 15, 15 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 13, 13, 10, 10, 11, 11, 16, 16, 
          17, 17, 14, 14, 15, 15 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 10, 10, 13, 13, 12, 12, 17, 17, 
          16, 16, 15, 15, 14, 14 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 10, 10, 13, 13, 12, 12, 17, 17, 
          16, 16, 15, 15, 14, 14 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 13, 13, 12, 12, 11, 11, 10, 10, 15, 15, 
          14, 14, 17, 17, 16, 16 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 13, 13, 12, 12, 11, 11, 10, 10, 15, 15, 
          14, 14, 17, 17, 16, 16 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 0, 1, 2, 3, 4, 4, 5, 5, 14, 14, 17, 17, 16, 16, 15, 15, 10, 10, 
          13, 13, 12, 12, 11, 11 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 1, 0, 3, 2, 4, 4, 5, 5, 14, 14, 17, 17, 16, 16, 15, 15, 10, 10, 
          13, 13, 12, 12, 11, 11 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 3, 2, 0, 1, 5, 5, 4, 4, 16, 16, 15, 15, 14, 14, 17, 17, 12, 12, 
          11, 11, 10, 10, 13, 13 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 2, 3, 1, 0, 5, 5, 4, 4, 16, 16, 15, 15, 14, 14, 17, 17, 12, 12, 
          11, 11, 10, 10, 13, 13 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 0, 1, 2, 3, 17, 17, 14, 14, 15, 15, 16, 16, 11, 11, 
          12, 12, 13, 13, 10, 10 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 1, 0, 3, 2, 17, 17, 14, 14, 15, 15, 16, 16, 11, 11, 
          12, 12, 13, 13, 10, 10 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 2, 0, 1, 15, 15, 16, 16, 17, 17, 14, 14, 13, 13, 
          10, 10, 11, 11, 12, 12 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 2, 3, 1, 0, 15, 15, 16, 16, 17, 17, 14, 14, 13, 13, 
          10, 10, 11, 11, 12, 12 ], 
      [ 11, 11, 13, 13, 10, 10, 12, 12, 15, 15, 17, 17, 16, 16, 14, 14, 0, 1, 4, 4, 2, 3, 5, 5, 7, 
          7, 8, 8, 6, 6, 9, 9 ], [ 11, 11, 13, 13, 10, 10, 12, 12, 15, 15, 17, 17, 16, 16, 14, 14, 
          1, 0, 4, 4, 3, 2, 5, 5, 7, 7, 8, 8, 6, 6, 9, 9 ], 
      [ 10, 10, 12, 12, 11, 11, 13, 13, 16, 16, 14, 14, 15, 15, 17, 17, 4, 4, 0, 1, 5, 5, 2, 3, 9, 
          9, 6, 6, 8, 8, 7, 7 ], [ 10, 10, 12, 12, 11, 11, 13, 13, 16, 16, 14, 14, 15, 15, 17, 17, 
          4, 4, 1, 0, 5, 5, 3, 2, 9, 9, 6, 6, 8, 8, 7, 7 ], 
      [ 13, 13, 11, 11, 12, 12, 10, 10, 17, 17, 15, 15, 14, 14, 16, 16, 3, 2, 5, 5, 0, 1, 4, 4, 6, 
          6, 9, 9, 7, 7, 8, 8 ], [ 13, 13, 11, 11, 12, 12, 10, 10, 17, 17, 15, 15, 14, 14, 16, 16, 
          2, 3, 5, 5, 1, 0, 4, 4, 6, 6, 9, 9, 7, 7, 8, 8 ], 
      [ 12, 12, 10, 10, 13, 13, 11, 11, 14, 14, 16, 16, 17, 17, 15, 15, 5, 5, 3, 2, 4, 4, 0, 1, 8, 
          8, 7, 7, 9, 9, 6, 6 ], [ 12, 12, 10, 10, 13, 13, 11, 11, 14, 14, 16, 16, 17, 17, 15, 15, 
          5, 5, 2, 3, 4, 4, 1, 0, 8, 8, 7, 7, 9, 9, 6, 6 ], 
      [ 15, 15, 17, 17, 16, 16, 14, 14, 11, 11, 13, 13, 10, 10, 12, 12, 7, 7, 9, 9, 6, 6, 8, 8, 0, 
          1, 5, 5, 2, 3, 4, 4 ], [ 15, 15, 17, 17, 16, 16, 14, 14, 11, 11, 13, 13, 10, 10, 12, 12, 
          7, 7, 9, 9, 6, 6, 8, 8, 1, 0, 5, 5, 3, 2, 4, 4 ], 
      [ 14, 14, 16, 16, 17, 17, 15, 15, 12, 12, 10, 10, 13, 13, 11, 11, 8, 8, 6, 6, 9, 9, 7, 7, 5, 
          5, 0, 1, 4, 4, 2, 3 ], [ 14, 14, 16, 16, 17, 17, 15, 15, 12, 12, 10, 10, 13, 13, 11, 11, 
          8, 8, 6, 6, 9, 9, 7, 7, 5, 5, 1, 0, 4, 4, 3, 2 ], 
      [ 17, 17, 15, 15, 14, 14, 16, 16, 13, 13, 11, 11, 12, 12, 10, 10, 6, 6, 8, 8, 7, 7, 9, 9, 3, 
          2, 4, 4, 0, 1, 5, 5 ], [ 17, 17, 15, 15, 14, 14, 16, 16, 13, 13, 11, 11, 12, 12, 10, 10, 
          6, 6, 8, 8, 7, 7, 9, 9, 2, 3, 4, 4, 1, 0, 5, 5 ], 
      [ 16, 16, 14, 14, 15, 15, 17, 17, 10, 10, 12, 12, 11, 11, 13, 13, 9, 9, 7, 7, 8, 8, 6, 6, 4, 
          4, 3, 2, 5, 5, 0, 1 ], [ 16, 16, 14, 14, 15, 15, 17, 17, 10, 10, 12, 12, 11, 11, 13, 13, 
          9, 9, 7, 7, 8, 8, 6, 6, 4, 4, 2, 3, 5, 5, 1, 0 ] ] )