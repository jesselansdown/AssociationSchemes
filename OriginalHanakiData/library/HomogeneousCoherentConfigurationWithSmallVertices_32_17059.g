rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, 3, -3, -3*E(4), 3*E(4), 3*E(8), 
          -3*E(8)^3, -3*E(8), 3*E(8)^3, 1 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, 3, -3, -3*E(4), 3*E(4), -3*E(8), 
          3*E(8)^3, 3*E(8), -3*E(8)^3, 1 ], 
      [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), 3, -3, 3*E(4), -3*E(4), 3*E(8)^3, 
          -3*E(8), -3*E(8)^3, 3*E(8), 1 ], 
      [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 3, -3, 3*E(4), -3*E(4), -3*E(8)^3, 
          3*E(8), 3*E(8)^3, -3*E(8), 1 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), 3, 3, -3, -3, 3*E(4), -3*E(4), 3*E(4), -3*E(4), 1 ]
        , [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), 3, 3, -3, -3, -3*E(4), 3*E(4), -3*E(4), 
          3*E(4), 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 3, 3, 3, 3, -3, -3, -3, -3, 1 ], 
      [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, -1, 1, E(4), -E(4), -E(8), E(8)^3, E(8), 
          -E(8)^3, 3 ], [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, -1, 1, E(4), -E(4), 
          E(8), -E(8)^3, -E(8), E(8)^3, 3 ], 
      [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), -1, 1, -E(4), E(4), -E(8)^3, E(8), 
          E(8)^3, -E(8), 3 ], [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), -1, 1, -E(4), 
          E(4), E(8)^3, -E(8), -E(8)^3, E(8), 3 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), -1, -1, 1, 1, -E(4), E(4), -E(4), E(4), 3 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -1, -1, 1, 1, E(4), -E(4), E(4), -E(4), 3 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 3 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 3 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11, 12, 12, 12, 13, 13, 13, 
          14, 14, 14, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 9, 9, 9, 8, 8, 8, 11, 11, 11, 10, 10, 10, 14, 14, 14, 15, 15, 15, 
          12, 12, 12, 13, 13, 13 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 10, 10, 10, 11, 11, 11, 9, 9, 9, 8, 8, 8, 13, 13, 13, 14, 14, 14, 
          15, 15, 15, 12, 12, 12 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 11, 11, 11, 10, 10, 10, 8, 8, 8, 9, 9, 9, 15, 15, 15, 12, 12, 12, 
          13, 13, 13, 14, 14, 14 ], 
      [ 5, 7, 4, 6, 0, 3, 1, 2, 13, 13, 13, 15, 15, 15, 14, 14, 14, 12, 12, 12, 8, 8, 8, 10, 10, 
          10, 9, 9, 9, 11, 11, 11 ], 
      [ 4, 6, 7, 5, 2, 0, 3, 1, 12, 12, 12, 14, 14, 14, 13, 13, 13, 15, 15, 15, 11, 11, 11, 8, 8, 
          8, 10, 10, 10, 9, 9, 9 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 15, 15, 15, 13, 13, 13, 12, 12, 12, 14, 14, 14, 9, 9, 9, 11, 11, 
          11, 8, 8, 8, 10, 10, 10 ], 
      [ 6, 4, 5, 7, 3, 1, 2, 0, 14, 14, 14, 12, 12, 12, 15, 15, 15, 13, 13, 13, 10, 10, 10, 9, 9, 
          9, 11, 11, 11, 8, 8, 8 ], 
      [ 8, 9, 11, 10, 12, 13, 14, 15, 0, 8, 8, 1, 9, 9, 3, 10, 10, 2, 11, 11, 4, 12, 12, 5, 13, 
          13, 6, 14, 14, 7, 15, 15 ], 
      [ 8, 9, 11, 10, 12, 13, 14, 15, 8, 0, 8, 9, 1, 9, 10, 3, 10, 11, 2, 11, 12, 4, 12, 13, 5, 
          13, 14, 6, 14, 15, 7, 15 ], 
      [ 8, 9, 11, 10, 12, 13, 14, 15, 8, 8, 0, 9, 9, 1, 10, 10, 3, 11, 11, 2, 12, 12, 4, 13, 13, 
          5, 14, 14, 6, 15, 15, 7 ], 
      [ 9, 8, 10, 11, 14, 15, 12, 13, 1, 9, 9, 0, 8, 8, 2, 11, 11, 3, 10, 10, 6, 14, 14, 7, 15, 
          15, 4, 12, 12, 5, 13, 13 ], 
      [ 9, 8, 10, 11, 14, 15, 12, 13, 9, 1, 9, 8, 0, 8, 11, 2, 11, 10, 3, 10, 14, 6, 14, 15, 7, 
          15, 12, 4, 12, 13, 5, 13 ], 
      [ 9, 8, 10, 11, 14, 15, 12, 13, 9, 9, 1, 8, 8, 0, 11, 11, 2, 10, 10, 3, 14, 14, 6, 15, 15, 
          7, 12, 12, 4, 13, 13, 5 ], 
      [ 11, 10, 9, 8, 15, 12, 13, 14, 2, 11, 11, 3, 10, 10, 0, 8, 8, 1, 9, 9, 7, 15, 15, 4, 12, 
          12, 5, 13, 13, 6, 14, 14 ], 
      [ 11, 10, 9, 8, 15, 12, 13, 14, 11, 2, 11, 10, 3, 10, 8, 0, 8, 9, 1, 9, 15, 7, 15, 12, 4, 
          12, 13, 5, 13, 14, 6, 14 ], 
      [ 11, 10, 9, 8, 15, 12, 13, 14, 11, 11, 2, 10, 10, 3, 8, 8, 0, 9, 9, 1, 15, 15, 7, 12, 12, 
          4, 13, 13, 5, 14, 14, 6 ], 
      [ 10, 11, 8, 9, 13, 14, 15, 12, 3, 10, 10, 2, 11, 11, 1, 9, 9, 0, 8, 8, 5, 13, 13, 6, 14, 
          14, 7, 15, 15, 4, 12, 12 ], 
      [ 10, 11, 8, 9, 13, 14, 15, 12, 10, 3, 10, 11, 2, 11, 9, 1, 9, 8, 0, 8, 13, 5, 13, 14, 6, 
          14, 15, 7, 15, 12, 4, 12 ], 
      [ 10, 11, 8, 9, 13, 14, 15, 12, 10, 10, 3, 11, 11, 2, 9, 9, 1, 8, 8, 0, 13, 13, 5, 14, 14, 
          6, 15, 15, 7, 12, 12, 4 ], 
      [ 13, 15, 12, 14, 8, 10, 9, 11, 5, 13, 13, 7, 15, 15, 6, 14, 14, 4, 12, 12, 0, 8, 8, 3, 10, 
          10, 1, 9, 9, 2, 11, 11 ], 
      [ 13, 15, 12, 14, 8, 10, 9, 11, 13, 5, 13, 15, 7, 15, 14, 6, 14, 12, 4, 12, 8, 0, 8, 10, 3, 
          10, 9, 1, 9, 11, 2, 11 ], 
      [ 13, 15, 12, 14, 8, 10, 9, 11, 13, 13, 5, 15, 15, 7, 14, 14, 6, 12, 12, 4, 8, 8, 0, 10, 10, 
          3, 9, 9, 1, 11, 11, 2 ], 
      [ 12, 14, 15, 13, 11, 8, 10, 9, 4, 12, 12, 6, 14, 14, 5, 13, 13, 7, 15, 15, 2, 11, 11, 0, 8, 
          8, 3, 10, 10, 1, 9, 9 ], 
      [ 12, 14, 15, 13, 11, 8, 10, 9, 12, 4, 12, 14, 6, 14, 13, 5, 13, 15, 7, 15, 11, 2, 11, 8, 0, 
          8, 10, 3, 10, 9, 1, 9 ], 
      [ 12, 14, 15, 13, 11, 8, 10, 9, 12, 12, 4, 14, 14, 6, 13, 13, 5, 15, 15, 7, 11, 11, 2, 8, 8, 
          0, 10, 10, 3, 9, 9, 1 ], 
      [ 15, 13, 14, 12, 9, 11, 8, 10, 7, 15, 15, 5, 13, 13, 4, 12, 12, 6, 14, 14, 1, 9, 9, 2, 11, 
          11, 0, 8, 8, 3, 10, 10 ], 
      [ 15, 13, 14, 12, 9, 11, 8, 10, 15, 7, 15, 13, 5, 13, 12, 4, 12, 14, 6, 14, 9, 1, 9, 11, 2, 
          11, 8, 0, 8, 10, 3, 10 ], 
      [ 15, 13, 14, 12, 9, 11, 8, 10, 15, 15, 7, 13, 13, 5, 12, 12, 4, 14, 14, 6, 9, 9, 1, 11, 11, 
          2, 8, 8, 0, 10, 10, 3 ], 
      [ 14, 12, 13, 15, 10, 9, 11, 8, 6, 14, 14, 4, 12, 12, 7, 15, 15, 5, 13, 13, 3, 10, 10, 1, 9, 
          9, 2, 11, 11, 0, 8, 8 ], 
      [ 14, 12, 13, 15, 10, 9, 11, 8, 14, 6, 14, 12, 4, 12, 15, 7, 15, 13, 5, 13, 10, 3, 10, 9, 1, 
          9, 11, 2, 11, 8, 0, 8 ], 
      [ 14, 12, 13, 15, 10, 9, 11, 8, 14, 14, 6, 12, 12, 4, 15, 15, 7, 13, 13, 5, 10, 10, 3, 9, 9, 
          1, 11, 11, 2, 8, 8, 0 ] ] )