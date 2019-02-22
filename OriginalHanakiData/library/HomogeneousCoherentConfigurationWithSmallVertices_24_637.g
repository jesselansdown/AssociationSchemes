rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 1 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 1, 1, -1, -1, -6, 6, 1 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 1, 1, -1, -1, 6, -6, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -6, -6, 1 ], 
      [ 1, -1, -1, 1, -1, 1, -1, 1, 1, 1, -1, -1, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 4 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 2, 3, 0, 1, 8, 10, 9, 11, 4, 6, 5, 7, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 10, 8, 11, 9, 5, 7, 4, 6, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 4, 5, 9, 11, 0, 1, 8, 10, 6, 2, 7, 3, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 5, 4, 11, 9, 1, 0, 10, 8, 7, 3, 6, 2, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 6, 7, 8, 10, 9, 11, 0, 1, 2, 4, 3, 5, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 7, 6, 10, 8, 11, 9, 1, 0, 3, 5, 2, 4, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 9, 11, 4, 5, 6, 7, 2, 3, 0, 8, 1, 10, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 8, 10, 6, 7, 2, 3, 4, 5, 9, 0, 11, 1, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 11, 9, 5, 4, 7, 6, 3, 2, 1, 10, 0, 8, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 10, 8, 7, 6, 3, 2, 5, 4, 11, 1, 9, 0, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 12, 12, 13, 13, 0, 2, 4, 6, 8, 9, 1, 3, 5, 7, 10, 11 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 12, 12, 13, 13, 2, 0, 8, 9, 4, 6, 3, 1, 10, 11, 5, 7 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 12, 12, 13, 13, 4, 9, 0, 8, 6, 2, 5, 11, 1, 10, 7, 3 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 12, 12, 13, 13, 6, 8, 9, 0, 2, 4, 7, 10, 11, 1, 3, 5 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 12, 12, 13, 13, 9, 4, 6, 2, 0, 8, 11, 5, 7, 3, 1, 10 ], 
      [ 12, 13, 12, 13, 12, 13, 12, 13, 12, 12, 13, 13, 8, 6, 2, 4, 9, 0, 10, 7, 3, 5, 11, 1 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 13, 13, 12, 12, 1, 3, 5, 7, 10, 11, 0, 2, 4, 6, 8, 9 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 13, 13, 12, 12, 3, 1, 10, 11, 5, 7, 2, 0, 8, 9, 4, 6 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 13, 13, 12, 12, 5, 11, 1, 10, 7, 3, 4, 9, 0, 8, 6, 2 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 13, 13, 12, 12, 7, 10, 11, 1, 3, 5, 6, 8, 9, 0, 2, 4 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 13, 13, 12, 12, 11, 5, 7, 3, 1, 10, 9, 4, 6, 2, 0, 8 ], 
      [ 13, 12, 13, 12, 13, 12, 13, 12, 13, 13, 12, 12, 10, 7, 3, 5, 11, 1, 8, 6, 2, 4, 9, 0 ] ] )