rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, -2, -2, -4, -4, 1 ], 
      [ 2, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, -2, 2, 0, 0, -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 2, -2, 0, 0, 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, -2, 2, 0, 0, 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 2, -2, 0, 0, -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          16, 16, 17, 17, 17, 17 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 11, 11, 10, 10, 12, 12, 13, 13, 15, 15, 14, 14, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 10, 10, 11, 11, 13, 13, 12, 12, 14, 14, 15, 15, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 12, 12, 13, 13, 14, 14, 15, 15, 8, 8, 9, 9, 11, 11, 10, 10, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 12, 12, 13, 13, 15, 15, 14, 14, 8, 8, 9, 9, 10, 10, 11, 11, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 13, 13, 12, 12, 14, 14, 15, 15, 9, 9, 8, 8, 11, 11, 10, 10, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 13, 13, 12, 12, 15, 15, 14, 14, 9, 9, 8, 8, 10, 10, 11, 11, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 8, 8, 9, 9, 13, 13, 12, 12, 0, 1, 2, 3, 16, 16, 16, 16, 6, 7, 4, 5, 17, 17, 17, 17, 10, 
          10, 11, 11, 14, 14, 15, 15 ], 
      [ 8, 8, 9, 9, 13, 13, 12, 12, 1, 0, 3, 2, 16, 16, 16, 16, 7, 6, 5, 4, 17, 17, 17, 17, 11, 
          11, 10, 10, 15, 15, 14, 14 ], 
      [ 9, 9, 8, 8, 12, 12, 13, 13, 2, 3, 0, 1, 16, 16, 16, 16, 4, 5, 6, 7, 17, 17, 17, 17, 10, 
          10, 11, 11, 14, 14, 15, 15 ], 
      [ 9, 9, 8, 8, 12, 12, 13, 13, 3, 2, 1, 0, 16, 16, 16, 16, 5, 4, 7, 6, 17, 17, 17, 17, 11, 
          11, 10, 10, 15, 15, 14, 14 ], 
      [ 10, 11, 10, 11, 15, 14, 15, 14, 17, 17, 17, 17, 0, 2, 1, 3, 16, 16, 16, 16, 5, 7, 4, 6, 
          12, 13, 12, 13, 8, 9, 8, 9 ], 
      [ 10, 11, 10, 11, 15, 14, 15, 14, 17, 17, 17, 17, 2, 0, 3, 1, 16, 16, 16, 16, 7, 5, 6, 4, 
          13, 12, 13, 12, 9, 8, 9, 8 ], 
      [ 11, 10, 11, 10, 14, 15, 14, 15, 17, 17, 17, 17, 1, 3, 0, 2, 16, 16, 16, 16, 4, 6, 5, 7, 
          12, 13, 12, 13, 8, 9, 8, 9 ], 
      [ 11, 10, 11, 10, 14, 15, 14, 15, 17, 17, 17, 17, 3, 1, 2, 0, 16, 16, 16, 16, 6, 4, 7, 5, 
          13, 12, 13, 12, 9, 8, 9, 8 ], 
      [ 13, 13, 12, 12, 8, 8, 9, 9, 7, 6, 5, 4, 17, 17, 17, 17, 0, 1, 2, 3, 16, 16, 16, 16, 14, 
          14, 15, 15, 11, 11, 10, 10 ], 
      [ 13, 13, 12, 12, 8, 8, 9, 9, 6, 7, 4, 5, 17, 17, 17, 17, 1, 0, 3, 2, 16, 16, 16, 16, 15, 
          15, 14, 14, 10, 10, 11, 11 ], 
      [ 12, 12, 13, 13, 9, 9, 8, 8, 5, 4, 7, 6, 17, 17, 17, 17, 2, 3, 0, 1, 16, 16, 16, 16, 14, 
          14, 15, 15, 11, 11, 10, 10 ], 
      [ 12, 12, 13, 13, 9, 9, 8, 8, 4, 5, 6, 7, 17, 17, 17, 17, 3, 2, 1, 0, 16, 16, 16, 16, 15, 
          15, 14, 14, 10, 10, 11, 11 ], 
      [ 15, 14, 15, 14, 11, 10, 11, 10, 16, 16, 16, 16, 4, 6, 5, 7, 17, 17, 17, 17, 0, 2, 1, 3, 8, 
          9, 8, 9, 12, 13, 12, 13 ], 
      [ 15, 14, 15, 14, 11, 10, 11, 10, 16, 16, 16, 16, 6, 4, 7, 5, 17, 17, 17, 17, 2, 0, 3, 1, 9, 
          8, 9, 8, 13, 12, 13, 12 ], 
      [ 14, 15, 14, 15, 10, 11, 10, 11, 16, 16, 16, 16, 5, 7, 4, 6, 17, 17, 17, 17, 1, 3, 0, 2, 8, 
          9, 8, 9, 12, 13, 12, 13 ], 
      [ 14, 15, 14, 15, 10, 11, 10, 11, 16, 16, 16, 16, 7, 5, 6, 4, 17, 17, 17, 17, 3, 1, 2, 0, 9, 
          8, 9, 8, 13, 12, 13, 12 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 10, 11, 10, 11, 13, 12, 13, 12, 15, 14, 15, 14, 8, 9, 8, 
          9, 0, 2, 1, 3, 7, 5, 6, 4 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 10, 11, 10, 11, 12, 13, 12, 13, 15, 14, 15, 14, 9, 8, 9, 
          8, 2, 0, 3, 1, 5, 7, 4, 6 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 11, 10, 11, 10, 13, 12, 13, 12, 14, 15, 14, 15, 8, 9, 8, 
          9, 1, 3, 0, 2, 6, 4, 7, 5 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 11, 10, 11, 10, 12, 13, 12, 13, 14, 15, 14, 15, 9, 8, 9, 
          8, 3, 1, 2, 0, 4, 6, 5, 7 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 15, 14, 15, 14, 8, 9, 8, 9, 11, 10, 11, 10, 13, 12, 13, 
          12, 6, 4, 7, 5, 0, 2, 1, 3 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 15, 14, 15, 14, 9, 8, 9, 8, 11, 10, 11, 10, 12, 13, 12, 
          13, 4, 6, 5, 7, 2, 0, 3, 1 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 14, 15, 14, 15, 8, 9, 8, 9, 10, 11, 10, 11, 13, 12, 13, 
          12, 7, 5, 6, 4, 1, 3, 0, 2 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 14, 15, 14, 15, 9, 8, 9, 8, 10, 11, 10, 11, 12, 13, 12, 
          13, 5, 7, 4, 6, 3, 1, 2, 0 ] ] )