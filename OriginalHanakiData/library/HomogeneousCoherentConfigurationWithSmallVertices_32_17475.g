rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 4, -4, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), -4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), -4, 4, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), 4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -4, -4, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 
          0, 0, 2 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, -2*E(8), 2*E(8)^3, 
          2*E(8), -2*E(8)^3, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 
          0, 0, 2 ], [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, -2*E(8)^3, 2*E(8), 
          2*E(8)^3, -2*E(8), 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          16, 16, 17, 17, 17, 17 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 14, 14, 15, 15, 12, 12, 13, 13, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 13, 13, 14, 14, 15, 15, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 14, 14, 15, 15, 12, 12, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 9, 9, 8, 8, 11, 11, 10, 10, 15, 15, 12, 12, 13, 13, 14, 14, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 13, 13, 14, 14, 15, 15, 12, 12, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 12, 12, 13, 13, 14, 14, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 9, 9, 11, 11, 8, 8, 10, 10, 0, 1, 4, 5, 2, 3, 6, 7, 16, 16, 17, 17, 16, 16, 17, 17, 13, 
          13, 15, 15, 12, 12, 14, 14 ], 
      [ 9, 9, 11, 11, 8, 8, 10, 10, 1, 0, 5, 4, 3, 2, 7, 6, 16, 16, 17, 17, 16, 16, 17, 17, 15, 
          15, 13, 13, 14, 14, 12, 12 ], 
      [ 8, 8, 10, 10, 9, 9, 11, 11, 5, 4, 0, 1, 7, 6, 2, 3, 17, 17, 16, 16, 17, 17, 16, 16, 14, 
          14, 12, 12, 13, 13, 15, 15 ], 
      [ 8, 8, 10, 10, 9, 9, 11, 11, 4, 5, 1, 0, 6, 7, 3, 2, 17, 17, 16, 16, 17, 17, 16, 16, 12, 
          12, 14, 14, 15, 15, 13, 13 ], 
      [ 11, 11, 9, 9, 10, 10, 8, 8, 2, 3, 6, 7, 0, 1, 4, 5, 16, 16, 17, 17, 16, 16, 17, 17, 13, 
          13, 15, 15, 12, 12, 14, 14 ], 
      [ 11, 11, 9, 9, 10, 10, 8, 8, 3, 2, 7, 6, 1, 0, 5, 4, 16, 16, 17, 17, 16, 16, 17, 17, 15, 
          15, 13, 13, 14, 14, 12, 12 ], 
      [ 10, 10, 8, 8, 11, 11, 9, 9, 7, 6, 2, 3, 5, 4, 0, 1, 17, 17, 16, 16, 17, 17, 16, 16, 14, 
          14, 12, 12, 13, 13, 15, 15 ], 
      [ 10, 10, 8, 8, 11, 11, 9, 9, 6, 7, 3, 2, 4, 5, 1, 0, 17, 17, 16, 16, 17, 17, 16, 16, 12, 
          12, 14, 14, 15, 15, 13, 13 ], 
      [ 13, 15, 13, 15, 12, 14, 12, 14, 16, 16, 17, 17, 16, 16, 17, 17, 0, 2, 5, 7, 1, 3, 4, 6, 9, 
          11, 9, 11, 8, 10, 8, 10 ], 
      [ 13, 15, 13, 15, 12, 14, 12, 14, 16, 16, 17, 17, 16, 16, 17, 17, 2, 0, 7, 5, 3, 1, 6, 4, 
          11, 9, 11, 9, 10, 8, 10, 8 ], 
      [ 12, 14, 12, 14, 15, 13, 15, 13, 17, 17, 16, 16, 17, 17, 16, 16, 4, 6, 0, 2, 5, 7, 1, 3, 8, 
          10, 8, 10, 9, 11, 9, 11 ], 
      [ 12, 14, 12, 14, 15, 13, 15, 13, 17, 17, 16, 16, 17, 17, 16, 16, 6, 4, 2, 0, 7, 5, 3, 1, 
          10, 8, 10, 8, 11, 9, 11, 9 ], 
      [ 15, 13, 15, 13, 14, 12, 14, 12, 16, 16, 17, 17, 16, 16, 17, 17, 1, 3, 4, 6, 0, 2, 5, 7, 9, 
          11, 9, 11, 8, 10, 8, 10 ], 
      [ 15, 13, 15, 13, 14, 12, 14, 12, 16, 16, 17, 17, 16, 16, 17, 17, 3, 1, 6, 4, 2, 0, 7, 5, 
          11, 9, 11, 9, 10, 8, 10, 8 ], 
      [ 14, 12, 14, 12, 13, 15, 13, 15, 17, 17, 16, 16, 17, 17, 16, 16, 5, 7, 1, 3, 4, 6, 0, 2, 8, 
          10, 8, 10, 9, 11, 9, 11 ], 
      [ 14, 12, 14, 12, 13, 15, 13, 15, 17, 17, 16, 16, 17, 17, 16, 16, 7, 5, 3, 1, 6, 4, 2, 0, 
          10, 8, 10, 8, 11, 9, 11, 9 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 12, 14, 15, 13, 12, 14, 15, 13, 8, 10, 9, 11, 8, 10, 9, 
          11, 0, 2, 1, 3, 4, 6, 5, 7 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 12, 14, 15, 13, 12, 14, 15, 13, 10, 8, 11, 9, 10, 8, 11, 
          9, 2, 0, 3, 1, 6, 4, 7, 5 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 14, 12, 13, 15, 14, 12, 13, 15, 8, 10, 9, 11, 8, 10, 9, 
          11, 1, 3, 0, 2, 5, 7, 4, 6 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 14, 12, 13, 15, 14, 12, 13, 15, 10, 8, 11, 9, 10, 8, 11, 
          9, 3, 1, 2, 0, 7, 5, 6, 4 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 13, 15, 12, 14, 13, 15, 12, 14, 9, 11, 8, 10, 9, 11, 8, 
          10, 5, 7, 4, 6, 0, 2, 1, 3 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 13, 15, 12, 14, 13, 15, 12, 14, 11, 9, 10, 8, 11, 9, 10, 
          8, 7, 5, 6, 4, 2, 0, 3, 1 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 15, 13, 14, 12, 15, 13, 14, 12, 9, 11, 8, 10, 9, 11, 8, 
          10, 4, 6, 5, 7, 1, 3, 0, 2 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 15, 13, 14, 12, 15, 13, 14, 12, 11, 9, 10, 8, 11, 9, 10, 
          8, 6, 4, 7, 5, 3, 1, 2, 0 ] ] )