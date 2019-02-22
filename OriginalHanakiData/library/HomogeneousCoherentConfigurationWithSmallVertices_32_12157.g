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
      [ 4, 4, 3, 3, 2, 2, 0, 1, 8, 8, 7, 7, 6, 6, 5, 5, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 
          9, 10, 9, 10 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 8, 8, 7, 7, 6, 6, 5, 5, 10, 9, 10, 9, 10, 9, 
          10, 9, 10, 9, 10, 9, 10, 9, 10, 9 ], 
      [ 5, 5, 6, 6, 8, 8, 7, 7, 0, 1, 2, 2, 4, 4, 3, 3, 9, 9, 10, 10, 10, 10, 9, 9, 10, 10, 9, 9, 
          9, 9, 10, 10 ], [ 5, 5, 6, 6, 8, 8, 7, 7, 1, 0, 2, 2, 4, 4, 3, 3, 10, 10, 9, 9, 9, 9, 
          10, 10, 9, 9, 10, 10, 10, 10, 9, 9 ], 
      [ 6, 6, 5, 5, 7, 7, 8, 8, 2, 2, 0, 1, 3, 3, 4, 4, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 
          10, 9, 9, 10 ], [ 6, 6, 5, 5, 7, 7, 8, 8, 2, 2, 1, 0, 3, 3, 4, 4, 10, 9, 9, 10, 10, 9, 
          9, 10, 9, 10, 10, 9, 9, 10, 10, 9 ], 
      [ 8, 8, 7, 7, 5, 5, 6, 6, 4, 4, 3, 3, 0, 1, 2, 2, 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 10, 9, 
          9, 10, 9, 10 ], [ 8, 8, 7, 7, 5, 5, 6, 6, 4, 4, 3, 3, 1, 0, 2, 2, 10, 9, 10, 9, 9, 10, 
          9, 10, 9, 10, 9, 10, 10, 9, 10, 9 ], 
      [ 7, 7, 8, 8, 6, 6, 5, 5, 3, 3, 4, 4, 2, 2, 0, 1, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 
          10, 9, 9, 10 ], [ 7, 7, 8, 8, 6, 6, 5, 5, 3, 3, 4, 4, 2, 2, 1, 0, 10, 9, 9, 10, 9, 10, 
          10, 9, 10, 9, 9, 10, 9, 10, 10, 9 ], 
      [ 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 0, 2, 3, 8, 5, 7, 6, 4, 4, 6, 7, 
          5, 8, 3, 2, 1 ], [ 10, 9, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 9, 10, 2, 0, 4, 7, 
          6, 8, 5, 3, 3, 5, 8, 6, 7, 4, 1, 2 ], 
      [ 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 3, 4, 0, 6, 7, 5, 8, 2, 2, 8, 5, 
          7, 6, 1, 4, 3 ], [ 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 7, 8, 6, 0, 
          3, 2, 4, 5, 5, 4, 2, 3, 1, 6, 8, 7 ], 
      [ 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 5, 6, 8, 3, 0, 4, 2, 7, 7, 2, 4, 
          1, 3, 8, 6, 5 ], [ 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 10, 9, 8, 7, 5, 2, 
          4, 0, 3, 6, 6, 3, 1, 4, 2, 5, 7, 8 ], 
      [ 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 6, 5, 7, 4, 2, 3, 0, 8, 8, 1, 3, 
          2, 4, 7, 5, 6 ], [ 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 4, 3, 2, 5, 
          8, 6, 7, 0, 1, 7, 6, 8, 5, 2, 3, 4 ], 
      [ 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 4, 3, 2, 5, 8, 6, 7, 1, 0, 7, 6, 
          8, 5, 2, 3, 4 ], [ 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 6, 5, 7, 4, 
          2, 3, 1, 8, 8, 0, 3, 2, 4, 7, 5, 6 ], 
      [ 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 8, 7, 5, 2, 4, 1, 3, 6, 6, 3, 0, 
          4, 2, 5, 7, 8 ], [ 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 5, 6, 8, 3, 
          1, 4, 2, 7, 7, 2, 4, 0, 3, 8, 6, 5 ], 
      [ 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 7, 8, 6, 1, 3, 2, 4, 5, 5, 4, 2, 
          3, 0, 6, 8, 7 ], [ 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 3, 4, 1, 6, 
          7, 5, 8, 2, 2, 8, 5, 7, 6, 0, 4, 3 ], 
      [ 9, 10, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 10, 9, 2, 1, 4, 7, 6, 8, 5, 3, 3, 5, 8, 
          6, 7, 4, 0, 2 ], [ 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 1, 2, 3, 8, 
          5, 7, 6, 4, 4, 6, 7, 5, 8, 3, 2, 0 ] ] )