rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, -2*E(8)^3, 2*E(8), 
          2*E(8)^3, -2*E(8), 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 2*E(8)^3, -2*E(8), 
          -2*E(8)^3, 2*E(8), 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, -2*E(8), 2*E(8)^3, 2*E(8), 
          -2*E(8)^3, 2 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 
          2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, -2, 2, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ]
        , [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 2, -2, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 
          0, 2 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, -2, 2, 0, 0, 2*E(4), -2*E(4), 0, 
          0, 0, 0, 2 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 2, -2, 0, 0, -2*E(4), 
          2*E(4), 0, 0, 0, 0, 2 ], [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
          4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 11, 11, 10, 10, 12, 12, 13, 13, 15, 15, 14, 14, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 10, 10, 11, 11, 13, 13, 12, 12, 14, 14, 15, 15, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 12, 12, 13, 13, 14, 14, 15, 15, 8, 8, 9, 9, 11, 11, 10, 10, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 12, 12, 13, 13, 15, 15, 14, 14, 8, 8, 9, 9, 10, 10, 11, 11, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 13, 13, 12, 12, 14, 14, 15, 15, 9, 9, 8, 8, 11, 11, 10, 10, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 13, 13, 12, 12, 15, 15, 14, 14, 9, 9, 8, 8, 10, 10, 11, 11, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 8, 8, 9, 9, 13, 13, 12, 12, 0, 1, 2, 3, 16, 18, 16, 18, 6, 7, 4, 5, 17, 19, 17, 19, 10, 
          11, 14, 15, 10, 11, 14, 15 ], 
      [ 8, 8, 9, 9, 13, 13, 12, 12, 1, 0, 3, 2, 18, 16, 18, 16, 7, 6, 5, 4, 19, 17, 19, 17, 11, 
          10, 15, 14, 11, 10, 15, 14 ], 
      [ 9, 9, 8, 8, 12, 12, 13, 13, 2, 3, 0, 1, 18, 16, 18, 16, 4, 5, 6, 7, 19, 17, 19, 17, 10, 
          11, 14, 15, 10, 11, 14, 15 ], 
      [ 9, 9, 8, 8, 12, 12, 13, 13, 3, 2, 1, 0, 16, 18, 16, 18, 5, 4, 7, 6, 17, 19, 17, 19, 11, 
          10, 15, 14, 11, 10, 15, 14 ], 
      [ 10, 11, 10, 11, 15, 14, 15, 14, 17, 19, 19, 17, 0, 2, 3, 1, 18, 16, 16, 18, 5, 7, 6, 4, 
          12, 13, 9, 8, 13, 12, 8, 9 ], 
      [ 10, 11, 10, 11, 15, 14, 15, 14, 19, 17, 17, 19, 2, 0, 1, 3, 16, 18, 18, 16, 7, 5, 4, 6, 
          13, 12, 8, 9, 12, 13, 9, 8 ], 
      [ 11, 10, 11, 10, 14, 15, 14, 15, 17, 19, 19, 17, 3, 1, 0, 2, 18, 16, 16, 18, 6, 4, 5, 7, 
          13, 12, 8, 9, 12, 13, 9, 8 ], 
      [ 11, 10, 11, 10, 14, 15, 14, 15, 19, 17, 17, 19, 1, 3, 2, 0, 16, 18, 18, 16, 4, 6, 7, 5, 
          12, 13, 9, 8, 13, 12, 8, 9 ], 
      [ 13, 13, 12, 12, 8, 8, 9, 9, 7, 6, 5, 4, 19, 17, 19, 17, 0, 1, 2, 3, 16, 18, 16, 18, 14, 
          15, 11, 10, 14, 15, 11, 10 ], 
      [ 13, 13, 12, 12, 8, 8, 9, 9, 6, 7, 4, 5, 17, 19, 17, 19, 1, 0, 3, 2, 18, 16, 18, 16, 15, 
          14, 10, 11, 15, 14, 10, 11 ], 
      [ 12, 12, 13, 13, 9, 9, 8, 8, 5, 4, 7, 6, 17, 19, 17, 19, 2, 3, 0, 1, 18, 16, 18, 16, 14, 
          15, 11, 10, 14, 15, 11, 10 ], 
      [ 12, 12, 13, 13, 9, 9, 8, 8, 4, 5, 6, 7, 19, 17, 19, 17, 3, 2, 1, 0, 16, 18, 16, 18, 15, 
          14, 10, 11, 15, 14, 10, 11 ], 
      [ 15, 14, 15, 14, 11, 10, 11, 10, 16, 18, 18, 16, 4, 6, 7, 5, 17, 19, 19, 17, 0, 2, 3, 1, 8, 
          9, 13, 12, 9, 8, 12, 13 ], 
      [ 15, 14, 15, 14, 11, 10, 11, 10, 18, 16, 16, 18, 6, 4, 5, 7, 19, 17, 17, 19, 2, 0, 1, 3, 9, 
          8, 12, 13, 8, 9, 13, 12 ], 
      [ 14, 15, 14, 15, 10, 11, 10, 11, 16, 18, 18, 16, 7, 5, 4, 6, 17, 19, 19, 17, 3, 1, 0, 2, 9, 
          8, 12, 13, 8, 9, 13, 12 ], 
      [ 14, 15, 14, 15, 10, 11, 10, 11, 18, 16, 16, 18, 5, 7, 6, 4, 19, 17, 17, 19, 1, 3, 2, 0, 8, 
          9, 13, 12, 9, 8, 12, 13 ], 
      [ 17, 19, 19, 17, 16, 18, 18, 16, 10, 11, 10, 11, 13, 12, 12, 13, 15, 14, 15, 14, 8, 9, 9, 
          8, 0, 3, 5, 6, 2, 1, 7, 4 ], 
      [ 17, 19, 19, 17, 16, 18, 18, 16, 11, 10, 11, 10, 12, 13, 13, 12, 14, 15, 14, 15, 9, 8, 8, 
          9, 3, 0, 6, 5, 1, 2, 4, 7 ], 
      [ 16, 18, 18, 16, 19, 17, 17, 19, 15, 14, 15, 14, 9, 8, 8, 9, 11, 10, 11, 10, 12, 13, 13, 
          12, 4, 7, 0, 3, 6, 5, 2, 1 ], 
      [ 16, 18, 18, 16, 19, 17, 17, 19, 14, 15, 14, 15, 8, 9, 9, 8, 10, 11, 10, 11, 13, 12, 12, 
          13, 7, 4, 3, 0, 5, 6, 1, 2 ], 
      [ 19, 17, 17, 19, 18, 16, 16, 18, 10, 11, 10, 11, 12, 13, 13, 12, 15, 14, 15, 14, 9, 8, 8, 
          9, 2, 1, 7, 4, 0, 3, 5, 6 ], 
      [ 19, 17, 17, 19, 18, 16, 16, 18, 11, 10, 11, 10, 13, 12, 12, 13, 14, 15, 14, 15, 8, 9, 9, 
          8, 1, 2, 4, 7, 3, 0, 6, 5 ], 
      [ 18, 16, 16, 18, 17, 19, 19, 17, 15, 14, 15, 14, 8, 9, 9, 8, 11, 10, 11, 10, 13, 12, 12, 
          13, 6, 5, 2, 1, 4, 7, 0, 3 ], 
      [ 18, 16, 16, 18, 17, 19, 19, 17, 14, 15, 14, 15, 9, 8, 8, 9, 10, 11, 10, 11, 12, 13, 13, 
          12, 5, 6, 1, 2, 7, 4, 3, 0 ] ] )