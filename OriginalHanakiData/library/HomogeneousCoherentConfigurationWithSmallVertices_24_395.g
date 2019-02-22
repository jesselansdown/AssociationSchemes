rec(
  ct := 
   [ [ 1, 1, 2, 2, 2, 4, 4, 4, 4, 1 ], [ 1, 1, 2, 2, 2, 4*E(3), 4*E(3)^2, 4*E(3), 4*E(3)^2, 1 ], 
      [ 1, 1, 2, 2, 2, 4*E(3)^2, 4*E(3), 4*E(3)^2, 4*E(3), 1 ], 
      [ 1, 1, -2, 2*E(4), -2*E(4), 0, 0, 0, 0, 3 ], [ 1, 1, -2, -2*E(4), 2*E(4), 0, 0, 0, 0, 3 ], 
      [ 1, 1, 2, -2, -2, 0, 0, 0, 0, 3 ], [ 1, -1, 0, 0, 0, 2, 2, -2, -2, 4 ], 
      [ 1, -1, 0, 0, 0, 2*E(3), 2*E(3)^2, -2*E(3), -2*E(3)^2, 4 ], 
      [ 1, -1, 0, 0, 0, 2*E(3)^2, 2*E(3), -2*E(3)^2, -2*E(3), 4 ] ],
  matrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8 ], 
      [ 1, 0, 2, 2, 3, 3, 4, 4, 7, 7, 7, 7, 8, 8, 8, 8, 5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 7, 7, 6, 6, 8, 8, 5, 5, 7, 7, 6, 6, 8, 8 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 7, 7, 5, 5, 8, 8, 6, 6, 7, 7, 5, 5, 8, 8, 6, 6 ], 
      [ 4, 4, 3, 3, 0, 1, 2, 2, 5, 7, 5, 7, 6, 8, 6, 8, 5, 7, 5, 7, 6, 8, 6, 8 ], 
      [ 4, 4, 3, 3, 1, 0, 2, 2, 7, 5, 7, 5, 8, 6, 8, 6, 7, 5, 7, 5, 8, 6, 8, 6 ], 
      [ 3, 3, 4, 4, 2, 2, 0, 1, 5, 7, 7, 5, 8, 6, 6, 8, 7, 5, 5, 7, 6, 8, 8, 6 ], 
      [ 3, 3, 4, 4, 2, 2, 1, 0, 7, 5, 5, 7, 6, 8, 8, 6, 5, 7, 7, 5, 8, 6, 6, 8 ], 
      [ 6, 8, 6, 8, 6, 8, 6, 8, 0, 2, 3, 4, 5, 5, 5, 7, 4, 3, 2, 1, 5, 7, 7, 7 ], 
      [ 6, 8, 6, 8, 8, 6, 8, 6, 2, 0, 4, 3, 5, 5, 7, 5, 3, 4, 1, 2, 7, 5, 7, 7 ], 
      [ 6, 8, 8, 6, 6, 8, 8, 6, 4, 3, 0, 2, 5, 7, 5, 5, 2, 1, 3, 4, 7, 7, 5, 7 ], 
      [ 6, 8, 8, 6, 8, 6, 6, 8, 3, 4, 2, 0, 7, 5, 5, 5, 1, 2, 4, 3, 7, 7, 7, 5 ], 
      [ 5, 7, 5, 7, 5, 7, 7, 5, 6, 6, 6, 8, 0, 2, 3, 4, 6, 8, 8, 8, 4, 3, 2, 1 ], 
      [ 5, 7, 5, 7, 7, 5, 5, 7, 6, 6, 8, 6, 2, 0, 4, 3, 8, 6, 8, 8, 3, 4, 1, 2 ], 
      [ 5, 7, 7, 5, 5, 7, 5, 7, 6, 8, 6, 6, 4, 3, 0, 2, 8, 8, 6, 8, 2, 1, 3, 4 ], 
      [ 5, 7, 7, 5, 7, 5, 7, 5, 8, 6, 6, 6, 3, 4, 2, 0, 8, 8, 8, 6, 1, 2, 4, 3 ], 
      [ 8, 6, 6, 8, 6, 8, 8, 6, 3, 4, 2, 1, 5, 7, 7, 7, 0, 2, 4, 3, 5, 5, 5, 7 ], 
      [ 8, 6, 6, 8, 8, 6, 6, 8, 4, 3, 1, 2, 7, 5, 7, 7, 2, 0, 3, 4, 5, 5, 7, 5 ], 
      [ 8, 6, 8, 6, 6, 8, 6, 8, 2, 1, 4, 3, 7, 7, 5, 7, 3, 4, 0, 2, 5, 7, 5, 5 ], 
      [ 8, 6, 8, 6, 8, 6, 8, 6, 1, 2, 3, 4, 7, 7, 7, 5, 4, 3, 2, 0, 7, 5, 5, 5 ], 
      [ 7, 5, 5, 7, 5, 7, 5, 7, 6, 8, 8, 8, 3, 4, 2, 1, 6, 6, 6, 8, 0, 2, 4, 3 ], 
      [ 7, 5, 5, 7, 7, 5, 7, 5, 8, 6, 8, 8, 4, 3, 1, 2, 6, 6, 8, 6, 2, 0, 3, 4 ], 
      [ 7, 5, 7, 5, 5, 7, 7, 5, 8, 8, 6, 8, 2, 1, 4, 3, 6, 8, 6, 6, 3, 4, 0, 2 ], 
      [ 7, 5, 7, 5, 7, 5, 5, 7, 8, 8, 8, 6, 1, 2, 3, 4, 8, 6, 6, 6, 4, 3, 2, 0 ] ] )