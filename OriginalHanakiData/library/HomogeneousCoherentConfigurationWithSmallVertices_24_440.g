rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 6, 6, 1 ], [ 1, 1, -1, -1, -2, -2, 2, 2, -6*E(4), 6*E(4), 1 ], 
      [ 1, 1, -1, -1, -2, -2, 2, 2, 6*E(4), -6*E(4), 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, -6, -6, 1 ], 
      [ 2, 2, 0, 0, 0, 0, -2, -2, 0, 0, 4 ], [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, 6 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, 6 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 3, 2, 0, 1, 6, 6, 7, 7, 4, 4, 5, 5, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 2, 3, 1, 0, 6, 6, 7, 7, 4, 4, 5, 5, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 4, 4, 7, 7, 0, 1, 6, 6, 5, 5, 2, 3, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 4, 4, 7, 7, 1, 0, 6, 6, 5, 5, 3, 2, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 5, 5, 6, 6, 7, 7, 0, 1, 2, 3, 4, 4, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 5, 5, 6, 6, 7, 7, 1, 0, 3, 2, 4, 4, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 7, 7, 4, 4, 5, 5, 3, 2, 0, 1, 6, 6, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 7, 7, 4, 4, 5, 5, 2, 3, 1, 0, 6, 6, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 6, 6, 5, 5, 3, 2, 4, 4, 7, 7, 0, 1, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 6, 6, 5, 5, 2, 3, 4, 4, 7, 7, 1, 0, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 9, 9, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 0, 1, 6, 6, 7, 7, 2, 3, 4, 4, 5, 5 ], 
      [ 9, 9, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 1, 0, 6, 6, 7, 7, 3, 2, 4, 4, 5, 5 ], 
      [ 9, 9, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 7, 7, 0, 1, 6, 6, 4, 4, 5, 5, 2, 3 ], 
      [ 9, 9, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 7, 7, 1, 0, 6, 6, 4, 4, 5, 5, 3, 2 ], 
      [ 9, 9, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 6, 6, 7, 7, 0, 1, 5, 5, 2, 3, 4, 4 ], 
      [ 9, 9, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 6, 6, 7, 7, 1, 0, 5, 5, 3, 2, 4, 4 ], 
      [ 8, 8, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 3, 2, 4, 4, 5, 5, 0, 1, 6, 6, 7, 7 ], 
      [ 8, 8, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 2, 3, 4, 4, 5, 5, 1, 0, 6, 6, 7, 7 ], 
      [ 8, 8, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 4, 4, 5, 5, 3, 2, 7, 7, 0, 1, 6, 6 ], 
      [ 8, 8, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 4, 4, 5, 5, 2, 3, 7, 7, 1, 0, 6, 6 ], 
      [ 8, 8, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 5, 5, 3, 2, 4, 4, 6, 6, 7, 7, 0, 1 ], 
      [ 8, 8, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 5, 5, 2, 3, 4, 4, 6, 6, 7, 7, 1, 0 ] ] )