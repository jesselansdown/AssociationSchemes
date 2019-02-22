rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, -4, -4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 0, 0, 2, 2, 0, 0, -2, -2, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 0, 0, 2 ], 
      [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 14, 15, 12, 13, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 12, 13, 14, 15, 9, 8, 11, 10, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 13, 12, 15, 14, 8, 9, 10, 11, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 14, 15, 12, 13, 11, 10, 9, 8, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 15, 14, 13, 12, 10, 11, 8, 9, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 9, 8, 11, 10, 13, 12, 15, 14, 0, 1, 2, 3, 4, 5, 6, 7, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 8, 9, 10, 11, 12, 13, 14, 15, 1, 0, 3, 2, 5, 4, 7, 6, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 11, 10, 9, 8, 15, 14, 13, 12, 2, 3, 0, 1, 6, 7, 4, 5, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 10, 11, 8, 9, 14, 15, 12, 13, 3, 2, 1, 0, 7, 6, 5, 4, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 13, 12, 15, 14, 8, 9, 10, 11, 5, 4, 7, 6, 0, 1, 2, 3, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 12, 13, 14, 15, 9, 8, 11, 10, 4, 5, 6, 7, 1, 0, 3, 2, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 15, 14, 13, 12, 10, 11, 8, 9, 7, 6, 5, 4, 2, 3, 0, 1, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 14, 15, 12, 13, 11, 10, 9, 8, 6, 7, 4, 5, 3, 2, 1, 0, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 16, 16, 19, 19, 16, 16, 19, 19, 17, 17, 18, 18, 17, 17, 18, 18, 0, 1, 4, 5, 8, 9, 12, 13, 
          10, 11, 14, 15, 2, 3, 6, 7 ], 
      [ 16, 16, 19, 19, 16, 16, 19, 19, 17, 17, 18, 18, 17, 17, 18, 18, 1, 0, 5, 4, 9, 8, 13, 12, 
          11, 10, 15, 14, 3, 2, 7, 6 ], 
      [ 16, 16, 19, 19, 16, 16, 19, 19, 17, 17, 18, 18, 17, 17, 18, 18, 5, 4, 0, 1, 12, 13, 9, 8, 
          14, 15, 11, 10, 7, 6, 2, 3 ], 
      [ 16, 16, 19, 19, 16, 16, 19, 19, 17, 17, 18, 18, 17, 17, 18, 18, 4, 5, 1, 0, 13, 12, 8, 9, 
          15, 14, 10, 11, 6, 7, 3, 2 ], 
      [ 17, 17, 18, 18, 17, 17, 18, 18, 16, 16, 19, 19, 16, 16, 19, 19, 9, 8, 13, 12, 0, 1, 4, 5, 
          2, 3, 6, 7, 11, 10, 15, 14 ], 
      [ 17, 17, 18, 18, 17, 17, 18, 18, 16, 16, 19, 19, 16, 16, 19, 19, 8, 9, 12, 13, 1, 0, 5, 4, 
          3, 2, 7, 6, 10, 11, 14, 15 ], 
      [ 17, 17, 18, 18, 17, 17, 18, 18, 16, 16, 19, 19, 16, 16, 19, 19, 13, 12, 8, 9, 5, 4, 0, 1, 
          7, 6, 2, 3, 15, 14, 10, 11 ], 
      [ 17, 17, 18, 18, 17, 17, 18, 18, 16, 16, 19, 19, 16, 16, 19, 19, 12, 13, 9, 8, 4, 5, 1, 0, 
          6, 7, 3, 2, 14, 15, 11, 10 ], 
      [ 19, 19, 16, 16, 19, 19, 16, 16, 18, 18, 17, 17, 18, 18, 17, 17, 11, 10, 15, 14, 2, 3, 6, 
          7, 0, 1, 4, 5, 9, 8, 13, 12 ], 
      [ 19, 19, 16, 16, 19, 19, 16, 16, 18, 18, 17, 17, 18, 18, 17, 17, 10, 11, 14, 15, 3, 2, 7, 
          6, 1, 0, 5, 4, 8, 9, 12, 13 ], 
      [ 19, 19, 16, 16, 19, 19, 16, 16, 18, 18, 17, 17, 18, 18, 17, 17, 15, 14, 10, 11, 7, 6, 2, 
          3, 5, 4, 0, 1, 13, 12, 8, 9 ], 
      [ 19, 19, 16, 16, 19, 19, 16, 16, 18, 18, 17, 17, 18, 18, 17, 17, 14, 15, 11, 10, 6, 7, 3, 
          2, 4, 5, 1, 0, 12, 13, 9, 8 ], 
      [ 18, 18, 17, 17, 18, 18, 17, 17, 19, 19, 16, 16, 19, 19, 16, 16, 2, 3, 6, 7, 10, 11, 14, 
          15, 8, 9, 12, 13, 0, 1, 4, 5 ], 
      [ 18, 18, 17, 17, 18, 18, 17, 17, 19, 19, 16, 16, 19, 19, 16, 16, 3, 2, 7, 6, 11, 10, 15, 
          14, 9, 8, 13, 12, 1, 0, 5, 4 ], 
      [ 18, 18, 17, 17, 18, 18, 17, 17, 19, 19, 16, 16, 19, 19, 16, 16, 7, 6, 2, 3, 14, 15, 11, 
          10, 12, 13, 9, 8, 5, 4, 0, 1 ], 
      [ 18, 18, 17, 17, 18, 18, 17, 17, 19, 19, 16, 16, 19, 19, 16, 16, 6, 7, 3, 2, 15, 14, 10, 
          11, 13, 12, 8, 9, 4, 5, 1, 0 ] ] )