rec(
  ct := [ [ 1, 1, 2, 2, 6, 6, 6, 1 ], [ 1, 1, 2, 2, 6, -6, -6, 1 ], 
      [ 1, -1, 2, -2, 0, -3*E(8)+3*E(8)^3, 3*E(8)-3*E(8)^3, 2 ], 
      [ 1, -1, 2, -2, 0, 3*E(8)-3*E(8)^3, -3*E(8)+3*E(8)^3, 2 ], [ 1, 1, 2, 2, -6, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 8 ], [ 1, 1, -1, -1, 0, 0, 0, 8 ] ],
  matrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6 ], 
      [ 1, 0, 3, 3, 2, 2, 4, 4, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5 ], 
      [ 2, 3, 0, 2, 1, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6 ], 
      [ 2, 3, 2, 0, 3, 1, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6 ], 
      [ 3, 2, 1, 3, 0, 2, 4, 4, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5 ], 
      [ 3, 2, 3, 1, 2, 0, 4, 4, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5 ], 
      [ 4, 4, 4, 4, 4, 4, 0, 1, 2, 2, 3, 3, 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 6, 6 ], 
      [ 4, 4, 4, 4, 4, 4, 1, 0, 3, 3, 2, 2, 6, 6, 6, 5, 5, 5, 6, 6, 6, 5, 5, 5 ], 
      [ 4, 4, 4, 4, 4, 4, 2, 3, 0, 2, 1, 3, 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 6, 6 ], 
      [ 4, 4, 4, 4, 4, 4, 2, 3, 2, 0, 3, 1, 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 6, 6 ], 
      [ 4, 4, 4, 4, 4, 4, 3, 2, 1, 3, 0, 2, 6, 6, 6, 5, 5, 5, 6, 6, 6, 5, 5, 5 ], 
      [ 4, 4, 4, 4, 4, 4, 3, 2, 3, 1, 2, 0, 6, 6, 6, 5, 5, 5, 6, 6, 6, 5, 5, 5 ], 
      [ 5, 6, 5, 5, 6, 6, 5, 6, 5, 5, 6, 6, 0, 2, 2, 4, 4, 4, 4, 4, 4, 1, 3, 3 ], 
      [ 5, 6, 5, 5, 6, 6, 5, 6, 5, 5, 6, 6, 2, 0, 2, 4, 4, 4, 4, 4, 4, 3, 1, 3 ], 
      [ 5, 6, 5, 5, 6, 6, 5, 6, 5, 5, 6, 6, 2, 2, 0, 4, 4, 4, 4, 4, 4, 3, 3, 1 ], 
      [ 5, 6, 5, 5, 6, 6, 6, 5, 6, 6, 5, 5, 4, 4, 4, 0, 2, 2, 1, 3, 3, 4, 4, 4 ], 
      [ 5, 6, 5, 5, 6, 6, 6, 5, 6, 6, 5, 5, 4, 4, 4, 2, 0, 2, 3, 1, 3, 4, 4, 4 ], 
      [ 5, 6, 5, 5, 6, 6, 6, 5, 6, 6, 5, 5, 4, 4, 4, 2, 2, 0, 3, 3, 1, 4, 4, 4 ], 
      [ 6, 5, 6, 6, 5, 5, 5, 6, 5, 5, 6, 6, 4, 4, 4, 1, 3, 3, 0, 2, 2, 4, 4, 4 ], 
      [ 6, 5, 6, 6, 5, 5, 5, 6, 5, 5, 6, 6, 4, 4, 4, 3, 1, 3, 2, 0, 2, 4, 4, 4 ], 
      [ 6, 5, 6, 6, 5, 5, 5, 6, 5, 5, 6, 6, 4, 4, 4, 3, 3, 1, 2, 2, 0, 4, 4, 4 ], 
      [ 6, 5, 6, 6, 5, 5, 6, 5, 6, 6, 5, 5, 1, 3, 3, 4, 4, 4, 4, 4, 4, 0, 2, 2 ], 
      [ 6, 5, 6, 6, 5, 5, 6, 5, 6, 6, 5, 5, 3, 1, 3, 4, 4, 4, 4, 4, 4, 2, 0, 2 ], 
      [ 6, 5, 6, 6, 5, 5, 6, 5, 6, 6, 5, 5, 3, 3, 1, 4, 4, 4, 4, 4, 4, 2, 2, 0 ] ] )