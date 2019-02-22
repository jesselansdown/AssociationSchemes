rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 2, 2, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 0, 1, 2, 3, 4, 5, 6, 7, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 1, 0, 3, 2, 5, 4, 7, 6, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 2, 3, 0, 1, 6, 7, 4, 5, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 3, 2, 1, 0, 7, 6, 5, 4, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 4, 5, 6, 7, 0, 1, 2, 3, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 5, 4, 7, 6, 1, 0, 3, 2, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 6, 7, 4, 5, 2, 3, 0, 1, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 7, 6, 5, 4, 3, 2, 1, 0, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 12, 12, 13, 13, 12, 12, 13, 13, 14, 14, 15, 15, 14, 14, 15, 15, 0, 1, 4, 5, 2, 3, 6, 7, 8, 
          8, 10, 10, 9, 9, 11, 11 ], 
      [ 12, 12, 13, 13, 12, 12, 13, 13, 14, 14, 15, 15, 14, 14, 15, 15, 1, 0, 5, 4, 3, 2, 7, 6, 8, 
          8, 10, 10, 9, 9, 11, 11 ], 
      [ 12, 12, 13, 13, 12, 12, 13, 13, 14, 14, 15, 15, 14, 14, 15, 15, 4, 5, 0, 1, 6, 7, 2, 3, 
          10, 10, 8, 8, 11, 11, 9, 9 ], 
      [ 12, 12, 13, 13, 12, 12, 13, 13, 14, 14, 15, 15, 14, 14, 15, 15, 5, 4, 1, 0, 7, 6, 3, 2, 
          10, 10, 8, 8, 11, 11, 9, 9 ], 
      [ 13, 13, 12, 12, 13, 13, 12, 12, 15, 15, 14, 14, 15, 15, 14, 14, 2, 3, 6, 7, 0, 1, 4, 5, 9, 
          9, 11, 11, 8, 8, 10, 10 ], 
      [ 13, 13, 12, 12, 13, 13, 12, 12, 15, 15, 14, 14, 15, 15, 14, 14, 3, 2, 7, 6, 1, 0, 5, 4, 9, 
          9, 11, 11, 8, 8, 10, 10 ], 
      [ 13, 13, 12, 12, 13, 13, 12, 12, 15, 15, 14, 14, 15, 15, 14, 14, 6, 7, 2, 3, 4, 5, 0, 1, 
          11, 11, 9, 9, 10, 10, 8, 8 ], 
      [ 13, 13, 12, 12, 13, 13, 12, 12, 15, 15, 14, 14, 15, 15, 14, 14, 7, 6, 3, 2, 5, 4, 1, 0, 
          11, 11, 9, 9, 10, 10, 8, 8 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 13, 13, 12, 12, 13, 13, 12, 12, 9, 9, 11, 11, 8, 8, 10, 
          10, 0, 1, 4, 5, 2, 3, 6, 7 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 13, 13, 12, 12, 13, 13, 12, 12, 9, 9, 11, 11, 8, 8, 10, 
          10, 1, 0, 5, 4, 3, 2, 7, 6 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 13, 13, 12, 12, 13, 13, 12, 12, 11, 11, 9, 9, 10, 10, 8, 
          8, 4, 5, 0, 1, 6, 7, 2, 3 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 13, 13, 12, 12, 13, 13, 12, 12, 11, 11, 9, 9, 10, 10, 8, 
          8, 5, 4, 1, 0, 7, 6, 3, 2 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 12, 12, 13, 13, 12, 12, 13, 13, 8, 8, 10, 10, 9, 9, 11, 
          11, 2, 3, 6, 7, 0, 1, 4, 5 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 12, 12, 13, 13, 12, 12, 13, 13, 8, 8, 10, 10, 9, 9, 11, 
          11, 3, 2, 7, 6, 1, 0, 5, 4 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 12, 12, 13, 13, 12, 12, 13, 13, 10, 10, 8, 8, 11, 11, 9, 
          9, 6, 7, 2, 3, 4, 5, 0, 1 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 12, 12, 13, 13, 12, 12, 13, 13, 10, 10, 8, 8, 11, 11, 9, 
          9, 7, 6, 3, 2, 5, 4, 1, 0 ] ] )