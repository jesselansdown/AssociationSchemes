rec(
  ct := 
   [ [ 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 1 ], [ 1, -1, 1, 1, -1, -1, -3, 3, -3, 3, 3, -3, 1 ], 
      [ 1, -1, 1, 1, -1, -1, -3, 3, 3, -3, -3, 3, 1 ], 
      [ 1, -1, 1, 1, -1, -1, 3, -3, -3, 3, -3, 3, 1 ], 
      [ 1, -1, 1, 1, -1, -1, 3, -3, 3, -3, 3, -3, 1 ], 
      [ 1, 1, 1, 1, 1, 1, -3, -3, -3, -3, 3, 3, 1 ], [ 1, 1, 1, 1, 1, 1, -3, -3, 3, 3, -3, -3, 1 ],
      [ 1, 1, 1, 1, 1, 1, 3, 3, -3, -3, -3, -3, 1 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11 ], 
      [ 1, 0, 4, 5, 2, 3, 7, 7, 7, 6, 6, 6, 9, 9, 9, 8, 8, 8, 11, 11, 11, 10, 10, 10 ], 
      [ 3, 5, 0, 2, 1, 4, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11 ], 
      [ 2, 4, 3, 0, 5, 1, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11 ], 
      [ 5, 3, 1, 4, 0, 2, 7, 7, 7, 6, 6, 6, 9, 9, 9, 8, 8, 8, 11, 11, 11, 10, 10, 10 ], 
      [ 4, 2, 5, 1, 3, 0, 7, 7, 7, 6, 6, 6, 9, 9, 9, 8, 8, 8, 11, 11, 11, 10, 10, 10 ], 
      [ 6, 7, 6, 6, 7, 7, 0, 2, 3, 1, 4, 5, 10, 10, 10, 11, 11, 11, 8, 8, 8, 9, 9, 9 ], 
      [ 6, 7, 6, 6, 7, 7, 3, 0, 2, 5, 1, 4, 10, 10, 10, 11, 11, 11, 8, 8, 8, 9, 9, 9 ], 
      [ 6, 7, 6, 6, 7, 7, 2, 3, 0, 4, 5, 1, 10, 10, 10, 11, 11, 11, 8, 8, 8, 9, 9, 9 ], 
      [ 7, 6, 7, 7, 6, 6, 1, 4, 5, 0, 2, 3, 11, 11, 11, 10, 10, 10, 9, 9, 9, 8, 8, 8 ], 
      [ 7, 6, 7, 7, 6, 6, 5, 1, 4, 3, 0, 2, 11, 11, 11, 10, 10, 10, 9, 9, 9, 8, 8, 8 ], 
      [ 7, 6, 7, 7, 6, 6, 4, 5, 1, 2, 3, 0, 11, 11, 11, 10, 10, 10, 9, 9, 9, 8, 8, 8 ], 
      [ 8, 9, 8, 8, 9, 9, 10, 10, 10, 11, 11, 11, 0, 2, 3, 1, 4, 5, 6, 6, 6, 7, 7, 7 ], 
      [ 8, 9, 8, 8, 9, 9, 10, 10, 10, 11, 11, 11, 3, 0, 2, 5, 1, 4, 6, 6, 6, 7, 7, 7 ], 
      [ 8, 9, 8, 8, 9, 9, 10, 10, 10, 11, 11, 11, 2, 3, 0, 4, 5, 1, 6, 6, 6, 7, 7, 7 ], 
      [ 9, 8, 9, 9, 8, 8, 11, 11, 11, 10, 10, 10, 1, 4, 5, 0, 2, 3, 7, 7, 7, 6, 6, 6 ], 
      [ 9, 8, 9, 9, 8, 8, 11, 11, 11, 10, 10, 10, 5, 1, 4, 3, 0, 2, 7, 7, 7, 6, 6, 6 ], 
      [ 9, 8, 9, 9, 8, 8, 11, 11, 11, 10, 10, 10, 4, 5, 1, 2, 3, 0, 7, 7, 7, 6, 6, 6 ], 
      [ 10, 11, 10, 10, 11, 11, 8, 8, 8, 9, 9, 9, 6, 6, 6, 7, 7, 7, 0, 2, 3, 1, 4, 5 ], 
      [ 10, 11, 10, 10, 11, 11, 8, 8, 8, 9, 9, 9, 6, 6, 6, 7, 7, 7, 3, 0, 2, 5, 1, 4 ], 
      [ 10, 11, 10, 10, 11, 11, 8, 8, 8, 9, 9, 9, 6, 6, 6, 7, 7, 7, 2, 3, 0, 4, 5, 1 ], 
      [ 11, 10, 11, 11, 10, 10, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 1, 4, 5, 0, 2, 3 ], 
      [ 11, 10, 11, 11, 10, 10, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 1, 4, 3, 0, 2 ], 
      [ 11, 10, 11, 11, 10, 10, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 4, 5, 1, 2, 3, 0 ] ] )