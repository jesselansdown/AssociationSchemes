rec(
  ct := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 4*E(3)^2, 4*E(3), 4*E(3), 4*E(3)^2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 4*E(3), 4*E(3)^2, 4*E(3)^2, 4*E(3), 1 ], 
      [ 2, 2, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, 3 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 3 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 3 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 3 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 3 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 3 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 8, 8, 10, 10, 10, 10, 9, 9, 9, 9, 11, 11, 11, 11 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 8, 8, 8, 8, 10, 10, 10, 10, 9, 9, 9, 9, 11, 11, 11, 11 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 11, 11, 11, 11, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 11, 11, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 0, 1, 4, 5, 8, 8, 11, 11, 8, 8, 11, 11, 2, 3, 6, 7 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 1, 0, 5, 4, 8, 8, 11, 11, 8, 8, 11, 11, 3, 2, 7, 6 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 5, 4, 0, 1, 11, 11, 8, 8, 11, 11, 8, 8, 7, 6, 2, 3 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 4, 5, 1, 0, 11, 11, 8, 8, 11, 11, 8, 8, 6, 7, 3, 2 ], 
      [ 8, 8, 11, 11, 8, 8, 11, 11, 9, 9, 10, 10, 0, 1, 2, 3, 4, 5, 6, 7, 9, 9, 10, 10 ], 
      [ 8, 8, 11, 11, 8, 8, 11, 11, 9, 9, 10, 10, 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 10, 10 ], 
      [ 8, 8, 11, 11, 8, 8, 11, 11, 10, 10, 9, 9, 2, 3, 0, 1, 6, 7, 4, 5, 10, 10, 9, 9 ], 
      [ 8, 8, 11, 11, 8, 8, 11, 11, 10, 10, 9, 9, 3, 2, 1, 0, 7, 6, 5, 4, 10, 10, 9, 9 ], 
      [ 11, 11, 8, 8, 11, 11, 8, 8, 9, 9, 10, 10, 5, 4, 7, 6, 0, 1, 2, 3, 9, 9, 10, 10 ], 
      [ 11, 11, 8, 8, 11, 11, 8, 8, 9, 9, 10, 10, 4, 5, 6, 7, 1, 0, 3, 2, 9, 9, 10, 10 ], 
      [ 11, 11, 8, 8, 11, 11, 8, 8, 10, 10, 9, 9, 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 9, 9 ], 
      [ 11, 11, 8, 8, 11, 11, 8, 8, 10, 10, 9, 9, 6, 7, 4, 5, 3, 2, 1, 0, 10, 10, 9, 9 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 2, 3, 6, 7, 8, 8, 11, 11, 8, 8, 11, 11, 0, 1, 4, 5 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 3, 2, 7, 6, 8, 8, 11, 11, 8, 8, 11, 11, 1, 0, 5, 4 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 7, 6, 2, 3, 11, 11, 8, 8, 11, 11, 8, 8, 5, 4, 0, 1 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 6, 7, 3, 2, 11, 11, 8, 8, 11, 11, 8, 8, 4, 5, 1, 0 ] ] )