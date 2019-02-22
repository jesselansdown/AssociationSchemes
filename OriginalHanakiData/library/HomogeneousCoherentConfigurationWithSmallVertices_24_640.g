rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 1 ], 
      [ 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -6, 6, 1 ], 
      [ 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 6, -6, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -6, -6, 1 ], 
      [ 1, -1, -1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(3), E(3)^2, -E(3), -E(3)^2, -E(3), -E(3)^2, E(3), E(3)^2, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(3)^2, E(3), -E(3)^2, -E(3), -E(3)^2, -E(3), E(3)^2, E(3), 0, 0, 2 ], 
      [ 1, -1, 1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, E(3), E(3)^2, -E(3), -E(3)^2, 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), E(3)^2, E(3), -E(3)^2, -E(3), 0, 0, 2 ], 
      [ 1, 1, -1, -1, E(3), E(3)^2, E(3), E(3)^2, -E(3), -E(3)^2, -E(3), -E(3)^2, 0, 0, 2 ], 
      [ 1, 1, -1, -1, E(3)^2, E(3), E(3)^2, E(3), -E(3)^2, -E(3), -E(3)^2, -E(3), 0, 0, 2 ], 
      [ 1, 1, 1, 1, E(3), E(3)^2, E(3), E(3)^2, E(3), E(3)^2, E(3), E(3)^2, 0, 0, 2 ], 
      [ 1, 1, 1, 1, E(3)^2, E(3), E(3)^2, E(3), E(3)^2, E(3), E(3)^2, E(3), 0, 0, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 10, 11, 8, 9, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 8, 9, 10, 11, 4, 5, 6, 7, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 3, 2, 1, 0, 10, 11, 8, 9, 6, 7, 4, 5, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 5, 7, 9, 11, 0, 4, 1, 6, 2, 8, 3, 10, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 4, 6, 8, 10, 5, 0, 7, 1, 9, 2, 11, 3, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 7, 5, 11, 9, 1, 6, 0, 4, 3, 10, 2, 8, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 6, 4, 10, 8, 7, 1, 5, 0, 11, 3, 9, 2, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13 ], 
      [ 9, 11, 5, 7, 2, 8, 3, 10, 0, 4, 1, 6, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 8, 10, 4, 6, 9, 2, 11, 3, 5, 0, 7, 1, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 11, 9, 7, 5, 3, 10, 2, 8, 1, 6, 0, 4, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 10, 8, 6, 4, 11, 3, 9, 2, 7, 1, 5, 0, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12 ], 
      [ 12, 12, 13, 13, 12, 12, 12, 12, 13, 13, 13, 13, 0, 1, 4, 5, 6, 7, 2, 3, 8, 9, 10, 11 ], 
      [ 12, 12, 13, 13, 12, 12, 12, 12, 13, 13, 13, 13, 1, 0, 6, 7, 4, 5, 3, 2, 10, 11, 8, 9 ], 
      [ 12, 12, 13, 13, 12, 12, 12, 12, 13, 13, 13, 13, 5, 7, 0, 4, 1, 6, 9, 11, 2, 8, 3, 10 ], 
      [ 12, 12, 13, 13, 12, 12, 12, 12, 13, 13, 13, 13, 4, 6, 5, 0, 7, 1, 8, 10, 9, 2, 11, 3 ], 
      [ 12, 12, 13, 13, 12, 12, 12, 12, 13, 13, 13, 13, 7, 5, 1, 6, 0, 4, 11, 9, 3, 10, 2, 8 ], 
      [ 12, 12, 13, 13, 12, 12, 12, 12, 13, 13, 13, 13, 6, 4, 7, 1, 5, 0, 10, 8, 11, 3, 9, 2 ], 
      [ 13, 13, 12, 12, 13, 13, 13, 13, 12, 12, 12, 12, 2, 3, 8, 9, 10, 11, 0, 1, 4, 5, 6, 7 ], 
      [ 13, 13, 12, 12, 13, 13, 13, 13, 12, 12, 12, 12, 3, 2, 10, 11, 8, 9, 1, 0, 6, 7, 4, 5 ], 
      [ 13, 13, 12, 12, 13, 13, 13, 13, 12, 12, 12, 12, 9, 11, 2, 8, 3, 10, 5, 7, 0, 4, 1, 6 ], 
      [ 13, 13, 12, 12, 13, 13, 13, 13, 12, 12, 12, 12, 8, 10, 9, 2, 11, 3, 4, 6, 5, 0, 7, 1 ], 
      [ 13, 13, 12, 12, 13, 13, 13, 13, 12, 12, 12, 12, 11, 9, 3, 10, 2, 8, 7, 5, 1, 6, 0, 4 ], 
      [ 13, 13, 12, 12, 13, 13, 13, 13, 12, 12, 12, 12, 10, 8, 11, 3, 9, 2, 6, 4, 7, 1, 5, 0 ] ] )