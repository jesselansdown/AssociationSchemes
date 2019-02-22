rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -4, -4, 1 ], 
      [ 2, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          16, 16, 17, 17, 17, 17 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 13, 13, 14, 14, 15, 15, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 12, 12, 15, 15, 14, 14, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 15, 15, 12, 12, 13, 13, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 10, 10, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 11, 11, 9, 9, 8, 8, 15, 15, 14, 14, 13, 13, 12, 12, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 14, 14, 13, 13, 12, 12, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 8, 9, 8, 9, 10, 11, 10, 11, 0, 2, 1, 3, 4, 6, 5, 7, 16, 16, 16, 16, 17, 17, 17, 17, 12, 
          12, 13, 13, 14, 14, 15, 15 ], 
      [ 8, 9, 8, 9, 10, 11, 10, 11, 2, 0, 3, 1, 6, 4, 7, 5, 16, 16, 16, 16, 17, 17, 17, 17, 13, 
          13, 12, 12, 15, 15, 14, 14 ], 
      [ 9, 8, 9, 8, 11, 10, 11, 10, 1, 3, 0, 2, 5, 7, 4, 6, 16, 16, 16, 16, 17, 17, 17, 17, 12, 
          12, 13, 13, 14, 14, 15, 15 ], 
      [ 9, 8, 9, 8, 11, 10, 11, 10, 3, 1, 2, 0, 7, 5, 6, 4, 16, 16, 16, 16, 17, 17, 17, 17, 13, 
          13, 12, 12, 15, 15, 14, 14 ], 
      [ 10, 11, 10, 11, 9, 8, 9, 8, 5, 7, 4, 6, 0, 2, 1, 3, 17, 17, 17, 17, 16, 16, 16, 16, 14, 
          14, 15, 15, 12, 12, 13, 13 ], 
      [ 10, 11, 10, 11, 9, 8, 9, 8, 7, 5, 6, 4, 2, 0, 3, 1, 17, 17, 17, 17, 16, 16, 16, 16, 15, 
          15, 14, 14, 13, 13, 12, 12 ], 
      [ 11, 10, 11, 10, 8, 9, 8, 9, 4, 6, 5, 7, 1, 3, 0, 2, 17, 17, 17, 17, 16, 16, 16, 16, 14, 
          14, 15, 15, 12, 12, 13, 13 ], 
      [ 11, 10, 11, 10, 8, 9, 8, 9, 6, 4, 7, 5, 3, 1, 2, 0, 17, 17, 17, 17, 16, 16, 16, 16, 15, 
          15, 14, 14, 13, 13, 12, 12 ], 
      [ 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 17, 17, 16, 16, 16, 16, 0, 1, 2, 3, 4, 5, 6, 7, 
          10, 11, 10, 11, 8, 9, 8, 9 ], 
      [ 13, 13, 12, 12, 15, 15, 14, 14, 17, 17, 17, 17, 16, 16, 16, 16, 1, 0, 3, 2, 5, 4, 7, 6, 
          11, 10, 11, 10, 9, 8, 9, 8 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 17, 17, 17, 17, 16, 16, 16, 16, 2, 3, 0, 1, 6, 7, 4, 5, 
          10, 11, 10, 11, 8, 9, 8, 9 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 17, 17, 17, 17, 16, 16, 16, 16, 3, 2, 1, 0, 7, 6, 5, 4, 
          11, 10, 11, 10, 9, 8, 9, 8 ], 
      [ 15, 15, 14, 14, 13, 13, 12, 12, 16, 16, 16, 16, 17, 17, 17, 17, 5, 4, 7, 6, 0, 1, 2, 3, 9, 
          8, 9, 8, 10, 11, 10, 11 ], 
      [ 15, 15, 14, 14, 13, 13, 12, 12, 16, 16, 16, 16, 17, 17, 17, 17, 4, 5, 6, 7, 1, 0, 3, 2, 8, 
          9, 8, 9, 11, 10, 11, 10 ], 
      [ 14, 14, 15, 15, 12, 12, 13, 13, 16, 16, 16, 16, 17, 17, 17, 17, 7, 6, 5, 4, 2, 3, 0, 1, 9, 
          8, 9, 8, 10, 11, 10, 11 ], 
      [ 14, 14, 15, 15, 12, 12, 13, 13, 16, 16, 16, 16, 17, 17, 17, 17, 6, 7, 4, 5, 3, 2, 1, 0, 8, 
          9, 8, 9, 11, 10, 11, 10 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 13, 12, 13, 12, 15, 14, 15, 14, 10, 11, 10, 11, 9, 8, 9, 
          8, 0, 1, 2, 3, 5, 4, 7, 6 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 13, 12, 13, 12, 15, 14, 15, 14, 11, 10, 11, 10, 8, 9, 8, 
          9, 1, 0, 3, 2, 4, 5, 6, 7 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 12, 13, 12, 13, 14, 15, 14, 15, 10, 11, 10, 11, 9, 8, 9, 
          8, 2, 3, 0, 1, 7, 6, 5, 4 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 12, 13, 12, 13, 14, 15, 14, 15, 11, 10, 11, 10, 8, 9, 8, 
          9, 3, 2, 1, 0, 6, 7, 4, 5 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 15, 14, 15, 14, 13, 12, 13, 12, 8, 9, 8, 9, 10, 11, 10, 
          11, 4, 5, 6, 7, 0, 1, 2, 3 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 15, 14, 15, 14, 13, 12, 13, 12, 9, 8, 9, 8, 11, 10, 11, 
          10, 5, 4, 7, 6, 1, 0, 3, 2 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 14, 15, 14, 15, 12, 13, 12, 13, 8, 9, 8, 9, 10, 11, 10, 
          11, 6, 7, 4, 5, 2, 3, 0, 1 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 14, 15, 14, 15, 12, 13, 12, 13, 9, 8, 9, 8, 11, 10, 11, 
          10, 7, 6, 5, 4, 3, 2, 1, 0 ] ] )