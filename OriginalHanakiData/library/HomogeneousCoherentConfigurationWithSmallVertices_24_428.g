rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 3, 3, 6, 6, 1 ], [ 1, 1, 1, 1, 1, 1, -3, -3, -6, 6, 1 ], 
      [ 1, 1, 1, 1, 1, 1, -3, -3, 6, -6, 1 ], [ 1, 1, 1, 1, 1, 1, 3, 3, -6, -6, 1 ], 
      [ 1, -1, 1, 1, -1, -1, 3*E(4), -3*E(4), 0, 0, 2 ], 
      [ 1, -1, 1, 1, -1, -1, -3*E(4), 3*E(4), 0, 0, 2 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 0, 0, 0, 0, 4 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 0, 0, 0, 0, 4 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 0, 0, 0, 0, 4 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 1, 0, 4, 5, 2, 3, 7, 7, 7, 6, 6, 6, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 3, 5, 0, 2, 1, 4, 6, 6, 6, 7, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 2, 4, 3, 0, 5, 1, 6, 6, 6, 7, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 5, 3, 1, 4, 0, 2, 7, 7, 7, 6, 6, 6, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 4, 2, 5, 1, 3, 0, 7, 7, 7, 6, 6, 6, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 7, 6, 7, 7, 6, 6, 0, 2, 3, 1, 4, 5, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 7, 6, 7, 7, 6, 6, 3, 0, 2, 5, 1, 4, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 7, 6, 7, 7, 6, 6, 2, 3, 0, 4, 5, 1, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 6, 7, 6, 6, 7, 7, 1, 4, 5, 0, 2, 3, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 6, 7, 6, 6, 7, 7, 5, 1, 4, 3, 0, 2, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 6, 7, 6, 6, 7, 7, 4, 5, 1, 2, 3, 0, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 0, 1, 2, 3, 4, 5, 6, 6, 6, 7, 7, 7 ], 
      [ 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 1, 0, 4, 5, 2, 3, 7, 7, 7, 6, 6, 6 ], 
      [ 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 3, 5, 0, 2, 1, 4, 6, 6, 6, 7, 7, 7 ], 
      [ 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 2, 4, 3, 0, 5, 1, 6, 6, 6, 7, 7, 7 ], 
      [ 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 5, 3, 1, 4, 0, 2, 7, 7, 7, 6, 6, 6 ], 
      [ 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 4, 2, 5, 1, 3, 0, 7, 7, 7, 6, 6, 6 ], 
      [ 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 7, 6, 7, 7, 6, 6, 0, 2, 3, 1, 4, 5 ], 
      [ 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 7, 6, 7, 7, 6, 6, 3, 0, 2, 5, 1, 4 ], 
      [ 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 7, 6, 7, 7, 6, 6, 2, 3, 0, 4, 5, 1 ], 
      [ 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 6, 7, 6, 6, 7, 7, 1, 4, 5, 0, 2, 3 ], 
      [ 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 6, 7, 6, 6, 7, 7, 5, 1, 4, 3, 0, 2 ], 
      [ 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 6, 7, 6, 6, 7, 7, 4, 5, 1, 2, 3, 0 ] ] )