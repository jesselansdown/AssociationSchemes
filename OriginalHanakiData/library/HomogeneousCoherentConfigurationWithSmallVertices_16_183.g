rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 1 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8 ], 
      [ 5, 5, 4, 4, 0, 1, 2, 3, 8, 8, 9, 9, 7, 7, 6, 6 ], 
      [ 5, 5, 4, 4, 1, 0, 3, 2, 8, 8, 9, 9, 7, 7, 6, 6 ], 
      [ 4, 4, 5, 5, 3, 2, 0, 1, 9, 9, 8, 8, 6, 6, 7, 7 ], 
      [ 4, 4, 5, 5, 2, 3, 1, 0, 9, 9, 8, 8, 6, 6, 7, 7 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 0, 1, 2, 3, 4, 4, 5, 5 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 1, 0, 3, 2, 4, 4, 5, 5 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 3, 2, 0, 1, 5, 5, 4, 4 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 2, 3, 1, 0, 5, 5, 4, 4 ], 
      [ 9, 9, 8, 8, 6, 6, 7, 7, 5, 5, 4, 4, 0, 1, 2, 3 ], 
      [ 9, 9, 8, 8, 6, 6, 7, 7, 5, 5, 4, 4, 1, 0, 3, 2 ], 
      [ 8, 8, 9, 9, 7, 7, 6, 6, 4, 4, 5, 5, 3, 2, 0, 1 ], 
      [ 8, 8, 9, 9, 7, 7, 6, 6, 4, 4, 5, 5, 2, 3, 1, 0 ] ] )