rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, -2, -2, 2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, -2, -2, 2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2, -2, 2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2, -2, 2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, 2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, 2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 16, 16, 19, 19, 18, 18, 17, 17, 12, 
          12, 15, 15, 14, 14, 13, 13 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 18, 18, 17, 17, 16, 16, 19, 19, 14, 
          14, 13, 13, 12, 12, 15, 15 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 13, 13, 14, 14, 15, 15, 12, 12, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 15, 15, 12, 12, 13, 13, 14, 14, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 19, 19, 18, 18, 17, 17, 16, 16, 13, 
          13, 12, 12, 15, 15, 14, 14 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 17, 17, 16, 16, 19, 19, 18, 18, 15, 
          15, 14, 14, 13, 13, 12, 12 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 0, 1, 2, 3, 4, 5, 6, 7, 12, 14, 13, 15, 12, 14, 13, 15, 16, 
          18, 17, 19, 16, 18, 17, 19 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 1, 0, 3, 2, 5, 4, 7, 6, 14, 12, 15, 13, 14, 12, 15, 13, 18, 
          16, 19, 17, 18, 16, 19, 17 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 2, 3, 0, 1, 6, 7, 4, 5, 16, 18, 19, 17, 16, 18, 19, 17, 12, 
          14, 15, 13, 12, 14, 15, 13 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 3, 2, 1, 0, 7, 6, 5, 4, 18, 16, 17, 19, 18, 16, 17, 19, 14, 
          12, 13, 15, 14, 12, 13, 15 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 5, 4, 7, 6, 0, 1, 2, 3, 13, 15, 14, 12, 13, 15, 14, 12, 19, 
          17, 16, 18, 19, 17, 16, 18 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 4, 5, 6, 7, 1, 0, 3, 2, 15, 13, 12, 14, 15, 13, 12, 14, 17, 
          19, 18, 16, 17, 19, 18, 16 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 7, 6, 5, 4, 2, 3, 0, 1, 19, 17, 18, 16, 19, 17, 18, 16, 13, 
          15, 12, 14, 13, 15, 12, 14 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 6, 7, 4, 5, 3, 2, 1, 0, 17, 19, 16, 18, 17, 19, 16, 18, 15, 
          13, 14, 12, 15, 13, 14, 12 ], 
      [ 13, 15, 17, 19, 12, 14, 18, 16, 13, 15, 17, 19, 12, 14, 18, 16, 0, 8, 5, 10, 8, 1, 10, 4, 
          3, 9, 7, 11, 9, 2, 11, 6 ], 
      [ 13, 15, 17, 19, 12, 14, 18, 16, 15, 13, 19, 17, 14, 12, 16, 18, 8, 0, 10, 5, 1, 8, 4, 10, 
          9, 3, 11, 7, 2, 9, 6, 11 ], 
      [ 12, 14, 18, 16, 15, 13, 19, 17, 12, 14, 18, 16, 15, 13, 19, 17, 4, 10, 0, 8, 10, 5, 8, 1, 
          7, 11, 2, 9, 11, 6, 9, 3 ], 
      [ 12, 14, 18, 16, 15, 13, 19, 17, 14, 12, 16, 18, 13, 15, 17, 19, 10, 4, 8, 0, 5, 10, 1, 8, 
          11, 7, 9, 2, 6, 11, 3, 9 ], 
      [ 15, 13, 19, 17, 14, 12, 16, 18, 13, 15, 17, 19, 12, 14, 18, 16, 8, 1, 10, 4, 0, 8, 5, 10, 
          9, 2, 11, 6, 3, 9, 7, 11 ], 
      [ 15, 13, 19, 17, 14, 12, 16, 18, 15, 13, 19, 17, 14, 12, 16, 18, 1, 8, 4, 10, 8, 0, 10, 5, 
          2, 9, 6, 11, 9, 3, 11, 7 ], 
      [ 14, 12, 16, 18, 13, 15, 17, 19, 12, 14, 18, 16, 15, 13, 19, 17, 10, 5, 8, 1, 4, 10, 0, 8, 
          11, 6, 9, 3, 7, 11, 2, 9 ], 
      [ 14, 12, 16, 18, 13, 15, 17, 19, 14, 12, 16, 18, 13, 15, 17, 19, 5, 10, 1, 8, 10, 4, 8, 0, 
          6, 11, 3, 9, 11, 7, 9, 2 ], 
      [ 17, 19, 13, 15, 18, 16, 12, 14, 17, 19, 13, 15, 18, 16, 12, 14, 3, 9, 6, 11, 9, 2, 11, 7, 
          0, 8, 4, 10, 8, 1, 10, 5 ], 
      [ 17, 19, 13, 15, 18, 16, 12, 14, 19, 17, 15, 13, 16, 18, 14, 12, 9, 3, 11, 6, 2, 9, 7, 11, 
          8, 0, 10, 4, 1, 8, 5, 10 ], 
      [ 16, 18, 14, 12, 17, 19, 13, 15, 16, 18, 14, 12, 17, 19, 13, 15, 6, 11, 2, 9, 11, 7, 9, 3, 
          5, 10, 0, 8, 10, 4, 8, 1 ], 
      [ 16, 18, 14, 12, 17, 19, 13, 15, 18, 16, 12, 14, 19, 17, 15, 13, 11, 6, 9, 2, 7, 11, 3, 9, 
          10, 5, 8, 0, 4, 10, 1, 8 ], 
      [ 19, 17, 15, 13, 16, 18, 14, 12, 17, 19, 13, 15, 18, 16, 12, 14, 9, 2, 11, 7, 3, 9, 6, 11, 
          8, 1, 10, 5, 0, 8, 4, 10 ], 
      [ 19, 17, 15, 13, 16, 18, 14, 12, 19, 17, 15, 13, 16, 18, 14, 12, 2, 9, 7, 11, 9, 3, 11, 6, 
          1, 8, 5, 10, 8, 0, 10, 4 ], 
      [ 18, 16, 12, 14, 19, 17, 15, 13, 16, 18, 14, 12, 17, 19, 13, 15, 11, 7, 9, 3, 6, 11, 2, 9, 
          10, 4, 8, 1, 5, 10, 0, 8 ], 
      [ 18, 16, 12, 14, 19, 17, 15, 13, 18, 16, 12, 14, 19, 17, 15, 13, 7, 11, 3, 9, 11, 6, 9, 2, 
          4, 10, 1, 8, 10, 5, 8, 0 ] ] )