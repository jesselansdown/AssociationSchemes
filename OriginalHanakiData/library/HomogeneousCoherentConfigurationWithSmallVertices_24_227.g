rec(
  ct := [ [ 1, 3, 4, 4, 4, 4, 4, 1 ], [ 1, 3, -4, -4, -4, 4, 4, 1 ], [ 2, 6, 0, 0, 0, -4, -4, 2 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 18 ] ],
  matrix := [ [ 0, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 1, 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 1, 1, 0, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 1, 1, 1, 0, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 2, 2, 2, 2, 0, 1, 1, 1, 5, 5, 5, 5, 6, 6, 6, 6, 3, 3, 3, 3, 4, 4, 4, 4 ], 
      [ 2, 2, 2, 2, 1, 0, 1, 1, 5, 5, 5, 5, 6, 6, 6, 6, 3, 3, 3, 3, 4, 4, 4, 4 ], 
      [ 2, 2, 2, 2, 1, 1, 0, 1, 5, 5, 5, 5, 6, 6, 6, 6, 3, 3, 3, 3, 4, 4, 4, 4 ], 
      [ 2, 2, 2, 2, 1, 1, 1, 0, 5, 5, 5, 5, 6, 6, 6, 6, 3, 3, 3, 3, 4, 4, 4, 4 ], 
      [ 3, 3, 3, 3, 6, 6, 6, 6, 0, 1, 1, 1, 5, 5, 5, 5, 4, 4, 4, 4, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 6, 6, 6, 6, 1, 0, 1, 1, 5, 5, 5, 5, 4, 4, 4, 4, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 6, 6, 6, 6, 1, 1, 0, 1, 5, 5, 5, 5, 4, 4, 4, 4, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 6, 6, 6, 6, 1, 1, 1, 0, 5, 5, 5, 5, 4, 4, 4, 4, 2, 2, 2, 2 ], 
      [ 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 0, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3 ], 
      [ 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 1, 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3 ], 
      [ 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 1, 1, 0, 1, 2, 2, 2, 2, 3, 3, 3, 3 ], 
      [ 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 1, 1, 1, 0, 2, 2, 2, 2, 3, 3, 3, 3 ], 
      [ 6, 6, 6, 6, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 0, 1, 1, 1, 5, 5, 5, 5 ], 
      [ 6, 6, 6, 6, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 1, 0, 1, 1, 5, 5, 5, 5 ], 
      [ 6, 6, 6, 6, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 1, 1, 0, 1, 5, 5, 5, 5 ], 
      [ 6, 6, 6, 6, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 1, 1, 1, 0, 5, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 4, 4, 4, 4, 2, 2, 2, 2, 3, 3, 3, 3, 6, 6, 6, 6, 0, 1, 1, 1 ], 
      [ 5, 5, 5, 5, 4, 4, 4, 4, 2, 2, 2, 2, 3, 3, 3, 3, 6, 6, 6, 6, 1, 0, 1, 1 ], 
      [ 5, 5, 5, 5, 4, 4, 4, 4, 2, 2, 2, 2, 3, 3, 3, 3, 6, 6, 6, 6, 1, 1, 0, 1 ], 
      [ 5, 5, 5, 5, 4, 4, 4, 4, 2, 2, 2, 2, 3, 3, 3, 3, 6, 6, 6, 6, 1, 1, 1, 0 ] ] )