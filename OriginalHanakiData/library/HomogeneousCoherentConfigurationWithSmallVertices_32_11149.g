rec(
  ct := 
   [ [ 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 4, -4, -4, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 4, -4, -4, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 4, 4, 4, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 0, 0, 0, 0, 4 ], 
      [ 1, 1, 1, 1, -4, 0, 0, 0, 0, 0, 0, 4 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 
          10, 10 ], [ 1, 0, 3, 2, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 9, 9, 9, 9, 10, 10, 10, 10, 
          7, 7, 7, 7, 8, 8, 8, 8 ], 
      [ 2, 3, 0, 1, 4, 4, 4, 4, 6, 6, 6, 6, 5, 5, 5, 5, 7, 7, 7, 7, 10, 10, 10, 10, 9, 9, 9, 9, 8, 
          8, 8, 8 ], [ 3, 2, 1, 0, 4, 4, 4, 4, 6, 6, 6, 6, 5, 5, 5, 5, 9, 9, 9, 9, 8, 8, 8, 8, 7, 
          7, 7, 7, 10, 10, 10, 10 ], 
      [ 4, 4, 4, 4, 0, 1, 2, 3, 5, 5, 6, 6, 5, 5, 6, 6, 7, 7, 9, 9, 8, 8, 10, 10, 7, 7, 9, 9, 8, 
          8, 10, 10 ], [ 4, 4, 4, 4, 1, 0, 3, 2, 5, 5, 6, 6, 5, 5, 6, 6, 9, 9, 7, 7, 10, 10, 8, 8, 
          9, 9, 7, 7, 10, 10, 8, 8 ], 
      [ 4, 4, 4, 4, 2, 3, 0, 1, 6, 6, 5, 5, 6, 6, 5, 5, 7, 7, 9, 9, 10, 10, 8, 8, 7, 7, 9, 9, 10, 
          10, 8, 8 ], [ 4, 4, 4, 4, 3, 2, 1, 0, 6, 6, 5, 5, 6, 6, 5, 5, 9, 9, 7, 7, 8, 8, 10, 10, 
          9, 9, 7, 7, 8, 8, 10, 10 ], 
      [ 5, 5, 6, 6, 5, 5, 6, 6, 0, 1, 4, 4, 4, 4, 2, 3, 8, 10, 8, 10, 7, 9, 7, 9, 8, 10, 8, 10, 7, 
          9, 7, 9 ], [ 5, 5, 6, 6, 5, 5, 6, 6, 1, 0, 4, 4, 4, 4, 3, 2, 10, 8, 10, 8, 9, 7, 9, 7, 
          10, 8, 10, 8, 9, 7, 9, 7 ], 
      [ 5, 5, 6, 6, 6, 6, 5, 5, 4, 4, 0, 1, 2, 3, 4, 4, 8, 10, 10, 8, 7, 9, 9, 7, 10, 8, 8, 10, 9, 
          7, 7, 9 ], [ 5, 5, 6, 6, 6, 6, 5, 5, 4, 4, 1, 0, 3, 2, 4, 4, 10, 8, 8, 10, 9, 7, 7, 9, 
          8, 10, 10, 8, 7, 9, 9, 7 ], 
      [ 6, 6, 5, 5, 5, 5, 6, 6, 4, 4, 2, 3, 0, 1, 4, 4, 10, 8, 8, 10, 7, 9, 9, 7, 8, 10, 10, 8, 9, 
          7, 7, 9 ], [ 6, 6, 5, 5, 5, 5, 6, 6, 4, 4, 3, 2, 1, 0, 4, 4, 8, 10, 10, 8, 9, 7, 7, 9, 
          10, 8, 8, 10, 7, 9, 9, 7 ], 
      [ 6, 6, 5, 5, 6, 6, 5, 5, 2, 3, 4, 4, 4, 4, 0, 1, 10, 8, 10, 8, 7, 9, 7, 9, 10, 8, 10, 8, 7, 
          9, 7, 9 ], [ 6, 6, 5, 5, 6, 6, 5, 5, 3, 2, 4, 4, 4, 4, 1, 0, 8, 10, 8, 10, 9, 7, 9, 7, 
          8, 10, 8, 10, 9, 7, 9, 7 ], 
      [ 8, 10, 8, 10, 8, 10, 8, 10, 7, 9, 7, 9, 9, 7, 9, 7, 0, 3, 4, 4, 5, 6, 5, 6, 4, 4, 2, 1, 6, 
          5, 6, 5 ], [ 8, 10, 8, 10, 8, 10, 8, 10, 9, 7, 9, 7, 7, 9, 7, 9, 3, 0, 4, 4, 6, 5, 6, 5, 
          4, 4, 1, 2, 5, 6, 5, 6 ], 
      [ 8, 10, 8, 10, 10, 8, 10, 8, 7, 9, 9, 7, 7, 9, 9, 7, 4, 4, 0, 3, 6, 5, 5, 6, 2, 1, 4, 4, 6, 
          5, 5, 6 ], [ 8, 10, 8, 10, 10, 8, 10, 8, 9, 7, 7, 9, 9, 7, 7, 9, 4, 4, 3, 0, 5, 6, 6, 5, 
          1, 2, 4, 4, 5, 6, 6, 5 ], 
      [ 7, 9, 9, 7, 7, 9, 9, 7, 8, 10, 8, 10, 8, 10, 8, 10, 5, 6, 6, 5, 0, 2, 4, 4, 5, 6, 6, 5, 4, 
          4, 3, 1 ], [ 7, 9, 9, 7, 7, 9, 9, 7, 10, 8, 10, 8, 10, 8, 10, 8, 6, 5, 5, 6, 2, 0, 4, 4, 
          6, 5, 5, 6, 4, 4, 1, 3 ], 
      [ 7, 9, 9, 7, 9, 7, 7, 9, 8, 10, 10, 8, 10, 8, 8, 10, 5, 6, 5, 6, 4, 4, 0, 2, 6, 5, 6, 5, 3, 
          1, 4, 4 ], [ 7, 9, 9, 7, 9, 7, 7, 9, 10, 8, 8, 10, 8, 10, 10, 8, 6, 5, 6, 5, 4, 4, 2, 0, 
          5, 6, 5, 6, 1, 3, 4, 4 ], 
      [ 10, 8, 10, 8, 8, 10, 8, 10, 7, 9, 9, 7, 7, 9, 9, 7, 4, 4, 2, 1, 5, 6, 6, 5, 0, 3, 4, 4, 5, 
          6, 6, 5 ], [ 10, 8, 10, 8, 8, 10, 8, 10, 9, 7, 7, 9, 9, 7, 7, 9, 4, 4, 1, 2, 6, 5, 5, 6, 
          3, 0, 4, 4, 6, 5, 5, 6 ], 
      [ 10, 8, 10, 8, 10, 8, 10, 8, 7, 9, 7, 9, 9, 7, 9, 7, 2, 1, 4, 4, 6, 5, 6, 5, 4, 4, 0, 3, 5, 
          6, 5, 6 ], [ 10, 8, 10, 8, 10, 8, 10, 8, 9, 7, 9, 7, 7, 9, 7, 9, 1, 2, 4, 4, 5, 6, 5, 6, 
          4, 4, 3, 0, 6, 5, 6, 5 ], 
      [ 9, 7, 7, 9, 7, 9, 9, 7, 8, 10, 10, 8, 10, 8, 8, 10, 6, 5, 6, 5, 4, 4, 3, 1, 5, 6, 5, 6, 0, 
          2, 4, 4 ], [ 9, 7, 7, 9, 7, 9, 9, 7, 10, 8, 8, 10, 8, 10, 10, 8, 5, 6, 5, 6, 4, 4, 1, 3, 
          6, 5, 6, 5, 2, 0, 4, 4 ], 
      [ 9, 7, 7, 9, 9, 7, 7, 9, 8, 10, 8, 10, 8, 10, 8, 10, 6, 5, 5, 6, 3, 1, 4, 4, 6, 5, 5, 6, 4, 
          4, 0, 2 ], [ 9, 7, 7, 9, 9, 7, 7, 9, 10, 8, 10, 8, 10, 8, 10, 8, 5, 6, 6, 5, 1, 3, 4, 4, 
          5, 6, 6, 5, 4, 4, 2, 0 ] ] )