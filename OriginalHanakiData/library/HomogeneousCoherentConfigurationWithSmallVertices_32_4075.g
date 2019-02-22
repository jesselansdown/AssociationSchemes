rec(
  ct := [ [ 1, 1, 3, 3, 12, 12, 1 ], [ 1, 1, 3, 3, -4, -4, 3 ], [ 1, -1, 3, -3, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -4, 4, 6 ], [ 1, 1, -1, -1, 4, -4, 6 ], [ 1, -1, -1, 1, 0, 0, 12 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 1, 0, 3, 3, 3, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 2, 3, 0, 2, 2, 1, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 
          4, 4, 4, 4, 4, 4, 5, 5, 5, 5 ], 
      [ 2, 3, 2, 0, 2, 3, 1, 3, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 
          4, 4 ], [ 2, 3, 2, 2, 0, 3, 3, 1, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 
          4, 4, 4, 4, 4, 4 ], [ 3, 2, 1, 3, 3, 0, 2, 2, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 
          4, 4, 4, 4, 4, 4, 5, 5, 5, 5 ], 
      [ 3, 2, 3, 1, 3, 2, 0, 2, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 
          4, 4 ], [ 3, 2, 3, 3, 1, 2, 2, 0, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 
          4, 4, 4, 4, 4, 4 ], [ 4, 4, 4, 5, 5, 4, 5, 5, 0, 1, 2, 3, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 
          5, 5, 4, 4, 5, 5, 2, 2, 3, 3 ], 
      [ 4, 4, 4, 5, 5, 4, 5, 5, 1, 0, 3, 2, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 3, 3, 
          2, 2 ], [ 4, 4, 4, 5, 5, 4, 5, 5, 2, 3, 0, 1, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 
          4, 4, 2, 2, 3, 3 ], [ 4, 4, 4, 5, 5, 4, 5, 5, 3, 2, 1, 0, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 
          4, 4, 5, 5, 4, 4, 3, 3, 2, 2 ], 
      [ 4, 4, 5, 4, 5, 5, 4, 5, 4, 4, 5, 5, 0, 1, 4, 4, 5, 5, 2, 3, 2, 3, 5, 5, 4, 4, 2, 3, 4, 5, 
          4, 5 ], [ 4, 4, 5, 4, 5, 5, 4, 5, 4, 4, 5, 5, 1, 0, 4, 4, 5, 5, 3, 2, 3, 2, 5, 5, 4, 4, 
          3, 2, 4, 5, 4, 5 ], [ 4, 4, 5, 4, 5, 5, 4, 5, 5, 5, 4, 4, 4, 4, 0, 1, 2, 3, 5, 5, 5, 5, 
          2, 3, 2, 3, 4, 4, 5, 4, 5, 4 ], 
      [ 4, 4, 5, 4, 5, 5, 4, 5, 5, 5, 4, 4, 4, 4, 1, 0, 3, 2, 5, 5, 5, 5, 3, 2, 3, 2, 4, 4, 5, 4, 
          5, 4 ], [ 4, 4, 5, 5, 4, 5, 5, 4, 4, 4, 5, 5, 5, 5, 2, 3, 0, 1, 4, 4, 4, 4, 2, 3, 2, 3, 
          5, 5, 5, 4, 5, 4 ], [ 4, 4, 5, 5, 4, 5, 5, 4, 4, 4, 5, 5, 5, 5, 3, 2, 1, 0, 4, 4, 4, 4, 
          3, 2, 3, 2, 5, 5, 5, 4, 5, 4 ], 
      [ 4, 4, 5, 5, 4, 5, 5, 4, 5, 5, 4, 4, 2, 3, 5, 5, 4, 4, 0, 1, 2, 3, 4, 4, 5, 5, 2, 3, 4, 5, 
          4, 5 ], [ 4, 4, 5, 5, 4, 5, 5, 4, 5, 5, 4, 4, 3, 2, 5, 5, 4, 4, 1, 0, 3, 2, 4, 4, 5, 5, 
          3, 2, 4, 5, 4, 5 ], [ 5, 5, 4, 4, 5, 4, 4, 5, 4, 4, 5, 5, 2, 3, 5, 5, 4, 4, 2, 3, 0, 1, 
          4, 4, 5, 5, 2, 3, 5, 4, 5, 4 ], 
      [ 5, 5, 4, 4, 5, 4, 4, 5, 4, 4, 5, 5, 3, 2, 5, 5, 4, 4, 3, 2, 1, 0, 4, 4, 5, 5, 3, 2, 5, 4, 
          5, 4 ], [ 5, 5, 4, 4, 5, 4, 4, 5, 5, 5, 4, 4, 5, 5, 2, 3, 2, 3, 4, 4, 4, 4, 0, 1, 2, 3, 
          5, 5, 4, 5, 4, 5 ], [ 5, 5, 4, 4, 5, 4, 4, 5, 5, 5, 4, 4, 5, 5, 3, 2, 3, 2, 4, 4, 4, 4, 
          1, 0, 3, 2, 5, 5, 4, 5, 4, 5 ], 
      [ 5, 5, 4, 5, 4, 4, 5, 4, 4, 4, 5, 5, 4, 4, 2, 3, 2, 3, 5, 5, 5, 5, 2, 3, 0, 1, 4, 4, 4, 5, 
          4, 5 ], [ 5, 5, 4, 5, 4, 4, 5, 4, 4, 4, 5, 5, 4, 4, 3, 2, 3, 2, 5, 5, 5, 5, 3, 2, 1, 0, 
          4, 4, 4, 5, 4, 5 ], [ 5, 5, 4, 5, 4, 4, 5, 4, 5, 5, 4, 4, 2, 3, 4, 4, 5, 5, 2, 3, 2, 3, 
          5, 5, 4, 4, 0, 1, 5, 4, 5, 4 ], 
      [ 5, 5, 4, 5, 4, 4, 5, 4, 5, 5, 4, 4, 3, 2, 4, 4, 5, 5, 3, 2, 3, 2, 5, 5, 4, 4, 1, 0, 5, 4, 
          5, 4 ], [ 5, 5, 5, 4, 4, 5, 4, 4, 2, 3, 2, 3, 4, 4, 5, 5, 5, 5, 4, 4, 5, 5, 4, 4, 4, 4, 
          5, 5, 0, 2, 1, 3 ], [ 5, 5, 5, 4, 4, 5, 4, 4, 2, 3, 2, 3, 5, 5, 4, 4, 4, 4, 5, 5, 4, 4, 
          5, 5, 5, 5, 4, 4, 2, 0, 3, 1 ], 
      [ 5, 5, 5, 4, 4, 5, 4, 4, 3, 2, 3, 2, 4, 4, 5, 5, 5, 5, 4, 4, 5, 5, 4, 4, 4, 4, 5, 5, 1, 3, 
          0, 2 ], [ 5, 5, 5, 4, 4, 5, 4, 4, 3, 2, 3, 2, 5, 5, 4, 4, 4, 4, 5, 5, 4, 4, 5, 5, 5, 5, 
          4, 4, 3, 1, 2, 0 ] ] )