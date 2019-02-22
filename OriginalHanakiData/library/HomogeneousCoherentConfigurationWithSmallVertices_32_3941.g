rec(
  ct := [ [ 1, 1, 2, 2, 2, 24, 1 ], [ 1, 1, 2, 2, 2, -8, 3 ], [ 1, 1, -2, -2, 2, 0, 4 ], 
      [ 1, 1, -2, 2, -2, 0, 4 ], [ 1, 1, 2, -2, -2, 0, 4 ], [ 1, -1, 0, 0, 0, 0, 16 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 3, 3, 4, 4, 0, 1, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 1, 0, 4, 4, 3, 3, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 4, 4, 0, 1, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 4, 4, 1, 0, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 0, 1, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 1, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 2, 2, 3, 3, 
          4, 4, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 1, 0, 4, 4, 3, 3, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 4, 4, 0, 1, 
          2, 2, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 4, 4, 1, 0, 2, 2, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 0, 1, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 
          1, 0, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 1, 2, 2, 3, 3, 
          4, 4 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 
          2, 2, 3, 3, 4, 4 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 2, 2, 0, 1, 4, 4, 3, 3 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 1, 0, 4, 4, 
          3, 3 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 
          4, 4, 0, 1, 2, 2 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 3, 3, 4, 4, 1, 0, 2, 2 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 
          0, 1 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 
          3, 3, 2, 2, 1, 0 ] ] )