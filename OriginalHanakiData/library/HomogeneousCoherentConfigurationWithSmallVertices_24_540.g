rec(
  ct := 
   [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, -2, 2, 2, 2*E(4), -2*E(4), -2, -2, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, -2, 2, 2, -2*E(4), 2*E(4), -2, -2, -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, -2, -1, -1, 2*E(4), -2*E(4), 1, 1, -2*E(4), 2*E(4), 2 ], 
      [ 1, 1, -2, -1, -1, -2*E(4), 2*E(4), 1, 1, 2*E(4), -2*E(4), 2 ], 
      [ 1, 1, 2, -1, -1, -2, -2, -1, -1, 2, 2, 2 ], [ 1, 1, 2, -1, -1, 2, 2, -1, -1, -2, -2, 2 ], 
      [ 1, -1, 0, -1, 1, 0, 0, E(3)-E(3)^2, -E(3)+E(3)^2, 0, 0, 4 ], 
      [ 1, -1, 0, -1, 1, 0, 0, -E(3)+E(3)^2, E(3)-E(3)^2, 0, 0, 4 ], 
      [ 1, -1, 0, 2, -2, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 1, 0, 2, 2, 4, 4, 3, 3, 5, 5, 6, 6, 8, 8, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 2, 2, 0, 1, 7, 8, 7, 8, 6, 6, 5, 5, 3, 4, 3, 4, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 2, 2, 1, 0, 8, 7, 8, 7, 6, 6, 5, 5, 4, 3, 4, 3, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 3, 4, 8, 7, 0, 3, 4, 1, 9, 9, 10, 10, 2, 8, 7, 2, 5, 5, 9, 9, 6, 6, 10, 10 ], 
      [ 3, 4, 7, 8, 3, 0, 1, 4, 9, 9, 10, 10, 8, 2, 2, 7, 9, 9, 5, 5, 10, 10, 6, 6 ], 
      [ 4, 3, 8, 7, 4, 1, 0, 3, 9, 9, 10, 10, 7, 2, 2, 8, 9, 9, 5, 5, 10, 10, 6, 6 ], 
      [ 4, 3, 7, 8, 1, 4, 3, 0, 9, 9, 10, 10, 2, 7, 8, 2, 5, 5, 9, 9, 6, 6, 10, 10 ], 
      [ 6, 6, 5, 5, 10, 10, 10, 10, 0, 1, 2, 2, 9, 9, 9, 9, 3, 4, 3, 4, 7, 8, 7, 8 ], 
      [ 6, 6, 5, 5, 10, 10, 10, 10, 1, 0, 2, 2, 9, 9, 9, 9, 4, 3, 4, 3, 8, 7, 8, 7 ], 
      [ 5, 5, 6, 6, 9, 9, 9, 9, 2, 2, 0, 1, 10, 10, 10, 10, 7, 8, 8, 7, 3, 4, 4, 3 ], 
      [ 5, 5, 6, 6, 9, 9, 9, 9, 2, 2, 1, 0, 10, 10, 10, 10, 8, 7, 7, 8, 4, 3, 3, 4 ], 
      [ 8, 7, 3, 4, 2, 7, 8, 2, 10, 10, 9, 9, 0, 4, 3, 1, 6, 6, 10, 10, 5, 5, 9, 9 ], 
      [ 8, 7, 4, 3, 7, 2, 2, 8, 10, 10, 9, 9, 4, 0, 1, 3, 10, 10, 6, 6, 9, 9, 5, 5 ], 
      [ 7, 8, 3, 4, 8, 2, 2, 7, 10, 10, 9, 9, 3, 1, 0, 4, 10, 10, 6, 6, 9, 9, 5, 5 ], 
      [ 7, 8, 4, 3, 2, 8, 7, 2, 10, 10, 9, 9, 1, 3, 4, 0, 6, 6, 10, 10, 5, 5, 9, 9 ], 
      [ 10, 10, 9, 9, 6, 10, 10, 6, 3, 4, 8, 7, 5, 9, 9, 5, 0, 1, 3, 4, 2, 2, 8, 7 ], 
      [ 10, 10, 9, 9, 6, 10, 10, 6, 4, 3, 7, 8, 5, 9, 9, 5, 1, 0, 4, 3, 2, 2, 7, 8 ], 
      [ 10, 10, 9, 9, 10, 6, 6, 10, 3, 4, 7, 8, 9, 5, 5, 9, 3, 4, 0, 1, 8, 7, 2, 2 ], 
      [ 10, 10, 9, 9, 10, 6, 6, 10, 4, 3, 8, 7, 9, 5, 5, 9, 4, 3, 1, 0, 7, 8, 2, 2 ], 
      [ 9, 9, 10, 10, 5, 9, 9, 5, 8, 7, 3, 4, 6, 10, 10, 6, 2, 2, 7, 8, 0, 1, 4, 3 ], 
      [ 9, 9, 10, 10, 5, 9, 9, 5, 7, 8, 4, 3, 6, 10, 10, 6, 2, 2, 8, 7, 1, 0, 3, 4 ], 
      [ 9, 9, 10, 10, 9, 5, 5, 9, 8, 7, 4, 3, 10, 6, 6, 10, 7, 8, 2, 2, 4, 3, 0, 1 ], 
      [ 9, 9, 10, 10, 9, 5, 5, 9, 7, 8, 3, 4, 10, 6, 6, 10, 8, 7, 2, 2, 3, 4, 1, 0 ] ] )