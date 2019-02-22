rec(
  ct := [ [ 1, 1, 4, 4, 6, 12, 1 ], [ 1, 1, -4, -4, -6, 12, 1 ], 
      [ 1, 1, -E(8)+E(8)^3, -E(8)+E(8)^3, 2*E(8)-2*E(8)^3, -2, 6 ], 
      [ 1, 1, E(8)-E(8)^3, E(8)-E(8)^3, -2*E(8)+2*E(8)^3, -2, 6 ], 
      [ 1, -1, 2*E(4), -2*E(4), 0, 0, 7 ], [ 1, -1, -2*E(4), 2*E(4), 0, 0, 7 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 1, 0, 3, 3, 3, 3, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 3, 2, 0, 5, 5, 5, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4, 4, 4 ], 
      [ 3, 2, 5, 0, 5, 5, 5, 1, 5, 5, 5, 5, 5, 5, 5, 5, 3, 4, 4, 2, 4, 4, 2, 2, 3, 3, 4, 4 ], 
      [ 3, 2, 5, 5, 0, 5, 5, 5, 1, 5, 5, 5, 5, 5, 5, 5, 4, 3, 4, 4, 2, 4, 3, 4, 2, 4, 2, 3 ], 
      [ 3, 2, 5, 5, 5, 0, 5, 5, 5, 1, 5, 5, 5, 5, 5, 5, 4, 4, 3, 4, 4, 2, 4, 3, 4, 2, 3, 2 ], 
      [ 2, 3, 1, 5, 5, 5, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 3, 2, 2, 2, 4, 4, 4, 4, 4, 4 ], 
      [ 2, 3, 5, 1, 5, 5, 5, 0, 5, 5, 5, 5, 5, 5, 5, 5, 2, 4, 4, 3, 4, 4, 3, 3, 2, 2, 4, 4 ], 
      [ 2, 3, 5, 5, 1, 5, 5, 5, 0, 5, 5, 5, 5, 5, 5, 5, 4, 2, 4, 4, 3, 4, 2, 4, 3, 4, 3, 2 ], 
      [ 2, 3, 5, 5, 5, 1, 5, 5, 5, 0, 5, 5, 5, 5, 5, 5, 4, 4, 2, 4, 4, 3, 4, 2, 4, 3, 2, 3 ], 
      [ 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 0, 1, 5, 5, 5, 5, 2, 3, 4, 3, 2, 4, 4, 2, 4, 3, 3, 2 ], 
      [ 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 5, 5, 5, 5, 3, 2, 4, 2, 3, 4, 4, 3, 4, 2, 2, 3 ], 
      [ 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 1, 5, 5, 2, 4, 3, 3, 4, 2, 2, 4, 3, 4, 2, 3 ], 
      [ 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 5, 5, 3, 4, 2, 2, 4, 3, 3, 4, 2, 4, 3, 2 ], 
      [ 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 1, 4, 2, 3, 4, 3, 2, 3, 2, 2, 3, 4, 4 ], 
      [ 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 4, 3, 2, 4, 2, 3, 2, 3, 3, 2, 4, 4 ], 
      [ 5, 5, 3, 2, 4, 4, 2, 3, 4, 4, 3, 2, 3, 2, 4, 4, 0, 5, 5, 1, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 3, 4, 2, 4, 2, 4, 3, 4, 2, 3, 4, 4, 3, 2, 5, 0, 5, 5, 1, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 3, 4, 4, 2, 2, 4, 4, 3, 4, 4, 2, 3, 2, 3, 5, 5, 0, 5, 5, 1, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 2, 3, 4, 4, 3, 2, 4, 4, 2, 3, 2, 3, 4, 4, 1, 5, 5, 0, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 2, 4, 3, 4, 3, 4, 2, 4, 3, 2, 4, 4, 2, 3, 5, 1, 5, 5, 0, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 2, 4, 4, 3, 3, 4, 4, 2, 4, 4, 3, 2, 3, 2, 5, 5, 1, 5, 5, 0, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 4, 3, 2, 4, 4, 2, 3, 4, 4, 4, 3, 2, 2, 3, 5, 5, 5, 5, 5, 5, 0, 5, 1, 5, 5, 5 ], 
      [ 5, 5, 4, 3, 4, 2, 4, 2, 4, 3, 3, 2, 4, 4, 3, 2, 5, 5, 5, 5, 5, 5, 5, 0, 5, 1, 5, 5 ], 
      [ 5, 5, 4, 2, 3, 4, 4, 3, 2, 4, 4, 4, 2, 3, 3, 2, 5, 5, 5, 5, 5, 5, 1, 5, 0, 5, 5, 5 ], 
      [ 5, 5, 4, 2, 4, 3, 4, 3, 4, 2, 2, 3, 4, 4, 2, 3, 5, 5, 5, 5, 5, 5, 5, 1, 5, 0, 5, 5 ], 
      [ 5, 5, 4, 4, 3, 2, 4, 4, 2, 3, 2, 3, 3, 2, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 1 ], 
      [ 5, 5, 4, 4, 2, 3, 4, 4, 3, 2, 3, 2, 2, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0 ] ] )