rec(
  ct := [ [ 1, 1, 2, 2, 2, 4, 4, 8, 8, 1 ], [ 1, 1, 2, 2, 2, 4, 4, -8, -8, 1 ], 
      [ 1, 1, 2, -2, -2, -4, 4, 0, 0, 2 ], [ 1, 1, 2, -2, -2, 4, -4, 0, 0, 2 ], 
      [ 1, 1, 2, 2, 2, -4, -4, 0, 0, 2 ], [ 1, 1, -2, -2, 2, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -2, 2, -2, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 8 ], 
      [ 1, -1, 0, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 
          8, 8 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 
          8, 8, 7, 7, 7, 7, 8, 8, 8, 8 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 8, 8, 8, 8, 7, 7, 
          7, 7 ], [ 3, 3, 4, 4, 0, 1, 2, 2, 6, 6, 6, 6, 5, 5, 5, 5, 7, 7, 8, 8, 7, 7, 8, 8, 7, 7, 
          8, 8, 7, 7, 8, 8 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 6, 6, 6, 6, 5, 5, 5, 5, 8, 8, 7, 7, 8, 8, 
          7, 7, 8, 8, 7, 7, 8, 8, 7, 7 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 6, 6, 6, 6, 5, 5, 5, 5, 7, 7, 8, 8, 8, 8, 7, 7, 8, 8, 7, 7, 7, 7, 
          8, 8 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 6, 6, 6, 6, 5, 5, 5, 5, 8, 8, 7, 7, 7, 7, 8, 8, 7, 7, 
          8, 8, 8, 8, 7, 7 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 0, 1, 2, 2, 3, 3, 4, 4, 7, 8, 7, 8, 7, 8, 
          7, 8, 7, 8, 7, 8, 7, 8, 7, 8 ], 
      [ 5, 5, 5, 5, 6, 6, 6, 6, 1, 0, 2, 2, 3, 3, 4, 4, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 
          8, 7 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 2, 2, 0, 1, 4, 4, 3, 3, 7, 8, 7, 8, 8, 7, 8, 7, 8, 7, 
          8, 7, 7, 8, 7, 8 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 2, 2, 1, 0, 4, 4, 3, 3, 8, 7, 8, 7, 7, 8, 
          7, 8, 7, 8, 7, 8, 8, 7, 8, 7 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 3, 3, 4, 4, 0, 1, 2, 2, 7, 8, 8, 7, 8, 7, 7, 8, 7, 8, 8, 7, 8, 7, 
          7, 8 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 3, 3, 4, 4, 1, 0, 2, 2, 8, 7, 7, 8, 7, 8, 8, 7, 8, 7, 
          7, 8, 7, 8, 8, 7 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 0, 1, 7, 8, 8, 7, 7, 8, 
          8, 7, 8, 7, 7, 8, 8, 7, 7, 8 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 1, 0, 8, 7, 7, 8, 8, 7, 7, 8, 7, 8, 8, 7, 7, 8, 
          8, 7 ], [ 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 0, 3, 6, 5, 2, 5, 4, 6, 6, 4, 
          5, 2, 5, 6, 3, 1 ], [ 8, 7, 8, 7, 8, 7, 8, 7, 7, 8, 7, 8, 7, 8, 7, 8, 3, 0, 5, 6, 4, 6, 
          2, 5, 5, 2, 6, 4, 6, 5, 1, 3 ], 
      [ 8, 7, 8, 7, 7, 8, 7, 8, 8, 7, 8, 7, 7, 8, 7, 8, 6, 5, 0, 3, 6, 4, 5, 2, 2, 5, 4, 6, 3, 1, 
          5, 6 ], [ 8, 7, 8, 7, 7, 8, 7, 8, 7, 8, 7, 8, 8, 7, 8, 7, 5, 6, 3, 0, 5, 2, 6, 4, 4, 6, 
          2, 5, 1, 3, 6, 5 ], [ 8, 7, 7, 8, 8, 7, 7, 8, 8, 7, 7, 8, 7, 8, 8, 7, 2, 4, 6, 5, 0, 5, 
          3, 6, 6, 3, 5, 1, 5, 6, 4, 2 ], 
      [ 8, 7, 7, 8, 8, 7, 7, 8, 7, 8, 8, 7, 8, 7, 7, 8, 5, 6, 4, 2, 5, 0, 6, 3, 3, 6, 1, 5, 2, 4, 
          6, 5 ], [ 8, 7, 7, 8, 7, 8, 8, 7, 8, 7, 7, 8, 8, 7, 7, 8, 4, 2, 5, 6, 3, 6, 0, 5, 5, 1, 
          6, 3, 6, 5, 2, 4 ], [ 8, 7, 7, 8, 7, 8, 8, 7, 7, 8, 8, 7, 7, 8, 8, 7, 6, 5, 2, 4, 6, 3, 
          5, 0, 1, 5, 3, 6, 4, 2, 5, 6 ], 
      [ 7, 8, 8, 7, 8, 7, 7, 8, 8, 7, 7, 8, 8, 7, 7, 8, 6, 5, 2, 4, 6, 3, 5, 1, 0, 5, 3, 6, 4, 2, 
          5, 6 ], [ 7, 8, 8, 7, 8, 7, 7, 8, 7, 8, 8, 7, 7, 8, 8, 7, 4, 2, 5, 6, 3, 6, 1, 5, 5, 0, 
          6, 3, 6, 5, 2, 4 ], [ 7, 8, 8, 7, 7, 8, 8, 7, 8, 7, 7, 8, 7, 8, 8, 7, 5, 6, 4, 2, 5, 1, 
          6, 3, 3, 6, 0, 5, 2, 4, 6, 5 ], 
      [ 7, 8, 8, 7, 7, 8, 8, 7, 7, 8, 8, 7, 8, 7, 7, 8, 2, 4, 6, 5, 1, 5, 3, 6, 6, 3, 5, 0, 5, 6, 
          4, 2 ], [ 7, 8, 7, 8, 8, 7, 8, 7, 8, 7, 8, 7, 7, 8, 7, 8, 5, 6, 3, 1, 5, 2, 6, 4, 4, 6, 
          2, 5, 0, 3, 6, 5 ], [ 7, 8, 7, 8, 8, 7, 8, 7, 7, 8, 7, 8, 8, 7, 8, 7, 6, 5, 1, 3, 6, 4, 
          5, 2, 2, 5, 4, 6, 3, 0, 5, 6 ], 
      [ 7, 8, 7, 8, 7, 8, 7, 8, 8, 7, 8, 7, 8, 7, 8, 7, 3, 1, 5, 6, 4, 6, 2, 5, 5, 2, 6, 4, 6, 5, 
          0, 3 ], [ 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 1, 3, 6, 5, 2, 5, 4, 6, 6, 4, 
          5, 2, 5, 6, 3, 0 ] ] )