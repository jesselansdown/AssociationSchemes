rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, -2, 2, 2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, -2, 2, 2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 0, 0, 2, 2, 0, 0, 0, 0, -4, -4, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 8, 8, 11, 11, 9, 9, 10, 10, 0, 1, 4, 5, 6, 7, 2, 3, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 11, 11, 9, 9, 10, 10, 1, 0, 5, 4, 7, 6, 3, 2, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 9, 9, 10, 10, 8, 8, 11, 11, 5, 4, 0, 1, 2, 3, 7, 6, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 9, 9, 10, 10, 8, 8, 11, 11, 4, 5, 1, 0, 3, 2, 6, 7, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 11, 11, 8, 8, 10, 10, 9, 9, 7, 6, 2, 3, 0, 1, 5, 4, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 11, 11, 8, 8, 10, 10, 9, 9, 6, 7, 3, 2, 1, 0, 4, 5, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 10, 10, 9, 9, 11, 11, 8, 8, 2, 3, 6, 7, 4, 5, 0, 1, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 10, 10, 9, 9, 11, 11, 8, 8, 3, 2, 7, 6, 5, 4, 1, 0, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 12, 12, 15, 15, 12, 12, 15, 15, 14, 14, 14, 14, 13, 13, 13, 13, 0, 1, 4, 5, 10, 10, 11, 
          11, 8, 8, 9, 9, 2, 3, 6, 7 ], 
      [ 12, 12, 15, 15, 12, 12, 15, 15, 14, 14, 14, 14, 13, 13, 13, 13, 1, 0, 5, 4, 10, 10, 11, 
          11, 8, 8, 9, 9, 3, 2, 7, 6 ], 
      [ 12, 12, 15, 15, 12, 12, 15, 15, 14, 14, 14, 14, 13, 13, 13, 13, 5, 4, 0, 1, 11, 11, 10, 
          10, 9, 9, 8, 8, 7, 6, 2, 3 ], 
      [ 12, 12, 15, 15, 12, 12, 15, 15, 14, 14, 14, 14, 13, 13, 13, 13, 4, 5, 1, 0, 11, 11, 10, 
          10, 9, 9, 8, 8, 6, 7, 3, 2 ], 
      [ 13, 13, 14, 14, 13, 13, 14, 14, 15, 15, 15, 15, 12, 12, 12, 12, 11, 11, 10, 10, 0, 1, 4, 
          5, 6, 7, 2, 3, 8, 8, 9, 9 ], 
      [ 13, 13, 14, 14, 13, 13, 14, 14, 15, 15, 15, 15, 12, 12, 12, 12, 11, 11, 10, 10, 1, 0, 5, 
          4, 7, 6, 3, 2, 8, 8, 9, 9 ], 
      [ 13, 13, 14, 14, 13, 13, 14, 14, 15, 15, 15, 15, 12, 12, 12, 12, 10, 10, 11, 11, 5, 4, 0, 
          1, 2, 3, 7, 6, 9, 9, 8, 8 ], 
      [ 13, 13, 14, 14, 13, 13, 14, 14, 15, 15, 15, 15, 12, 12, 12, 12, 10, 10, 11, 11, 4, 5, 1, 
          0, 3, 2, 6, 7, 9, 9, 8, 8 ], 
      [ 15, 15, 12, 12, 15, 15, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 8, 8, 9, 9, 7, 6, 2, 3, 0, 
          1, 5, 4, 11, 11, 10, 10 ], 
      [ 15, 15, 12, 12, 15, 15, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 8, 8, 9, 9, 6, 7, 3, 2, 1, 
          0, 4, 5, 11, 11, 10, 10 ], 
      [ 15, 15, 12, 12, 15, 15, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 9, 9, 8, 8, 2, 3, 6, 7, 4, 
          5, 0, 1, 10, 10, 11, 11 ], 
      [ 15, 15, 12, 12, 15, 15, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 9, 9, 8, 8, 3, 2, 7, 6, 5, 
          4, 1, 0, 10, 10, 11, 11 ], 
      [ 14, 14, 13, 13, 14, 14, 13, 13, 12, 12, 12, 12, 15, 15, 15, 15, 2, 3, 6, 7, 8, 8, 9, 9, 
          10, 10, 11, 11, 0, 1, 4, 5 ], 
      [ 14, 14, 13, 13, 14, 14, 13, 13, 12, 12, 12, 12, 15, 15, 15, 15, 3, 2, 7, 6, 8, 8, 9, 9, 
          10, 10, 11, 11, 1, 0, 5, 4 ], 
      [ 14, 14, 13, 13, 14, 14, 13, 13, 12, 12, 12, 12, 15, 15, 15, 15, 7, 6, 2, 3, 9, 9, 8, 8, 
          11, 11, 10, 10, 5, 4, 0, 1 ], 
      [ 14, 14, 13, 13, 14, 14, 13, 13, 12, 12, 12, 12, 15, 15, 15, 15, 6, 7, 3, 2, 9, 9, 8, 8, 
          11, 11, 10, 10, 4, 5, 1, 0 ] ] )