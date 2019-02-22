rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 0, 0, 4*E(4), -4*E(4), 2 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 0, 0, -4*E(4), 4*E(4), 2 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, -4, 4, 0, 0, 2 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, 4, -4, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 13, 13, 13, 13, 12, 12, 12, 12, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 12, 12, 12, 12, 13, 13, 13, 13, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 0, 1, 2, 3, 4, 5, 6, 7, 14, 14, 15, 15, 14, 14, 15, 15, 12, 
          12, 13, 13, 12, 12, 13, 13 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 1, 0, 3, 2, 5, 4, 7, 6, 15, 15, 14, 14, 15, 15, 14, 14, 13, 
          13, 12, 12, 13, 13, 12, 12 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 2, 3, 0, 1, 6, 7, 4, 5, 14, 14, 15, 15, 14, 14, 15, 15, 12, 
          12, 13, 13, 12, 12, 13, 13 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 3, 2, 1, 0, 7, 6, 5, 4, 15, 15, 14, 14, 15, 15, 14, 14, 13, 
          13, 12, 12, 13, 13, 12, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 4, 5, 6, 7, 0, 1, 2, 3, 15, 15, 14, 14, 15, 15, 14, 14, 12, 
          12, 13, 13, 12, 12, 13, 13 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 5, 4, 7, 6, 1, 0, 3, 2, 14, 14, 15, 15, 14, 14, 15, 15, 13, 
          13, 12, 12, 13, 13, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 6, 7, 4, 5, 2, 3, 0, 1, 15, 15, 14, 14, 15, 15, 14, 14, 12, 
          12, 13, 13, 12, 12, 13, 13 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 7, 6, 5, 4, 3, 2, 1, 0, 14, 14, 15, 15, 14, 14, 15, 15, 13, 
          13, 12, 12, 13, 13, 12, 12 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 15, 14, 15, 14, 14, 15, 14, 15, 0, 2, 4, 6, 5, 7, 1, 3, 
          10, 11, 8, 9, 8, 9, 10, 11 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 15, 14, 15, 14, 14, 15, 14, 15, 2, 0, 6, 4, 7, 5, 3, 1, 
          11, 10, 9, 8, 9, 8, 11, 10 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 14, 15, 14, 15, 15, 14, 15, 14, 4, 6, 0, 2, 1, 3, 5, 7, 8, 
          9, 10, 11, 10, 11, 8, 9 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 14, 15, 14, 15, 15, 14, 15, 14, 6, 4, 2, 0, 3, 1, 7, 5, 9, 
          8, 11, 10, 11, 10, 9, 8 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 15, 14, 15, 14, 14, 15, 14, 15, 5, 7, 1, 3, 0, 2, 4, 6, 8, 
          9, 10, 11, 10, 11, 8, 9 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 15, 14, 15, 14, 14, 15, 14, 15, 7, 5, 3, 1, 2, 0, 6, 4, 9, 
          8, 11, 10, 11, 10, 9, 8 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 14, 15, 14, 15, 15, 14, 15, 14, 1, 3, 5, 7, 4, 6, 0, 2, 
          10, 11, 8, 9, 8, 9, 10, 11 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 14, 15, 14, 15, 15, 14, 15, 14, 3, 1, 7, 5, 6, 4, 2, 0, 
          11, 10, 9, 8, 9, 8, 11, 10 ], 
      [ 15, 14, 15, 14, 14, 15, 14, 15, 12, 13, 12, 13, 12, 13, 12, 13, 11, 10, 9, 8, 9, 8, 11, 
          10, 0, 2, 5, 7, 4, 6, 1, 3 ], 
      [ 15, 14, 15, 14, 14, 15, 14, 15, 12, 13, 12, 13, 12, 13, 12, 13, 10, 11, 8, 9, 8, 9, 10, 
          11, 2, 0, 7, 5, 6, 4, 3, 1 ], 
      [ 15, 14, 15, 14, 14, 15, 14, 15, 13, 12, 13, 12, 13, 12, 13, 12, 9, 8, 11, 10, 11, 10, 9, 
          8, 5, 7, 0, 2, 1, 3, 4, 6 ], 
      [ 15, 14, 15, 14, 14, 15, 14, 15, 13, 12, 13, 12, 13, 12, 13, 12, 8, 9, 10, 11, 10, 11, 8, 
          9, 7, 5, 2, 0, 3, 1, 6, 4 ], 
      [ 14, 15, 14, 15, 15, 14, 15, 14, 12, 13, 12, 13, 12, 13, 12, 13, 9, 8, 11, 10, 11, 10, 9, 
          8, 4, 6, 1, 3, 0, 2, 5, 7 ], 
      [ 14, 15, 14, 15, 15, 14, 15, 14, 12, 13, 12, 13, 12, 13, 12, 13, 8, 9, 10, 11, 10, 11, 8, 
          9, 6, 4, 3, 1, 2, 0, 7, 5 ], 
      [ 14, 15, 14, 15, 15, 14, 15, 14, 13, 12, 13, 12, 13, 12, 13, 12, 11, 10, 9, 8, 9, 8, 11, 
          10, 1, 3, 4, 6, 5, 7, 0, 2 ], 
      [ 14, 15, 14, 15, 15, 14, 15, 14, 13, 12, 13, 12, 13, 12, 13, 12, 10, 11, 8, 9, 8, 9, 10, 
          11, 3, 1, 6, 4, 7, 5, 2, 0 ] ] )