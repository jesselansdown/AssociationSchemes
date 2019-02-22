rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -2, 2, -2, 2, -2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, -2, 2, -2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, -2, -2, 2, 2, 2 ], 
      [ 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, -2, -2, -2, -2, 2 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 13, 13, 10, 10, 11, 11 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 13, 13, 10, 10, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 10, 10, 12, 12, 11, 11, 13, 13, 6, 6, 8, 8, 7, 7, 9, 9 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 10, 10, 12, 12, 11, 11, 13, 13, 6, 6, 8, 8, 7, 7, 9, 9 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 12, 12, 10, 10, 13, 13, 11, 11, 7, 7, 9, 9, 6, 6, 8, 8 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 12, 12, 10, 10, 13, 13, 11, 11, 7, 7, 9, 9, 6, 6, 8, 8 ], 
      [ 6, 6, 7, 7, 11, 11, 13, 13, 0, 1, 2, 3, 10, 10, 12, 12, 8, 8, 4, 4, 9, 9, 5, 5 ], 
      [ 6, 6, 7, 7, 11, 11, 13, 13, 1, 0, 3, 2, 10, 10, 12, 12, 8, 8, 4, 4, 9, 9, 5, 5 ], 
      [ 7, 7, 6, 6, 13, 13, 11, 11, 3, 2, 0, 1, 12, 12, 10, 10, 9, 9, 5, 5, 8, 8, 4, 4 ], 
      [ 7, 7, 6, 6, 13, 13, 11, 11, 2, 3, 1, 0, 12, 12, 10, 10, 9, 9, 5, 5, 8, 8, 4, 4 ], 
      [ 8, 8, 9, 9, 10, 10, 12, 12, 11, 11, 13, 13, 0, 1, 2, 3, 4, 4, 6, 6, 5, 5, 7, 7 ], 
      [ 8, 8, 9, 9, 10, 10, 12, 12, 11, 11, 13, 13, 1, 0, 3, 2, 4, 4, 6, 6, 5, 5, 7, 7 ], 
      [ 9, 9, 8, 8, 12, 12, 10, 10, 13, 13, 11, 11, 3, 2, 0, 1, 5, 5, 7, 7, 4, 4, 6, 6 ], 
      [ 9, 9, 8, 8, 12, 12, 10, 10, 13, 13, 11, 11, 2, 3, 1, 0, 5, 5, 7, 7, 4, 4, 6, 6 ], 
      [ 11, 11, 13, 13, 6, 6, 7, 7, 8, 8, 9, 9, 4, 4, 5, 5, 0, 1, 10, 10, 2, 3, 12, 12 ], 
      [ 11, 11, 13, 13, 6, 6, 7, 7, 8, 8, 9, 9, 4, 4, 5, 5, 1, 0, 10, 10, 3, 2, 12, 12 ], 
      [ 10, 10, 12, 12, 8, 8, 9, 9, 4, 4, 5, 5, 6, 6, 7, 7, 11, 11, 0, 1, 13, 13, 2, 3 ], 
      [ 10, 10, 12, 12, 8, 8, 9, 9, 4, 4, 5, 5, 6, 6, 7, 7, 11, 11, 1, 0, 13, 13, 3, 2 ], 
      [ 13, 13, 11, 11, 7, 7, 6, 6, 9, 9, 8, 8, 5, 5, 4, 4, 3, 2, 12, 12, 0, 1, 10, 10 ], 
      [ 13, 13, 11, 11, 7, 7, 6, 6, 9, 9, 8, 8, 5, 5, 4, 4, 2, 3, 12, 12, 1, 0, 10, 10 ], 
      [ 12, 12, 10, 10, 9, 9, 8, 8, 5, 5, 4, 4, 7, 7, 6, 6, 13, 13, 3, 2, 11, 11, 0, 1 ], 
      [ 12, 12, 10, 10, 9, 9, 8, 8, 5, 5, 4, 4, 7, 7, 6, 6, 13, 13, 2, 3, 11, 11, 1, 0 ] ] )