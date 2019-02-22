rec(
  ct := [ [ 1, 1, 2, 4, 8, 8, 1 ], [ 1, 1, 2, 4, -4, -4, 2 ], [ 1, 1, 2, -4, 0, 0, 3 ], 
      [ 1, -1, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 6 ], 
      [ 1, -1, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 6 ], [ 1, 1, -2, 0, 0, 0, 6 ] ],
  matrix := [ [ 0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 1, 0, 2, 2, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 2, 2, 0, 1, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5 ], 
      [ 2, 2, 1, 0, 3, 3, 3, 3, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 4, 4 ], 
      [ 3, 3, 3, 3, 0, 1, 2, 2, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5 ], 
      [ 3, 3, 3, 3, 1, 0, 2, 2, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4 ], 
      [ 3, 3, 3, 3, 2, 2, 0, 1, 4, 4, 5, 5, 5, 5, 4, 4, 5, 5, 4, 4, 4, 4, 5, 5 ], 
      [ 3, 3, 3, 3, 2, 2, 1, 0, 5, 5, 4, 4, 4, 4, 5, 5, 4, 4, 5, 5, 5, 5, 4, 4 ], 
      [ 5, 4, 5, 4, 5, 4, 5, 4, 0, 2, 3, 3, 4, 5, 4, 5, 4, 5, 4, 5, 3, 3, 1, 2 ], 
      [ 5, 4, 5, 4, 5, 4, 5, 4, 2, 0, 3, 3, 5, 4, 5, 4, 5, 4, 5, 4, 3, 3, 2, 1 ], 
      [ 5, 4, 5, 4, 4, 5, 4, 5, 3, 3, 0, 2, 4, 5, 5, 4, 5, 4, 4, 5, 1, 2, 3, 3 ], 
      [ 5, 4, 5, 4, 4, 5, 4, 5, 3, 3, 2, 0, 5, 4, 4, 5, 4, 5, 5, 4, 2, 1, 3, 3 ], 
      [ 5, 4, 4, 5, 5, 4, 4, 5, 5, 4, 5, 4, 0, 3, 2, 3, 3, 2, 3, 1, 4, 5, 4, 5 ], 
      [ 5, 4, 4, 5, 5, 4, 4, 5, 4, 5, 4, 5, 3, 0, 3, 2, 2, 3, 1, 3, 5, 4, 5, 4 ], 
      [ 5, 4, 4, 5, 4, 5, 5, 4, 5, 4, 4, 5, 2, 3, 0, 3, 3, 1, 3, 2, 5, 4, 4, 5 ], 
      [ 5, 4, 4, 5, 4, 5, 5, 4, 4, 5, 5, 4, 3, 2, 3, 0, 1, 3, 2, 3, 4, 5, 5, 4 ], 
      [ 4, 5, 5, 4, 5, 4, 4, 5, 5, 4, 4, 5, 3, 2, 3, 1, 0, 3, 2, 3, 5, 4, 4, 5 ], 
      [ 4, 5, 5, 4, 5, 4, 4, 5, 4, 5, 5, 4, 2, 3, 1, 3, 3, 0, 3, 2, 4, 5, 5, 4 ], 
      [ 4, 5, 5, 4, 4, 5, 5, 4, 5, 4, 5, 4, 3, 1, 3, 2, 2, 3, 0, 3, 4, 5, 4, 5 ], 
      [ 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 4, 5, 1, 3, 2, 3, 3, 2, 3, 0, 5, 4, 5, 4 ], 
      [ 4, 5, 4, 5, 5, 4, 5, 4, 3, 3, 1, 2, 5, 4, 4, 5, 4, 5, 5, 4, 0, 2, 3, 3 ], 
      [ 4, 5, 4, 5, 5, 4, 5, 4, 3, 3, 2, 1, 4, 5, 5, 4, 5, 4, 4, 5, 2, 0, 3, 3 ], 
      [ 4, 5, 4, 5, 4, 5, 4, 5, 1, 2, 3, 3, 5, 4, 5, 4, 5, 4, 5, 4, 3, 3, 0, 2 ], 
      [ 4, 5, 4, 5, 4, 5, 4, 5, 2, 1, 3, 3, 4, 5, 4, 5, 4, 5, 4, 5, 3, 3, 2, 0 ] ] )