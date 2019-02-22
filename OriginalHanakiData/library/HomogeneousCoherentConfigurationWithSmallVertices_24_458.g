rec(
  ct := 
   [ [ 1, 1, 1, 1, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 4*E(3)^2, 4*E(3), 4*E(3)^2, 4*E(3), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 4*E(3), 4*E(3)^2, 4*E(3), 4*E(3)^2, 1 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 3 ], [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 3 ], 
      [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 3 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 6 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 8, 8, 8, 8, 9, 9, 9, 9, 6, 6, 6, 6, 7, 7, 7, 7 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 6, 6, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 9, 9 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 6, 8, 8, 7, 7, 9, 9, 6, 6, 8, 8, 7, 7, 9, 9 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 6, 6, 9, 9, 7, 7, 8, 8, 6, 6, 9, 9, 7, 7 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 6, 6, 8, 8, 9, 9, 7, 7, 6, 6, 8, 8, 9, 9, 7, 7 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 8, 6, 6, 7, 7, 9, 9, 8, 8, 6, 6, 7, 7, 9, 9 ], 
      [ 7, 9, 7, 9, 7, 9, 7, 9, 0, 3, 4, 5, 6, 8, 6, 8, 4, 5, 1, 2, 6, 8, 6, 8 ], 
      [ 7, 9, 7, 9, 7, 9, 7, 9, 3, 0, 5, 4, 8, 6, 8, 6, 5, 4, 2, 1, 8, 6, 8, 6 ], 
      [ 7, 9, 7, 9, 9, 7, 9, 7, 4, 5, 0, 3, 6, 8, 8, 6, 1, 2, 4, 5, 8, 6, 6, 8 ], 
      [ 7, 9, 7, 9, 9, 7, 9, 7, 5, 4, 3, 0, 8, 6, 6, 8, 2, 1, 5, 4, 6, 8, 8, 6 ], 
      [ 6, 8, 8, 6, 6, 8, 8, 6, 7, 9, 7, 9, 0, 2, 4, 5, 9, 7, 9, 7, 5, 4, 3, 1 ], 
      [ 6, 8, 8, 6, 6, 8, 8, 6, 9, 7, 9, 7, 2, 0, 5, 4, 7, 9, 7, 9, 4, 5, 1, 3 ], 
      [ 6, 8, 8, 6, 8, 6, 6, 8, 7, 9, 9, 7, 4, 5, 0, 2, 7, 9, 9, 7, 3, 1, 5, 4 ], 
      [ 6, 8, 8, 6, 8, 6, 6, 8, 9, 7, 7, 9, 5, 4, 2, 0, 9, 7, 7, 9, 1, 3, 4, 5 ], 
      [ 9, 7, 9, 7, 7, 9, 7, 9, 4, 5, 1, 2, 8, 6, 6, 8, 0, 3, 4, 5, 6, 8, 8, 6 ], 
      [ 9, 7, 9, 7, 7, 9, 7, 9, 5, 4, 2, 1, 6, 8, 8, 6, 3, 0, 5, 4, 8, 6, 6, 8 ], 
      [ 9, 7, 9, 7, 9, 7, 9, 7, 1, 2, 4, 5, 8, 6, 8, 6, 4, 5, 0, 3, 8, 6, 8, 6 ], 
      [ 9, 7, 9, 7, 9, 7, 9, 7, 2, 1, 5, 4, 6, 8, 6, 8, 5, 4, 3, 0, 6, 8, 6, 8 ], 
      [ 8, 6, 6, 8, 6, 8, 8, 6, 7, 9, 9, 7, 5, 4, 3, 1, 7, 9, 9, 7, 0, 2, 4, 5 ], 
      [ 8, 6, 6, 8, 6, 8, 8, 6, 9, 7, 7, 9, 4, 5, 1, 3, 9, 7, 7, 9, 2, 0, 5, 4 ], 
      [ 8, 6, 6, 8, 8, 6, 6, 8, 7, 9, 7, 9, 3, 1, 5, 4, 9, 7, 9, 7, 4, 5, 0, 2 ], 
      [ 8, 6, 6, 8, 8, 6, 6, 8, 9, 7, 9, 7, 1, 3, 4, 5, 7, 9, 7, 9, 5, 4, 2, 0 ] ] )