rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, 2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, 2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 12, 12, 15, 15, 14, 14, 17, 
          17, 16, 16, 19, 19, 18, 18 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 13, 13, 15, 15, 14, 14, 16, 
          16, 17, 17, 19, 19, 18, 18 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 14, 14, 15, 15, 17, 
          17, 16, 16, 18, 18, 19, 19 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 16, 16, 17, 17, 18, 18, 19, 19, 12, 
          12, 13, 13, 14, 14, 15, 15 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 17, 17, 16, 16, 19, 19, 18, 18, 13, 
          13, 12, 12, 15, 15, 14, 14 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 16, 16, 17, 17, 19, 19, 18, 18, 12, 
          12, 13, 13, 15, 15, 14, 14 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 17, 17, 16, 16, 18, 18, 19, 19, 13, 
          13, 12, 12, 14, 14, 15, 15 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 0, 1, 2, 3, 4, 5, 6, 7, 14, 15, 14, 15, 12, 13, 12, 13, 18, 
          19, 18, 19, 16, 17, 16, 17 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 1, 0, 3, 2, 5, 4, 7, 6, 15, 14, 15, 14, 13, 12, 13, 12, 19, 
          18, 19, 18, 17, 16, 17, 16 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 2, 3, 0, 1, 6, 7, 4, 5, 15, 14, 15, 14, 12, 13, 12, 13, 19, 
          18, 19, 18, 16, 17, 16, 17 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 3, 2, 1, 0, 7, 6, 5, 4, 14, 15, 14, 15, 13, 12, 13, 12, 18, 
          19, 18, 19, 17, 16, 17, 16 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 4, 5, 6, 7, 0, 1, 2, 3, 18, 19, 18, 19, 16, 17, 16, 17, 14, 
          15, 14, 15, 12, 13, 12, 13 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 5, 4, 7, 6, 1, 0, 3, 2, 19, 18, 19, 18, 17, 16, 17, 16, 15, 
          14, 15, 14, 13, 12, 13, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 6, 7, 4, 5, 2, 3, 0, 1, 19, 18, 19, 18, 16, 17, 16, 17, 15, 
          14, 15, 14, 12, 13, 12, 13 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 7, 6, 5, 4, 3, 2, 1, 0, 18, 19, 18, 19, 17, 16, 17, 16, 14, 
          15, 14, 15, 13, 12, 13, 12 ], 
      [ 12, 13, 12, 13, 17, 16, 17, 16, 14, 15, 15, 14, 19, 18, 18, 19, 0, 2, 3, 1, 8, 9, 9, 8, 5, 
          7, 6, 4, 10, 11, 11, 10 ], 
      [ 12, 13, 12, 13, 17, 16, 17, 16, 15, 14, 14, 15, 18, 19, 19, 18, 2, 0, 1, 3, 9, 8, 8, 9, 7, 
          5, 4, 6, 11, 10, 10, 11 ], 
      [ 13, 12, 13, 12, 16, 17, 16, 17, 14, 15, 15, 14, 19, 18, 18, 19, 3, 1, 0, 2, 9, 8, 8, 9, 6, 
          4, 5, 7, 11, 10, 10, 11 ], 
      [ 13, 12, 13, 12, 16, 17, 16, 17, 15, 14, 14, 15, 18, 19, 19, 18, 1, 3, 2, 0, 8, 9, 9, 8, 4, 
          6, 7, 5, 10, 11, 11, 10 ], 
      [ 14, 15, 15, 14, 19, 18, 18, 19, 12, 13, 12, 13, 17, 16, 17, 16, 8, 9, 9, 8, 0, 3, 2, 1, 
          10, 11, 11, 10, 5, 6, 7, 4 ], 
      [ 14, 15, 15, 14, 19, 18, 18, 19, 13, 12, 13, 12, 16, 17, 16, 17, 9, 8, 8, 9, 3, 0, 1, 2, 
          11, 10, 10, 11, 6, 5, 4, 7 ], 
      [ 15, 14, 14, 15, 18, 19, 19, 18, 12, 13, 12, 13, 17, 16, 17, 16, 9, 8, 8, 9, 2, 1, 0, 3, 
          11, 10, 10, 11, 7, 4, 5, 6 ], 
      [ 15, 14, 14, 15, 18, 19, 19, 18, 13, 12, 13, 12, 16, 17, 16, 17, 8, 9, 9, 8, 1, 2, 3, 0, 
          10, 11, 11, 10, 4, 7, 6, 5 ], 
      [ 17, 16, 17, 16, 12, 13, 12, 13, 19, 18, 18, 19, 14, 15, 15, 14, 5, 7, 6, 4, 10, 11, 11, 
          10, 0, 2, 3, 1, 8, 9, 9, 8 ], 
      [ 17, 16, 17, 16, 12, 13, 12, 13, 18, 19, 19, 18, 15, 14, 14, 15, 7, 5, 4, 6, 11, 10, 10, 
          11, 2, 0, 1, 3, 9, 8, 8, 9 ], 
      [ 16, 17, 16, 17, 13, 12, 13, 12, 19, 18, 18, 19, 14, 15, 15, 14, 6, 4, 5, 7, 11, 10, 10, 
          11, 3, 1, 0, 2, 9, 8, 8, 9 ], 
      [ 16, 17, 16, 17, 13, 12, 13, 12, 18, 19, 19, 18, 15, 14, 14, 15, 4, 6, 7, 5, 10, 11, 11, 
          10, 1, 3, 2, 0, 8, 9, 9, 8 ], 
      [ 19, 18, 18, 19, 14, 15, 15, 14, 17, 16, 17, 16, 12, 13, 12, 13, 10, 11, 11, 10, 5, 6, 7, 
          4, 8, 9, 9, 8, 0, 3, 2, 1 ], 
      [ 19, 18, 18, 19, 14, 15, 15, 14, 16, 17, 16, 17, 13, 12, 13, 12, 11, 10, 10, 11, 6, 5, 4, 
          7, 9, 8, 8, 9, 3, 0, 1, 2 ], 
      [ 18, 19, 19, 18, 15, 14, 14, 15, 17, 16, 17, 16, 12, 13, 12, 13, 11, 10, 10, 11, 7, 4, 5, 
          6, 9, 8, 8, 9, 2, 1, 0, 3 ], 
      [ 18, 19, 19, 18, 15, 14, 14, 15, 16, 17, 16, 17, 13, 12, 13, 12, 10, 11, 11, 10, 4, 7, 6, 
          5, 8, 9, 9, 8, 1, 2, 3, 0 ] ] )