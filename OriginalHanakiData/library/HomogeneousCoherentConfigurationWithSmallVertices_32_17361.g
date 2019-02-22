rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 8, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, -8*E(4), 8*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 8*E(4), -8*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -8, -8, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2 ], 
      [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 14, 15, 12, 13, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 13, 14, 15, 8, 9, 10, 11, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 13, 12, 15, 14, 9, 8, 11, 10, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 14, 15, 12, 13, 10, 11, 8, 9, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 8, 9, 10, 11, 13, 12, 15, 14, 0, 1, 2, 3, 5, 4, 7, 6, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 9, 8, 11, 10, 12, 13, 14, 15, 1, 0, 3, 2, 4, 5, 6, 7, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 10, 11, 8, 9, 15, 14, 13, 12, 2, 3, 0, 1, 7, 6, 5, 4, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 11, 10, 9, 8, 14, 15, 12, 13, 3, 2, 1, 0, 6, 7, 4, 5, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 13, 12, 15, 14, 8, 9, 10, 11, 5, 4, 7, 6, 0, 1, 2, 3, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 12, 13, 14, 15, 9, 8, 11, 10, 4, 5, 6, 7, 1, 0, 3, 2, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 15, 14, 13, 12, 10, 11, 8, 9, 7, 6, 5, 4, 2, 3, 0, 1, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 14, 15, 12, 13, 11, 10, 9, 8, 6, 7, 4, 5, 3, 2, 1, 0, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 0, 1, 4, 5, 8, 9, 12, 13, 
          2, 3, 6, 7, 10, 11, 14, 15 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 1, 0, 5, 4, 9, 8, 13, 12, 
          3, 2, 7, 6, 11, 10, 15, 14 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 4, 5, 0, 1, 12, 13, 8, 9, 
          6, 7, 2, 3, 14, 15, 10, 11 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 5, 4, 1, 0, 13, 12, 9, 8, 
          7, 6, 3, 2, 15, 14, 11, 10 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 8, 9, 13, 12, 0, 1, 5, 4, 
          10, 11, 15, 14, 2, 3, 7, 6 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 9, 8, 12, 13, 1, 0, 4, 5, 
          11, 10, 14, 15, 3, 2, 6, 7 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 13, 12, 8, 9, 5, 4, 0, 1, 
          15, 14, 10, 11, 7, 6, 2, 3 ], 
      [ 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 12, 13, 9, 8, 4, 5, 1, 0, 
          14, 15, 11, 10, 6, 7, 3, 2 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 2, 3, 6, 7, 10, 11, 14, 
          15, 0, 1, 4, 5, 8, 9, 12, 13 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 3, 2, 7, 6, 11, 10, 15, 
          14, 1, 0, 5, 4, 9, 8, 13, 12 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 6, 7, 2, 3, 14, 15, 10, 
          11, 4, 5, 0, 1, 12, 13, 8, 9 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 7, 6, 3, 2, 15, 14, 11, 
          10, 5, 4, 1, 0, 13, 12, 9, 8 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 10, 11, 15, 14, 2, 3, 7, 
          6, 8, 9, 13, 12, 0, 1, 5, 4 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 11, 10, 14, 15, 3, 2, 6, 
          7, 9, 8, 12, 13, 1, 0, 4, 5 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 15, 14, 10, 11, 7, 6, 2, 
          3, 13, 12, 8, 9, 5, 4, 0, 1 ], 
      [ 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 16, 16, 17, 17, 14, 15, 11, 10, 6, 7, 3, 
          2, 12, 13, 9, 8, 4, 5, 1, 0 ] ] )