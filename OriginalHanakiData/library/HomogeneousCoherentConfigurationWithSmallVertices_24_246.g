rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 8, 8, 1 ], [ 1, 1, 1, 1, 2, 2, 8*E(3), 8*E(3)^2, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 8*E(3)^2, 8*E(3), 1 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 3 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 3 ], [ 1, 1, 1, 1, -2, -2, 0, 0, 3 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 6 ], [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 6 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 3, 2, 0, 1, 5, 5, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 2, 3, 1, 0, 5, 5, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 4, 4, 5, 5, 0, 1, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 4, 4, 5, 5, 1, 0, 3, 2, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 4, 4, 3, 2, 0, 1, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 4, 4, 2, 3, 1, 0, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 0, 1, 2, 3, 4, 4, 5, 5 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 1, 0, 3, 2, 4, 4, 5, 5 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 3, 2, 0, 1, 5, 5, 4, 4 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 2, 3, 1, 0, 5, 5, 4, 4 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 4, 4, 5, 5, 0, 1, 2, 3 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 4, 4, 5, 5, 1, 0, 3, 2 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 4, 4, 3, 2, 0, 1 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 4, 4, 2, 3, 1, 0 ] ] )