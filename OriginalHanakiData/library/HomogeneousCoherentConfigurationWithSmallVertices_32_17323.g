rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 16, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -16, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 2 ], 
      [ 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 13, 14, 15, 8, 9, 10, 11, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 13, 12, 15, 14, 9, 8, 11, 10, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 14, 15, 12, 13, 10, 11, 8, 9, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 8, 9, 10, 11, 13, 12, 15, 14, 0, 1, 2, 3, 5, 4, 7, 6, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 9, 8, 11, 10, 12, 13, 14, 15, 1, 0, 3, 2, 4, 5, 6, 7, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 10, 11, 8, 9, 15, 14, 13, 12, 2, 3, 0, 1, 7, 6, 5, 4, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 11, 10, 9, 8, 14, 15, 12, 13, 3, 2, 1, 0, 6, 7, 4, 5, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 13, 12, 15, 14, 8, 9, 10, 11, 5, 4, 7, 6, 0, 1, 2, 3, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 12, 13, 14, 15, 9, 8, 11, 10, 4, 5, 6, 7, 1, 0, 3, 2, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 15, 14, 13, 12, 10, 11, 8, 9, 7, 6, 5, 4, 2, 3, 0, 1, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 14, 15, 12, 13, 11, 10, 9, 8, 6, 7, 4, 5, 3, 2, 1, 0, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 0, 1, 2, 3, 4, 5, 6, 7, 8, 
          9, 10, 11, 12, 13, 14, 15 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 1, 0, 3, 2, 5, 4, 7, 6, 9, 
          8, 11, 10, 13, 12, 15, 14 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 2, 3, 0, 1, 6, 7, 4, 5, 
          10, 11, 8, 9, 14, 15, 12, 13 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 3, 2, 1, 0, 7, 6, 5, 4, 
          11, 10, 9, 8, 15, 14, 13, 12 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 4, 5, 6, 7, 0, 1, 2, 3, 
          12, 13, 14, 15, 8, 9, 10, 11 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 5, 4, 7, 6, 1, 0, 3, 2, 
          13, 12, 15, 14, 9, 8, 11, 10 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 6, 7, 4, 5, 2, 3, 0, 1, 
          14, 15, 12, 13, 10, 11, 8, 9 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 7, 6, 5, 4, 3, 2, 1, 0, 
          15, 14, 13, 12, 11, 10, 9, 8 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 8, 9, 10, 11, 13, 12, 15, 
          14, 0, 1, 2, 3, 5, 4, 7, 6 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 9, 8, 11, 10, 12, 13, 14, 
          15, 1, 0, 3, 2, 4, 5, 6, 7 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 10, 11, 8, 9, 15, 14, 13, 
          12, 2, 3, 0, 1, 7, 6, 5, 4 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 11, 10, 9, 8, 14, 15, 12, 
          13, 3, 2, 1, 0, 6, 7, 4, 5 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 13, 12, 15, 14, 8, 9, 10, 
          11, 5, 4, 7, 6, 0, 1, 2, 3 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 12, 13, 14, 15, 9, 8, 11, 
          10, 4, 5, 6, 7, 1, 0, 3, 2 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 14, 13, 12, 10, 11, 8, 
          9, 7, 6, 5, 4, 2, 3, 0, 1 ], 
      [ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 14, 15, 12, 13, 11, 10, 9, 
          8, 6, 7, 4, 5, 3, 2, 1, 0 ] ] )