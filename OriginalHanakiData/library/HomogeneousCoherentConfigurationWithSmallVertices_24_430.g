rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 4, 8, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, -4, -8, 1 ], 
      [ 1, -1, -1, 1, 2, -2, -2, 2, 0, 0, 2 ], [ 1, -1, 1, -1, 2, -2, 2, -2, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, 2, -2, -2, 0, 0, 2 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -4, 4, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 4, -4, 2 ], [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 4 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 4 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 4 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 1, 0, 3, 2, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 2, 3, 0, 1, 6, 6, 7, 7, 4, 4, 5, 5, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 3, 2, 1, 0, 7, 7, 6, 6, 5, 5, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 4, 5, 6, 7, 0, 4, 1, 5, 2, 6, 3, 7, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 4, 5, 6, 7, 4, 0, 5, 1, 6, 2, 7, 3, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 5, 4, 7, 6, 1, 5, 0, 4, 3, 7, 2, 6, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 5, 4, 7, 6, 5, 1, 4, 0, 7, 3, 6, 2, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 6, 7, 4, 5, 2, 6, 3, 7, 0, 4, 1, 5, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 6, 7, 4, 5, 6, 2, 7, 3, 4, 0, 5, 1, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 7, 6, 5, 4, 3, 7, 2, 6, 1, 5, 0, 4, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 7, 6, 5, 4, 7, 3, 6, 2, 5, 1, 4, 0, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 0, 1, 2, 3, 4, 5, 6, 7, 4, 5, 6, 7 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 1, 0, 3, 2, 5, 4, 7, 6, 5, 4, 7, 6 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 2, 3, 0, 1, 6, 7, 4, 5, 6, 7, 4, 5 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 3, 2, 1, 0, 7, 6, 5, 4, 7, 6, 5, 4 ], 
      [ 9, 9, 9, 9, 8, 9, 8, 9, 8, 9, 8, 9, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7 ], 
      [ 9, 9, 9, 9, 8, 9, 8, 9, 8, 9, 8, 9, 5, 4, 7, 6, 1, 0, 3, 2, 5, 4, 7, 6 ], 
      [ 9, 9, 9, 9, 8, 9, 8, 9, 8, 9, 8, 9, 6, 7, 4, 5, 2, 3, 0, 1, 6, 7, 4, 5 ], 
      [ 9, 9, 9, 9, 8, 9, 8, 9, 8, 9, 8, 9, 7, 6, 5, 4, 3, 2, 1, 0, 7, 6, 5, 4 ], 
      [ 9, 9, 9, 9, 9, 8, 9, 8, 9, 8, 9, 8, 4, 5, 6, 7, 4, 5, 6, 7, 0, 1, 2, 3 ], 
      [ 9, 9, 9, 9, 9, 8, 9, 8, 9, 8, 9, 8, 5, 4, 7, 6, 5, 4, 7, 6, 1, 0, 3, 2 ], 
      [ 9, 9, 9, 9, 9, 8, 9, 8, 9, 8, 9, 8, 6, 7, 4, 5, 6, 7, 4, 5, 2, 3, 0, 1 ], 
      [ 9, 9, 9, 9, 9, 8, 9, 8, 9, 8, 9, 8, 7, 6, 5, 4, 7, 6, 5, 4, 3, 2, 1, 0 ] ] )