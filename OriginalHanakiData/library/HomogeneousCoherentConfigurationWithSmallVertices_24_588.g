rec(
  ct := 
   [ [ 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 1 ], [ 1, -1, 1, 1, -1, -1, 3, -3, 3, 3, -3, -3, 1 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 3, -3, 3*E(3)^2, 3*E(3), -3*E(3)^2, -3*E(3), 1 ], 
      [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 3, -3, 3*E(3), 3*E(3)^2, -3*E(3), -3*E(3)^2, 1 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 3, 3, 3*E(3)^2, 3*E(3), 3*E(3)^2, 3*E(3), 1 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 3, 3, 3*E(3), 3*E(3)^2, 3*E(3), 3*E(3)^2, 1 ], 
      [ 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 3 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, -1, 1, -E(3)^2, -E(3), E(3)^2, E(3), 3 ], 
      [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), -1, 1, -E(3), -E(3)^2, E(3), E(3)^2, 3 ], 
      [ 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, 3 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, -1, -1, -E(3)^2, -E(3), -E(3)^2, -E(3), 3 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), -1, -1, -E(3), -E(3)^2, -E(3), -E(3)^2, 3 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11 ], 
      [ 1, 0, 4, 5, 2, 3, 7, 7, 7, 6, 6, 6, 10, 10, 10, 11, 11, 11, 8, 8, 8, 9, 9, 9 ], 
      [ 3, 5, 0, 2, 1, 4, 8, 8, 8, 10, 10, 10, 9, 9, 9, 6, 6, 6, 11, 11, 11, 7, 7, 7 ], 
      [ 2, 4, 3, 0, 5, 1, 9, 9, 9, 11, 11, 11, 6, 6, 6, 8, 8, 8, 7, 7, 7, 10, 10, 10 ], 
      [ 5, 3, 1, 4, 0, 2, 10, 10, 10, 8, 8, 8, 11, 11, 11, 7, 7, 7, 9, 9, 9, 6, 6, 6 ], 
      [ 4, 2, 5, 1, 3, 0, 11, 11, 11, 9, 9, 9, 7, 7, 7, 10, 10, 10, 6, 6, 6, 8, 8, 8 ], 
      [ 6, 7, 9, 8, 11, 10, 0, 6, 6, 1, 7, 7, 3, 8, 8, 2, 9, 9, 5, 10, 10, 4, 11, 11 ], 
      [ 6, 7, 9, 8, 11, 10, 6, 0, 6, 7, 1, 7, 8, 3, 8, 9, 2, 9, 10, 5, 10, 11, 4, 11 ], 
      [ 6, 7, 9, 8, 11, 10, 6, 6, 0, 7, 7, 1, 8, 8, 3, 9, 9, 2, 10, 10, 5, 11, 11, 4 ], 
      [ 7, 6, 11, 10, 9, 8, 1, 7, 7, 0, 6, 6, 5, 10, 10, 4, 11, 11, 3, 8, 8, 2, 9, 9 ], 
      [ 7, 6, 11, 10, 9, 8, 7, 1, 7, 6, 0, 6, 10, 5, 10, 11, 4, 11, 8, 3, 8, 9, 2, 9 ], 
      [ 7, 6, 11, 10, 9, 8, 7, 7, 1, 6, 6, 0, 10, 10, 5, 11, 11, 4, 8, 8, 3, 9, 9, 2 ], 
      [ 9, 11, 8, 6, 10, 7, 2, 9, 9, 4, 11, 11, 0, 6, 6, 3, 8, 8, 1, 7, 7, 5, 10, 10 ], 
      [ 9, 11, 8, 6, 10, 7, 9, 2, 9, 11, 4, 11, 6, 0, 6, 8, 3, 8, 7, 1, 7, 10, 5, 10 ], 
      [ 9, 11, 8, 6, 10, 7, 9, 9, 2, 11, 11, 4, 6, 6, 0, 8, 8, 3, 7, 7, 1, 10, 10, 5 ], 
      [ 8, 10, 6, 9, 7, 11, 3, 8, 8, 5, 10, 10, 2, 9, 9, 0, 6, 6, 4, 11, 11, 1, 7, 7 ], 
      [ 8, 10, 6, 9, 7, 11, 8, 3, 8, 10, 5, 10, 9, 2, 9, 6, 0, 6, 11, 4, 11, 7, 1, 7 ], 
      [ 8, 10, 6, 9, 7, 11, 8, 8, 3, 10, 10, 5, 9, 9, 2, 6, 6, 0, 11, 11, 4, 7, 7, 1 ], 
      [ 11, 9, 10, 7, 8, 6, 4, 11, 11, 2, 9, 9, 1, 7, 7, 5, 10, 10, 0, 6, 6, 3, 8, 8 ], 
      [ 11, 9, 10, 7, 8, 6, 11, 4, 11, 9, 2, 9, 7, 1, 7, 10, 5, 10, 6, 0, 6, 8, 3, 8 ], 
      [ 11, 9, 10, 7, 8, 6, 11, 11, 4, 9, 9, 2, 7, 7, 1, 10, 10, 5, 6, 6, 0, 8, 8, 3 ], 
      [ 10, 8, 7, 11, 6, 9, 5, 10, 10, 3, 8, 8, 4, 11, 11, 1, 7, 7, 2, 9, 9, 0, 6, 6 ], 
      [ 10, 8, 7, 11, 6, 9, 10, 5, 10, 8, 3, 8, 11, 4, 11, 7, 1, 7, 9, 2, 9, 6, 0, 6 ], 
      [ 10, 8, 7, 11, 6, 9, 10, 10, 5, 8, 8, 3, 11, 11, 4, 7, 7, 1, 9, 9, 2, 6, 6, 0 ] ] )