rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, -2, 2, 2, -2*E(4), 2*E(4), 2*E(4), -2*E(4), -2*E(4), 
          2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, -2, 2, 2, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 2*E(4), 
          -2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, 2, -2, -2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, 0, 0, -2, -2, -4*E(4), 4*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, 0, 0, 0, 0, -2, -2, 4*E(4), -4*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 16, 16, 12, 12, 18, 18, 13, 
          13, 19, 19, 15, 15, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 16, 16, 12, 12, 18, 18, 13, 
          13, 19, 19, 15, 15, 17, 17 ], 
      [ 4, 5, 7, 6, 0, 1, 3, 2, 11, 11, 10, 10, 9, 9, 8, 8, 17, 17, 15, 15, 19, 19, 13, 13, 18, 
          18, 12, 12, 16, 16, 14, 14 ], 
      [ 5, 4, 6, 7, 1, 0, 2, 3, 11, 11, 10, 10, 9, 9, 8, 8, 17, 17, 15, 15, 19, 19, 13, 13, 18, 
          18, 12, 12, 16, 16, 14, 14 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 9, 9, 8, 8, 11, 11, 10, 10, 19, 19, 18, 18, 17, 17, 16, 16, 15, 
          15, 14, 14, 13, 13, 12, 12 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 9, 9, 8, 8, 11, 11, 10, 10, 19, 19, 18, 18, 17, 17, 16, 16, 15, 
          15, 14, 14, 13, 13, 12, 12 ], 
      [ 9, 9, 11, 11, 10, 10, 8, 8, 0, 1, 6, 7, 2, 3, 4, 5, 13, 13, 19, 19, 16, 16, 14, 14, 17, 
          17, 15, 15, 12, 12, 18, 18 ], 
      [ 9, 9, 11, 11, 10, 10, 8, 8, 1, 0, 7, 6, 3, 2, 5, 4, 13, 13, 19, 19, 16, 16, 14, 14, 17, 
          17, 15, 15, 12, 12, 18, 18 ], 
      [ 8, 8, 10, 10, 11, 11, 9, 9, 7, 6, 0, 1, 4, 5, 3, 2, 18, 18, 12, 12, 15, 15, 17, 17, 14, 
          14, 16, 16, 19, 19, 13, 13 ], 
      [ 8, 8, 10, 10, 11, 11, 9, 9, 6, 7, 1, 0, 5, 4, 2, 3, 18, 18, 12, 12, 15, 15, 17, 17, 14, 
          14, 16, 16, 19, 19, 13, 13 ], 
      [ 11, 11, 9, 9, 8, 8, 10, 10, 2, 3, 4, 5, 0, 1, 6, 7, 16, 16, 17, 17, 13, 13, 12, 12, 19, 
          19, 18, 18, 14, 14, 15, 15 ], 
      [ 11, 11, 9, 9, 8, 8, 10, 10, 3, 2, 5, 4, 1, 0, 7, 6, 16, 16, 17, 17, 13, 13, 12, 12, 19, 
          19, 18, 18, 14, 14, 15, 15 ], 
      [ 10, 10, 8, 8, 9, 9, 11, 11, 4, 5, 3, 2, 7, 6, 0, 1, 15, 15, 14, 14, 18, 18, 19, 19, 12, 
          12, 13, 13, 17, 17, 16, 16 ], 
      [ 10, 10, 8, 8, 9, 9, 11, 11, 5, 4, 2, 3, 6, 7, 1, 0, 15, 15, 14, 14, 18, 18, 19, 19, 12, 
          12, 13, 13, 17, 17, 16, 16 ], 
      [ 13, 13, 15, 15, 16, 16, 18, 18, 12, 12, 19, 19, 17, 17, 14, 14, 0, 1, 9, 9, 4, 5, 11, 11, 
          10, 10, 2, 3, 8, 8, 6, 7 ], 
      [ 13, 13, 15, 15, 16, 16, 18, 18, 12, 12, 19, 19, 17, 17, 14, 14, 1, 0, 9, 9, 5, 4, 11, 11, 
          10, 10, 3, 2, 8, 8, 7, 6 ], 
      [ 12, 12, 17, 17, 14, 14, 19, 19, 18, 18, 13, 13, 16, 16, 15, 15, 8, 8, 0, 1, 11, 11, 2, 3, 
          4, 5, 10, 10, 6, 7, 9, 9 ], 
      [ 12, 12, 17, 17, 14, 14, 19, 19, 18, 18, 13, 13, 16, 16, 15, 15, 8, 8, 1, 0, 11, 11, 3, 2, 
          5, 4, 10, 10, 7, 6, 9, 9 ], 
      [ 15, 15, 13, 13, 18, 18, 16, 16, 17, 17, 14, 14, 12, 12, 19, 19, 4, 5, 10, 10, 0, 1, 8, 8, 
          9, 9, 7, 6, 11, 11, 3, 2 ], 
      [ 15, 15, 13, 13, 18, 18, 16, 16, 17, 17, 14, 14, 12, 12, 19, 19, 5, 4, 10, 10, 1, 0, 8, 8, 
          9, 9, 6, 7, 11, 11, 2, 3 ], 
      [ 14, 14, 19, 19, 12, 12, 17, 17, 15, 15, 16, 16, 13, 13, 18, 18, 10, 10, 2, 3, 9, 9, 0, 1, 
          6, 7, 8, 8, 4, 5, 11, 11 ], 
      [ 14, 14, 19, 19, 12, 12, 17, 17, 15, 15, 16, 16, 13, 13, 18, 18, 10, 10, 3, 2, 9, 9, 1, 0, 
          7, 6, 8, 8, 5, 4, 11, 11 ], 
      [ 17, 17, 12, 12, 19, 19, 14, 14, 16, 16, 15, 15, 18, 18, 13, 13, 11, 11, 4, 5, 8, 8, 7, 6, 
          0, 1, 9, 9, 3, 2, 10, 10 ], 
      [ 17, 17, 12, 12, 19, 19, 14, 14, 16, 16, 15, 15, 18, 18, 13, 13, 11, 11, 5, 4, 8, 8, 6, 7, 
          1, 0, 9, 9, 2, 3, 10, 10 ], 
      [ 16, 16, 18, 18, 13, 13, 15, 15, 14, 14, 17, 17, 19, 19, 12, 12, 2, 3, 11, 11, 6, 7, 9, 9, 
          8, 8, 0, 1, 10, 10, 4, 5 ], 
      [ 16, 16, 18, 18, 13, 13, 15, 15, 14, 14, 17, 17, 19, 19, 12, 12, 3, 2, 11, 11, 7, 6, 9, 9, 
          8, 8, 1, 0, 10, 10, 5, 4 ], 
      [ 19, 19, 14, 14, 17, 17, 12, 12, 13, 13, 18, 18, 15, 15, 16, 16, 9, 9, 7, 6, 10, 10, 4, 5, 
          3, 2, 11, 11, 0, 1, 8, 8 ], 
      [ 19, 19, 14, 14, 17, 17, 12, 12, 13, 13, 18, 18, 15, 15, 16, 16, 9, 9, 6, 7, 10, 10, 5, 4, 
          2, 3, 11, 11, 1, 0, 8, 8 ], 
      [ 18, 18, 16, 16, 15, 15, 13, 13, 19, 19, 12, 12, 14, 14, 17, 17, 7, 6, 8, 8, 3, 2, 10, 10, 
          11, 11, 4, 5, 9, 9, 0, 1 ], 
      [ 18, 18, 16, 16, 15, 15, 13, 13, 19, 19, 12, 12, 14, 14, 17, 17, 6, 7, 8, 8, 2, 3, 10, 10, 
          11, 11, 5, 4, 9, 9, 1, 0 ] ] )