rec(
  ct := [ [ 1, 10, 16, 1 ], [ 1, -5, 4, 6 ], [ 1, 1, -2, 20 ] ],
  matrix := [ [ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 1, 0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 1, 1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1 ], 
      [ 1, 2, 2, 0, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2 ], 
      [ 1, 2, 2, 1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1 ], 
      [ 1, 2, 2, 2, 2, 0, 1, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2 ], 
      [ 1, 2, 2, 2, 2, 1, 0, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1 ], 
      [ 1, 2, 2, 2, 2, 2, 2, 0, 1, 2, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2 ], 
      [ 1, 2, 2, 2, 2, 2, 2, 1, 0, 2, 2, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1 ], 
      [ 1, 2, 2, 2, 2, 2, 2, 2, 2, 0, 1, 1, 2, 2, 1, 2, 1, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1 ], 
      [ 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 0, 2, 1, 1, 2, 1, 2, 2, 1, 1, 2, 2, 1, 2, 1, 1, 2 ], 
      [ 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 0, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 1, 1, 1 ], 
      [ 2, 1, 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 0, 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 1, 2, 1, 1 ], 
      [ 2, 1, 2, 1, 2, 2, 1, 1, 2, 2, 1, 2, 2, 0, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 2, 1 ], 
      [ 2, 1, 2, 1, 2, 2, 1, 2, 1, 1, 2, 2, 2, 2, 0, 1, 2, 2, 2, 1, 2, 2, 2, 1, 1, 1, 2 ], 
      [ 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 2, 2, 1, 0, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 1 ], 
      [ 2, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 2, 1, 2, 2, 0, 2, 2, 1, 2, 1, 1, 2, 2, 1, 2 ], 
      [ 2, 1, 2, 2, 1, 2, 1, 1, 2, 1, 2, 2, 1, 2, 2, 2, 2, 0, 2, 1, 1, 2, 1, 2, 1, 2, 2 ], 
      [ 2, 1, 2, 2, 1, 2, 1, 2, 1, 2, 1, 1, 2, 2, 2, 2, 2, 2, 0, 1, 1, 1, 2, 1, 2, 2, 2 ], 
      [ 2, 2, 1, 1, 2, 1, 2, 1, 2, 2, 1, 2, 2, 2, 1, 2, 1, 1, 1, 0, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 2, 2, 1, 1, 2, 1, 2, 2, 1, 1, 2, 2, 2, 1, 2, 1, 2, 1, 1, 2, 0, 2, 2, 2, 2, 1, 2 ], 
      [ 2, 2, 1, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 0, 2, 2, 1, 2, 2 ], 
      [ 2, 2, 1, 1, 2, 2, 1, 2, 1, 2, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2, 2, 0, 1, 2, 2, 2 ], 
      [ 2, 2, 1, 2, 1, 1, 2, 1, 2, 1, 2, 2, 1, 1, 1, 2, 2, 2, 1, 2, 2, 2, 1, 0, 2, 2, 2 ], 
      [ 2, 2, 1, 2, 1, 1, 2, 2, 1, 2, 1, 1, 2, 1, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 0, 2, 2 ], 
      [ 2, 2, 1, 2, 1, 2, 1, 1, 2, 2, 1, 1, 1, 2, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 0, 2 ], 
      [ 2, 2, 1, 2, 1, 2, 1, 2, 1, 1, 2, 1, 1, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 0 ] ] )