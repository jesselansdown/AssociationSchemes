rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 4, -4, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -2, 2, -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), -2, 2, 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 5, 7, 4, 6, 0, 3, 1, 2, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 4, 6, 7, 5, 2, 0, 3, 1, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 6, 4, 5, 7, 3, 1, 2, 0, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 8, 8, 9, 9, 11, 10, 11, 10, 0, 1, 2, 3, 5, 7, 4, 6, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 8, 8, 9, 9, 11, 10, 11, 10, 1, 0, 3, 2, 7, 5, 6, 4, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 9, 9, 8, 8, 10, 11, 10, 11, 3, 2, 0, 1, 6, 4, 5, 7, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 9, 9, 8, 8, 10, 11, 10, 11, 2, 3, 1, 0, 4, 6, 7, 5, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 11, 11, 10, 10, 9, 8, 9, 8, 4, 6, 7, 5, 0, 1, 2, 3, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 11, 11, 10, 10, 9, 8, 9, 8, 6, 4, 5, 7, 1, 0, 3, 2, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 10, 10, 11, 11, 8, 9, 8, 9, 5, 7, 4, 6, 3, 2, 0, 1, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 9, 8, 9, 7, 5, 6, 4, 2, 3, 1, 0, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 13, 13, 12, 12, 15, 14, 15, 14, 13, 13, 12, 12, 14, 14, 15, 15, 0, 1, 8, 8, 2, 3, 9, 9, 4, 
          6, 11, 11, 5, 7, 10, 10 ], 
      [ 13, 13, 12, 12, 15, 14, 15, 14, 13, 13, 12, 12, 14, 14, 15, 15, 1, 0, 8, 8, 3, 2, 9, 9, 6, 
          4, 11, 11, 7, 5, 10, 10 ], 
      [ 13, 13, 12, 12, 15, 14, 15, 14, 13, 13, 12, 12, 14, 14, 15, 15, 8, 8, 0, 1, 9, 9, 2, 3, 
          11, 11, 4, 6, 10, 10, 5, 7 ], 
      [ 13, 13, 12, 12, 15, 14, 15, 14, 13, 13, 12, 12, 14, 14, 15, 15, 8, 8, 1, 0, 9, 9, 3, 2, 
          11, 11, 6, 4, 10, 10, 7, 5 ], 
      [ 12, 12, 13, 13, 14, 15, 14, 15, 12, 12, 13, 13, 15, 15, 14, 14, 3, 2, 9, 9, 0, 1, 8, 8, 5, 
          7, 10, 10, 6, 4, 11, 11 ], 
      [ 12, 12, 13, 13, 14, 15, 14, 15, 12, 12, 13, 13, 15, 15, 14, 14, 2, 3, 9, 9, 1, 0, 8, 8, 7, 
          5, 10, 10, 4, 6, 11, 11 ], 
      [ 12, 12, 13, 13, 14, 15, 14, 15, 12, 12, 13, 13, 15, 15, 14, 14, 9, 9, 3, 2, 8, 8, 0, 1, 
          10, 10, 5, 7, 11, 11, 6, 4 ], 
      [ 12, 12, 13, 13, 14, 15, 14, 15, 12, 12, 13, 13, 15, 15, 14, 14, 9, 9, 2, 3, 8, 8, 1, 0, 
          10, 10, 7, 5, 11, 11, 4, 6 ], 
      [ 15, 15, 14, 14, 12, 13, 12, 13, 15, 15, 14, 14, 13, 13, 12, 12, 5, 7, 10, 10, 4, 6, 11, 
          11, 0, 1, 8, 8, 3, 2, 9, 9 ], 
      [ 15, 15, 14, 14, 12, 13, 12, 13, 15, 15, 14, 14, 13, 13, 12, 12, 7, 5, 10, 10, 6, 4, 11, 
          11, 1, 0, 8, 8, 2, 3, 9, 9 ], 
      [ 15, 15, 14, 14, 12, 13, 12, 13, 15, 15, 14, 14, 13, 13, 12, 12, 10, 10, 5, 7, 11, 11, 4, 
          6, 8, 8, 0, 1, 9, 9, 3, 2 ], 
      [ 15, 15, 14, 14, 12, 13, 12, 13, 15, 15, 14, 14, 13, 13, 12, 12, 10, 10, 7, 5, 11, 11, 6, 
          4, 8, 8, 1, 0, 9, 9, 2, 3 ], 
      [ 14, 14, 15, 15, 13, 12, 13, 12, 14, 14, 15, 15, 12, 12, 13, 13, 4, 6, 11, 11, 7, 5, 10, 
          10, 2, 3, 9, 9, 0, 1, 8, 8 ], 
      [ 14, 14, 15, 15, 13, 12, 13, 12, 14, 14, 15, 15, 12, 12, 13, 13, 6, 4, 11, 11, 5, 7, 10, 
          10, 3, 2, 9, 9, 1, 0, 8, 8 ], 
      [ 14, 14, 15, 15, 13, 12, 13, 12, 14, 14, 15, 15, 12, 12, 13, 13, 11, 11, 4, 6, 10, 10, 7, 
          5, 9, 9, 2, 3, 8, 8, 0, 1 ], 
      [ 14, 14, 15, 15, 13, 12, 13, 12, 14, 14, 15, 15, 12, 12, 13, 13, 11, 11, 6, 4, 10, 10, 5, 
          7, 9, 9, 3, 2, 8, 8, 1, 0 ] ] )