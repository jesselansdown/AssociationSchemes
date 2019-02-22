rec(
  ct := [ [ 1, 3, 4, 12, 12, 1 ], [ 1, 3, 4, -4, -4, 3 ], [ 1, 3, -4, 0, 0, 4 ], 
      [ 1, -1, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 12 ], 
      [ 1, -1, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 12 ] ],
  matrix := 
   [ [ 0, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 
          4, 4 ], [ 1, 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 
          3, 3, 4, 4, 4, 4 ], [ 1, 1, 0, 1, 2, 2, 2, 2, 4, 4, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 
          3, 3, 4, 4, 4, 4, 3, 3, 3, 3 ], 
      [ 1, 1, 1, 0, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 
          3, 3 ], [ 2, 2, 2, 2, 0, 1, 1, 1, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 
          4, 4, 3, 3, 3, 3 ], [ 2, 2, 2, 2, 1, 0, 1, 1, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 4, 4, 3, 3, 
          4, 4, 4, 4, 3, 3, 3, 3, 4, 4 ], 
      [ 2, 2, 2, 2, 1, 1, 0, 1, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 
          3, 3 ], [ 2, 2, 2, 2, 1, 1, 1, 0, 4, 4, 4, 4, 3, 3, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          4, 4, 4, 4, 4, 4 ], [ 3, 3, 4, 4, 3, 3, 4, 4, 0, 3, 2, 4, 3, 4, 3, 4, 1, 4, 2, 3, 2, 3, 
          1, 4, 3, 4, 3, 4, 2, 4, 1, 3 ], 
      [ 3, 3, 4, 4, 3, 3, 4, 4, 3, 0, 4, 2, 4, 3, 4, 3, 4, 1, 3, 2, 3, 2, 4, 1, 4, 3, 4, 3, 4, 2, 
          3, 1 ], [ 3, 3, 4, 4, 3, 4, 3, 4, 2, 4, 0, 3, 3, 4, 3, 4, 2, 3, 1, 4, 1, 4, 2, 3, 4, 3, 
          3, 4, 1, 3, 2, 4 ], [ 3, 3, 4, 4, 3, 4, 3, 4, 4, 2, 3, 0, 4, 3, 4, 3, 3, 2, 4, 1, 4, 1, 
          3, 2, 3, 4, 4, 3, 3, 1, 4, 2 ], 
      [ 3, 4, 3, 4, 3, 4, 4, 3, 3, 4, 3, 4, 0, 1, 2, 2, 4, 3, 4, 3, 4, 3, 4, 3, 2, 2, 1, 1, 3, 4, 
          3, 4 ], [ 3, 4, 3, 4, 3, 4, 4, 3, 4, 3, 4, 3, 1, 0, 2, 2, 3, 4, 3, 4, 3, 4, 3, 4, 2, 2, 
          1, 1, 4, 3, 4, 3 ], [ 3, 4, 3, 4, 4, 3, 3, 4, 3, 4, 3, 4, 2, 2, 0, 1, 4, 3, 4, 3, 3, 4, 
          3, 4, 1, 1, 2, 2, 4, 3, 4, 3 ], 
      [ 3, 4, 3, 4, 4, 3, 3, 4, 4, 3, 4, 3, 2, 2, 1, 0, 3, 4, 3, 4, 4, 3, 4, 3, 1, 1, 2, 2, 3, 4, 
          3, 4 ], [ 3, 4, 4, 3, 4, 3, 4, 3, 1, 4, 2, 3, 4, 3, 4, 3, 0, 3, 2, 4, 2, 4, 1, 3, 3, 4, 
          3, 4, 2, 3, 1, 4 ], [ 3, 4, 4, 3, 4, 3, 4, 3, 4, 1, 3, 2, 3, 4, 3, 4, 3, 0, 4, 2, 4, 2, 
          3, 1, 4, 3, 4, 3, 3, 2, 4, 1 ], 
      [ 3, 4, 4, 3, 4, 4, 3, 3, 2, 3, 1, 4, 4, 3, 4, 3, 2, 4, 0, 3, 1, 3, 2, 4, 4, 3, 3, 4, 1, 4, 
          2, 3 ], [ 3, 4, 4, 3, 4, 4, 3, 3, 3, 2, 4, 1, 3, 4, 3, 4, 4, 2, 3, 0, 3, 1, 4, 2, 3, 4, 
          4, 3, 4, 1, 3, 2 ], [ 4, 3, 3, 4, 4, 3, 4, 3, 2, 3, 1, 4, 4, 3, 3, 4, 2, 4, 1, 3, 0, 4, 
          2, 3, 3, 4, 4, 3, 1, 3, 2, 4 ], 
      [ 4, 3, 3, 4, 4, 3, 4, 3, 3, 2, 4, 1, 3, 4, 4, 3, 4, 2, 3, 1, 4, 0, 3, 2, 4, 3, 3, 4, 3, 1, 
          4, 2 ], [ 4, 3, 3, 4, 4, 4, 3, 3, 1, 4, 2, 3, 4, 3, 3, 4, 1, 3, 2, 4, 2, 3, 0, 4, 4, 3, 
          4, 3, 2, 4, 1, 3 ], [ 4, 3, 3, 4, 4, 4, 3, 3, 4, 1, 3, 2, 3, 4, 4, 3, 3, 1, 4, 2, 3, 2, 
          4, 0, 3, 4, 3, 4, 4, 2, 3, 1 ], 
      [ 4, 3, 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 2, 2, 1, 1, 3, 4, 4, 3, 3, 4, 4, 3, 0, 1, 2, 2, 3, 4, 
          4, 3 ], [ 4, 3, 4, 3, 3, 4, 4, 3, 4, 3, 3, 4, 2, 2, 1, 1, 4, 3, 3, 4, 4, 3, 3, 4, 1, 0, 
          2, 2, 4, 3, 3, 4 ], [ 4, 3, 4, 3, 4, 3, 3, 4, 3, 4, 3, 4, 1, 1, 2, 2, 3, 4, 3, 4, 4, 3, 
          4, 3, 2, 2, 0, 1, 4, 3, 4, 3 ], 
      [ 4, 3, 4, 3, 4, 3, 3, 4, 4, 3, 4, 3, 1, 1, 2, 2, 4, 3, 4, 3, 3, 4, 3, 4, 2, 2, 1, 0, 3, 4, 
          3, 4 ], [ 4, 4, 3, 3, 3, 3, 4, 4, 2, 4, 1, 3, 3, 4, 4, 3, 2, 3, 1, 4, 1, 3, 2, 4, 3, 4, 
          4, 3, 0, 4, 2, 3 ], [ 4, 4, 3, 3, 3, 3, 4, 4, 4, 2, 3, 1, 4, 3, 3, 4, 3, 2, 4, 1, 3, 1, 
          4, 2, 4, 3, 3, 4, 4, 0, 3, 2 ], 
      [ 4, 4, 3, 3, 3, 4, 3, 4, 1, 3, 2, 4, 3, 4, 4, 3, 1, 4, 2, 3, 2, 4, 1, 3, 4, 3, 4, 3, 2, 3, 
          0, 4 ], [ 4, 4, 3, 3, 3, 4, 3, 4, 3, 1, 4, 2, 4, 3, 3, 4, 4, 1, 3, 2, 4, 2, 3, 1, 3, 4, 
          3, 4, 3, 2, 4, 0 ] ] )