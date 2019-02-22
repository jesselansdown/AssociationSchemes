rec(
  ct := [ [ 1, 1, 2, 2, 2, 8, 8, 8, 1 ], [ 1, 1, 2, 2, 2, 8, -8, -8, 1 ], 
      [ 1, 1, 2, 2, 2, -8, 0, 0, 2 ], [ 1, 1, -2, -2, 2, 0, 0, 0, 4 ], 
      [ 1, 1, -2, 2, -2, 0, 0, 0, 4 ], [ 1, 1, 2, -2, -2, 0, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 8 ], 
      [ 1, -1, 0, 0, 0, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 
          7, 7, 6, 6, 6, 6, 7, 7, 7, 7 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 7, 7, 6, 6, 
          6, 6 ], [ 3, 3, 4, 4, 0, 1, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 7, 7, 6, 6, 7, 7, 6, 6, 
          7, 7, 6, 6, 7, 7 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 7, 7, 6, 6, 7, 7, 
          6, 6, 7, 7, 6, 6, 7, 7, 6, 6 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 6, 6, 7, 7, 6, 6, 6, 6, 
          7, 7 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 5, 5, 5, 5, 5, 5, 5, 5, 7, 7, 6, 6, 6, 6, 7, 7, 6, 6, 
          7, 7, 7, 7, 6, 6 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 0, 1, 2, 2, 3, 3, 4, 4, 6, 7, 6, 7, 6, 7, 
          6, 7, 6, 7, 6, 7, 6, 7, 6, 7 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 2, 2, 3, 3, 4, 4, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 
          7, 6 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 0, 1, 4, 4, 3, 3, 6, 7, 6, 7, 7, 6, 7, 6, 7, 6, 
          7, 6, 6, 7, 6, 7 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 1, 0, 4, 4, 3, 3, 7, 6, 7, 6, 6, 7, 
          6, 7, 6, 7, 6, 7, 7, 6, 7, 6 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 4, 4, 0, 1, 2, 2, 6, 7, 7, 6, 6, 7, 7, 6, 7, 6, 6, 7, 7, 6, 
          6, 7 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 4, 4, 1, 0, 2, 2, 7, 6, 6, 7, 7, 6, 6, 7, 6, 7, 
          7, 6, 6, 7, 7, 6 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 0, 1, 6, 7, 7, 6, 7, 6, 
          6, 7, 6, 7, 7, 6, 7, 6, 6, 7 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 1, 0, 7, 6, 6, 7, 6, 7, 7, 6, 7, 6, 6, 7, 6, 7, 
          7, 6 ], [ 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 0, 5, 3, 5, 4, 5, 5, 2, 2, 5, 
          5, 4, 5, 3, 5, 1 ], [ 6, 7, 6, 7, 6, 7, 6, 7, 7, 6, 7, 6, 7, 6, 7, 6, 5, 0, 5, 3, 5, 4, 
          2, 5, 5, 2, 4, 5, 3, 5, 1, 5 ], 
      [ 6, 7, 6, 7, 7, 6, 7, 6, 6, 7, 6, 7, 7, 6, 7, 6, 3, 5, 0, 5, 2, 5, 5, 4, 4, 5, 5, 2, 5, 1, 
          5, 3 ], [ 6, 7, 6, 7, 7, 6, 7, 6, 7, 6, 7, 6, 6, 7, 6, 7, 5, 3, 5, 0, 5, 2, 4, 5, 5, 4, 
          2, 5, 1, 5, 3, 5 ], [ 6, 7, 7, 6, 6, 7, 7, 6, 6, 7, 7, 6, 6, 7, 7, 6, 4, 5, 2, 5, 0, 5, 
          5, 3, 3, 5, 5, 1, 5, 2, 5, 4 ], 
      [ 6, 7, 7, 6, 6, 7, 7, 6, 7, 6, 6, 7, 7, 6, 6, 7, 5, 4, 5, 2, 5, 0, 3, 5, 5, 3, 1, 5, 2, 5, 
          4, 5 ], [ 6, 7, 7, 6, 7, 6, 6, 7, 6, 7, 7, 6, 7, 6, 6, 7, 5, 2, 5, 4, 5, 3, 0, 5, 5, 1, 
          3, 5, 4, 5, 2, 5 ], [ 6, 7, 7, 6, 7, 6, 6, 7, 7, 6, 6, 7, 6, 7, 7, 6, 2, 5, 4, 5, 3, 5, 
          5, 0, 1, 5, 5, 3, 5, 4, 5, 2 ], 
      [ 7, 6, 6, 7, 6, 7, 7, 6, 6, 7, 7, 6, 7, 6, 6, 7, 2, 5, 4, 5, 3, 5, 5, 1, 0, 5, 5, 3, 5, 4, 
          5, 2 ], [ 7, 6, 6, 7, 6, 7, 7, 6, 7, 6, 6, 7, 6, 7, 7, 6, 5, 2, 5, 4, 5, 3, 1, 5, 5, 0, 
          3, 5, 4, 5, 2, 5 ], [ 7, 6, 6, 7, 7, 6, 6, 7, 6, 7, 7, 6, 6, 7, 7, 6, 5, 4, 5, 2, 5, 1, 
          3, 5, 5, 3, 0, 5, 2, 5, 4, 5 ], 
      [ 7, 6, 6, 7, 7, 6, 6, 7, 7, 6, 6, 7, 7, 6, 6, 7, 4, 5, 2, 5, 1, 5, 5, 3, 3, 5, 5, 0, 5, 2, 
          5, 4 ], [ 7, 6, 7, 6, 6, 7, 6, 7, 6, 7, 6, 7, 7, 6, 7, 6, 5, 3, 5, 1, 5, 2, 4, 5, 5, 4, 
          2, 5, 0, 5, 3, 5 ], [ 7, 6, 7, 6, 6, 7, 6, 7, 7, 6, 7, 6, 6, 7, 6, 7, 3, 5, 1, 5, 2, 5, 
          5, 4, 4, 5, 5, 2, 5, 0, 5, 3 ], 
      [ 7, 6, 7, 6, 7, 6, 7, 6, 6, 7, 6, 7, 6, 7, 6, 7, 5, 1, 5, 3, 5, 4, 2, 5, 5, 2, 4, 5, 3, 5, 
          0, 5 ], [ 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 1, 5, 3, 5, 4, 5, 5, 2, 2, 5, 
          5, 4, 5, 3, 5, 0 ] ] )