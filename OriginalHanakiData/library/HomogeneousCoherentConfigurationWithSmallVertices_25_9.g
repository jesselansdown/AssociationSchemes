rec(
  ct := [ [ 1, 12, 12, 1 ], [ 1, -3, 2, 12 ], [ 1, 2, -3, 12 ] ],
  matrix := [ [ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 1, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2 ], 
      [ 1, 1, 0, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1 ], 
      [ 1, 1, 1, 0, 2, 2, 2, 1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2 ], 
      [ 1, 1, 1, 2, 0, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 1, 2 ], 
      [ 1, 1, 1, 2, 2, 0, 2, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1 ], 
      [ 1, 1, 1, 2, 2, 2, 0, 2, 2, 1, 2, 1, 1, 2, 2, 1, 2, 1, 1, 2, 2, 1, 2, 1, 1 ], 
      [ 1, 2, 2, 1, 1, 2, 2, 0, 1, 1, 2, 2, 1, 1, 2, 2, 1, 2, 1, 1, 2, 2, 2, 1, 1 ], 
      [ 1, 2, 2, 1, 2, 1, 2, 1, 0, 1, 2, 1, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 1, 1, 2 ], 
      [ 1, 2, 2, 1, 2, 2, 1, 1, 1, 0, 1, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 1, 1, 2, 1 ], 
      [ 1, 2, 2, 2, 1, 1, 2, 2, 2, 1, 0, 1, 1, 1, 2, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2 ], 
      [ 1, 2, 2, 2, 1, 2, 1, 2, 1, 2, 1, 0, 1, 2, 1, 1, 2, 1, 2, 1, 1, 2, 2, 1, 2 ], 
      [ 1, 2, 2, 2, 2, 1, 1, 1, 2, 2, 1, 1, 0, 1, 1, 2, 2, 2, 1, 1, 2, 1, 2, 2, 1 ], 
      [ 2, 1, 2, 1, 1, 2, 2, 1, 2, 2, 1, 2, 1, 0, 1, 1, 2, 2, 1, 2, 2, 1, 1, 1, 2 ], 
      [ 2, 1, 2, 1, 2, 1, 2, 2, 1, 2, 2, 1, 1, 1, 0, 1, 2, 1, 2, 1, 2, 2, 1, 2, 1 ], 
      [ 2, 1, 2, 1, 2, 2, 1, 2, 2, 1, 1, 1, 2, 1, 1, 0, 1, 2, 2, 2, 1, 2, 2, 1, 1 ], 
      [ 2, 1, 2, 2, 1, 1, 2, 1, 2, 1, 1, 2, 2, 2, 2, 1, 0, 1, 1, 1, 1, 2, 2, 2, 1 ], 
      [ 2, 1, 2, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2, 2, 1, 2, 1, 0, 1, 1, 2, 1, 1, 2, 2 ], 
      [ 2, 1, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 1, 1, 2, 2, 1, 1, 0, 2, 1, 1, 2, 1, 2 ], 
      [ 2, 2, 1, 1, 1, 2, 2, 1, 2, 2, 2, 1, 1, 2, 1, 2, 1, 1, 2, 0, 1, 1, 2, 2, 1 ], 
      [ 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 0, 1, 2, 1, 2 ], 
      [ 2, 2, 1, 1, 2, 2, 1, 2, 2, 1, 1, 2, 1, 1, 2, 2, 2, 1, 1, 1, 1, 0, 1, 2, 2 ], 
      [ 2, 2, 1, 2, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 2, 2, 1, 2, 2, 2, 1, 0, 1, 1 ], 
      [ 2, 2, 1, 2, 1, 2, 1, 1, 1, 2, 2, 1, 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 1, 0, 1 ], 
      [ 2, 2, 1, 2, 2, 1, 1, 1, 2, 1, 2, 2, 1, 2, 1, 1, 1, 2, 2, 1, 2, 2, 1, 1, 0 ] ] )