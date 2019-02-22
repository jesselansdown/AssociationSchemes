rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ]
        , [ 1, -1, -1, 1, 0, 0, 0, 0, -2*E(4), 2*E(4), -1+E(4), -1-E(4), 1-E(4), 1+E(4), 1-E(4), 
          1+E(4), -1+E(4), -1-E(4), 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2*E(4), 2*E(4), 1-E(4), 1+E(4), -1+E(4), -1-E(4), -1+E(4), 
          -1-E(4), 1-E(4), 1+E(4), 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2*E(4), -2*E(4), -1-E(4), -1+E(4), 1+E(4), 1-E(4), 1+E(4), 
          1-E(4), -1-E(4), -1+E(4), 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2*E(4), -2*E(4), 1+E(4), 1-E(4), -1-E(4), -1+E(4), -1-E(4), 
          -1+E(4), 1+E(4), 1-E(4), 2 ], 
      [ 1, -1, 1, -1, 0, 0, -2*E(4), 2*E(4), 0, 0, -1+E(4), -1-E(4), 1-E(4), 1+E(4), -1+E(4), 
          -1-E(4), 1-E(4), 1+E(4), 2 ], 
      [ 1, -1, 1, -1, 0, 0, -2*E(4), 2*E(4), 0, 0, 1-E(4), 1+E(4), -1+E(4), -1-E(4), 1-E(4), 
          1+E(4), -1+E(4), -1-E(4), 2 ], 
      [ 1, -1, 1, -1, 0, 0, 2*E(4), -2*E(4), 0, 0, -1-E(4), -1+E(4), 1+E(4), 1-E(4), -1-E(4), 
          -1+E(4), 1+E(4), 1-E(4), 2 ], 
      [ 1, -1, 1, -1, 0, 0, 2*E(4), -2*E(4), 0, 0, 1+E(4), 1-E(4), -1-E(4), -1+E(4), 1+E(4), 
          1-E(4), -1-E(4), -1+E(4), 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 
          15, 16, 16, 17, 17 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 13, 13, 
          10, 10, 11, 11, 16, 16, 17, 17, 14, 14, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 14, 14, 15, 15, 16, 16, 17, 17, 10, 10, 
          11, 11, 12, 12, 13, 13 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 16, 16, 17, 17, 14, 14, 15, 15, 12, 12, 
          13, 13, 10, 10, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 9, 8, 9, 6, 7, 6, 7, 10, 12, 15, 17, 10, 12, 15, 17, 14, 16, 
          11, 13, 14, 16, 11, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6, 12, 10, 17, 15, 12, 10, 17, 15, 16, 14, 
          13, 11, 16, 14, 13, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 8, 9, 8, 6, 7, 6, 7, 14, 16, 11, 13, 14, 16, 11, 13, 10, 12, 
          15, 17, 10, 12, 15, 17 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6, 16, 14, 13, 11, 16, 14, 13, 11, 12, 10, 
          17, 15, 12, 10, 17, 15 ], 
      [ 7, 6, 7, 6, 9, 8, 8, 9, 0, 2, 3, 1, 5, 4, 4, 5, 11, 15, 16, 12, 17, 13, 10, 14, 15, 11, 
          12, 16, 13, 17, 14, 10 ], 
      [ 7, 6, 7, 6, 8, 9, 9, 8, 2, 0, 1, 3, 4, 5, 5, 4, 15, 11, 12, 16, 13, 17, 14, 10, 11, 15, 
          16, 12, 17, 13, 10, 14 ], 
      [ 6, 7, 6, 7, 9, 8, 8, 9, 3, 1, 0, 2, 4, 5, 5, 4, 17, 13, 10, 14, 11, 15, 16, 12, 13, 17, 
          14, 10, 15, 11, 12, 16 ], 
      [ 6, 7, 6, 7, 8, 9, 9, 8, 1, 3, 2, 0, 5, 4, 4, 5, 13, 17, 14, 10, 15, 11, 12, 16, 17, 13, 
          10, 14, 11, 15, 16, 12 ], 
      [ 9, 8, 8, 9, 7, 6, 7, 6, 5, 4, 4, 5, 0, 3, 2, 1, 11, 17, 12, 14, 15, 13, 16, 10, 15, 13, 
          16, 10, 11, 17, 12, 14 ], 
      [ 9, 8, 8, 9, 6, 7, 6, 7, 4, 5, 5, 4, 3, 0, 1, 2, 17, 11, 14, 12, 13, 15, 10, 16, 13, 15, 
          10, 16, 17, 11, 14, 12 ], 
      [ 8, 9, 9, 8, 7, 6, 7, 6, 4, 5, 5, 4, 2, 1, 0, 3, 15, 13, 16, 10, 11, 17, 12, 14, 11, 17, 
          12, 14, 15, 13, 16, 10 ], 
      [ 8, 9, 9, 8, 6, 7, 6, 7, 5, 4, 4, 5, 1, 2, 3, 0, 13, 15, 10, 16, 17, 11, 14, 12, 17, 11, 
          14, 12, 13, 15, 10, 16 ], 
      [ 11, 13, 15, 17, 11, 13, 15, 17, 10, 14, 16, 12, 10, 16, 14, 12, 0, 5, 7, 9, 5, 1, 8, 6, 2, 
          4, 7, 8, 4, 3, 9, 6 ], [ 11, 13, 15, 17, 13, 11, 17, 15, 14, 10, 12, 16, 16, 10, 12, 14, 
          5, 0, 9, 7, 1, 5, 6, 8, 4, 2, 8, 7, 3, 4, 6, 9 ], 
      [ 10, 12, 14, 16, 14, 16, 10, 12, 17, 13, 11, 15, 13, 15, 17, 11, 6, 8, 0, 4, 9, 7, 4, 1, 6, 
          9, 2, 5, 8, 7, 5, 3 ], [ 10, 12, 14, 16, 16, 14, 12, 10, 13, 17, 15, 11, 15, 13, 11, 17, 
          8, 6, 4, 0, 7, 9, 1, 4, 9, 6, 5, 2, 7, 8, 3, 5 ], 
      [ 13, 11, 17, 15, 11, 13, 15, 17, 16, 12, 10, 14, 14, 12, 10, 16, 5, 1, 8, 6, 0, 5, 7, 9, 4, 
          3, 9, 6, 2, 4, 7, 8 ], [ 13, 11, 17, 15, 13, 11, 17, 15, 12, 16, 14, 10, 12, 14, 16, 10, 
          1, 5, 6, 8, 5, 0, 9, 7, 3, 4, 6, 9, 4, 2, 8, 7 ], 
      [ 12, 10, 16, 14, 14, 16, 10, 12, 11, 15, 17, 13, 17, 11, 13, 15, 9, 7, 4, 1, 6, 8, 0, 4, 8, 
          7, 5, 3, 6, 9, 2, 5 ], [ 12, 10, 16, 14, 16, 14, 12, 10, 15, 11, 13, 17, 11, 17, 15, 13, 
          7, 9, 1, 4, 8, 6, 4, 0, 7, 8, 3, 5, 9, 6, 5, 2 ], 
      [ 15, 17, 11, 13, 15, 17, 11, 13, 14, 10, 12, 16, 14, 12, 10, 16, 2, 4, 7, 8, 4, 3, 9, 6, 0, 
          5, 7, 9, 5, 1, 8, 6 ], [ 15, 17, 11, 13, 17, 15, 13, 11, 10, 14, 16, 12, 12, 14, 16, 10, 
          4, 2, 8, 7, 3, 4, 6, 9, 5, 0, 9, 7, 1, 5, 6, 8 ], 
      [ 14, 16, 10, 12, 10, 12, 14, 16, 13, 17, 15, 11, 17, 11, 13, 15, 6, 9, 2, 5, 8, 7, 5, 3, 6, 
          8, 0, 4, 9, 7, 4, 1 ], [ 14, 16, 10, 12, 12, 10, 16, 14, 17, 13, 11, 15, 11, 17, 15, 13, 
          9, 6, 5, 2, 7, 8, 3, 5, 8, 6, 4, 0, 7, 9, 1, 4 ], 
      [ 17, 15, 13, 11, 15, 17, 11, 13, 12, 16, 14, 10, 10, 16, 14, 12, 4, 3, 9, 6, 2, 4, 7, 8, 5, 
          1, 8, 6, 0, 5, 7, 9 ], [ 17, 15, 13, 11, 17, 15, 13, 11, 16, 12, 10, 14, 16, 10, 12, 14, 
          3, 4, 6, 9, 4, 2, 8, 7, 1, 5, 6, 8, 5, 0, 9, 7 ], 
      [ 16, 14, 12, 10, 10, 12, 14, 16, 15, 11, 13, 17, 13, 15, 17, 11, 8, 7, 5, 3, 6, 9, 2, 5, 9, 
          7, 4, 1, 6, 8, 0, 4 ], [ 16, 14, 12, 10, 12, 10, 16, 14, 11, 15, 17, 13, 15, 13, 11, 17, 
          7, 8, 3, 5, 9, 6, 5, 2, 7, 9, 1, 4, 8, 6, 4, 0 ] ] )