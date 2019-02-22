rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -2, 2, 2, -2, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 2, -2, -2, 2, 2 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, -2, 2, -2, 2, 2 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, -2, 2, -2, 2 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, -2, 2, 2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 2, -2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, -2, 2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, 2, -2, 2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, 2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, 2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 12, 12, 15, 15, 14, 14, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 13, 13, 14, 14, 15, 15, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 15, 15, 14, 14, 13, 13, 12, 12, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 15, 15, 12, 12, 13, 13, 19, 
          19, 18, 18, 17, 17, 16, 16 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 14, 14, 13, 13, 12, 12, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 0, 1, 2, 3, 4, 5, 6, 7, 16, 17, 16, 17, 18, 19, 18, 19, 12, 
          13, 12, 13, 14, 15, 14, 15 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 1, 0, 3, 2, 5, 4, 7, 6, 17, 16, 17, 16, 19, 18, 19, 18, 13, 
          12, 13, 12, 15, 14, 15, 14 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 2, 3, 0, 1, 6, 7, 4, 5, 17, 16, 17, 16, 19, 18, 19, 18, 12, 
          13, 12, 13, 14, 15, 14, 15 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 3, 2, 1, 0, 7, 6, 5, 4, 16, 17, 16, 17, 18, 19, 18, 19, 13, 
          12, 13, 12, 15, 14, 15, 14 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 4, 5, 6, 7, 0, 1, 2, 3, 18, 19, 18, 19, 16, 17, 16, 17, 14, 
          15, 14, 15, 12, 13, 12, 13 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 5, 4, 7, 6, 1, 0, 3, 2, 19, 18, 19, 18, 17, 16, 17, 16, 15, 
          14, 15, 14, 13, 12, 13, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 6, 7, 4, 5, 2, 3, 0, 1, 19, 18, 19, 18, 17, 16, 17, 16, 14, 
          15, 14, 15, 12, 13, 12, 13 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 7, 6, 5, 4, 3, 2, 1, 0, 18, 19, 18, 19, 16, 17, 16, 17, 15, 
          14, 15, 14, 13, 12, 13, 12 ], 
      [ 12, 13, 12, 13, 14, 15, 14, 15, 16, 17, 17, 16, 18, 19, 19, 18, 0, 2, 3, 1, 4, 6, 7, 5, 9, 
          8, 8, 9, 11, 10, 10, 11 ], 
      [ 12, 13, 12, 13, 14, 15, 14, 15, 17, 16, 16, 17, 19, 18, 18, 19, 2, 0, 1, 3, 6, 4, 5, 7, 8, 
          9, 9, 8, 10, 11, 11, 10 ], 
      [ 13, 12, 13, 12, 15, 14, 15, 14, 16, 17, 17, 16, 18, 19, 19, 18, 3, 1, 0, 2, 7, 5, 4, 6, 8, 
          9, 9, 8, 10, 11, 11, 10 ], 
      [ 13, 12, 13, 12, 15, 14, 15, 14, 17, 16, 16, 17, 19, 18, 18, 19, 1, 3, 2, 0, 5, 7, 6, 4, 9, 
          8, 8, 9, 11, 10, 10, 11 ], 
      [ 14, 15, 14, 15, 12, 13, 12, 13, 18, 19, 19, 18, 16, 17, 17, 16, 4, 6, 7, 5, 0, 2, 3, 1, 
          11, 10, 10, 11, 9, 8, 8, 9 ], 
      [ 14, 15, 14, 15, 12, 13, 12, 13, 19, 18, 18, 19, 17, 16, 16, 17, 6, 4, 5, 7, 2, 0, 1, 3, 
          10, 11, 11, 10, 8, 9, 9, 8 ], 
      [ 15, 14, 15, 14, 13, 12, 13, 12, 18, 19, 19, 18, 16, 17, 17, 16, 7, 5, 4, 6, 3, 1, 0, 2, 
          10, 11, 11, 10, 8, 9, 9, 8 ], 
      [ 15, 14, 15, 14, 13, 12, 13, 12, 19, 18, 18, 19, 17, 16, 16, 17, 5, 7, 6, 4, 1, 3, 2, 0, 
          11, 10, 10, 11, 9, 8, 8, 9 ], 
      [ 16, 17, 17, 16, 18, 19, 19, 18, 12, 13, 12, 13, 14, 15, 14, 15, 9, 8, 8, 9, 11, 10, 10, 
          11, 0, 3, 2, 1, 4, 7, 6, 5 ], 
      [ 16, 17, 17, 16, 18, 19, 19, 18, 13, 12, 13, 12, 15, 14, 15, 14, 8, 9, 9, 8, 10, 11, 11, 
          10, 3, 0, 1, 2, 7, 4, 5, 6 ], 
      [ 17, 16, 16, 17, 19, 18, 18, 19, 12, 13, 12, 13, 14, 15, 14, 15, 8, 9, 9, 8, 10, 11, 11, 
          10, 2, 1, 0, 3, 6, 5, 4, 7 ], 
      [ 17, 16, 16, 17, 19, 18, 18, 19, 13, 12, 13, 12, 15, 14, 15, 14, 9, 8, 8, 9, 11, 10, 10, 
          11, 1, 2, 3, 0, 5, 6, 7, 4 ], 
      [ 18, 19, 19, 18, 16, 17, 17, 16, 14, 15, 14, 15, 12, 13, 12, 13, 11, 10, 10, 11, 9, 8, 8, 
          9, 4, 7, 6, 5, 0, 3, 2, 1 ], 
      [ 18, 19, 19, 18, 16, 17, 17, 16, 15, 14, 15, 14, 13, 12, 13, 12, 10, 11, 11, 10, 8, 9, 9, 
          8, 7, 4, 5, 6, 3, 0, 1, 2 ], 
      [ 19, 18, 18, 19, 17, 16, 16, 17, 14, 15, 14, 15, 12, 13, 12, 13, 10, 11, 11, 10, 8, 9, 9, 
          8, 6, 5, 4, 7, 2, 1, 0, 3 ], 
      [ 19, 18, 18, 19, 17, 16, 16, 17, 15, 14, 15, 14, 13, 12, 13, 12, 11, 10, 10, 11, 9, 8, 8, 
          9, 5, 6, 7, 4, 1, 2, 3, 0 ] ] )