rec(
  ct := [ [ 1, 13, 13, 1 ], [ 1, 2*E(3)-E(3)^2, -E(3)+2*E(3)^2, 13 ], 
      [ 1, -E(3)+2*E(3)^2, 2*E(3)-E(3)^2, 13 ] ],
  matrix := [ [ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 2, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2 ], 
      [ 2, 2, 0, 1, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 2 ], 
      [ 2, 2, 2, 0, 1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1 ], 
      [ 2, 2, 2, 2, 0, 1, 2, 1, 1, 1, 1, 1, 2, 2, 1, 2, 1, 2, 2, 1, 1, 1, 2, 2, 1, 2, 1 ], 
      [ 2, 2, 2, 2, 2, 0, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 2, 1, 2 ], 
      [ 2, 2, 2, 2, 1, 2, 0, 1, 1, 1, 2, 2, 1, 1, 2, 1, 2, 1, 1, 1, 2, 2, 1, 2, 1, 2, 1 ], 
      [ 2, 2, 1, 1, 2, 2, 2, 0, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 2, 1, 2, 2, 2, 1, 1 ], 
      [ 2, 1, 2, 1, 2, 1, 2, 2, 0, 1, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 1 ], 
      [ 2, 1, 2, 1, 2, 1, 2, 1, 2, 0, 1, 2, 2, 1, 2, 2, 2, 1, 1, 1, 2, 1, 2, 1, 1, 1, 2 ], 
      [ 2, 1, 1, 2, 2, 2, 1, 2, 1, 2, 0, 1, 2, 1, 1, 2, 2, 1, 1, 2, 1, 1, 1, 2, 1, 2, 2 ], 
      [ 2, 1, 1, 2, 2, 2, 1, 1, 2, 1, 2, 0, 1, 2, 1, 2, 1, 2, 1, 2, 2, 2, 2, 1, 1, 1, 1 ], 
      [ 2, 1, 1, 2, 1, 2, 2, 2, 1, 1, 1, 2, 0, 2, 2, 2, 1, 1, 2, 1, 1, 2, 1, 1, 2, 1, 2 ], 
      [ 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 0, 2, 1, 2, 2, 2, 1, 1, 1, 2, 1, 1, 2, 1 ], 
      [ 1, 2, 2, 1, 2, 2, 1, 2, 1, 1, 2, 2, 1, 1, 0, 2, 1, 2, 1, 1, 1, 1, 2, 1, 2, 2, 2 ], 
      [ 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 1, 0, 2, 1, 1, 2, 1, 2, 2, 2, 1, 1, 2 ], 
      [ 1, 2, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 2, 1, 0, 1, 2, 2, 1, 2, 2, 1, 1, 2, 1 ], 
      [ 1, 2, 1, 2, 1, 1, 2, 2, 1, 2, 2, 1, 2, 1, 1, 2, 2, 0, 1, 1, 2, 2, 2, 1, 2, 1, 1 ], 
      [ 1, 2, 1, 2, 1, 1, 2, 1, 2, 2, 2, 2, 1, 1, 2, 2, 1, 2, 0, 2, 1, 1, 1, 2, 1, 1, 2 ], 
      [ 1, 2, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 2, 2, 2, 1, 1, 2, 1, 0, 2, 2, 1, 1, 1, 2, 2 ], 
      [ 1, 2, 1, 1, 2, 2, 1, 1, 2, 1, 2, 1, 2, 2, 2, 2, 2, 1, 2, 1, 0, 1, 1, 2, 2, 1, 1 ], 
      [ 1, 1, 2, 2, 2, 1, 1, 2, 1, 2, 2, 1, 1, 2, 2, 1, 1, 1, 2, 1, 2, 0, 2, 2, 1, 1, 2 ], 
      [ 1, 1, 2, 2, 1, 2, 2, 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 1, 2, 2, 2, 1, 0, 1, 2, 2, 2 ], 
      [ 1, 1, 2, 2, 1, 2, 1, 1, 1, 2, 1, 2, 2, 2, 2, 1, 2, 2, 1, 2, 1, 1, 2, 0, 2, 1, 1 ], 
      [ 1, 1, 2, 1, 2, 1, 2, 1, 1, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 2, 1, 2, 1, 1, 0, 2, 1 ], 
      [ 1, 1, 2, 1, 1, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 2, 1, 2, 1, 0, 1 ], 
      [ 1, 1, 1, 2, 2, 1, 2, 2, 2, 1, 1, 2, 1, 2, 1, 1, 2, 2, 1, 1, 2, 1, 1, 2, 2, 2, 0 ] ] )