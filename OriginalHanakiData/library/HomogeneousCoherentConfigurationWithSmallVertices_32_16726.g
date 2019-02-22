rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, 2, 2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, -2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, 2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2, -2, 2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 0, 1, 2, 3, 4, 5, 6, 7, 12, 12, 13, 13, 12, 12, 13, 13, 14, 
          14, 15, 15, 14, 14, 15, 15 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 1, 0, 3, 2, 5, 4, 7, 6, 13, 13, 12, 12, 13, 13, 12, 12, 15, 
          15, 14, 14, 15, 15, 14, 14 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 2, 3, 0, 1, 6, 7, 4, 5, 12, 12, 13, 13, 12, 12, 13, 13, 14, 
          14, 15, 15, 14, 14, 15, 15 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 3, 2, 1, 0, 7, 6, 5, 4, 13, 13, 12, 12, 13, 13, 12, 12, 15, 
          15, 14, 14, 15, 15, 14, 14 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 4, 5, 6, 7, 0, 1, 2, 3, 14, 14, 15, 15, 14, 14, 15, 15, 12, 
          12, 13, 13, 12, 12, 13, 13 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 5, 4, 7, 6, 1, 0, 3, 2, 15, 15, 14, 14, 15, 15, 14, 14, 13, 
          13, 12, 12, 13, 13, 12, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 6, 7, 4, 5, 2, 3, 0, 1, 14, 14, 15, 15, 14, 14, 15, 15, 12, 
          12, 13, 13, 12, 12, 13, 13 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 7, 6, 5, 4, 3, 2, 1, 0, 15, 15, 14, 14, 15, 15, 14, 14, 13, 
          13, 12, 12, 13, 13, 12, 12 ], 
      [ 12, 13, 12, 13, 15, 14, 15, 14, 12, 13, 12, 13, 15, 14, 15, 14, 0, 2, 8, 9, 8, 9, 1, 3, 5, 
          7, 10, 11, 10, 11, 4, 6 ], 
      [ 12, 13, 12, 13, 15, 14, 15, 14, 12, 13, 12, 13, 15, 14, 15, 14, 2, 0, 9, 8, 9, 8, 3, 1, 7, 
          5, 11, 10, 11, 10, 6, 4 ], 
      [ 12, 13, 12, 13, 15, 14, 15, 14, 13, 12, 13, 12, 14, 15, 14, 15, 8, 9, 0, 2, 1, 3, 8, 9, 
          10, 11, 5, 7, 4, 6, 10, 11 ], 
      [ 12, 13, 12, 13, 15, 14, 15, 14, 13, 12, 13, 12, 14, 15, 14, 15, 9, 8, 2, 0, 3, 1, 9, 8, 
          11, 10, 7, 5, 6, 4, 11, 10 ], 
      [ 13, 12, 13, 12, 14, 15, 14, 15, 12, 13, 12, 13, 15, 14, 15, 14, 8, 9, 1, 3, 0, 2, 8, 9, 
          10, 11, 4, 6, 5, 7, 10, 11 ], 
      [ 13, 12, 13, 12, 14, 15, 14, 15, 12, 13, 12, 13, 15, 14, 15, 14, 9, 8, 3, 1, 2, 0, 9, 8, 
          11, 10, 6, 4, 7, 5, 11, 10 ], 
      [ 13, 12, 13, 12, 14, 15, 14, 15, 13, 12, 13, 12, 14, 15, 14, 15, 1, 3, 8, 9, 8, 9, 0, 2, 4, 
          6, 10, 11, 10, 11, 5, 7 ], 
      [ 13, 12, 13, 12, 14, 15, 14, 15, 13, 12, 13, 12, 14, 15, 14, 15, 3, 1, 9, 8, 9, 8, 2, 0, 6, 
          4, 11, 10, 11, 10, 7, 5 ], 
      [ 15, 14, 15, 14, 12, 13, 12, 13, 15, 14, 15, 14, 12, 13, 12, 13, 5, 7, 10, 11, 10, 11, 4, 
          6, 0, 2, 8, 9, 8, 9, 1, 3 ], 
      [ 15, 14, 15, 14, 12, 13, 12, 13, 15, 14, 15, 14, 12, 13, 12, 13, 7, 5, 11, 10, 11, 10, 6, 
          4, 2, 0, 9, 8, 9, 8, 3, 1 ], 
      [ 15, 14, 15, 14, 12, 13, 12, 13, 14, 15, 14, 15, 13, 12, 13, 12, 10, 11, 5, 7, 4, 6, 10, 
          11, 8, 9, 0, 2, 1, 3, 8, 9 ], 
      [ 15, 14, 15, 14, 12, 13, 12, 13, 14, 15, 14, 15, 13, 12, 13, 12, 11, 10, 7, 5, 6, 4, 11, 
          10, 9, 8, 2, 0, 3, 1, 9, 8 ], 
      [ 14, 15, 14, 15, 13, 12, 13, 12, 15, 14, 15, 14, 12, 13, 12, 13, 10, 11, 4, 6, 5, 7, 10, 
          11, 8, 9, 1, 3, 0, 2, 8, 9 ], 
      [ 14, 15, 14, 15, 13, 12, 13, 12, 15, 14, 15, 14, 12, 13, 12, 13, 11, 10, 6, 4, 7, 5, 11, 
          10, 9, 8, 3, 1, 2, 0, 9, 8 ], 
      [ 14, 15, 14, 15, 13, 12, 13, 12, 14, 15, 14, 15, 13, 12, 13, 12, 4, 6, 10, 11, 10, 11, 5, 
          7, 1, 3, 8, 9, 8, 9, 0, 2 ], 
      [ 14, 15, 14, 15, 13, 12, 13, 12, 14, 15, 14, 15, 13, 12, 13, 12, 6, 4, 11, 10, 11, 10, 7, 
          5, 3, 1, 9, 8, 9, 8, 2, 0 ] ] )