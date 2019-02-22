rec(
  ct := [ [ 1, 6, 7, 7, 7, 1 ], [ 1, 6, -7, -7, 7, 1 ], [ 1, 6, -7, 7, -7, 1 ], 
      [ 1, 6, 7, -7, -7, 1 ], [ 1, -1, 0, 0, 0, 24 ] ],
  matrix := 
   [ [ 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 1, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 1, 1, 0, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 1, 1, 1, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 1, 1, 1, 1, 0, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 1, 1, 1, 1, 1, 0, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 1, 1, 1, 1, 1, 1, 0, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 2, 2, 2, 2, 2, 2, 2, 0, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 2, 2, 2, 2, 2, 2, 1, 0, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 2, 2, 2, 2, 2, 2, 1, 1, 0, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 0, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 0, 1, 1, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 0, 1, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 0, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 1, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 1, 1, 0, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 1, 1, 1, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 1, 1, 1, 1, 0, 1, 1, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 0, 1, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 0, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 0, 1, 1, 1, 1, 1, 1 ], 
      [ 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 0, 1, 1, 1, 1, 1 ], 
      [ 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 0, 1, 1, 1, 1 ], 
      [ 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 0, 1, 1, 1 ], 
      [ 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 0, 1, 1 ], 
      [ 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 0, 1 ], 
      [ 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 0 ] ] )