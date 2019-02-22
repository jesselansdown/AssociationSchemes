rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -4*E(4), 4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 4*E(4), -4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 0, 1, 6, 7, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 1, 0, 7, 6, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 8, 8, 9, 9, 11, 11, 10, 10, 0, 1, 2, 3, 6, 7, 4, 5, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 9, 9, 11, 11, 10, 10, 1, 0, 3, 2, 7, 6, 5, 4, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 9, 9, 8, 8, 10, 10, 11, 11, 3, 2, 0, 1, 5, 4, 6, 7, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 9, 9, 8, 8, 10, 10, 11, 11, 2, 3, 1, 0, 4, 5, 7, 6, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 11, 11, 10, 10, 8, 8, 9, 9, 7, 6, 4, 5, 0, 1, 3, 2, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 11, 11, 10, 10, 8, 8, 9, 9, 6, 7, 5, 4, 1, 0, 2, 3, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 10, 10, 11, 11, 9, 9, 8, 8, 5, 4, 7, 6, 2, 3, 0, 1, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 10, 10, 11, 11, 9, 9, 8, 8, 4, 5, 6, 7, 3, 2, 1, 0, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 13, 13, 13, 13, 15, 15, 15, 15, 14, 14, 14, 14, 12, 12, 12, 12, 0, 1, 2, 3, 10, 10, 11, 
          11, 4, 5, 6, 7, 8, 8, 9, 9 ], 
      [ 13, 13, 13, 13, 15, 15, 15, 15, 14, 14, 14, 14, 12, 12, 12, 12, 1, 0, 3, 2, 10, 10, 11, 
          11, 5, 4, 7, 6, 8, 8, 9, 9 ], 
      [ 13, 13, 13, 13, 15, 15, 15, 15, 14, 14, 14, 14, 12, 12, 12, 12, 3, 2, 0, 1, 11, 11, 10, 
          10, 6, 7, 5, 4, 9, 9, 8, 8 ], 
      [ 13, 13, 13, 13, 15, 15, 15, 15, 14, 14, 14, 14, 12, 12, 12, 12, 2, 3, 1, 0, 11, 11, 10, 
          10, 7, 6, 4, 5, 9, 9, 8, 8 ], 
      [ 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15, 13, 13, 13, 13, 11, 11, 10, 10, 0, 1, 2, 
          3, 8, 8, 9, 9, 6, 7, 4, 5 ], 
      [ 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15, 13, 13, 13, 13, 11, 11, 10, 10, 1, 0, 3, 
          2, 8, 8, 9, 9, 7, 6, 5, 4 ], 
      [ 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15, 13, 13, 13, 13, 10, 10, 11, 11, 3, 2, 0, 
          1, 9, 9, 8, 8, 5, 4, 6, 7 ], 
      [ 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15, 13, 13, 13, 13, 10, 10, 11, 11, 2, 3, 1, 
          0, 9, 9, 8, 8, 4, 5, 7, 6 ], 
      [ 15, 15, 15, 15, 13, 13, 13, 13, 12, 12, 12, 12, 14, 14, 14, 14, 5, 4, 7, 6, 8, 8, 9, 9, 0, 
          1, 2, 3, 10, 10, 11, 11 ], 
      [ 15, 15, 15, 15, 13, 13, 13, 13, 12, 12, 12, 12, 14, 14, 14, 14, 4, 5, 6, 7, 8, 8, 9, 9, 1, 
          0, 3, 2, 10, 10, 11, 11 ], 
      [ 15, 15, 15, 15, 13, 13, 13, 13, 12, 12, 12, 12, 14, 14, 14, 14, 7, 6, 4, 5, 9, 9, 8, 8, 3, 
          2, 0, 1, 11, 11, 10, 10 ], 
      [ 15, 15, 15, 15, 13, 13, 13, 13, 12, 12, 12, 12, 14, 14, 14, 14, 6, 7, 5, 4, 9, 9, 8, 8, 2, 
          3, 1, 0, 11, 11, 10, 10 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13, 15, 15, 15, 15, 8, 8, 9, 9, 7, 6, 4, 5, 
          11, 11, 10, 10, 0, 1, 3, 2 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13, 15, 15, 15, 15, 8, 8, 9, 9, 6, 7, 5, 4, 
          11, 11, 10, 10, 1, 0, 2, 3 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13, 15, 15, 15, 15, 9, 9, 8, 8, 5, 4, 7, 6, 
          10, 10, 11, 11, 2, 3, 0, 1 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13, 15, 15, 15, 15, 9, 9, 8, 8, 4, 5, 6, 7, 
          10, 10, 11, 11, 3, 2, 1, 0 ] ] )