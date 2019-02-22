rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 2, 3, 0, 1, 8, 9, 10, 11, 4, 5, 6, 7, 14, 15, 12, 13, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 3, 2, 1, 0, 9, 8, 11, 10, 5, 4, 7, 6, 15, 14, 13, 12, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 4, 5, 9, 8, 0, 1, 12, 13, 3, 2, 15, 14, 6, 7, 11, 10, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 5, 4, 8, 9, 1, 0, 13, 12, 2, 3, 14, 15, 7, 6, 10, 11, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 6, 7, 11, 10, 13, 12, 0, 1, 14, 15, 3, 2, 5, 4, 8, 9, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 7, 6, 10, 11, 12, 13, 1, 0, 15, 14, 2, 3, 4, 5, 9, 8, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 9, 8, 4, 5, 3, 2, 15, 14, 0, 1, 12, 13, 11, 10, 6, 7, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 8, 9, 5, 4, 2, 3, 14, 15, 1, 0, 13, 12, 10, 11, 7, 6, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 11, 10, 6, 7, 14, 15, 3, 2, 13, 12, 0, 1, 8, 9, 5, 4, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 10, 11, 7, 6, 15, 14, 2, 3, 12, 13, 1, 0, 9, 8, 4, 5, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 13, 12, 15, 14, 6, 7, 5, 4, 10, 11, 9, 8, 0, 1, 2, 3, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 12, 13, 14, 15, 7, 6, 4, 5, 11, 10, 8, 9, 1, 0, 3, 2, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 15, 14, 13, 12, 10, 11, 9, 8, 6, 7, 5, 4, 2, 3, 0, 1, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 14, 15, 12, 13, 11, 10, 8, 9, 7, 6, 4, 5, 3, 2, 1, 0, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 16, 16, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 17, 17, 0, 1, 12, 13, 2, 3, 14, 
          15, 8, 9, 10, 11, 4, 5, 6, 7 ], 
      [ 16, 16, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 17, 17, 1, 0, 13, 12, 3, 2, 15, 
          14, 9, 8, 11, 10, 5, 4, 7, 6 ], 
      [ 16, 16, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 17, 17, 13, 12, 0, 1, 15, 14, 2, 
          3, 10, 11, 9, 8, 6, 7, 5, 4 ], 
      [ 16, 16, 17, 17, 19, 19, 19, 19, 18, 18, 18, 18, 16, 16, 17, 17, 12, 13, 1, 0, 14, 15, 3, 
          2, 11, 10, 8, 9, 7, 6, 4, 5 ], 
      [ 17, 17, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 16, 16, 2, 3, 14, 15, 0, 1, 12, 
          13, 4, 5, 6, 7, 8, 9, 10, 11 ], 
      [ 17, 17, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 16, 16, 3, 2, 15, 14, 1, 0, 13, 
          12, 5, 4, 7, 6, 9, 8, 11, 10 ], 
      [ 17, 17, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 16, 16, 15, 14, 2, 3, 13, 12, 0, 
          1, 6, 7, 5, 4, 10, 11, 9, 8 ], 
      [ 17, 17, 16, 16, 18, 18, 18, 18, 19, 19, 19, 19, 17, 17, 16, 16, 14, 15, 3, 2, 12, 13, 1, 
          0, 7, 6, 4, 5, 11, 10, 8, 9 ], 
      [ 19, 19, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 18, 18, 9, 8, 11, 10, 4, 5, 6, 7, 
          0, 1, 12, 13, 3, 2, 15, 14 ], 
      [ 19, 19, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 18, 18, 8, 9, 10, 11, 5, 4, 7, 6, 
          1, 0, 13, 12, 2, 3, 14, 15 ], 
      [ 19, 19, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 18, 18, 11, 10, 8, 9, 6, 7, 5, 4, 
          13, 12, 0, 1, 14, 15, 3, 2 ], 
      [ 19, 19, 18, 18, 16, 16, 16, 16, 17, 17, 17, 17, 19, 19, 18, 18, 10, 11, 9, 8, 7, 6, 4, 5, 
          12, 13, 1, 0, 15, 14, 2, 3 ], 
      [ 18, 18, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 19, 19, 4, 5, 6, 7, 9, 8, 11, 10, 
          3, 2, 15, 14, 0, 1, 12, 13 ], 
      [ 18, 18, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 19, 19, 5, 4, 7, 6, 8, 9, 10, 11, 
          2, 3, 14, 15, 1, 0, 13, 12 ], 
      [ 18, 18, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 19, 19, 6, 7, 5, 4, 11, 10, 8, 9, 
          14, 15, 3, 2, 13, 12, 0, 1 ], 
      [ 18, 18, 19, 19, 17, 17, 17, 17, 16, 16, 16, 16, 18, 18, 19, 19, 7, 6, 4, 5, 10, 11, 9, 8, 
          15, 14, 2, 3, 12, 13, 1, 0 ] ] )