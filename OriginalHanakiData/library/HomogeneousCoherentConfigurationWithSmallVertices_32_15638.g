rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 8, 8, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -8, 8, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 8, -8, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -8, -8, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 0, 0, 2 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 
          13, 13, 13, 13, 13, 13 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 9, 9, 8, 8, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 10, 10, 8, 8, 9, 9, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 11, 11, 9, 9, 8, 8, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 8, 8, 9, 9, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 8, 9, 8, 9, 10, 11, 10, 11, 0, 2, 1, 3, 4, 6, 5, 7, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 8, 9, 8, 9, 10, 11, 10, 11, 2, 0, 3, 1, 6, 4, 7, 5, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 9, 8, 9, 8, 11, 10, 11, 10, 1, 3, 0, 2, 5, 7, 4, 6, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 9, 8, 9, 8, 11, 10, 11, 10, 3, 1, 2, 0, 7, 5, 6, 4, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 10, 11, 10, 11, 9, 8, 9, 8, 5, 7, 4, 6, 0, 2, 1, 3, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 10, 11, 10, 11, 9, 8, 9, 8, 7, 5, 6, 4, 2, 0, 3, 1, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 11, 10, 11, 10, 8, 9, 8, 9, 4, 6, 5, 7, 1, 3, 0, 2, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 11, 10, 11, 10, 8, 9, 8, 9, 6, 4, 7, 5, 3, 1, 2, 0, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 0, 1, 2, 3, 4, 5, 6, 7, 8, 
          8, 9, 9, 10, 10, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 1, 0, 3, 2, 5, 4, 7, 6, 9, 
          9, 8, 8, 11, 11, 10, 10 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 2, 3, 0, 1, 6, 7, 4, 5, 8, 
          8, 9, 9, 10, 10, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 3, 2, 1, 0, 7, 6, 5, 4, 9, 
          9, 8, 8, 11, 11, 10, 10 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 5, 4, 7, 6, 0, 1, 2, 3, 
          10, 10, 11, 11, 9, 9, 8, 8 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 4, 5, 6, 7, 1, 0, 3, 2, 
          11, 11, 10, 10, 8, 8, 9, 9 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 7, 6, 5, 4, 2, 3, 0, 1, 
          10, 10, 11, 11, 9, 9, 8, 8 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 6, 7, 4, 5, 3, 2, 1, 0, 
          11, 11, 10, 10, 8, 8, 9, 9 ], 
      [ 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 8, 9, 8, 9, 10, 11, 10, 
          11, 0, 2, 1, 3, 4, 6, 5, 7 ], 
      [ 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 8, 9, 8, 9, 10, 11, 10, 
          11, 2, 0, 3, 1, 6, 4, 7, 5 ], 
      [ 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 9, 8, 9, 8, 11, 10, 11, 
          10, 1, 3, 0, 2, 5, 7, 4, 6 ], 
      [ 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 9, 8, 9, 8, 11, 10, 11, 
          10, 3, 1, 2, 0, 7, 5, 6, 4 ], 
      [ 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 10, 11, 10, 11, 9, 8, 9, 
          8, 5, 7, 4, 6, 0, 2, 1, 3 ], 
      [ 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 10, 11, 10, 11, 9, 8, 9, 
          8, 7, 5, 6, 4, 2, 0, 3, 1 ], 
      [ 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 11, 10, 11, 10, 8, 9, 8, 
          9, 4, 6, 5, 7, 1, 3, 0, 2 ], 
      [ 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 11, 10, 11, 10, 8, 9, 8, 
          9, 6, 4, 7, 5, 3, 1, 2, 0 ] ] )