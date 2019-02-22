rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 2, 2, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -E(4), E(4), -E(4), E(4), E(4), -E(4), E(4), -E(4), 0, 0, 0, 
          0, 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, E(4), -E(4), E(4), -E(4), -E(4), E(4), -E(4), 
          E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), 0, 0, 0, 
          0, 2 ], [ 1, 1, 1, 1, -1, -1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), 
          -E(4), 0, 0, 0, 0, 2 ], [ 2, -2, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
          0, 0, 0, 4 ], [ 2, -2, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
          4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 12, 15, 14, 13, 8, 11, 10, 9, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 14, 13, 12, 15, 10, 9, 8, 11, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 10, 11, 8, 15, 12, 13, 14, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 8, 9, 10, 13, 14, 15, 12, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 15, 14, 13, 12, 9, 8, 11, 10, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 13, 12, 15, 14, 11, 10, 9, 8, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 9, 11, 13, 15, 8, 10, 14, 12, 0, 5, 1, 4, 3, 7, 2, 6, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 8, 10, 14, 12, 11, 9, 15, 13, 4, 0, 5, 1, 7, 2, 6, 3, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 11, 9, 15, 13, 10, 8, 12, 14, 1, 4, 0, 5, 2, 6, 3, 7, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 10, 8, 12, 14, 9, 11, 13, 15, 5, 1, 4, 0, 6, 3, 7, 2, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 13, 15, 9, 11, 14, 12, 8, 10, 3, 6, 2, 7, 0, 4, 1, 5, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 12, 14, 10, 8, 13, 15, 9, 11, 6, 2, 7, 3, 5, 0, 4, 1, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 15, 13, 11, 9, 12, 14, 10, 8, 2, 7, 3, 6, 1, 5, 0, 4, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 14, 12, 8, 10, 15, 13, 11, 9, 7, 3, 6, 2, 4, 1, 5, 0, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 0, 1, 4, 5, 2, 3, 6, 7, 
          12, 13, 14, 15, 8, 9, 10, 11 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 1, 0, 5, 4, 3, 2, 7, 6, 
          14, 15, 12, 13, 10, 11, 8, 9 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 5, 4, 0, 1, 7, 6, 2, 3, 
          15, 12, 13, 14, 9, 10, 11, 8 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 4, 5, 1, 0, 6, 7, 3, 2, 
          13, 14, 15, 12, 11, 8, 9, 10 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 2, 3, 6, 7, 0, 1, 4, 5, 8, 
          11, 10, 9, 12, 15, 14, 13 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 3, 2, 7, 6, 1, 0, 5, 4, 
          10, 9, 8, 11, 14, 13, 12, 15 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 7, 6, 2, 3, 5, 4, 0, 1, 9, 
          8, 11, 10, 15, 14, 13, 12 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 6, 7, 3, 2, 4, 5, 1, 0, 
          11, 10, 9, 8, 13, 12, 15, 14 ], 
      [ 19, 19, 18, 18, 19, 19, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 13, 15, 14, 12, 9, 11, 8, 
          10, 0, 4, 1, 5, 3, 6, 2, 7 ], 
      [ 19, 19, 18, 18, 19, 19, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 12, 14, 13, 15, 10, 8, 9, 
          11, 5, 0, 4, 1, 6, 2, 7, 3 ], 
      [ 19, 19, 18, 18, 19, 19, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 15, 13, 12, 14, 11, 9, 10, 
          8, 1, 5, 0, 4, 2, 7, 3, 6 ], 
      [ 19, 19, 18, 18, 19, 19, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 14, 12, 15, 13, 8, 10, 11, 
          9, 4, 1, 5, 0, 7, 3, 6, 2 ], 
      [ 18, 18, 19, 19, 18, 18, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 9, 11, 8, 10, 13, 15, 14, 
          12, 3, 7, 2, 6, 0, 5, 1, 4 ], 
      [ 18, 18, 19, 19, 18, 18, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 8, 10, 11, 9, 14, 12, 15, 
          13, 7, 2, 6, 3, 4, 0, 5, 1 ], 
      [ 18, 18, 19, 19, 18, 18, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 11, 9, 10, 8, 15, 13, 12, 
          14, 2, 6, 3, 7, 1, 4, 0, 5 ], 
      [ 18, 18, 19, 19, 18, 18, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 10, 8, 9, 11, 12, 14, 13, 
          15, 6, 3, 7, 2, 5, 1, 4, 0 ] ] )