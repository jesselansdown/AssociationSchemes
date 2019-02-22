rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -4, 4, -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 4, -4, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -4, 4, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 4, -4, -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 0, 1, 6, 7, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 2, 3, 1, 0, 7, 6, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 0, 1, 2, 3, 4, 5, 6, 7, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 1, 0, 3, 2, 5, 4, 7, 6, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 3, 2, 0, 1, 6, 7, 5, 4, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 2, 3, 1, 0, 7, 6, 4, 5, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 5, 4, 7, 6, 0, 1, 2, 3, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 4, 5, 6, 7, 1, 0, 3, 2, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 7, 6, 4, 5, 3, 2, 0, 1, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 6, 7, 5, 4, 2, 3, 1, 0, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 12, 12, 13, 13, 12, 12, 13, 13, 15, 15, 14, 14, 15, 15, 14, 14, 0, 1, 4, 5, 2, 3, 6, 7, 9, 
          9, 11, 11, 8, 8, 10, 10 ], 
      [ 12, 12, 13, 13, 12, 12, 13, 13, 15, 15, 14, 14, 15, 15, 14, 14, 1, 0, 5, 4, 3, 2, 7, 6, 9, 
          9, 11, 11, 8, 8, 10, 10 ], 
      [ 12, 12, 13, 13, 12, 12, 13, 13, 15, 15, 14, 14, 15, 15, 14, 14, 5, 4, 0, 1, 7, 6, 2, 3, 
          11, 11, 9, 9, 10, 10, 8, 8 ], 
      [ 12, 12, 13, 13, 12, 12, 13, 13, 15, 15, 14, 14, 15, 15, 14, 14, 4, 5, 1, 0, 6, 7, 3, 2, 
          11, 11, 9, 9, 10, 10, 8, 8 ], 
      [ 13, 13, 12, 12, 13, 13, 12, 12, 14, 14, 15, 15, 14, 14, 15, 15, 3, 2, 6, 7, 0, 1, 5, 4, 8, 
          8, 10, 10, 9, 9, 11, 11 ], 
      [ 13, 13, 12, 12, 13, 13, 12, 12, 14, 14, 15, 15, 14, 14, 15, 15, 2, 3, 7, 6, 1, 0, 4, 5, 8, 
          8, 10, 10, 9, 9, 11, 11 ], 
      [ 13, 13, 12, 12, 13, 13, 12, 12, 14, 14, 15, 15, 14, 14, 15, 15, 7, 6, 3, 2, 4, 5, 0, 1, 
          10, 10, 8, 8, 11, 11, 9, 9 ], 
      [ 13, 13, 12, 12, 13, 13, 12, 12, 14, 14, 15, 15, 14, 14, 15, 15, 6, 7, 2, 3, 5, 4, 1, 0, 
          10, 10, 8, 8, 11, 11, 9, 9 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 13, 13, 12, 12, 13, 13, 12, 12, 8, 8, 10, 10, 9, 9, 11, 
          11, 0, 1, 4, 5, 2, 3, 6, 7 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 13, 13, 12, 12, 13, 13, 12, 12, 8, 8, 10, 10, 9, 9, 11, 
          11, 1, 0, 5, 4, 3, 2, 7, 6 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 8, 8, 11, 11, 9, 
          9, 5, 4, 0, 1, 7, 6, 2, 3 ], 
      [ 15, 15, 14, 14, 15, 15, 14, 14, 13, 13, 12, 12, 13, 13, 12, 12, 10, 10, 8, 8, 11, 11, 9, 
          9, 4, 5, 1, 0, 6, 7, 3, 2 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 12, 12, 13, 13, 12, 12, 13, 13, 9, 9, 11, 11, 8, 8, 10, 
          10, 3, 2, 6, 7, 0, 1, 5, 4 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 12, 12, 13, 13, 12, 12, 13, 13, 9, 9, 11, 11, 8, 8, 10, 
          10, 2, 3, 7, 6, 1, 0, 4, 5 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 12, 12, 13, 13, 12, 12, 13, 13, 11, 11, 9, 9, 10, 10, 8, 
          8, 7, 6, 3, 2, 4, 5, 0, 1 ], 
      [ 14, 14, 15, 15, 14, 14, 15, 15, 12, 12, 13, 13, 12, 12, 13, 13, 11, 11, 9, 9, 10, 10, 8, 
          8, 6, 7, 2, 3, 5, 4, 1, 0 ] ] )