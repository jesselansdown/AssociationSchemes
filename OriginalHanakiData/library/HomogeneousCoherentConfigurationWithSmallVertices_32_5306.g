rec(
  ct := [ [ 1, 1, 3, 3, 6, 6, 12, 1 ], [ 1, 1, 3, 3, -2, -2, -4, 3 ], [ 1, -1, 3, -3, 0, 0, 0, 4 ],
      [ 1, -1, -1, 1, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 0, 6 ], 
      [ 1, -1, -1, 1, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 0, 6 ], [ 1, 1, -1, -1, -2, -2, 4, 6 ], 
      [ 1, 1, -1, -1, 2, 2, -4, 6 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 1, 0, 3, 3, 3, 2, 2, 2, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 2, 3, 0, 2, 2, 1, 3, 3, 5, 5, 6, 6, 6, 6, 4, 4, 6, 6, 6, 6, 4, 4, 
          4, 4, 5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 2, 3, 2, 0, 2, 3, 1, 3, 6, 6, 5, 5, 6, 6, 6, 6, 4, 4, 6, 6, 5, 5, 6, 6, 4, 4, 6, 6, 4, 4, 
          5, 5 ], [ 2, 3, 2, 2, 0, 3, 3, 1, 6, 6, 6, 6, 5, 5, 6, 6, 6, 6, 4, 4, 6, 6, 5, 5, 6, 6, 
          4, 4, 5, 5, 4, 4 ], [ 3, 2, 1, 3, 3, 0, 2, 2, 4, 4, 6, 6, 6, 6, 5, 5, 6, 6, 6, 6, 5, 5, 
          5, 5, 4, 4, 4, 4, 6, 6, 6, 6 ], 
      [ 3, 2, 3, 1, 3, 2, 0, 2, 6, 6, 4, 4, 6, 6, 6, 6, 5, 5, 6, 6, 4, 4, 6, 6, 5, 5, 6, 6, 5, 5, 
          4, 4 ], [ 3, 2, 3, 3, 1, 2, 2, 0, 6, 6, 6, 6, 4, 4, 6, 6, 6, 6, 5, 5, 6, 6, 4, 4, 6, 6, 
          5, 5, 4, 4, 5, 5 ], [ 5, 4, 4, 6, 6, 5, 6, 6, 0, 3, 4, 6, 5, 6, 1, 2, 5, 6, 4, 6, 5, 6, 
          4, 6, 4, 6, 5, 6, 2, 3, 2, 3 ], 
      [ 5, 4, 4, 6, 6, 5, 6, 6, 3, 0, 6, 5, 6, 4, 2, 1, 6, 4, 6, 5, 6, 4, 6, 5, 6, 5, 6, 4, 3, 2, 
          3, 2 ], [ 5, 4, 6, 4, 6, 6, 5, 6, 5, 6, 0, 3, 4, 6, 4, 6, 1, 2, 5, 6, 6, 5, 3, 2, 6, 4, 
          2, 3, 6, 5, 4, 6 ], [ 5, 4, 6, 4, 6, 6, 5, 6, 6, 4, 3, 0, 6, 5, 6, 5, 2, 1, 6, 4, 4, 6, 
          2, 3, 5, 6, 3, 2, 4, 6, 6, 5 ], 
      [ 5, 4, 6, 6, 4, 6, 6, 5, 4, 6, 5, 6, 0, 3, 5, 6, 4, 6, 1, 2, 3, 2, 6, 4, 2, 3, 6, 5, 5, 6, 
          6, 4 ], [ 5, 4, 6, 6, 4, 6, 6, 5, 6, 5, 6, 4, 3, 0, 6, 4, 6, 5, 2, 1, 2, 3, 5, 6, 3, 2, 
          4, 6, 6, 4, 5, 6 ], [ 4, 5, 5, 6, 6, 4, 6, 6, 1, 2, 5, 6, 4, 6, 0, 3, 4, 6, 5, 6, 4, 6, 
          5, 6, 5, 6, 4, 6, 3, 2, 3, 2 ], 
      [ 4, 5, 5, 6, 6, 4, 6, 6, 2, 1, 6, 4, 6, 5, 3, 0, 6, 5, 6, 4, 6, 5, 6, 4, 6, 4, 6, 5, 2, 3, 
          2, 3 ], [ 4, 5, 6, 5, 6, 6, 4, 6, 4, 6, 1, 2, 5, 6, 5, 6, 0, 3, 4, 6, 6, 4, 2, 3, 6, 5, 
          3, 2, 6, 4, 5, 6 ], [ 4, 5, 6, 5, 6, 6, 4, 6, 6, 5, 2, 1, 6, 4, 6, 4, 3, 0, 6, 5, 5, 6, 
          3, 2, 4, 6, 2, 3, 5, 6, 6, 4 ], 
      [ 4, 5, 6, 6, 5, 6, 6, 4, 5, 6, 4, 6, 1, 2, 4, 6, 5, 6, 0, 3, 2, 3, 6, 5, 3, 2, 6, 4, 4, 6, 
          6, 5 ], [ 4, 5, 6, 6, 5, 6, 6, 4, 6, 4, 6, 5, 2, 1, 6, 5, 6, 4, 3, 0, 3, 2, 4, 6, 2, 3, 
          5, 6, 6, 5, 4, 6 ], [ 6, 6, 5, 4, 6, 4, 5, 6, 4, 6, 6, 5, 3, 2, 5, 6, 6, 4, 2, 3, 0, 3, 
          4, 6, 1, 2, 5, 6, 5, 6, 6, 4 ], 
      [ 6, 6, 5, 4, 6, 4, 5, 6, 6, 5, 4, 6, 2, 3, 6, 4, 5, 6, 3, 2, 3, 0, 6, 5, 2, 1, 6, 4, 6, 4, 
          5, 6 ], [ 6, 6, 5, 6, 4, 4, 6, 5, 5, 6, 3, 2, 6, 4, 4, 6, 2, 3, 6, 5, 5, 6, 0, 3, 4, 6, 
          1, 2, 6, 5, 4, 6 ], [ 6, 6, 5, 6, 4, 4, 6, 5, 6, 4, 2, 3, 5, 6, 6, 5, 3, 2, 4, 6, 6, 4, 
          3, 0, 6, 5, 2, 1, 4, 6, 6, 5 ], 
      [ 6, 6, 4, 5, 6, 5, 4, 6, 5, 6, 6, 4, 2, 3, 4, 6, 6, 5, 3, 2, 1, 2, 5, 6, 0, 3, 4, 6, 4, 6, 
          6, 5 ], [ 6, 6, 4, 5, 6, 5, 4, 6, 6, 4, 5, 6, 3, 2, 6, 5, 4, 6, 2, 3, 2, 1, 6, 4, 3, 0, 
          6, 5, 6, 5, 4, 6 ], [ 6, 6, 4, 6, 5, 5, 6, 4, 4, 6, 2, 3, 6, 5, 5, 6, 3, 2, 6, 4, 4, 6, 
          1, 2, 5, 6, 0, 3, 6, 4, 5, 6 ], 
      [ 6, 6, 4, 6, 5, 5, 6, 4, 6, 5, 3, 2, 4, 6, 6, 4, 2, 3, 5, 6, 6, 5, 2, 1, 6, 4, 3, 0, 5, 6, 
          6, 4 ], [ 6, 6, 6, 5, 4, 6, 4, 5, 2, 3, 6, 5, 4, 6, 3, 2, 6, 4, 5, 6, 4, 6, 6, 5, 5, 6, 
          6, 4, 0, 3, 2, 1 ], [ 6, 6, 6, 5, 4, 6, 4, 5, 3, 2, 4, 6, 6, 5, 2, 3, 5, 6, 6, 4, 6, 5, 
          4, 6, 6, 4, 5, 6, 3, 0, 1, 2 ], 
      [ 6, 6, 6, 4, 5, 6, 5, 4, 2, 3, 5, 6, 6, 4, 3, 2, 4, 6, 6, 5, 6, 4, 5, 6, 6, 5, 4, 6, 2, 1, 
          0, 3 ], [ 6, 6, 6, 4, 5, 6, 5, 4, 3, 2, 6, 4, 5, 6, 2, 3, 6, 5, 4, 6, 5, 6, 6, 4, 4, 6, 
          6, 5, 1, 2, 3, 0 ] ] )