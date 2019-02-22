rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 8, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -4, -4, 8, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 4, 4, -8, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -8, 1 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, -4*E(4), 4*E(4), 0, 2 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, 4*E(4), -4*E(4), 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 0, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 14, 14, 14, 14 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 13, 13, 12, 12, 12, 12, 14, 
          14, 14, 14, 14, 14, 14, 14 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 14, 14, 14, 14 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 14, 
          14, 14, 14, 14, 14, 14, 14 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 14, 14, 14, 14 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 13, 13, 13, 13, 12, 12, 12, 12, 14, 
          14, 14, 14, 14, 14, 14, 14 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 14, 14, 14, 14 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 14, 
          14, 14, 14, 14, 14, 14, 14 ], 
      [ 8, 8, 9, 9, 11, 11, 10, 10, 0, 1, 2, 3, 6, 7, 4, 5, 14, 14, 14, 14, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 8, 8, 9, 9, 11, 11, 10, 10, 1, 0, 3, 2, 7, 6, 5, 4, 14, 14, 14, 14, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 9, 9, 8, 8, 10, 10, 11, 11, 2, 3, 0, 1, 4, 5, 6, 7, 14, 14, 14, 14, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 9, 9, 8, 8, 10, 10, 11, 11, 3, 2, 1, 0, 5, 4, 7, 6, 14, 14, 14, 14, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 11, 11, 10, 10, 8, 8, 9, 9, 6, 7, 4, 5, 0, 1, 2, 3, 14, 14, 14, 14, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 11, 11, 10, 10, 8, 8, 9, 9, 7, 6, 5, 4, 1, 0, 3, 2, 14, 14, 14, 14, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 10, 10, 11, 11, 9, 9, 8, 8, 4, 5, 6, 7, 2, 3, 0, 1, 14, 14, 14, 14, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 10, 10, 11, 11, 9, 9, 8, 8, 5, 4, 7, 6, 3, 2, 1, 0, 14, 14, 14, 14, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 14, 14, 14, 14, 14, 14, 14, 14, 0, 2, 4, 6, 1, 3, 5, 7, 8, 
          9, 10, 11, 8, 9, 10, 11 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 14, 14, 14, 14, 14, 14, 14, 14, 2, 0, 6, 4, 3, 1, 7, 5, 9, 
          8, 11, 10, 9, 8, 11, 10 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 14, 14, 14, 14, 14, 14, 14, 14, 4, 6, 0, 2, 5, 7, 1, 3, 
          10, 11, 8, 9, 10, 11, 8, 9 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 14, 14, 14, 14, 14, 14, 14, 14, 6, 4, 2, 0, 7, 5, 3, 1, 
          11, 10, 9, 8, 11, 10, 9, 8 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 14, 14, 14, 14, 14, 14, 14, 14, 1, 3, 5, 7, 0, 2, 4, 6, 8, 
          9, 10, 11, 8, 9, 10, 11 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 14, 14, 14, 14, 14, 14, 14, 14, 3, 1, 7, 5, 2, 0, 6, 4, 9, 
          8, 11, 10, 9, 8, 11, 10 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 14, 14, 14, 14, 14, 14, 14, 14, 5, 7, 1, 3, 4, 6, 0, 2, 
          10, 11, 8, 9, 10, 11, 8, 9 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 14, 14, 14, 14, 14, 14, 14, 14, 7, 5, 3, 1, 6, 4, 2, 0, 
          11, 10, 9, 8, 11, 10, 9, 8 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 13, 12, 13, 12, 13, 12, 13, 12, 8, 9, 11, 10, 8, 9, 11, 
          10, 0, 2, 6, 4, 1, 3, 7, 5 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 13, 12, 13, 12, 13, 12, 13, 12, 9, 8, 10, 11, 9, 8, 10, 
          11, 2, 0, 4, 6, 3, 1, 5, 7 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 13, 12, 13, 12, 13, 12, 13, 12, 11, 10, 8, 9, 11, 10, 8, 
          9, 6, 4, 0, 2, 7, 5, 1, 3 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 13, 12, 13, 12, 13, 12, 13, 12, 10, 11, 9, 8, 10, 11, 9, 
          8, 4, 6, 2, 0, 5, 7, 3, 1 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 12, 13, 12, 13, 12, 13, 12, 13, 8, 9, 11, 10, 8, 9, 11, 
          10, 1, 3, 7, 5, 0, 2, 6, 4 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 12, 13, 12, 13, 12, 13, 12, 13, 9, 8, 10, 11, 9, 8, 10, 
          11, 3, 1, 5, 7, 2, 0, 4, 6 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 12, 13, 12, 13, 12, 13, 12, 13, 11, 10, 8, 9, 11, 10, 8, 
          9, 7, 5, 1, 3, 6, 4, 0, 2 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 12, 13, 12, 13, 12, 13, 12, 13, 10, 11, 9, 8, 10, 11, 9, 
          8, 5, 7, 3, 1, 4, 6, 2, 0 ] ] )