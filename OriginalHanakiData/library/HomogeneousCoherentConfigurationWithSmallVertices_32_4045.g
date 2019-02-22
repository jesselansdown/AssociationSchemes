rec(
  ct := [ [ 1, 1, 2, 8, 8, 12, 1 ], [ 1, 1, 2, -8, -8, 12, 1 ], [ 1, 1, 2, 0, 0, -4, 6 ], 
      [ 1, -1, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 0, 8 ], 
      [ 1, -1, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 0, 8 ], [ 1, 1, -2, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 1, 0, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 2, 2, 0, 1, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 2, 2, 1, 0, 4, 4, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 3, 4, 3, 4, 0, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 1, 5, 5, 5, 3, 3, 3, 3, 3, 3, 
          4, 4, 4, 4, 4, 4 ], [ 3, 4, 3, 4, 5, 0, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 1, 5, 5, 3, 3, 
          4, 4, 4, 4, 3, 3, 3, 3, 4, 4 ], 
      [ 3, 4, 3, 4, 5, 5, 0, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 1, 5, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 
          3, 3 ], [ 3, 4, 3, 4, 5, 5, 5, 0, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 1, 4, 4, 4, 4, 3, 3, 
          4, 4, 3, 3, 3, 3 ], [ 3, 4, 4, 3, 2, 5, 5, 5, 0, 5, 5, 5, 1, 5, 5, 5, 2, 5, 5, 5, 3, 4, 
          3, 4, 3, 4, 3, 4, 3, 4, 3, 4 ], 
      [ 3, 4, 4, 3, 5, 2, 5, 5, 5, 0, 5, 5, 5, 1, 5, 5, 5, 2, 5, 5, 3, 4, 4, 3, 4, 3, 4, 3, 4, 3, 
          3, 4 ], [ 3, 4, 4, 3, 5, 5, 2, 5, 5, 5, 0, 5, 5, 5, 1, 5, 5, 5, 2, 5, 4, 3, 3, 4, 4, 3, 
          4, 3, 3, 4, 4, 3 ], [ 3, 4, 4, 3, 5, 5, 5, 2, 5, 5, 5, 0, 5, 5, 5, 1, 5, 5, 5, 2, 4, 3, 
          4, 3, 3, 4, 3, 4, 4, 3, 4, 3 ], 
      [ 4, 3, 3, 4, 2, 5, 5, 5, 1, 5, 5, 5, 0, 5, 5, 5, 2, 5, 5, 5, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 
          4, 3 ], [ 4, 3, 3, 4, 5, 2, 5, 5, 5, 1, 5, 5, 5, 0, 5, 5, 5, 2, 5, 5, 4, 3, 3, 4, 3, 4, 
          3, 4, 3, 4, 4, 3 ], [ 4, 3, 3, 4, 5, 5, 2, 5, 5, 5, 1, 5, 5, 5, 0, 5, 5, 5, 2, 5, 3, 4, 
          4, 3, 3, 4, 3, 4, 4, 3, 3, 4 ], 
      [ 4, 3, 3, 4, 5, 5, 5, 2, 5, 5, 5, 1, 5, 5, 5, 0, 5, 5, 5, 2, 3, 4, 3, 4, 4, 3, 4, 3, 3, 4, 
          3, 4 ], [ 4, 3, 4, 3, 1, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 0, 5, 5, 5, 4, 4, 4, 4, 4, 4, 
          3, 3, 3, 3, 3, 3 ], [ 4, 3, 4, 3, 5, 1, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 0, 5, 5, 4, 4, 
          3, 3, 3, 3, 4, 4, 4, 4, 3, 3 ], 
      [ 4, 3, 4, 3, 5, 5, 1, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 0, 5, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 
          4, 4 ], [ 4, 3, 4, 3, 5, 5, 5, 1, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 0, 3, 3, 3, 3, 4, 4, 
          3, 3, 4, 4, 4, 4 ], [ 5, 5, 5, 5, 3, 3, 4, 4, 3, 3, 4, 4, 4, 4, 3, 3, 4, 4, 3, 3, 0, 2, 
          5, 5, 5, 5, 5, 5, 5, 5, 2, 1 ], 
      [ 5, 5, 5, 5, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 2, 0, 5, 5, 5, 5, 5, 5, 5, 5, 
          1, 2 ], [ 5, 5, 5, 5, 3, 4, 3, 4, 3, 4, 3, 4, 4, 3, 4, 3, 4, 3, 4, 3, 5, 5, 0, 5, 5, 2, 
          2, 5, 5, 1, 5, 5 ], [ 5, 5, 5, 5, 3, 4, 3, 4, 4, 3, 4, 3, 3, 4, 3, 4, 4, 3, 4, 3, 5, 5, 
          5, 0, 2, 5, 5, 2, 1, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 3, 4, 4, 3, 3, 4, 4, 3, 4, 3, 3, 4, 4, 3, 3, 4, 5, 5, 5, 2, 0, 5, 5, 1, 2, 5, 
          5, 5 ], [ 5, 5, 5, 5, 3, 4, 4, 3, 4, 3, 3, 4, 3, 4, 4, 3, 4, 3, 3, 4, 5, 5, 2, 5, 5, 0, 
          1, 5, 5, 2, 5, 5 ], [ 5, 5, 5, 5, 4, 3, 3, 4, 3, 4, 4, 3, 4, 3, 3, 4, 3, 4, 4, 3, 5, 5, 
          2, 5, 5, 1, 0, 5, 5, 2, 5, 5 ], 
      [ 5, 5, 5, 5, 4, 3, 3, 4, 4, 3, 3, 4, 3, 4, 4, 3, 3, 4, 4, 3, 5, 5, 5, 2, 1, 5, 5, 0, 2, 5, 
          5, 5 ], [ 5, 5, 5, 5, 4, 3, 4, 3, 3, 4, 3, 4, 4, 3, 4, 3, 3, 4, 3, 4, 5, 5, 5, 1, 2, 5, 
          5, 2, 0, 5, 5, 5 ], [ 5, 5, 5, 5, 4, 3, 4, 3, 4, 3, 4, 3, 3, 4, 3, 4, 3, 4, 3, 4, 5, 5, 
          1, 5, 5, 2, 2, 5, 5, 0, 5, 5 ], 
      [ 5, 5, 5, 5, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 4, 4, 2, 1, 5, 5, 5, 5, 5, 5, 5, 5, 
          0, 2 ], [ 5, 5, 5, 5, 4, 4, 3, 3, 4, 4, 3, 3, 3, 3, 4, 4, 3, 3, 4, 4, 1, 2, 5, 5, 5, 5, 
          5, 5, 5, 5, 2, 0 ] ] )