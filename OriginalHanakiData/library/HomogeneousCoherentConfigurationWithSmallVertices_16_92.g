rec(
  ct := [ [ 1, 1, 2, 2, 2, 4, 4, 1 ], [ 1, 1, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, -2, 0, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 2 ], 
      [ 1, 1, -2, 0, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 2 ], [ 1, 1, 2, -2, -2, 0, 0, 2 ], 
      [ 1, -1, 0, E(8)+E(8)^3, -E(8)-E(8)^3, 0, 0, 4 ], 
      [ 1, -1, 0, -E(8)-E(8)^3, E(8)+E(8)^3, 0, 0, 4 ] ],
  matrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 1, 0, 2, 2, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 2, 2, 0, 1, 3, 4, 3, 4, 6, 6, 6, 6, 5, 5, 5, 5 ], 
      [ 2, 2, 1, 0, 4, 3, 4, 3, 6, 6, 6, 6, 5, 5, 5, 5 ], 
      [ 4, 3, 4, 3, 0, 2, 2, 1, 5, 5, 6, 6, 5, 5, 6, 6 ], 
      [ 4, 3, 3, 4, 2, 0, 1, 2, 6, 6, 5, 5, 6, 6, 5, 5 ], 
      [ 3, 4, 4, 3, 2, 1, 0, 2, 6, 6, 5, 5, 6, 6, 5, 5 ], 
      [ 3, 4, 3, 4, 1, 2, 2, 0, 5, 5, 6, 6, 5, 5, 6, 6 ], 
      [ 5, 5, 6, 6, 5, 6, 6, 5, 0, 1, 3, 4, 3, 4, 2, 2 ], 
      [ 5, 5, 6, 6, 5, 6, 6, 5, 1, 0, 4, 3, 4, 3, 2, 2 ], 
      [ 5, 5, 6, 6, 6, 5, 5, 6, 4, 3, 0, 1, 2, 2, 3, 4 ], 
      [ 5, 5, 6, 6, 6, 5, 5, 6, 3, 4, 1, 0, 2, 2, 4, 3 ], 
      [ 6, 6, 5, 5, 5, 6, 6, 5, 4, 3, 2, 2, 0, 1, 4, 3 ], 
      [ 6, 6, 5, 5, 5, 6, 6, 5, 3, 4, 2, 2, 1, 0, 3, 4 ], 
      [ 6, 6, 5, 5, 6, 5, 5, 6, 2, 2, 4, 3, 3, 4, 0, 1 ], 
      [ 6, 6, 5, 5, 6, 5, 5, 6, 2, 2, 3, 4, 4, 3, 1, 0 ] ] )