rec(
  ct := [ [ 1, 3, 4, 4, 4, 8, 8, 1 ], [ 1, 3, 4, -4, -4, -8, 8, 1 ], [ 1, 3, 4, -4, -4, 8, -8, 1 ],
      [ 1, 3, 4, 4, 4, -8, -8, 1 ], [ 1, 3, -4, 4*E(4), -4*E(4), 0, 0, 2 ], 
      [ 1, 3, -4, -4*E(4), 4*E(4), 0, 0, 2 ], [ 1, -1, 0, 0, 0, 0, 0, 24 ] ],
  matrix := 
   [ [ 0, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 1, 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 1, 1, 0, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 
          5, 5, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 1, 1, 1, 0, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 2, 2, 2, 2, 0, 1, 1, 1, 4, 4, 4, 4, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 2, 2, 2, 2, 1, 0, 1, 1, 4, 4, 4, 4, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 
          5, 5, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 2, 2, 2, 2, 1, 1, 0, 1, 4, 4, 4, 4, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 2, 2, 2, 2, 1, 1, 1, 0, 4, 4, 4, 4, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 4, 4, 4, 4, 3, 3, 3, 3, 0, 1, 1, 1, 2, 2, 2, 2, 6, 6, 6, 6, 6, 6, 
          6, 6, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 4, 4, 4, 4, 3, 3, 3, 3, 1, 0, 1, 1, 2, 2, 2, 2, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 4, 4, 4, 4, 3, 3, 3, 3, 1, 1, 0, 1, 2, 2, 2, 2, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 4, 4, 4, 4, 3, 3, 3, 3, 1, 1, 1, 0, 2, 2, 2, 2, 6, 6, 6, 6, 6, 6, 
          6, 6, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 0, 1, 1, 1, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 1, 0, 1, 1, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 1, 1, 0, 1, 6, 6, 6, 6, 6, 6, 
          6, 6, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 1, 1, 1, 0, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 0, 1, 1, 1, 2, 2, 2, 2, 3, 3, 
          3, 3, 4, 4, 4, 4 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 1, 1, 2, 2, 
          2, 2, 3, 3, 3, 3, 4, 4, 4, 4 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 1, 1, 0, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 
          4, 4 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 1, 1, 1, 0, 2, 2, 2, 2, 3, 3, 
          3, 3, 4, 4, 4, 4 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 2, 2, 2, 2, 0, 1, 
          1, 1, 4, 4, 4, 4, 3, 3, 3, 3 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 2, 2, 2, 2, 1, 0, 1, 1, 4, 4, 4, 4, 3, 3, 
          3, 3 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 2, 2, 2, 2, 1, 1, 0, 1, 4, 4, 
          4, 4, 3, 3, 3, 3 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 2, 2, 2, 2, 1, 1, 
          1, 0, 4, 4, 4, 4, 3, 3, 3, 3 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 0, 1, 1, 1, 2, 2, 
          2, 2 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 1, 0, 
          1, 1, 2, 2, 2, 2 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 
          3, 3, 1, 1, 0, 1, 2, 2, 2, 2 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 1, 1, 1, 0, 2, 2, 
          2, 2 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 
          2, 2, 0, 1, 1, 1 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 3, 3, 4, 4, 
          4, 4, 2, 2, 2, 2, 1, 0, 1, 1 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 1, 1, 
          0, 1 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 
          2, 2, 1, 1, 1, 0 ] ] )