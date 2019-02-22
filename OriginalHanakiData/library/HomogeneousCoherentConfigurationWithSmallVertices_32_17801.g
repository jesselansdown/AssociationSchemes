rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, -2, -2, 2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, -2, -2, 2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, 0, 0, -2, -2, 4, 0, 0, -4, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, 2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, 2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 12, 12, 15, 15, 14, 14, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 16, 16, 18, 18, 17, 17, 19, 19, 12, 
          12, 14, 14, 13, 13, 15, 15 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 18, 18, 16, 16, 19, 19, 17, 17, 13, 
          13, 15, 15, 12, 12, 14, 14 ], 
      [ 4, 5, 7, 6, 0, 1, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 17, 17, 19, 19, 18, 18, 16, 16, 15, 
          15, 12, 12, 14, 14, 13, 13 ], 
      [ 5, 4, 6, 7, 1, 0, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 19, 19, 17, 17, 16, 16, 18, 18, 14, 
          14, 13, 13, 15, 15, 12, 12 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 14, 14, 12, 12, 13, 13, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 15, 15, 13, 13, 12, 12, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 0, 1, 2, 3, 4, 5, 6, 7, 12, 13, 12, 13, 14, 15, 14, 15, 16, 
          18, 17, 19, 16, 18, 17, 19 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 1, 0, 3, 2, 5, 4, 7, 6, 13, 12, 13, 12, 15, 14, 15, 14, 18, 
          16, 19, 17, 18, 16, 19, 17 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 2, 3, 0, 1, 6, 7, 4, 5, 16, 18, 16, 18, 17, 19, 17, 19, 12, 
          13, 14, 15, 12, 13, 14, 15 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 3, 2, 1, 0, 7, 6, 5, 4, 18, 16, 18, 16, 19, 17, 19, 17, 13, 
          12, 15, 14, 13, 12, 15, 14 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 4, 5, 7, 6, 0, 1, 3, 2, 17, 19, 17, 19, 18, 16, 18, 16, 15, 
          14, 12, 13, 15, 14, 12, 13 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 5, 4, 6, 7, 1, 0, 2, 3, 19, 17, 19, 17, 16, 18, 16, 18, 14, 
          15, 13, 12, 14, 15, 13, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 7, 6, 4, 5, 3, 2, 0, 1, 15, 14, 15, 14, 12, 13, 12, 13, 17, 
          19, 18, 16, 17, 19, 18, 16 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 6, 7, 5, 4, 2, 3, 1, 0, 14, 15, 14, 15, 13, 12, 13, 12, 19, 
          17, 16, 18, 19, 17, 16, 18 ], 
      [ 13, 12, 17, 19, 16, 18, 14, 15, 13, 12, 17, 19, 16, 18, 14, 15, 0, 8, 8, 1, 7, 11, 11, 6, 
          5, 10, 3, 9, 10, 4, 9, 2 ], 
      [ 13, 12, 17, 19, 16, 18, 14, 15, 12, 13, 19, 17, 18, 16, 15, 14, 8, 0, 1, 8, 11, 7, 6, 11, 
          10, 5, 9, 3, 4, 10, 2, 9 ], 
      [ 12, 13, 19, 17, 18, 16, 15, 14, 13, 12, 17, 19, 16, 18, 14, 15, 8, 1, 0, 8, 11, 6, 7, 11, 
          10, 4, 9, 2, 5, 10, 3, 9 ], 
      [ 12, 13, 19, 17, 18, 16, 15, 14, 12, 13, 19, 17, 18, 16, 15, 14, 1, 8, 8, 0, 6, 11, 11, 7, 
          4, 10, 2, 9, 10, 5, 9, 3 ], 
      [ 15, 14, 16, 18, 19, 17, 13, 12, 15, 14, 16, 18, 19, 17, 13, 12, 6, 11, 11, 7, 0, 8, 8, 1, 
          3, 9, 4, 10, 9, 2, 10, 5 ], 
      [ 15, 14, 16, 18, 19, 17, 13, 12, 14, 15, 18, 16, 17, 19, 12, 13, 11, 6, 7, 11, 8, 0, 1, 8, 
          9, 3, 10, 4, 2, 9, 5, 10 ], 
      [ 14, 15, 18, 16, 17, 19, 12, 13, 15, 14, 16, 18, 19, 17, 13, 12, 11, 7, 6, 11, 8, 1, 0, 8, 
          9, 2, 10, 5, 3, 9, 4, 10 ], 
      [ 14, 15, 18, 16, 17, 19, 12, 13, 14, 15, 18, 16, 17, 19, 12, 13, 7, 11, 11, 6, 1, 8, 8, 0, 
          2, 9, 5, 10, 9, 3, 10, 4 ], 
      [ 17, 19, 13, 12, 14, 15, 16, 18, 17, 19, 13, 12, 14, 15, 16, 18, 5, 10, 10, 4, 3, 9, 9, 2, 
          0, 8, 7, 11, 8, 1, 11, 6 ], 
      [ 17, 19, 13, 12, 14, 15, 16, 18, 19, 17, 12, 13, 15, 14, 18, 16, 10, 5, 4, 10, 9, 3, 2, 9, 
          8, 0, 11, 7, 1, 8, 6, 11 ], 
      [ 16, 18, 15, 14, 13, 12, 19, 17, 16, 18, 15, 14, 13, 12, 19, 17, 3, 9, 9, 2, 4, 10, 10, 5, 
          6, 11, 0, 8, 11, 7, 8, 1 ], 
      [ 16, 18, 15, 14, 13, 12, 19, 17, 18, 16, 14, 15, 12, 13, 17, 19, 9, 3, 2, 9, 10, 4, 5, 10, 
          11, 6, 8, 0, 7, 11, 1, 8 ], 
      [ 19, 17, 12, 13, 15, 14, 18, 16, 17, 19, 13, 12, 14, 15, 16, 18, 10, 4, 5, 10, 9, 2, 3, 9, 
          8, 1, 11, 6, 0, 8, 7, 11 ], 
      [ 19, 17, 12, 13, 15, 14, 18, 16, 19, 17, 12, 13, 15, 14, 18, 16, 4, 10, 10, 5, 2, 9, 9, 3, 
          1, 8, 6, 11, 8, 0, 11, 7 ], 
      [ 18, 16, 14, 15, 12, 13, 17, 19, 16, 18, 15, 14, 13, 12, 19, 17, 9, 2, 3, 9, 10, 5, 4, 10, 
          11, 7, 8, 1, 6, 11, 0, 8 ], 
      [ 18, 16, 14, 15, 12, 13, 17, 19, 18, 16, 14, 15, 12, 13, 17, 19, 2, 9, 9, 3, 5, 10, 10, 4, 
          7, 11, 1, 8, 11, 6, 8, 0 ] ] )