rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -2, 2, -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), 2, -2, 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), -2, 2, 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), 2, -2, -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 5, 7, 4, 6, 0, 3, 1, 2, 10, 10, 11, 11, 9, 9, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 4, 6, 7, 5, 2, 0, 3, 1, 11, 11, 10, 10, 8, 8, 9, 9, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 10, 10, 11, 11, 9, 9, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 6, 4, 5, 7, 3, 1, 2, 0, 11, 11, 10, 10, 8, 8, 9, 9, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 8, 8, 9, 9, 11, 10, 11, 10, 0, 1, 2, 3, 5, 7, 4, 6, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 8, 8, 9, 9, 11, 10, 11, 10, 1, 0, 3, 2, 7, 5, 6, 4, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 9, 9, 8, 8, 10, 11, 10, 11, 3, 2, 0, 1, 6, 4, 5, 7, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 9, 9, 8, 8, 10, 11, 10, 11, 2, 3, 1, 0, 4, 6, 7, 5, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 11, 11, 10, 10, 9, 8, 9, 8, 4, 6, 7, 5, 0, 1, 2, 3, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 11, 11, 10, 10, 9, 8, 9, 8, 6, 4, 5, 7, 1, 0, 3, 2, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 9, 8, 9, 5, 7, 4, 6, 3, 2, 0, 1, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 9, 8, 9, 7, 5, 6, 4, 2, 3, 1, 0, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 15, 15, 15, 15, 14, 14, 14, 14, 0, 1, 2, 3, 4, 5, 6, 7, 
          10, 10, 11, 11, 8, 8, 9, 9 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 15, 15, 15, 15, 14, 14, 14, 14, 1, 0, 3, 2, 6, 7, 4, 5, 
          10, 10, 11, 11, 8, 8, 9, 9 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 15, 15, 15, 15, 14, 14, 14, 14, 3, 2, 0, 1, 5, 6, 7, 4, 
          11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 15, 15, 15, 15, 14, 14, 14, 14, 2, 3, 1, 0, 7, 4, 5, 6, 
          11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15, 5, 7, 4, 6, 0, 3, 1, 2, 9, 
          9, 8, 8, 10, 10, 11, 11 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15, 4, 6, 7, 5, 2, 0, 3, 1, 8, 
          8, 9, 9, 11, 11, 10, 10 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15, 7, 5, 6, 4, 1, 2, 0, 3, 9, 
          9, 8, 8, 10, 10, 11, 11 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15, 6, 4, 5, 7, 3, 1, 2, 0, 8, 
          8, 9, 9, 11, 11, 10, 10 ], 
      [ 15, 15, 15, 15, 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 10, 10, 9, 8, 9, 
          8, 0, 1, 2, 3, 4, 6, 5, 7 ], 
      [ 15, 15, 15, 15, 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13, 11, 11, 10, 10, 9, 8, 9, 
          8, 1, 0, 3, 2, 6, 4, 7, 5 ], 
      [ 15, 15, 15, 15, 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 11, 11, 8, 9, 8, 
          9, 3, 2, 0, 1, 5, 7, 6, 4 ], 
      [ 15, 15, 15, 15, 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 11, 11, 8, 9, 8, 
          9, 2, 3, 1, 0, 7, 5, 4, 6 ], 
      [ 14, 14, 14, 14, 15, 15, 15, 15, 13, 13, 13, 13, 12, 12, 12, 12, 8, 8, 9, 9, 11, 10, 11, 
          10, 5, 7, 4, 6, 0, 1, 3, 2 ], 
      [ 14, 14, 14, 14, 15, 15, 15, 15, 13, 13, 13, 13, 12, 12, 12, 12, 8, 8, 9, 9, 11, 10, 11, 
          10, 7, 5, 6, 4, 1, 0, 2, 3 ], 
      [ 14, 14, 14, 14, 15, 15, 15, 15, 13, 13, 13, 13, 12, 12, 12, 12, 9, 9, 8, 8, 10, 11, 10, 
          11, 4, 6, 7, 5, 2, 3, 0, 1 ], 
      [ 14, 14, 14, 14, 15, 15, 15, 15, 13, 13, 13, 13, 12, 12, 12, 12, 9, 9, 8, 8, 10, 11, 10, 
          11, 6, 4, 5, 7, 3, 2, 1, 0 ] ] )