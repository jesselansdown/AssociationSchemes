rec(
  ct := [ [ 1, 3, 12, 12, 1 ], [ 1, 3, -2, -2, 6 ], [ 1, -1, 4, -4, 7 ], [ 1, -1, -2, 2, 14 ] ],
  matrix := 
   [ [ 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3 ], 
      [ 1, 1, 0, 1, 3, 3, 3, 3, 2, 2, 2, 2, 3, 3, 3, 3, 2, 2, 2, 2, 3, 3, 3, 3, 2, 2, 2, 2 ], 
      [ 1, 1, 1, 0, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 2, 2, 3, 3, 0, 1, 2, 2, 2, 2, 2, 3, 2, 3, 3, 3, 2, 3, 3, 3, 2, 2, 2, 3, 1, 1, 3, 3 ], 
      [ 2, 2, 3, 3, 1, 0, 2, 2, 3, 3, 3, 2, 3, 2, 2, 2, 3, 2, 2, 2, 3, 3, 3, 2, 1, 1, 3, 3 ], 
      [ 2, 2, 3, 3, 2, 2, 0, 1, 2, 2, 3, 3, 2, 2, 3, 3, 3, 2, 2, 3, 2, 3, 3, 2, 3, 3, 1, 1 ], 
      [ 2, 2, 3, 3, 2, 2, 1, 0, 3, 3, 2, 2, 3, 3, 2, 2, 2, 3, 3, 2, 3, 2, 2, 3, 3, 3, 1, 1 ], 
      [ 2, 3, 2, 3, 2, 3, 2, 3, 0, 2, 2, 1, 2, 2, 3, 3, 2, 2, 3, 3, 3, 1, 3, 1, 2, 3, 2, 3 ], 
      [ 2, 3, 2, 3, 2, 3, 2, 3, 2, 0, 2, 2, 2, 1, 3, 3, 3, 3, 2, 1, 2, 3, 1, 3, 3, 2, 3, 2 ], 
      [ 2, 3, 2, 3, 2, 3, 3, 2, 2, 2, 0, 2, 3, 3, 1, 2, 2, 1, 3, 3, 1, 3, 2, 3, 2, 3, 3, 2 ], 
      [ 2, 3, 2, 3, 3, 2, 3, 2, 1, 2, 2, 0, 3, 3, 2, 2, 3, 3, 2, 2, 3, 1, 3, 1, 3, 2, 3, 2 ], 
      [ 2, 3, 3, 2, 2, 3, 2, 3, 2, 2, 3, 3, 0, 2, 2, 1, 1, 3, 1, 3, 2, 2, 3, 3, 3, 2, 2, 3 ], 
      [ 2, 3, 3, 2, 3, 2, 2, 3, 2, 1, 3, 3, 2, 0, 2, 2, 3, 2, 3, 1, 3, 3, 1, 2, 2, 3, 2, 3 ], 
      [ 2, 3, 3, 2, 3, 2, 3, 2, 3, 3, 1, 2, 2, 2, 0, 2, 3, 1, 3, 2, 1, 2, 3, 3, 3, 2, 2, 3 ], 
      [ 2, 3, 3, 2, 3, 2, 3, 2, 3, 3, 2, 2, 1, 2, 2, 0, 1, 3, 1, 3, 3, 3, 2, 2, 2, 3, 3, 2 ], 
      [ 3, 2, 2, 3, 2, 3, 3, 2, 2, 3, 2, 3, 1, 3, 3, 1, 0, 2, 1, 2, 3, 2, 2, 3, 2, 3, 2, 3 ], 
      [ 3, 2, 2, 3, 3, 2, 2, 3, 2, 3, 1, 3, 3, 2, 1, 3, 2, 0, 2, 2, 1, 3, 3, 2, 2, 3, 2, 3 ], 
      [ 3, 2, 2, 3, 3, 2, 2, 3, 3, 2, 3, 2, 1, 3, 3, 1, 1, 2, 0, 2, 2, 3, 3, 2, 3, 2, 3, 2 ], 
      [ 3, 2, 2, 3, 3, 2, 3, 2, 3, 1, 3, 2, 3, 1, 2, 3, 2, 2, 2, 0, 3, 2, 1, 3, 3, 2, 2, 3 ], 
      [ 3, 2, 3, 2, 2, 3, 2, 3, 3, 2, 1, 3, 2, 3, 1, 3, 3, 1, 2, 3, 0, 2, 2, 2, 3, 2, 3, 2 ], 
      [ 3, 2, 3, 2, 2, 3, 3, 2, 1, 3, 3, 1, 2, 3, 2, 3, 2, 3, 3, 2, 2, 0, 2, 1, 3, 2, 2, 3 ], 
      [ 3, 2, 3, 2, 2, 3, 3, 2, 3, 1, 2, 3, 3, 1, 3, 2, 2, 3, 3, 1, 2, 2, 0, 2, 2, 3, 3, 2 ], 
      [ 3, 2, 3, 2, 3, 2, 2, 3, 1, 3, 3, 1, 3, 2, 3, 2, 3, 2, 2, 3, 2, 1, 2, 0, 2, 3, 3, 2 ], 
      [ 3, 3, 2, 2, 1, 1, 3, 3, 2, 3, 2, 3, 3, 2, 3, 2, 2, 2, 3, 3, 3, 3, 2, 2, 0, 1, 2, 2 ], 
      [ 3, 3, 2, 2, 1, 1, 3, 3, 3, 2, 3, 2, 2, 3, 2, 3, 3, 3, 2, 2, 2, 2, 3, 3, 1, 0, 2, 2 ], 
      [ 3, 3, 2, 2, 3, 3, 1, 1, 2, 3, 3, 3, 2, 2, 2, 3, 2, 2, 3, 2, 3, 2, 3, 3, 2, 2, 0, 1 ], 
      [ 3, 3, 2, 2, 3, 3, 1, 1, 3, 2, 2, 2, 3, 3, 3, 2, 3, 3, 2, 3, 2, 3, 2, 2, 2, 2, 1, 0 ] ] )