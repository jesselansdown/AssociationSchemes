rec(
  ct := [ [ 1, 3, 4, 6, 6, 12, 1 ], [ 1, 3, -4, -6, -6, 12, 1 ], [ 1, 3, -4, 2, 2, -4, 3 ], 
      [ 1, 3, 4, -2, -2, -4, 3 ], [ 1, -1, 0, -2, 2, 0, 12 ], [ 1, -1, 0, 2, -2, 0, 12 ] ],
  matrix := 
   [ [ 0, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 1, 0, 1, 1, 2, 2, 2, 2, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 1, 1, 0, 1, 2, 2, 2, 2, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 1, 1, 1, 0, 2, 2, 2, 2, 4, 4, 4, 4, 3, 3, 4, 4, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 2, 2, 2, 2, 0, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 3, 3, 3, 3, 
          4, 4, 4, 4, 4, 4 ], [ 2, 2, 2, 2, 1, 0, 1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 
          4, 4, 4, 4, 3, 3, 3, 3, 4, 4 ], 
      [ 2, 2, 2, 2, 1, 1, 0, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 
          3, 3 ], [ 2, 2, 2, 2, 1, 1, 1, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 
          4, 4, 3, 3, 3, 3 ], [ 3, 3, 4, 4, 5, 5, 5, 5, 0, 1, 5, 5, 5, 5, 5, 5, 5, 5, 1, 1, 2, 2, 
          3, 4, 3, 4, 3, 4, 3, 4, 2, 2 ], 
      [ 3, 3, 4, 4, 5, 5, 5, 5, 1, 0, 5, 5, 5, 5, 5, 5, 5, 5, 1, 1, 2, 2, 4, 3, 4, 3, 4, 3, 4, 3, 
          2, 2 ], [ 3, 4, 3, 4, 5, 5, 5, 5, 5, 5, 0, 5, 1, 5, 1, 5, 1, 5, 5, 5, 3, 4, 2, 3, 2, 4, 
          4, 2, 3, 2, 3, 4 ], [ 3, 4, 3, 4, 5, 5, 5, 5, 5, 5, 5, 0, 5, 1, 5, 1, 5, 1, 5, 5, 4, 3, 
          3, 2, 4, 2, 2, 4, 2, 3, 4, 3 ], 
      [ 3, 4, 4, 3, 5, 5, 5, 5, 5, 5, 1, 5, 0, 5, 1, 5, 1, 5, 5, 5, 4, 3, 2, 4, 2, 3, 3, 2, 4, 2, 
          3, 4 ], [ 3, 4, 4, 3, 5, 5, 5, 5, 5, 5, 5, 1, 5, 0, 5, 1, 5, 1, 5, 5, 3, 4, 4, 2, 3, 2, 
          2, 3, 2, 4, 4, 3 ], [ 4, 3, 3, 4, 5, 5, 5, 5, 5, 5, 1, 5, 1, 5, 0, 5, 1, 5, 5, 5, 3, 4, 
          2, 4, 2, 3, 3, 2, 4, 2, 4, 3 ], 
      [ 4, 3, 3, 4, 5, 5, 5, 5, 5, 5, 5, 1, 5, 1, 5, 0, 5, 1, 5, 5, 4, 3, 4, 2, 3, 2, 2, 3, 2, 4, 
          3, 4 ], [ 4, 3, 4, 3, 5, 5, 5, 5, 5, 5, 1, 5, 1, 5, 1, 5, 0, 5, 5, 5, 4, 3, 2, 3, 2, 4, 
          4, 2, 3, 2, 4, 3 ], [ 4, 3, 4, 3, 5, 5, 5, 5, 5, 5, 5, 1, 5, 1, 5, 1, 5, 0, 5, 5, 3, 4, 
          3, 2, 4, 2, 2, 4, 2, 3, 3, 4 ], 
      [ 4, 4, 3, 3, 5, 5, 5, 5, 1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 0, 1, 2, 2, 3, 4, 4, 3, 4, 3, 3, 4, 
          2, 2 ], [ 4, 4, 3, 3, 5, 5, 5, 5, 1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 2, 2, 4, 3, 3, 4, 
          3, 4, 4, 3, 2, 2 ], [ 5, 5, 5, 5, 3, 3, 4, 4, 2, 2, 3, 4, 4, 3, 3, 4, 4, 3, 2, 2, 0, 1, 
          5, 5, 5, 5, 5, 5, 5, 5, 1, 1 ], 
      [ 5, 5, 5, 5, 3, 3, 4, 4, 2, 2, 4, 3, 3, 4, 4, 3, 3, 4, 2, 2, 1, 0, 5, 5, 5, 5, 5, 5, 5, 5, 
          1, 1 ], [ 5, 5, 5, 5, 3, 4, 3, 4, 3, 4, 2, 3, 2, 4, 2, 4, 2, 3, 3, 4, 5, 5, 0, 5, 1, 5, 
          5, 1, 5, 1, 5, 5 ], [ 5, 5, 5, 5, 3, 4, 3, 4, 4, 3, 3, 2, 4, 2, 4, 2, 3, 2, 4, 3, 5, 5, 
          5, 0, 5, 1, 1, 5, 1, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 3, 4, 4, 3, 3, 4, 2, 4, 2, 3, 2, 3, 2, 4, 4, 3, 5, 5, 1, 5, 0, 5, 5, 1, 5, 1, 
          5, 5 ], [ 5, 5, 5, 5, 3, 4, 4, 3, 4, 3, 4, 2, 3, 2, 3, 2, 4, 2, 3, 4, 5, 5, 5, 1, 5, 0, 
          1, 5, 1, 5, 5, 5 ], [ 5, 5, 5, 5, 4, 3, 3, 4, 3, 4, 4, 2, 3, 2, 3, 2, 4, 2, 4, 3, 5, 5, 
          5, 1, 5, 1, 0, 5, 1, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 4, 3, 3, 4, 4, 3, 2, 4, 2, 3, 2, 3, 2, 4, 3, 4, 5, 5, 1, 5, 1, 5, 5, 0, 5, 1, 
          5, 5 ], [ 5, 5, 5, 5, 4, 3, 4, 3, 3, 4, 3, 2, 4, 2, 4, 2, 3, 2, 3, 4, 5, 5, 5, 1, 5, 1, 
          1, 5, 0, 5, 5, 5 ], [ 5, 5, 5, 5, 4, 3, 4, 3, 4, 3, 2, 3, 2, 4, 2, 4, 2, 3, 4, 3, 5, 5, 
          1, 5, 1, 5, 5, 1, 5, 0, 5, 5 ], 
      [ 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 3, 4, 3, 4, 4, 3, 4, 3, 2, 2, 1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 
          0, 1 ], [ 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 4, 3, 4, 3, 3, 4, 3, 4, 2, 2, 1, 1, 5, 5, 5, 5, 
          5, 5, 5, 5, 1, 0 ] ] )