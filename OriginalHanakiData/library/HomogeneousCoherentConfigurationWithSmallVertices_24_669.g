rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, 1 ], 
      [ 2, 2, 2, 2, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 2 ], 
      [ 3, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14 ], 
      [ 1, 0, 3, 2, 6, 8, 4, 10, 5, 11, 7, 9, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14 ], 
      [ 2, 3, 0, 1, 9, 10, 11, 8, 7, 4, 5, 6, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14 ], 
      [ 3, 2, 1, 0, 11, 7, 9, 5, 10, 6, 8, 4, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14 ], 
      [ 5, 7, 8, 10, 0, 4, 3, 9, 11, 1, 6, 2, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 12, 12 ], 
      [ 4, 9, 11, 6, 5, 0, 10, 1, 2, 7, 3, 8, 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 7, 5, 10, 8, 3, 11, 0, 6, 4, 2, 9, 1, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 12, 12 ], 
      [ 6, 11, 9, 4, 8, 1, 7, 0, 3, 10, 2, 5, 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 9, 4, 6, 11, 10, 2, 5, 3, 0, 8, 1, 7, 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 8, 10, 5, 7, 1, 6, 2, 11, 9, 0, 4, 3, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 12, 12 ], 
      [ 11, 6, 4, 9, 7, 3, 8, 2, 1, 5, 0, 10, 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 10, 8, 7, 5, 2, 9, 1, 4, 6, 3, 11, 0, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 12, 12 ], 
      [ 12, 12, 12, 12, 13, 14, 13, 14, 14, 13, 14, 13, 0, 1, 2, 3, 4, 6, 9, 11, 5, 7, 8, 10 ], 
      [ 12, 12, 12, 12, 13, 14, 13, 14, 14, 13, 14, 13, 1, 0, 3, 2, 6, 4, 11, 9, 8, 10, 5, 7 ], 
      [ 12, 12, 12, 12, 13, 14, 13, 14, 14, 13, 14, 13, 2, 3, 0, 1, 9, 11, 4, 6, 10, 8, 7, 5 ], 
      [ 12, 12, 12, 12, 13, 14, 13, 14, 14, 13, 14, 13, 3, 2, 1, 0, 11, 9, 6, 4, 7, 5, 10, 8 ], 
      [ 13, 13, 13, 13, 14, 12, 14, 12, 12, 14, 12, 14, 5, 7, 8, 10, 0, 3, 1, 2, 4, 9, 11, 6 ], 
      [ 13, 13, 13, 13, 14, 12, 14, 12, 12, 14, 12, 14, 7, 5, 10, 8, 3, 0, 2, 1, 11, 6, 4, 9 ], 
      [ 13, 13, 13, 13, 14, 12, 14, 12, 12, 14, 12, 14, 8, 10, 5, 7, 1, 2, 0, 3, 6, 11, 9, 4 ], 
      [ 13, 13, 13, 13, 14, 12, 14, 12, 12, 14, 12, 14, 10, 8, 7, 5, 2, 1, 3, 0, 9, 4, 6, 11 ], 
      [ 14, 14, 14, 14, 12, 13, 12, 13, 13, 12, 13, 12, 4, 9, 11, 6, 5, 10, 7, 8, 0, 1, 2, 3 ], 
      [ 14, 14, 14, 14, 12, 13, 12, 13, 13, 12, 13, 12, 6, 11, 9, 4, 8, 7, 10, 5, 1, 0, 3, 2 ], 
      [ 14, 14, 14, 14, 12, 13, 12, 13, 13, 12, 13, 12, 9, 4, 6, 11, 10, 5, 8, 7, 2, 3, 0, 1 ], 
      [ 14, 14, 14, 14, 12, 13, 12, 13, 13, 12, 13, 12, 11, 6, 4, 9, 7, 8, 5, 10, 3, 2, 1, 0 ] ] )