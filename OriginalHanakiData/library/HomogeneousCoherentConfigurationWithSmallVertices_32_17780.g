rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 2, 2, 0, 0, 0, 0, -4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, 2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, 2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, 2, -2, 2, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -2, 2, -2, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 12, 12, 15, 15, 14, 14, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 13, 13, 15, 15, 14, 14, 16, 
          16, 19, 19, 18, 18, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 14, 14, 15, 15, 18, 
          18, 17, 17, 16, 16, 19, 19 ], 
      [ 4, 5, 7, 6, 0, 1, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 17, 17, 19, 19, 16, 16, 18, 18, 14, 
          14, 12, 12, 15, 15, 13, 13 ], 
      [ 5, 4, 6, 7, 1, 0, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 19, 19, 17, 17, 18, 18, 16, 16, 15, 
          15, 13, 13, 14, 14, 12, 12 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 17, 17, 19, 19, 18, 18, 16, 16, 14, 
          14, 13, 13, 15, 15, 12, 12 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 19, 19, 17, 17, 16, 16, 18, 18, 15, 
          15, 12, 12, 14, 14, 13, 13 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 0, 1, 2, 3, 4, 5, 6, 7, 14, 15, 14, 15, 12, 13, 12, 13, 17, 
          19, 16, 18, 17, 19, 16, 18 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 1, 0, 3, 2, 5, 4, 7, 6, 15, 14, 15, 14, 13, 12, 13, 12, 19, 
          17, 18, 16, 19, 17, 18, 16 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 2, 3, 0, 1, 6, 7, 4, 5, 15, 14, 15, 14, 12, 13, 12, 13, 19, 
          17, 16, 18, 19, 17, 16, 18 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 3, 2, 1, 0, 7, 6, 5, 4, 14, 15, 14, 15, 13, 12, 13, 12, 17, 
          19, 18, 16, 17, 19, 18, 16 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 4, 5, 7, 6, 0, 1, 3, 2, 16, 18, 16, 18, 17, 19, 17, 19, 12, 
          13, 14, 15, 12, 13, 14, 15 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 5, 4, 6, 7, 1, 0, 2, 3, 18, 16, 18, 16, 19, 17, 19, 17, 13, 
          12, 15, 14, 13, 12, 15, 14 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 7, 6, 4, 5, 3, 2, 0, 1, 18, 16, 18, 16, 17, 19, 17, 19, 13, 
          12, 14, 15, 13, 12, 14, 15 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 6, 7, 5, 4, 2, 3, 1, 0, 16, 18, 16, 18, 19, 17, 19, 17, 12, 
          13, 15, 14, 12, 13, 15, 14 ], 
      [ 12, 13, 12, 13, 16, 18, 16, 18, 14, 15, 15, 14, 17, 19, 19, 17, 0, 2, 3, 1, 9, 8, 8, 9, 4, 
          6, 11, 10, 7, 5, 10, 11 ], 
      [ 12, 13, 12, 13, 16, 18, 16, 18, 15, 14, 14, 15, 19, 17, 17, 19, 2, 0, 1, 3, 8, 9, 9, 8, 6, 
          4, 10, 11, 5, 7, 11, 10 ], 
      [ 13, 12, 13, 12, 18, 16, 18, 16, 14, 15, 15, 14, 17, 19, 19, 17, 3, 1, 0, 2, 8, 9, 9, 8, 7, 
          5, 10, 11, 4, 6, 11, 10 ], 
      [ 13, 12, 13, 12, 18, 16, 18, 16, 15, 14, 14, 15, 19, 17, 17, 19, 1, 3, 2, 0, 9, 8, 8, 9, 5, 
          7, 11, 10, 6, 4, 10, 11 ], 
      [ 14, 15, 15, 14, 17, 19, 19, 17, 12, 13, 12, 13, 16, 18, 16, 18, 9, 8, 8, 9, 0, 3, 2, 1, 
          11, 10, 4, 7, 10, 11, 6, 5 ], 
      [ 14, 15, 15, 14, 17, 19, 19, 17, 13, 12, 13, 12, 18, 16, 18, 16, 8, 9, 9, 8, 3, 0, 1, 2, 
          10, 11, 7, 4, 11, 10, 5, 6 ], 
      [ 15, 14, 14, 15, 19, 17, 17, 19, 12, 13, 12, 13, 16, 18, 16, 18, 8, 9, 9, 8, 2, 1, 0, 3, 
          10, 11, 6, 5, 11, 10, 4, 7 ], 
      [ 15, 14, 14, 15, 19, 17, 17, 19, 13, 12, 13, 12, 18, 16, 18, 16, 9, 8, 8, 9, 1, 2, 3, 0, 
          11, 10, 5, 6, 10, 11, 7, 4 ], 
      [ 17, 19, 17, 19, 14, 15, 14, 15, 16, 18, 18, 16, 12, 13, 13, 12, 4, 7, 6, 5, 11, 10, 10, 
          11, 0, 3, 9, 8, 2, 1, 8, 9 ], 
      [ 17, 19, 17, 19, 14, 15, 14, 15, 18, 16, 16, 18, 13, 12, 12, 13, 7, 4, 5, 6, 10, 11, 11, 
          10, 3, 0, 8, 9, 1, 2, 9, 8 ], 
      [ 16, 18, 18, 16, 12, 13, 13, 12, 17, 19, 17, 19, 14, 15, 14, 15, 11, 10, 10, 11, 4, 6, 7, 
          5, 9, 8, 0, 2, 8, 9, 3, 1 ], 
      [ 16, 18, 18, 16, 12, 13, 13, 12, 19, 17, 19, 17, 15, 14, 15, 14, 10, 11, 11, 10, 6, 4, 5, 
          7, 8, 9, 2, 0, 9, 8, 1, 3 ], 
      [ 19, 17, 19, 17, 15, 14, 15, 14, 16, 18, 18, 16, 12, 13, 13, 12, 6, 5, 4, 7, 10, 11, 11, 
          10, 2, 1, 8, 9, 0, 3, 9, 8 ], 
      [ 19, 17, 19, 17, 15, 14, 15, 14, 18, 16, 16, 18, 13, 12, 12, 13, 5, 6, 7, 4, 11, 10, 10, 
          11, 1, 2, 9, 8, 3, 0, 8, 9 ], 
      [ 18, 16, 16, 18, 13, 12, 12, 13, 17, 19, 17, 19, 14, 15, 14, 15, 10, 11, 11, 10, 7, 5, 4, 
          6, 8, 9, 3, 1, 9, 8, 0, 2 ], 
      [ 18, 16, 16, 18, 13, 12, 12, 13, 19, 17, 19, 17, 15, 14, 15, 14, 11, 10, 10, 11, 5, 7, 6, 
          4, 9, 8, 1, 3, 8, 9, 2, 0 ] ] )