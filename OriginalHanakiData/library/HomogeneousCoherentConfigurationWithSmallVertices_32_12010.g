rec(
  ct := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 8, 8, 1 ], [ 1, 1, 2, 2, 2, 2, 2, 2, 2, -8, -8, 1 ], 
      [ 1, 1, 2, -2, -2, -2, -2, 2, 2, 0, 0, 2 ], [ 1, 1, 2, -2, -2, 2, 2, -2, -2, 0, 0, 2 ], 
      [ 1, 1, 2, 2, 2, -2, -2, -2, -2, 0, 0, 2 ], [ 2, 2, -4, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 8 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 
          10, 10, 10 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 10, 10, 10, 10, 10, 10, 
          10, 10, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 
          10, 10, 10, 10 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 10, 10, 10, 10, 9, 
          9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 3, 3, 4, 4, 0, 1, 2, 2, 7, 7, 8, 8, 5, 5, 6, 6, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 
          9, 9, 10, 10 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 7, 7, 8, 8, 5, 5, 6, 6, 10, 10, 9, 9, 10, 10, 
          9, 9, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 8, 8, 7, 7, 6, 6, 5, 5, 9, 9, 10, 10, 10, 10, 9, 9, 10, 10, 9, 9, 
          9, 9, 10, 10 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 8, 8, 7, 7, 6, 6, 5, 5, 10, 10, 9, 9, 9, 9, 
          10, 10, 9, 9, 10, 10, 10, 10, 9, 9 ], 
      [ 5, 5, 6, 6, 8, 8, 7, 7, 0, 1, 2, 2, 4, 4, 3, 3, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 
          9, 10, 9, 10 ], [ 5, 5, 6, 6, 8, 8, 7, 7, 1, 0, 2, 2, 4, 4, 3, 3, 10, 9, 10, 9, 10, 9, 
          10, 9, 10, 9, 10, 9, 10, 9, 10, 9 ], 
      [ 6, 6, 5, 5, 7, 7, 8, 8, 2, 2, 0, 1, 3, 3, 4, 4, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 
          10, 9, 9, 10 ], [ 6, 6, 5, 5, 7, 7, 8, 8, 2, 2, 1, 0, 3, 3, 4, 4, 10, 9, 9, 10, 10, 9, 
          9, 10, 9, 10, 10, 9, 9, 10, 10, 9 ], 
      [ 8, 8, 7, 7, 5, 5, 6, 6, 4, 4, 3, 3, 0, 1, 2, 2, 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 10, 9, 
          9, 10, 9, 10 ], [ 8, 8, 7, 7, 5, 5, 6, 6, 4, 4, 3, 3, 1, 0, 2, 2, 10, 9, 10, 9, 9, 10, 
          9, 10, 9, 10, 9, 10, 10, 9, 10, 9 ], 
      [ 7, 7, 8, 8, 6, 6, 5, 5, 3, 3, 4, 4, 2, 2, 0, 1, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 
          10, 9, 9, 10 ], [ 7, 7, 8, 8, 6, 6, 5, 5, 3, 3, 4, 4, 2, 2, 1, 0, 10, 9, 9, 10, 9, 10, 
          10, 9, 10, 9, 9, 10, 9, 10, 10, 9 ], 
      [ 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 0, 5, 4, 7, 8, 3, 2, 6, 6, 2, 3, 
          8, 7, 4, 5, 1 ], [ 10, 9, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 9, 10, 5, 0, 7, 4, 
          3, 8, 6, 2, 2, 6, 8, 3, 4, 7, 1, 5 ], 
      [ 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 4, 8, 0, 6, 5, 2, 3, 7, 7, 3, 2, 
          5, 6, 1, 8, 4 ], [ 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 8, 4, 6, 0, 
          2, 5, 7, 3, 3, 7, 5, 2, 1, 6, 4, 8 ], 
      [ 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 7, 3, 5, 2, 0, 6, 8, 4, 4, 8, 6, 
          1, 2, 5, 3, 7 ], [ 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 10, 9, 3, 7, 2, 5, 
          6, 0, 4, 8, 8, 4, 1, 6, 5, 2, 7, 3 ], 
      [ 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 2, 6, 3, 8, 7, 4, 0, 5, 5, 1, 4, 
          7, 8, 3, 6, 2 ], [ 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 6, 2, 8, 3, 
          4, 7, 5, 0, 1, 5, 7, 4, 3, 8, 2, 6 ], 
      [ 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 6, 2, 8, 3, 4, 7, 5, 1, 0, 5, 7, 
          4, 3, 8, 2, 6 ], [ 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 2, 6, 3, 8, 
          7, 4, 1, 5, 5, 0, 4, 7, 8, 3, 6, 2 ], 
      [ 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 3, 7, 2, 5, 6, 1, 4, 8, 8, 4, 0, 
          6, 5, 2, 7, 3 ], [ 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 7, 3, 5, 2, 
          1, 6, 8, 4, 4, 8, 6, 0, 2, 5, 3, 7 ], 
      [ 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 8, 4, 6, 1, 2, 5, 7, 3, 3, 7, 5, 
          2, 0, 6, 4, 8 ], [ 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 4, 8, 1, 6, 
          5, 2, 3, 7, 7, 3, 2, 5, 6, 0, 8, 4 ], 
      [ 9, 10, 9, 10, 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 10, 9, 5, 1, 7, 4, 3, 8, 6, 2, 2, 6, 8, 
          3, 4, 7, 0, 5 ], [ 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 1, 5, 4, 7, 
          8, 3, 2, 6, 6, 2, 3, 8, 7, 4, 5, 0 ] ] )