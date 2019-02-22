rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 4, 4, 8, 8, 1 ], [ 1, 1, 1, 1, 2, 2, 4, 4, -8, -8, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -4, -4, 0, 0, 2 ], [ 1, -1, -1, 1, 0, 0, 0, 0, 4*E(4), -4*E(4), 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -4*E(4), 4*E(4), 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 4 ], [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 4 ], 
      [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 
          8, 8, 8, 8, 8, 8 ], [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 6, 6, 7, 7, 7, 7, 9, 9, 9, 9, 9, 9, 
          9, 9, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 6, 7, 7, 6, 6, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 8, 8, 
          8, 8, 9, 9, 9, 9 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 6, 6, 7, 7, 6, 6, 9, 9, 9, 9, 8, 8, 
          8, 8, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 6, 6, 7, 7, 6, 6, 7, 7, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 9, 9, 8, 8, 
          8, 8 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 7, 7, 6, 6, 7, 7, 6, 6, 8, 8, 8, 8, 9, 9, 9, 9, 8, 8, 
          8, 8, 9, 9, 9, 9 ], [ 7, 6, 7, 6, 7, 6, 7, 6, 0, 2, 4, 5, 4, 5, 1, 3, 8, 8, 9, 9, 8, 8, 
          9, 9, 8, 8, 9, 9, 8, 8, 9, 9 ], 
      [ 7, 6, 7, 6, 7, 6, 7, 6, 2, 0, 5, 4, 5, 4, 3, 1, 9, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 8, 9, 9, 
          8, 8 ], [ 7, 6, 7, 6, 6, 7, 6, 7, 4, 5, 0, 2, 1, 3, 4, 5, 8, 8, 9, 9, 9, 9, 8, 8, 9, 9, 
          8, 8, 8, 8, 9, 9 ], [ 7, 6, 7, 6, 6, 7, 6, 7, 5, 4, 2, 0, 3, 1, 5, 4, 9, 9, 8, 8, 8, 8, 
          9, 9, 8, 8, 9, 9, 9, 9, 8, 8 ], 
      [ 6, 7, 6, 7, 7, 6, 7, 6, 4, 5, 1, 3, 0, 2, 4, 5, 9, 9, 8, 8, 8, 8, 9, 9, 8, 8, 9, 9, 9, 9, 
          8, 8 ], [ 6, 7, 6, 7, 7, 6, 7, 6, 5, 4, 3, 1, 2, 0, 5, 4, 8, 8, 9, 9, 9, 9, 8, 8, 9, 9, 
          8, 8, 8, 8, 9, 9 ], [ 6, 7, 6, 7, 6, 7, 6, 7, 1, 3, 4, 5, 4, 5, 0, 2, 9, 9, 8, 8, 9, 9, 
          8, 8, 9, 9, 8, 8, 9, 9, 8, 8 ], 
      [ 6, 7, 6, 7, 6, 7, 6, 7, 3, 1, 5, 4, 5, 4, 2, 0, 8, 8, 9, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 8, 
          9, 9 ], [ 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 9, 8, 8, 9, 8, 9, 0, 3, 6, 7, 4, 5, 6, 7, 6, 7, 
          4, 5, 6, 7, 1, 2 ], [ 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 9, 8, 8, 9, 8, 9, 3, 0, 7, 6, 5, 4, 
          7, 6, 7, 6, 5, 4, 7, 6, 2, 1 ], 
      [ 9, 8, 8, 9, 9, 8, 8, 9, 8, 9, 8, 9, 9, 8, 9, 8, 7, 6, 0, 3, 6, 7, 5, 4, 4, 5, 7, 6, 2, 1, 
          6, 7 ], [ 9, 8, 8, 9, 9, 8, 8, 9, 8, 9, 8, 9, 9, 8, 9, 8, 6, 7, 3, 0, 7, 6, 4, 5, 5, 4, 
          6, 7, 1, 2, 7, 6 ], [ 9, 8, 8, 9, 8, 9, 9, 8, 9, 8, 8, 9, 9, 8, 8, 9, 4, 5, 7, 6, 0, 3, 
          6, 7, 6, 7, 1, 2, 7, 6, 4, 5 ], 
      [ 9, 8, 8, 9, 8, 9, 9, 8, 9, 8, 8, 9, 9, 8, 8, 9, 5, 4, 6, 7, 3, 0, 7, 6, 7, 6, 2, 1, 6, 7, 
          5, 4 ], [ 9, 8, 8, 9, 8, 9, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 7, 6, 5, 4, 7, 6, 0, 3, 2, 1, 
          6, 7, 4, 5, 6, 7 ], [ 9, 8, 8, 9, 8, 9, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 6, 7, 4, 5, 6, 7, 
          3, 0, 1, 2, 7, 6, 5, 4, 7, 6 ], 
      [ 8, 9, 9, 8, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 8, 9, 7, 6, 4, 5, 7, 6, 2, 1, 0, 3, 6, 7, 5, 4, 
          6, 7 ], [ 8, 9, 9, 8, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 8, 9, 6, 7, 5, 4, 6, 7, 1, 2, 3, 0, 
          7, 6, 4, 5, 7, 6 ], [ 8, 9, 9, 8, 9, 8, 8, 9, 8, 9, 9, 8, 8, 9, 9, 8, 4, 5, 6, 7, 1, 2, 
          7, 6, 7, 6, 0, 3, 6, 7, 4, 5 ], 
      [ 8, 9, 9, 8, 9, 8, 8, 9, 8, 9, 9, 8, 8, 9, 9, 8, 5, 4, 7, 6, 2, 1, 6, 7, 6, 7, 3, 0, 7, 6, 
          5, 4 ], [ 8, 9, 9, 8, 8, 9, 9, 8, 9, 8, 9, 8, 8, 9, 8, 9, 7, 6, 2, 1, 6, 7, 4, 5, 5, 4, 
          7, 6, 0, 3, 6, 7 ], [ 8, 9, 9, 8, 8, 9, 9, 8, 9, 8, 9, 8, 8, 9, 8, 9, 6, 7, 1, 2, 7, 6, 
          5, 4, 4, 5, 6, 7, 3, 0, 7, 6 ], 
      [ 8, 9, 9, 8, 8, 9, 9, 8, 8, 9, 8, 9, 9, 8, 9, 8, 1, 2, 7, 6, 4, 5, 7, 6, 7, 6, 4, 5, 7, 6, 
          0, 3 ], [ 8, 9, 9, 8, 8, 9, 9, 8, 8, 9, 8, 9, 9, 8, 9, 8, 2, 1, 6, 7, 5, 4, 6, 7, 6, 7, 
          5, 4, 6, 7, 3, 0 ] ] )