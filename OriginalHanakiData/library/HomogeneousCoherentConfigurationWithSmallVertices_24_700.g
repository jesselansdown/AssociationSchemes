rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, 2, -2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2, -2, 2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 2, 2, 2 ], 
      [ 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, -2, -2, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 3 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 3 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 12, 14, 14, 13, 13, 15, 15, 8, 8, 10, 10, 9, 9, 11, 11 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 12, 12, 14, 14, 13, 13, 15, 15, 8, 8, 10, 10, 9, 9, 11, 11 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 14, 14, 12, 12, 15, 15, 13, 13, 9, 9, 11, 11, 8, 8, 10, 10 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 14, 14, 12, 12, 15, 15, 13, 13, 9, 9, 11, 11, 8, 8, 10, 10 ], 
      [ 8, 8, 9, 9, 13, 13, 15, 15, 0, 1, 2, 3, 12, 12, 14, 14, 10, 10, 4, 5, 11, 11, 6, 7 ], 
      [ 8, 8, 9, 9, 13, 13, 15, 15, 1, 0, 3, 2, 12, 12, 14, 14, 10, 10, 5, 4, 11, 11, 7, 6 ], 
      [ 9, 9, 8, 8, 15, 15, 13, 13, 2, 3, 0, 1, 14, 14, 12, 12, 11, 11, 6, 7, 10, 10, 4, 5 ], 
      [ 9, 9, 8, 8, 15, 15, 13, 13, 3, 2, 1, 0, 14, 14, 12, 12, 11, 11, 7, 6, 10, 10, 5, 4 ], 
      [ 10, 10, 11, 11, 12, 12, 14, 14, 13, 13, 15, 15, 0, 1, 2, 3, 4, 5, 8, 8, 6, 7, 9, 9 ], 
      [ 10, 10, 11, 11, 12, 12, 14, 14, 13, 13, 15, 15, 1, 0, 3, 2, 5, 4, 8, 8, 7, 6, 9, 9 ], 
      [ 11, 11, 10, 10, 14, 14, 12, 12, 15, 15, 13, 13, 2, 3, 0, 1, 6, 7, 9, 9, 4, 5, 8, 8 ], 
      [ 11, 11, 10, 10, 14, 14, 12, 12, 15, 15, 13, 13, 3, 2, 1, 0, 7, 6, 9, 9, 5, 4, 8, 8 ], 
      [ 13, 13, 15, 15, 8, 8, 9, 9, 10, 10, 11, 11, 4, 5, 6, 7, 0, 1, 12, 12, 2, 3, 14, 14 ], 
      [ 13, 13, 15, 15, 8, 8, 9, 9, 10, 10, 11, 11, 5, 4, 7, 6, 1, 0, 12, 12, 3, 2, 14, 14 ], 
      [ 12, 12, 14, 14, 10, 10, 11, 11, 4, 5, 6, 7, 8, 8, 9, 9, 13, 13, 0, 1, 15, 15, 2, 3 ], 
      [ 12, 12, 14, 14, 10, 10, 11, 11, 5, 4, 7, 6, 8, 8, 9, 9, 13, 13, 1, 0, 15, 15, 3, 2 ], 
      [ 15, 15, 13, 13, 9, 9, 8, 8, 11, 11, 10, 10, 6, 7, 4, 5, 2, 3, 14, 14, 0, 1, 12, 12 ], 
      [ 15, 15, 13, 13, 9, 9, 8, 8, 11, 11, 10, 10, 7, 6, 5, 4, 3, 2, 14, 14, 1, 0, 12, 12 ], 
      [ 14, 14, 12, 12, 11, 11, 10, 10, 6, 7, 4, 5, 9, 9, 8, 8, 15, 15, 2, 3, 13, 13, 0, 1 ], 
      [ 14, 14, 12, 12, 11, 11, 10, 10, 7, 6, 5, 4, 9, 9, 8, 8, 15, 15, 3, 2, 13, 13, 1, 0 ] ] )