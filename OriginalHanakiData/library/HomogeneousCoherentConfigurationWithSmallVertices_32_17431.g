rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(8), 2*E(8)^3, 2*E(8)^3, -2*E(8), 2*E(8), -2*E(8)^3, 
          -2*E(8)^3, 2*E(8), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(8)^3, 2*E(8), 2*E(8), -2*E(8)^3, 2*E(8)^3, -2*E(8), 
          -2*E(8), 2*E(8)^3, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(8)^3, -2*E(8), -2*E(8), 2*E(8)^3, -2*E(8)^3, 2*E(8), 
          2*E(8), -2*E(8)^3, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(8), -2*E(8)^3, -2*E(8)^3, 2*E(8), -2*E(8), 2*E(8)^3, 
          2*E(8)^3, -2*E(8), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), -2*E(4), 2*E(4), 2*E(4), 
          -2*E(4), -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 2*E(4), -2*E(4), -2*E(4), 
          2*E(4), -4, -4, 1 ], [ 2, 0, 0, -2, -2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, 0, 0, -2, 2, 0, 0, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          16, 16, 17, 17, 17, 17 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 10, 10, 9, 9, 11, 11, 12, 12, 14, 14, 13, 13, 15, 15, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 11, 11, 9, 9, 10, 10, 8, 8, 15, 15, 13, 13, 14, 14, 12, 12, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 14, 14, 13, 13, 12, 12, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 12, 13, 13, 14, 14, 15, 15, 8, 8, 9, 9, 10, 10, 11, 11, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 12, 12, 14, 14, 13, 13, 15, 15, 8, 8, 10, 10, 9, 9, 11, 11, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 15, 15, 13, 13, 14, 14, 12, 12, 11, 11, 9, 9, 10, 10, 8, 8, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 15, 15, 14, 14, 13, 13, 12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 9, 9, 10, 10, 13, 13, 14, 14, 0, 2, 16, 16, 16, 16, 1, 3, 4, 6, 17, 17, 17, 17, 5, 7, 12, 
          12, 15, 15, 8, 8, 11, 11 ], 
      [ 9, 9, 10, 10, 13, 13, 14, 14, 2, 0, 16, 16, 16, 16, 3, 1, 6, 4, 17, 17, 17, 17, 7, 5, 15, 
          15, 12, 12, 11, 11, 8, 8 ], 
      [ 8, 11, 8, 11, 12, 15, 12, 15, 17, 17, 0, 1, 2, 3, 17, 17, 16, 16, 4, 5, 6, 7, 16, 16, 9, 
          10, 9, 10, 13, 14, 13, 14 ], 
      [ 8, 11, 8, 11, 12, 15, 12, 15, 17, 17, 1, 0, 3, 2, 17, 17, 16, 16, 5, 4, 7, 6, 16, 16, 10, 
          9, 10, 9, 14, 13, 14, 13 ], 
      [ 11, 8, 11, 8, 15, 12, 15, 12, 17, 17, 2, 3, 0, 1, 17, 17, 16, 16, 6, 7, 4, 5, 16, 16, 9, 
          10, 9, 10, 13, 14, 13, 14 ], 
      [ 11, 8, 11, 8, 15, 12, 15, 12, 17, 17, 3, 2, 1, 0, 17, 17, 16, 16, 7, 6, 5, 4, 16, 16, 10, 
          9, 10, 9, 14, 13, 14, 13 ], 
      [ 10, 10, 9, 9, 14, 14, 13, 13, 1, 3, 16, 16, 16, 16, 0, 2, 5, 7, 17, 17, 17, 17, 4, 6, 12, 
          12, 15, 15, 8, 8, 11, 11 ], 
      [ 10, 10, 9, 9, 14, 14, 13, 13, 3, 1, 16, 16, 16, 16, 2, 0, 7, 5, 17, 17, 17, 17, 6, 4, 15, 
          15, 12, 12, 11, 11, 8, 8 ], 
      [ 13, 13, 14, 14, 9, 9, 10, 10, 4, 6, 17, 17, 17, 17, 5, 7, 0, 2, 16, 16, 16, 16, 1, 3, 8, 
          8, 11, 11, 12, 12, 15, 15 ], 
      [ 13, 13, 14, 14, 9, 9, 10, 10, 6, 4, 17, 17, 17, 17, 7, 5, 2, 0, 16, 16, 16, 16, 3, 1, 11, 
          11, 8, 8, 15, 15, 12, 12 ], 
      [ 12, 15, 12, 15, 8, 11, 8, 11, 16, 16, 4, 5, 6, 7, 16, 16, 17, 17, 0, 1, 2, 3, 17, 17, 13, 
          14, 13, 14, 9, 10, 9, 10 ], 
      [ 12, 15, 12, 15, 8, 11, 8, 11, 16, 16, 5, 4, 7, 6, 16, 16, 17, 17, 1, 0, 3, 2, 17, 17, 14, 
          13, 14, 13, 10, 9, 10, 9 ], 
      [ 15, 12, 15, 12, 11, 8, 11, 8, 16, 16, 6, 7, 4, 5, 16, 16, 17, 17, 2, 3, 0, 1, 17, 17, 13, 
          14, 13, 14, 9, 10, 9, 10 ], 
      [ 15, 12, 15, 12, 11, 8, 11, 8, 16, 16, 7, 6, 5, 4, 16, 16, 17, 17, 3, 2, 1, 0, 17, 17, 14, 
          13, 14, 13, 10, 9, 10, 9 ], 
      [ 14, 14, 13, 13, 10, 10, 9, 9, 5, 7, 17, 17, 17, 17, 4, 6, 1, 3, 16, 16, 16, 16, 0, 2, 8, 
          8, 11, 11, 12, 12, 15, 15 ], 
      [ 14, 14, 13, 13, 10, 10, 9, 9, 7, 5, 17, 17, 17, 17, 6, 4, 3, 1, 16, 16, 16, 16, 2, 0, 11, 
          11, 8, 8, 15, 15, 12, 12 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 13, 14, 8, 11, 8, 11, 13, 14, 9, 10, 12, 15, 12, 15, 9, 
          10, 0, 2, 1, 3, 4, 6, 5, 7 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 13, 14, 11, 8, 11, 8, 13, 14, 9, 10, 15, 12, 15, 12, 9, 
          10, 2, 0, 3, 1, 6, 4, 7, 5 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 14, 13, 8, 11, 8, 11, 14, 13, 10, 9, 12, 15, 12, 15, 10, 
          9, 1, 3, 0, 2, 5, 7, 4, 6 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 14, 13, 11, 8, 11, 8, 14, 13, 10, 9, 15, 12, 15, 12, 10, 
          9, 3, 1, 2, 0, 7, 5, 6, 4 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 9, 10, 12, 15, 12, 15, 9, 10, 13, 14, 8, 11, 8, 11, 13, 
          14, 4, 6, 5, 7, 0, 2, 1, 3 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 9, 10, 15, 12, 15, 12, 9, 10, 13, 14, 11, 8, 11, 8, 13, 
          14, 6, 4, 7, 5, 2, 0, 3, 1 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 10, 9, 12, 15, 12, 15, 10, 9, 14, 13, 8, 11, 8, 11, 14, 
          13, 5, 7, 4, 6, 1, 3, 0, 2 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 10, 9, 15, 12, 15, 12, 10, 9, 14, 13, 11, 8, 11, 8, 14, 
          13, 7, 5, 6, 4, 3, 1, 2, 0 ] ] )