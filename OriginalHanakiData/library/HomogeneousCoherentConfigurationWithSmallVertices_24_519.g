rec(
  ct := 
   [ [ 1, 1, 1, 1, 1, 1, 2, 2, 2, 6, 6, 1 ], [ 1, 1, 1, 1, 1, 1, -2, -2, -2, 6*E(4), -6*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, -2, -2, -2, -6*E(4), 6*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 2, 2, 2, -6, -6, 1 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, -2, -2*E(3)^2, -2*E(3), 0, 0, 2 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 2, 2*E(3)^2, 2*E(3), 0, 0, 2 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), -2, -2*E(3), -2*E(3)^2, 0, 0, 2 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 2, 2*E(3), 2*E(3)^2, 0, 0, 2 ], 
      [ 1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 0, 0, 0, 0, 0, 4 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10 ], 
      [ 1, 0, 4, 5, 2, 3, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10 ], 
      [ 3, 5, 0, 2, 1, 4, 7, 7, 8, 8, 6, 6, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10 ], 
      [ 2, 4, 3, 0, 5, 1, 8, 8, 6, 6, 7, 7, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10 ], 
      [ 5, 3, 1, 4, 0, 2, 7, 7, 8, 8, 6, 6, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10 ], 
      [ 4, 2, 5, 1, 3, 0, 8, 8, 6, 6, 7, 7, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10 ], 
      [ 6, 6, 8, 7, 8, 7, 0, 1, 3, 5, 2, 4, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9 ], 
      [ 6, 6, 8, 7, 8, 7, 1, 0, 5, 3, 4, 2, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9 ], 
      [ 8, 8, 7, 6, 7, 6, 2, 4, 0, 1, 3, 5, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9 ], 
      [ 8, 8, 7, 6, 7, 6, 4, 2, 1, 0, 5, 3, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9 ], 
      [ 7, 7, 6, 8, 6, 8, 3, 5, 2, 4, 0, 1, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9 ], 
      [ 7, 7, 6, 8, 6, 8, 5, 3, 4, 2, 1, 0, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9 ], 
      [ 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 0, 1, 2, 3, 4, 5, 6, 6, 7, 7, 8, 8 ], 
      [ 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 1, 0, 4, 5, 2, 3, 6, 6, 7, 7, 8, 8 ], 
      [ 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 3, 5, 0, 2, 1, 4, 7, 7, 8, 8, 6, 6 ], 
      [ 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 2, 4, 3, 0, 5, 1, 8, 8, 6, 6, 7, 7 ], 
      [ 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 5, 3, 1, 4, 0, 2, 7, 7, 8, 8, 6, 6 ], 
      [ 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 4, 2, 5, 1, 3, 0, 8, 8, 6, 6, 7, 7 ], 
      [ 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 6, 6, 8, 7, 8, 7, 0, 1, 3, 5, 2, 4 ], 
      [ 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 6, 6, 8, 7, 8, 7, 1, 0, 5, 3, 4, 2 ], 
      [ 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 8, 8, 7, 6, 7, 6, 2, 4, 0, 1, 3, 5 ], 
      [ 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 8, 8, 7, 6, 7, 6, 4, 2, 1, 0, 5, 3 ], 
      [ 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 7, 7, 6, 8, 6, 8, 3, 5, 2, 4, 0, 1 ], 
      [ 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 7, 7, 6, 8, 6, 8, 5, 3, 4, 2, 1, 0 ] ] )