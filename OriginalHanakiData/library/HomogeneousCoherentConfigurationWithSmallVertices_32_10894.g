rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 8, 8, 8, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 8, -8, -8, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 0, -4*E(8)+4*E(8)^3, 4*E(8)-4*E(8)^3, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 0, 4*E(8)-4*E(8)^3, -4*E(8)+4*E(8)^3, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -8, 0, 0, 2 ], [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 0, 0, 0, 4 ], [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 0, 0, 0, 4 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 
          10, 10, 10 ], [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 
          10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 
          10, 10, 10, 10 ], [ 3, 2, 1, 0, 7, 6, 5, 4, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 
          9, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 8, 8, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 
          9, 9, 9, 9, 9 ], [ 5, 4, 7, 6, 1, 0, 3, 2, 8, 8, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 
          10, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 8, 8, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 
          9, 9, 9, 9, 9 ], [ 7, 6, 5, 4, 3, 2, 1, 0, 8, 8, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 
          10, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 0, 1, 2, 3, 4, 5, 6, 7, 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 
          10, 10, 10, 10 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 9, 9, 10, 10, 
          10, 10, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 
          10, 10, 10, 10 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 9, 9, 10, 10, 
          10, 10, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 4, 5, 6, 7, 0, 1, 2, 3, 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 
          10, 9, 9, 9, 9 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 5, 4, 7, 6, 1, 0, 3, 2, 10, 10, 10, 10, 9, 
          9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 6, 7, 4, 5, 2, 3, 0, 1, 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 
          10, 9, 9, 9, 9 ], [ 8, 8, 8, 8, 8, 8, 8, 8, 7, 6, 5, 4, 3, 2, 1, 0, 10, 10, 10, 10, 9, 
          9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 10, 0, 1, 2, 3, 8, 8, 8, 8, 8, 8, 8, 
          8, 4, 5, 6, 7 ], [ 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 10, 1, 0, 3, 2, 
          8, 8, 8, 8, 8, 8, 8, 8, 5, 4, 7, 6 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 10, 2, 3, 0, 1, 8, 8, 8, 8, 8, 8, 8, 
          8, 6, 7, 4, 5 ], [ 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 10, 3, 2, 1, 0, 
          8, 8, 8, 8, 8, 8, 8, 8, 7, 6, 5, 4 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 0, 1, 2, 3, 4, 5, 6, 
          7, 8, 8, 8, 8 ], [ 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 
          1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 8, 8 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 2, 3, 0, 1, 6, 7, 4, 
          5, 8, 8, 8, 8 ], [ 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 
          3, 2, 1, 0, 7, 6, 5, 4, 8, 8, 8, 8 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 4, 5, 6, 7, 0, 1, 2, 
          3, 8, 8, 8, 8 ], [ 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 
          5, 4, 7, 6, 1, 0, 3, 2, 8, 8, 8, 8 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 6, 7, 4, 5, 2, 3, 0, 
          1, 8, 8, 8, 8 ], [ 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 
          7, 6, 5, 4, 3, 2, 1, 0, 8, 8, 8, 8 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 4, 5, 6, 7, 8, 8, 8, 8, 8, 8, 8, 
          8, 0, 1, 2, 3 ], [ 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 5, 4, 7, 6, 
          8, 8, 8, 8, 8, 8, 8, 8, 1, 0, 3, 2 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 6, 7, 4, 5, 8, 8, 8, 8, 8, 8, 8, 
          8, 2, 3, 0, 1 ], [ 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 7, 6, 5, 4, 
          8, 8, 8, 8, 8, 8, 8, 8, 3, 2, 1, 0 ] ] )