rec(
  ct := [ [ 1, 2, 8, 16, 1 ], [ 1, -1, 8, -8, 2 ], [ 1, 2, -1, -2, 8 ], [ 1, -1, -1, 1, 16 ] ],
  matrix := [ [ 0, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 0, 1, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 1, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 2, 3, 3, 0, 2, 2, 2, 2, 2, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 3, 3, 2, 0, 2, 2, 2, 2, 2, 2, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 3, 3, 2, 2, 0, 2, 2, 2, 2, 2, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3 ], 
      [ 2, 3, 3, 2, 2, 2, 0, 2, 2, 2, 2, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3 ], 
      [ 2, 3, 3, 2, 2, 2, 2, 0, 2, 2, 2, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3 ], 
      [ 2, 3, 3, 2, 2, 2, 2, 2, 0, 2, 2, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3 ], 
      [ 2, 3, 3, 2, 2, 2, 2, 2, 2, 0, 2, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3 ], 
      [ 2, 3, 3, 2, 2, 2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 3, 2, 3, 1, 3, 3, 3, 3, 3, 3, 3, 0, 2, 2, 2, 2, 2, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 3, 2, 3, 3, 1, 3, 3, 3, 3, 3, 3, 2, 0, 2, 2, 2, 2, 2, 2, 3, 1, 3, 3, 3, 3, 3, 3 ], 
      [ 3, 2, 3, 3, 3, 1, 3, 3, 3, 3, 3, 2, 2, 0, 2, 2, 2, 2, 2, 3, 3, 1, 3, 3, 3, 3, 3 ], 
      [ 3, 2, 3, 3, 3, 3, 1, 3, 3, 3, 3, 2, 2, 2, 0, 2, 2, 2, 2, 3, 3, 3, 1, 3, 3, 3, 3 ], 
      [ 3, 2, 3, 3, 3, 3, 3, 1, 3, 3, 3, 2, 2, 2, 2, 0, 2, 2, 2, 3, 3, 3, 3, 1, 3, 3, 3 ], 
      [ 3, 2, 3, 3, 3, 3, 3, 3, 1, 3, 3, 2, 2, 2, 2, 2, 0, 2, 2, 3, 3, 3, 3, 3, 1, 3, 3 ], 
      [ 3, 2, 3, 3, 3, 3, 3, 3, 3, 1, 3, 2, 2, 2, 2, 2, 2, 0, 2, 3, 3, 3, 3, 3, 3, 1, 3 ], 
      [ 3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 3, 3, 2, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 0, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 2, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 2, 0, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 2, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 2, 2, 0, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 2, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 2, 2, 2, 0, 2, 2, 2, 2 ], 
      [ 3, 3, 2, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 2, 2, 2, 2, 0, 2, 2, 2 ], 
      [ 3, 3, 2, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 2, 2, 2, 2, 2, 0, 2, 2 ], 
      [ 3, 3, 2, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 2, 2, 2, 2, 2, 2, 0, 2 ], 
      [ 3, 3, 2, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 2, 2, 2, 2, 2, 0 ] ] )