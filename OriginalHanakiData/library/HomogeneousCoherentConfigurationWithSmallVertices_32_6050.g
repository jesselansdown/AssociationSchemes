rec(
  ct := [ [ 1, 1, 2, 3, 3, 6, 8, 8, 1 ], [ 1, 1, 2, 3, 3, 6, -8, -8, 1 ], 
      [ 1, -1, 0, 3, -3, 0, -4*E(8)+4*E(8)^3, 4*E(8)-4*E(8)^3, 2 ], 
      [ 1, -1, 0, 3, -3, 0, 4*E(8)-4*E(8)^3, -4*E(8)+4*E(8)^3, 2 ], 
      [ 1, 1, -2, 3, 3, -6, 0, 0, 2 ], [ 1, 1, -2, -1, -1, 2, 0, 0, 6 ], 
      [ 1, 1, 2, -1, -1, -2, 0, 0, 6 ], [ 1, -1, 0, -1, 1, 0, 0, 0, 12 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 1, 0, 2, 2, 4, 4, 4, 3, 3, 3, 5, 5, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 2, 2, 0, 1, 5, 5, 5, 5, 5, 5, 3, 3, 3, 4, 4, 4, 6, 6, 6, 6, 7, 7, 
          7, 7, 6, 6, 6, 6, 7, 7, 7, 7 ], 
      [ 2, 2, 1, 0, 5, 5, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 7, 7, 6, 6, 
          6, 6 ], [ 3, 4, 5, 5, 0, 3, 3, 1, 4, 4, 2, 5, 5, 2, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 3, 4, 5, 5, 3, 0, 3, 4, 1, 4, 5, 2, 5, 5, 2, 5, 6, 6, 6, 6, 6, 6, 
          6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 3, 4, 5, 5, 3, 3, 0, 4, 4, 1, 5, 5, 2, 5, 5, 2, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 4, 3, 5, 5, 1, 4, 4, 0, 3, 3, 2, 5, 5, 2, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 4, 3, 5, 5, 4, 1, 4, 3, 0, 3, 5, 2, 5, 5, 2, 5, 7, 7, 7, 7, 7, 7, 
          7, 7, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 4, 3, 5, 5, 4, 4, 1, 3, 3, 0, 5, 5, 2, 5, 5, 2, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 5, 5, 3, 4, 2, 5, 5, 2, 5, 5, 0, 3, 3, 1, 4, 4, 6, 6, 6, 6, 7, 7, 7, 7, 6, 6, 
          6, 6, 7, 7, 7, 7 ], [ 5, 5, 3, 4, 5, 2, 5, 5, 2, 5, 3, 0, 3, 4, 1, 4, 6, 6, 6, 6, 7, 7, 
          7, 7, 6, 6, 6, 6, 7, 7, 7, 7 ], 
      [ 5, 5, 3, 4, 5, 5, 2, 5, 5, 2, 3, 3, 0, 4, 4, 1, 6, 6, 6, 6, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 
          7, 7 ], [ 5, 5, 4, 3, 2, 5, 5, 2, 5, 5, 1, 4, 4, 0, 3, 3, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 
          7, 7, 6, 6, 6, 6 ], [ 5, 5, 4, 3, 5, 2, 5, 5, 2, 5, 4, 1, 4, 3, 0, 3, 7, 7, 7, 7, 6, 6, 
          6, 6, 7, 7, 7, 7, 6, 6, 6, 6 ], 
      [ 5, 5, 4, 3, 5, 5, 2, 5, 5, 2, 4, 4, 1, 3, 3, 0, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 7, 7, 6, 6, 
          6, 6 ], [ 6, 7, 6, 7, 6, 6, 6, 7, 7, 7, 6, 6, 6, 7, 7, 7, 0, 3, 3, 3, 2, 5, 5, 5, 2, 5, 
          5, 5, 1, 4, 4, 4 ], [ 6, 7, 6, 7, 6, 6, 6, 7, 7, 7, 6, 6, 6, 7, 7, 7, 3, 0, 3, 3, 5, 2, 
          5, 5, 5, 2, 5, 5, 4, 1, 4, 4 ], 
      [ 6, 7, 6, 7, 6, 6, 6, 7, 7, 7, 6, 6, 6, 7, 7, 7, 3, 3, 0, 3, 5, 5, 2, 5, 5, 5, 2, 5, 4, 4, 
          1, 4 ], [ 6, 7, 6, 7, 6, 6, 6, 7, 7, 7, 6, 6, 6, 7, 7, 7, 3, 3, 3, 0, 5, 5, 5, 2, 5, 5, 
          5, 2, 4, 4, 4, 1 ], [ 6, 7, 7, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 6, 6, 6, 2, 5, 5, 5, 0, 3, 
          3, 3, 1, 4, 4, 4, 2, 5, 5, 5 ], 
      [ 6, 7, 7, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 6, 6, 6, 5, 2, 5, 5, 3, 0, 3, 3, 4, 1, 4, 4, 5, 2, 
          5, 5 ], [ 6, 7, 7, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 6, 6, 6, 5, 5, 2, 5, 3, 3, 0, 3, 4, 4, 
          1, 4, 5, 5, 2, 5 ], [ 6, 7, 7, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 2, 3, 3, 
          3, 0, 4, 4, 4, 1, 5, 5, 5, 2 ], 
      [ 7, 6, 6, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 7, 7, 7, 2, 5, 5, 5, 1, 4, 4, 4, 0, 3, 3, 3, 2, 5, 
          5, 5 ], [ 7, 6, 6, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 7, 7, 7, 5, 2, 5, 5, 4, 1, 4, 4, 3, 0, 
          3, 3, 5, 2, 5, 5 ], [ 7, 6, 6, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 7, 7, 7, 5, 5, 2, 5, 4, 4, 
          1, 4, 3, 3, 0, 3, 5, 5, 2, 5 ], 
      [ 7, 6, 6, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 7, 7, 7, 5, 5, 5, 2, 4, 4, 4, 1, 3, 3, 3, 0, 5, 5, 
          5, 2 ], [ 7, 6, 7, 6, 7, 7, 7, 6, 6, 6, 7, 7, 7, 6, 6, 6, 1, 4, 4, 4, 2, 5, 5, 5, 2, 5, 
          5, 5, 0, 3, 3, 3 ], [ 7, 6, 7, 6, 7, 7, 7, 6, 6, 6, 7, 7, 7, 6, 6, 6, 4, 1, 4, 4, 5, 2, 
          5, 5, 5, 2, 5, 5, 3, 0, 3, 3 ], 
      [ 7, 6, 7, 6, 7, 7, 7, 6, 6, 6, 7, 7, 7, 6, 6, 6, 4, 4, 1, 4, 5, 5, 2, 5, 5, 5, 2, 5, 3, 3, 
          0, 3 ], [ 7, 6, 7, 6, 7, 7, 7, 6, 6, 6, 7, 7, 7, 6, 6, 6, 4, 4, 4, 1, 5, 5, 5, 2, 5, 5, 
          5, 2, 3, 3, 3, 0 ] ] )