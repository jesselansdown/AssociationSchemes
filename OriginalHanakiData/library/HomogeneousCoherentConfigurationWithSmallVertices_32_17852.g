rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, -2, 2, 0, 0, 0, 0, -2*E(4), 2*E(4), 2 ]
        , [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 2, -2, 0, 0, 0, 0, 2*E(4), 
          -2*E(4), 2 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, -2, 2, 0, 0, 0, 0, 
          2*E(4), -2*E(4), 2 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 2, -2, 0, 0, 
          0, 0, -2*E(4), 2*E(4), 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, -2, 2, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 2 ]
        , [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 2, -2, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 
          0, 2 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, -2, 2, 0, 0, 0, 0, 2*E(4), 
          -2*E(4), 0, 0, 2 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 2, -2, 0, 0, 0, 0, 
          -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 11, 11, 10, 10, 13, 13, 12, 12, 14, 14, 15, 15, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 10, 10, 11, 11, 13, 13, 12, 12, 15, 15, 14, 14, 16, 
          16, 17, 17, 19, 19, 18, 18 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 13, 13, 15, 15, 14, 14, 17, 
          17, 16, 16, 18, 18, 19, 19 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 8, 8, 9, 9, 11, 
          11, 10, 10, 13, 13, 12, 12 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 14, 14, 15, 15, 17, 17, 16, 16, 19, 19, 18, 18, 8, 8, 9, 9, 10, 
          10, 11, 11, 12, 12, 13, 13 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 15, 15, 14, 14, 16, 16, 17, 17, 19, 19, 18, 18, 9, 9, 8, 8, 11, 
          11, 10, 10, 12, 12, 13, 13 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 15, 15, 14, 14, 17, 17, 16, 16, 18, 18, 19, 19, 9, 9, 8, 8, 10, 
          10, 11, 11, 13, 13, 12, 12 ], 
      [ 8, 8, 9, 9, 15, 15, 14, 14, 0, 1, 2, 3, 12, 13, 12, 13, 10, 11, 10, 11, 6, 7, 4, 5, 18, 
          19, 18, 19, 16, 17, 16, 17 ], 
      [ 8, 8, 9, 9, 15, 15, 14, 14, 1, 0, 3, 2, 13, 12, 13, 12, 11, 10, 11, 10, 7, 6, 5, 4, 19, 
          18, 19, 18, 17, 16, 17, 16 ], 
      [ 9, 9, 8, 8, 14, 14, 15, 15, 2, 3, 0, 1, 13, 12, 13, 12, 10, 11, 10, 11, 4, 5, 6, 7, 19, 
          18, 19, 18, 16, 17, 16, 17 ], 
      [ 9, 9, 8, 8, 14, 14, 15, 15, 3, 2, 1, 0, 12, 13, 12, 13, 11, 10, 11, 10, 5, 4, 7, 6, 18, 
          19, 18, 19, 17, 16, 17, 16 ], 
      [ 10, 11, 10, 11, 17, 16, 17, 16, 12, 13, 13, 12, 0, 2, 3, 1, 9, 8, 8, 9, 18, 19, 19, 18, 5, 
          7, 6, 4, 14, 15, 15, 14 ], 
      [ 10, 11, 10, 11, 17, 16, 17, 16, 13, 12, 12, 13, 2, 0, 1, 3, 8, 9, 9, 8, 19, 18, 18, 19, 7, 
          5, 4, 6, 15, 14, 14, 15 ], 
      [ 11, 10, 11, 10, 16, 17, 16, 17, 12, 13, 13, 12, 3, 1, 0, 2, 8, 9, 9, 8, 18, 19, 19, 18, 6, 
          4, 5, 7, 15, 14, 14, 15 ], 
      [ 11, 10, 11, 10, 16, 17, 16, 17, 13, 12, 12, 13, 1, 3, 2, 0, 9, 8, 8, 9, 19, 18, 18, 19, 4, 
          6, 7, 5, 14, 15, 15, 14 ], 
      [ 12, 13, 13, 12, 19, 18, 18, 19, 10, 11, 10, 11, 9, 8, 8, 9, 0, 3, 2, 1, 17, 16, 17, 16, 
          14, 15, 15, 14, 5, 6, 7, 4 ], 
      [ 12, 13, 13, 12, 19, 18, 18, 19, 11, 10, 11, 10, 8, 9, 9, 8, 3, 0, 1, 2, 16, 17, 16, 17, 
          15, 14, 14, 15, 6, 5, 4, 7 ], 
      [ 13, 12, 12, 13, 18, 19, 19, 18, 10, 11, 10, 11, 8, 9, 9, 8, 2, 1, 0, 3, 17, 16, 17, 16, 
          15, 14, 14, 15, 7, 4, 5, 6 ], 
      [ 13, 12, 12, 13, 18, 19, 19, 18, 11, 10, 11, 10, 9, 8, 8, 9, 1, 2, 3, 0, 16, 17, 16, 17, 
          14, 15, 15, 14, 4, 7, 6, 5 ], 
      [ 15, 15, 14, 14, 8, 8, 9, 9, 7, 6, 5, 4, 19, 18, 19, 18, 16, 17, 16, 17, 0, 1, 2, 3, 12, 
          13, 12, 13, 11, 10, 11, 10 ], 
      [ 15, 15, 14, 14, 8, 8, 9, 9, 6, 7, 4, 5, 18, 19, 18, 19, 17, 16, 17, 16, 1, 0, 3, 2, 13, 
          12, 13, 12, 10, 11, 10, 11 ], 
      [ 14, 14, 15, 15, 9, 9, 8, 8, 5, 4, 7, 6, 18, 19, 18, 19, 16, 17, 16, 17, 2, 3, 0, 1, 13, 
          12, 13, 12, 11, 10, 11, 10 ], 
      [ 14, 14, 15, 15, 9, 9, 8, 8, 4, 5, 6, 7, 19, 18, 19, 18, 17, 16, 17, 16, 3, 2, 1, 0, 12, 
          13, 12, 13, 10, 11, 10, 11 ], 
      [ 17, 16, 17, 16, 11, 10, 11, 10, 19, 18, 18, 19, 4, 6, 7, 5, 15, 14, 14, 15, 12, 13, 13, 
          12, 0, 2, 3, 1, 8, 9, 9, 8 ], 
      [ 17, 16, 17, 16, 11, 10, 11, 10, 18, 19, 19, 18, 6, 4, 5, 7, 14, 15, 15, 14, 13, 12, 12, 
          13, 2, 0, 1, 3, 9, 8, 8, 9 ], 
      [ 16, 17, 16, 17, 10, 11, 10, 11, 19, 18, 18, 19, 7, 5, 4, 6, 14, 15, 15, 14, 12, 13, 13, 
          12, 3, 1, 0, 2, 9, 8, 8, 9 ], 
      [ 16, 17, 16, 17, 10, 11, 10, 11, 18, 19, 19, 18, 5, 7, 6, 4, 15, 14, 14, 15, 13, 12, 12, 
          13, 1, 3, 2, 0, 8, 9, 9, 8 ], 
      [ 19, 18, 18, 19, 13, 12, 12, 13, 17, 16, 17, 16, 15, 14, 14, 15, 4, 7, 6, 5, 11, 10, 11, 
          10, 8, 9, 9, 8, 0, 3, 2, 1 ], 
      [ 19, 18, 18, 19, 13, 12, 12, 13, 16, 17, 16, 17, 14, 15, 15, 14, 7, 4, 5, 6, 10, 11, 10, 
          11, 9, 8, 8, 9, 3, 0, 1, 2 ], 
      [ 18, 19, 19, 18, 12, 13, 13, 12, 17, 16, 17, 16, 14, 15, 15, 14, 6, 5, 4, 7, 11, 10, 11, 
          10, 9, 8, 8, 9, 2, 1, 0, 3 ], 
      [ 18, 19, 19, 18, 12, 13, 13, 12, 16, 17, 16, 17, 15, 14, 14, 15, 5, 6, 7, 4, 10, 11, 10, 
          11, 8, 9, 9, 8, 1, 2, 3, 0 ] ] )