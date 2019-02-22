rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, 2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, 2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 2, 2, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, -2, -2, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 12, 12, 15, 15, 14, 14, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 3, 2, 0, 1, 6, 7, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 13, 13, 12, 12, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 2, 3, 1, 0, 7, 6, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 15, 15, 14, 14, 12, 12, 13, 13, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 16, 16, 18, 18, 19, 19, 17, 17, 13, 
          13, 14, 14, 12, 12, 15, 15 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 18, 18, 16, 16, 17, 17, 19, 19, 12, 
          12, 15, 15, 13, 13, 14, 14 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 17, 17, 19, 19, 16, 16, 18, 18, 15, 
          15, 13, 13, 14, 14, 12, 12 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 19, 19, 17, 17, 18, 18, 16, 16, 14, 
          14, 12, 12, 15, 15, 13, 13 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 0, 1, 2, 3, 4, 5, 6, 7, 12, 13, 12, 13, 14, 15, 14, 15, 16, 
          18, 17, 19, 16, 18, 17, 19 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 1, 0, 3, 2, 5, 4, 7, 6, 13, 12, 13, 12, 15, 14, 15, 14, 18, 
          16, 19, 17, 18, 16, 19, 17 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 3, 2, 0, 1, 6, 7, 5, 4, 14, 15, 14, 15, 13, 12, 13, 12, 17, 
          19, 18, 16, 17, 19, 18, 16 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 2, 3, 1, 0, 7, 6, 4, 5, 15, 14, 15, 14, 12, 13, 12, 13, 19, 
          17, 16, 18, 19, 17, 16, 18 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 5, 4, 7, 6, 0, 1, 2, 3, 16, 18, 16, 18, 19, 17, 19, 17, 13, 
          12, 14, 15, 13, 12, 14, 15 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 4, 5, 6, 7, 1, 0, 3, 2, 18, 16, 18, 16, 17, 19, 17, 19, 12, 
          13, 15, 14, 12, 13, 15, 14 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 7, 6, 4, 5, 3, 2, 0, 1, 17, 19, 17, 19, 16, 18, 16, 18, 15, 
          14, 13, 12, 15, 14, 13, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 6, 7, 5, 4, 2, 3, 1, 0, 19, 17, 19, 17, 18, 16, 18, 16, 14, 
          15, 12, 13, 14, 15, 12, 13 ], 
      [ 13, 12, 15, 14, 17, 19, 16, 18, 13, 12, 15, 14, 17, 19, 16, 18, 0, 8, 8, 1, 2, 9, 9, 3, 7, 
          11, 5, 10, 11, 6, 10, 4 ], 
      [ 13, 12, 15, 14, 17, 19, 16, 18, 12, 13, 14, 15, 19, 17, 18, 16, 8, 0, 1, 8, 9, 2, 3, 9, 
          11, 7, 10, 5, 6, 11, 4, 10 ], 
      [ 12, 13, 14, 15, 19, 17, 18, 16, 13, 12, 15, 14, 17, 19, 16, 18, 8, 1, 0, 8, 9, 3, 2, 9, 
          11, 6, 10, 4, 7, 11, 5, 10 ], 
      [ 12, 13, 14, 15, 19, 17, 18, 16, 12, 13, 14, 15, 19, 17, 18, 16, 1, 8, 8, 0, 3, 9, 9, 2, 6, 
          11, 4, 10, 11, 7, 10, 5 ], 
      [ 15, 14, 12, 13, 18, 16, 17, 19, 15, 14, 12, 13, 18, 16, 17, 19, 3, 9, 9, 2, 0, 8, 8, 1, 4, 
          10, 7, 11, 10, 5, 11, 6 ], 
      [ 15, 14, 12, 13, 18, 16, 17, 19, 14, 15, 13, 12, 16, 18, 19, 17, 9, 3, 2, 9, 8, 0, 1, 8, 
          10, 4, 11, 7, 5, 10, 6, 11 ], 
      [ 14, 15, 13, 12, 16, 18, 19, 17, 15, 14, 12, 13, 18, 16, 17, 19, 9, 2, 3, 9, 8, 1, 0, 8, 
          10, 5, 11, 6, 4, 10, 7, 11 ], 
      [ 14, 15, 13, 12, 16, 18, 19, 17, 14, 15, 13, 12, 16, 18, 19, 17, 2, 9, 9, 3, 1, 8, 8, 0, 5, 
          10, 6, 11, 10, 4, 11, 7 ], 
      [ 17, 19, 16, 18, 12, 13, 14, 15, 17, 19, 16, 18, 12, 13, 14, 15, 6, 11, 11, 7, 5, 10, 10, 
          4, 0, 8, 3, 9, 8, 1, 9, 2 ], 
      [ 17, 19, 16, 18, 12, 13, 14, 15, 19, 17, 18, 16, 13, 12, 15, 14, 11, 6, 7, 11, 10, 5, 4, 
          10, 8, 0, 9, 3, 1, 8, 2, 9 ], 
      [ 16, 18, 19, 17, 15, 14, 12, 13, 16, 18, 19, 17, 15, 14, 12, 13, 4, 10, 10, 5, 6, 11, 11, 
          7, 2, 9, 0, 8, 9, 3, 8, 1 ], 
      [ 16, 18, 19, 17, 15, 14, 12, 13, 18, 16, 17, 19, 14, 15, 13, 12, 10, 4, 5, 10, 11, 6, 7, 
          11, 9, 2, 8, 0, 3, 9, 1, 8 ], 
      [ 19, 17, 18, 16, 13, 12, 15, 14, 17, 19, 16, 18, 12, 13, 14, 15, 11, 7, 6, 11, 10, 4, 5, 
          10, 8, 1, 9, 2, 0, 8, 3, 9 ], 
      [ 19, 17, 18, 16, 13, 12, 15, 14, 19, 17, 18, 16, 13, 12, 15, 14, 7, 11, 11, 6, 4, 10, 10, 
          5, 1, 8, 2, 9, 8, 0, 9, 3 ], 
      [ 18, 16, 17, 19, 14, 15, 13, 12, 16, 18, 19, 17, 15, 14, 12, 13, 10, 5, 4, 10, 11, 7, 6, 
          11, 9, 3, 8, 1, 2, 9, 0, 8 ], 
      [ 18, 16, 17, 19, 14, 15, 13, 12, 18, 16, 17, 19, 14, 15, 13, 12, 5, 10, 10, 4, 7, 11, 11, 
          6, 3, 9, 1, 8, 9, 2, 8, 0 ] ] )