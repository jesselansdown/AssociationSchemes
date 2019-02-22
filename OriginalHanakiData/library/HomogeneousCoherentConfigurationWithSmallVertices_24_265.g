rec(
  ct := [ [ 1, 1, 1, 3, 3, 3, 6, 6, 1 ], [ 1, 1, 1, 3, -3, -3, -6, 6, 1 ], 
      [ 1, 1, 1, 3, -3, -3, 6, -6, 1 ], [ 1, 1, 1, 3, 3, 3, -6, -6, 1 ], 
      [ 1, 1, 1, -3, 3*E(4), -3*E(4), 0, 0, 2 ], [ 1, 1, 1, -3, -3*E(4), 3*E(4), 0, 0, 2 ], 
      [ 1, E(3), E(3)^2, 0, 0, 0, 0, 0, 8 ], [ 1, E(3)^2, E(3), 0, 0, 0, 0, 0, 8 ] ],
  matrix := [ [ 0, 1, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 2, 0, 1, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 1, 2, 0, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 3, 3, 3, 0, 1, 2, 5, 5, 5, 4, 4, 4, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 3, 3, 3, 2, 0, 1, 5, 5, 5, 4, 4, 4, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 3, 3, 3, 1, 2, 0, 5, 5, 5, 4, 4, 4, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 5, 5, 5, 4, 4, 4, 0, 1, 2, 3, 3, 3, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], 
      [ 5, 5, 5, 4, 4, 4, 2, 0, 1, 3, 3, 3, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], 
      [ 5, 5, 5, 4, 4, 4, 1, 2, 0, 3, 3, 3, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], 
      [ 4, 4, 4, 5, 5, 5, 3, 3, 3, 0, 1, 2, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], 
      [ 4, 4, 4, 5, 5, 5, 3, 3, 3, 2, 0, 1, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], 
      [ 4, 4, 4, 5, 5, 5, 3, 3, 3, 1, 2, 0, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], 
      [ 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 0, 1, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5 ], 
      [ 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 2, 0, 1, 3, 3, 3, 4, 4, 4, 5, 5, 5 ], 
      [ 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 1, 2, 0, 3, 3, 3, 4, 4, 4, 5, 5, 5 ], 
      [ 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 3, 3, 3, 0, 1, 2, 5, 5, 5, 4, 4, 4 ], 
      [ 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 3, 3, 3, 2, 0, 1, 5, 5, 5, 4, 4, 4 ], 
      [ 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 3, 3, 3, 1, 2, 0, 5, 5, 5, 4, 4, 4 ], 
      [ 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 0, 1, 2, 3, 3, 3 ], 
      [ 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 2, 0, 1, 3, 3, 3 ], 
      [ 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 1, 2, 0, 3, 3, 3 ], 
      [ 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 4, 4, 4, 5, 5, 5, 3, 3, 3, 0, 1, 2 ], 
      [ 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 4, 4, 4, 5, 5, 5, 3, 3, 3, 2, 0, 1 ], 
      [ 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 4, 4, 4, 5, 5, 5, 3, 3, 3, 1, 2, 0 ] ] )