rec(
  ct := [ [ 1, 1, 2, 4, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 2, 4, -4, -4, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 2, 4, -4, -4, 4, 4, -4, -4, 1 ], [ 1, 1, 2, 4, 4, 4, -4, -4, -4, -4, 1 ], 
      [ 1, 1, 2, -4, -4, 4, 0, 0, 0, 0, 2 ], [ 1, 1, 2, -4, 4, -4, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -2, 0, 0, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 0, 0, 4 ], 
      [ 1, 1, -2, 0, 0, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, -2, 2, 8 ], [ 1, -1, 0, 0, 0, 0, 0, 0, 2, -2, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 
          9, 9 ], [ 1, 0, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 9, 9, 
          9, 9, 8, 8, 8, 8 ], [ 2, 2, 0, 1, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 7, 7, 7, 7, 6, 6, 
          6, 6, 8, 8, 9, 9, 8, 8, 9, 9 ], 
      [ 2, 2, 1, 0, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 8, 8, 9, 9, 
          8, 8 ], [ 3, 3, 3, 3, 0, 1, 2, 2, 5, 5, 5, 5, 4, 4, 4, 4, 6, 6, 7, 7, 6, 6, 7, 7, 8, 9, 
          8, 9, 8, 9, 8, 9 ], [ 3, 3, 3, 3, 1, 0, 2, 2, 5, 5, 5, 5, 4, 4, 4, 4, 6, 6, 7, 7, 6, 6, 
          7, 7, 9, 8, 9, 8, 9, 8, 9, 8 ], 
      [ 3, 3, 3, 3, 2, 2, 0, 1, 5, 5, 5, 5, 4, 4, 4, 4, 7, 7, 6, 6, 7, 7, 6, 6, 8, 9, 9, 8, 9, 8, 
          8, 9 ], [ 3, 3, 3, 3, 2, 2, 1, 0, 5, 5, 5, 5, 4, 4, 4, 4, 7, 7, 6, 6, 7, 7, 6, 6, 9, 8, 
          8, 9, 8, 9, 9, 8 ], [ 4, 4, 4, 4, 5, 5, 5, 5, 0, 1, 2, 2, 3, 3, 3, 3, 8, 9, 8, 9, 8, 9, 
          8, 9, 6, 7, 6, 7, 7, 6, 7, 6 ], 
      [ 4, 4, 4, 4, 5, 5, 5, 5, 1, 0, 2, 2, 3, 3, 3, 3, 9, 8, 9, 8, 9, 8, 9, 8, 6, 7, 6, 7, 7, 6, 
          7, 6 ], [ 4, 4, 4, 4, 5, 5, 5, 5, 2, 2, 0, 1, 3, 3, 3, 3, 8, 9, 9, 8, 9, 8, 8, 9, 7, 6, 
          7, 6, 6, 7, 6, 7 ], [ 4, 4, 4, 4, 5, 5, 5, 5, 2, 2, 1, 0, 3, 3, 3, 3, 9, 8, 8, 9, 8, 9, 
          9, 8, 7, 6, 7, 6, 6, 7, 6, 7 ], 
      [ 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 0, 1, 2, 2, 8, 9, 8, 9, 9, 8, 9, 8, 6, 7, 7, 6, 6, 7, 
          7, 6 ], [ 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 1, 0, 2, 2, 9, 8, 9, 8, 8, 9, 8, 9, 6, 7, 
          7, 6, 6, 7, 7, 6 ], [ 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 0, 1, 8, 9, 9, 8, 8, 9, 
          9, 8, 7, 6, 6, 7, 7, 6, 6, 7 ], 
      [ 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 1, 0, 9, 8, 8, 9, 9, 8, 8, 9, 7, 6, 6, 7, 7, 6, 
          6, 7 ], [ 6, 6, 7, 7, 6, 6, 7, 7, 8, 9, 8, 9, 8, 9, 8, 9, 0, 1, 3, 3, 3, 3, 2, 2, 5, 5, 
          4, 4, 4, 4, 5, 5 ], [ 6, 6, 7, 7, 6, 6, 7, 7, 9, 8, 9, 8, 9, 8, 9, 8, 1, 0, 3, 3, 3, 3, 
          2, 2, 5, 5, 4, 4, 4, 4, 5, 5 ], 
      [ 6, 6, 7, 7, 7, 7, 6, 6, 8, 9, 9, 8, 8, 9, 9, 8, 3, 3, 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 
          4, 4 ], [ 6, 6, 7, 7, 7, 7, 6, 6, 9, 8, 8, 9, 9, 8, 8, 9, 3, 3, 1, 0, 2, 2, 3, 3, 4, 4, 
          5, 5, 5, 5, 4, 4 ], [ 7, 7, 6, 6, 6, 6, 7, 7, 8, 9, 9, 8, 9, 8, 8, 9, 3, 3, 2, 2, 0, 1, 
          3, 3, 4, 4, 5, 5, 5, 5, 4, 4 ], 
      [ 7, 7, 6, 6, 6, 6, 7, 7, 9, 8, 8, 9, 8, 9, 9, 8, 3, 3, 2, 2, 1, 0, 3, 3, 4, 4, 5, 5, 5, 5, 
          4, 4 ], [ 7, 7, 6, 6, 7, 7, 6, 6, 8, 9, 8, 9, 9, 8, 9, 8, 2, 2, 3, 3, 3, 3, 0, 1, 5, 5, 
          4, 4, 4, 4, 5, 5 ], [ 7, 7, 6, 6, 7, 7, 6, 6, 9, 8, 9, 8, 8, 9, 8, 9, 2, 2, 3, 3, 3, 3, 
          1, 0, 5, 5, 4, 4, 4, 4, 5, 5 ], 
      [ 8, 9, 8, 9, 8, 9, 8, 9, 6, 6, 7, 7, 6, 6, 7, 7, 5, 5, 4, 4, 4, 4, 5, 5, 0, 2, 3, 3, 3, 3, 
          2, 1 ], [ 8, 9, 8, 9, 9, 8, 9, 8, 7, 7, 6, 6, 7, 7, 6, 6, 5, 5, 4, 4, 4, 4, 5, 5, 2, 0, 
          3, 3, 3, 3, 1, 2 ], [ 8, 9, 9, 8, 8, 9, 9, 8, 6, 6, 7, 7, 7, 7, 6, 6, 4, 4, 5, 5, 5, 5, 
          4, 4, 3, 3, 0, 2, 2, 1, 3, 3 ], 
      [ 8, 9, 9, 8, 9, 8, 8, 9, 7, 7, 6, 6, 6, 6, 7, 7, 4, 4, 5, 5, 5, 5, 4, 4, 3, 3, 2, 0, 1, 2, 
          3, 3 ], [ 9, 8, 8, 9, 8, 9, 9, 8, 7, 7, 6, 6, 6, 6, 7, 7, 4, 4, 5, 5, 5, 5, 4, 4, 3, 3, 
          2, 1, 0, 2, 3, 3 ], [ 9, 8, 8, 9, 9, 8, 8, 9, 6, 6, 7, 7, 7, 7, 6, 6, 4, 4, 5, 5, 5, 5, 
          4, 4, 3, 3, 1, 2, 2, 0, 3, 3 ], 
      [ 9, 8, 9, 8, 8, 9, 8, 9, 7, 7, 6, 6, 7, 7, 6, 6, 5, 5, 4, 4, 4, 4, 5, 5, 2, 1, 3, 3, 3, 3, 
          0, 2 ], [ 9, 8, 9, 8, 9, 8, 9, 8, 6, 6, 7, 7, 6, 6, 7, 7, 5, 5, 4, 4, 4, 4, 5, 5, 1, 2, 
          3, 3, 3, 3, 2, 0 ] ] )