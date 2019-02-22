rec(
  ct := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 8, 8, 1 ], [ 1, 1, 2, 2, 2, 2, 2, 2, 2, -8, -8, 1 ], 
      [ 1, 1, -2, 2*E(4), -2*E(4), 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 0, 0, 2 ], 
      [ 1, 1, -2, 2*E(4), -2*E(4), -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 0, 0, 2 ], 
      [ 1, 1, -2, -2*E(4), 2*E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 0, 0, 2 ], 
      [ 1, 1, -2, -2*E(4), 2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 0, 0, 2 ], 
      [ 1, 1, 2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, 1, 2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, 1, 2, 2, 2, -2, -2, -2, -2, 0, 0, 2 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 8 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 
          10, 10, 10 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 10, 10, 10, 10, 10, 10, 
          10, 10, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 7, 7, 8, 8, 5, 5, 6, 6, 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 
          10, 10, 10, 10 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 7, 7, 8, 8, 5, 5, 6, 6, 10, 10, 10, 10, 9, 
          9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 4, 4, 3, 3, 0, 1, 2, 2, 6, 6, 7, 7, 8, 8, 5, 5, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 
          9, 9, 10, 10 ], [ 4, 4, 3, 3, 1, 0, 2, 2, 6, 6, 7, 7, 8, 8, 5, 5, 10, 10, 9, 9, 10, 10, 
          9, 9, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 3, 3, 4, 4, 2, 2, 0, 1, 8, 8, 5, 5, 6, 6, 7, 7, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 
          9, 10, 9, 10 ], [ 3, 3, 4, 4, 2, 2, 1, 0, 8, 8, 5, 5, 6, 6, 7, 7, 10, 9, 10, 9, 10, 9, 
          10, 9, 10, 9, 10, 9, 10, 9, 10, 9 ], 
      [ 6, 6, 8, 8, 5, 5, 7, 7, 0, 1, 4, 4, 2, 2, 3, 3, 9, 9, 10, 10, 10, 10, 9, 9, 10, 10, 9, 9, 
          9, 9, 10, 10 ], [ 6, 6, 8, 8, 5, 5, 7, 7, 1, 0, 4, 4, 2, 2, 3, 3, 10, 10, 9, 9, 9, 9, 
          10, 10, 9, 9, 10, 10, 10, 10, 9, 9 ], 
      [ 5, 5, 7, 7, 8, 8, 6, 6, 3, 3, 0, 1, 4, 4, 2, 2, 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 10, 9, 
          9, 10, 9, 10 ], [ 5, 5, 7, 7, 8, 8, 6, 6, 3, 3, 1, 0, 4, 4, 2, 2, 10, 9, 10, 9, 9, 10, 
          9, 10, 9, 10, 9, 10, 10, 9, 10, 9 ], 
      [ 8, 8, 6, 6, 7, 7, 5, 5, 2, 2, 3, 3, 0, 1, 4, 4, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 
          10, 9, 9, 10 ], [ 8, 8, 6, 6, 7, 7, 5, 5, 2, 2, 3, 3, 1, 0, 4, 4, 10, 9, 9, 10, 10, 9, 
          9, 10, 9, 10, 10, 9, 9, 10, 10, 9 ], 
      [ 7, 7, 5, 5, 6, 6, 8, 8, 4, 4, 2, 2, 3, 3, 0, 1, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 
          10, 9, 9, 10 ], [ 7, 7, 5, 5, 6, 6, 8, 8, 4, 4, 2, 2, 3, 3, 1, 0, 10, 9, 9, 10, 9, 10, 
          10, 9, 10, 9, 9, 10, 9, 10, 10, 9 ], 
      [ 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 0, 2, 3, 5, 7, 4, 6, 8, 8, 6, 4, 
          7, 5, 3, 2, 1 ], [ 10, 9, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 9, 10, 2, 0, 4, 7, 
          5, 3, 8, 6, 6, 8, 3, 5, 7, 4, 1, 2 ], 
      [ 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 4, 3, 0, 6, 8, 2, 7, 5, 5, 7, 2, 
          8, 6, 1, 3, 4 ], [ 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 9, 10, 10, 9, 10, 9, 6, 8, 5, 0, 
          2, 7, 4, 3, 3, 4, 7, 2, 1, 5, 8, 6 ], 
      [ 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 8, 6, 7, 2, 0, 5, 3, 4, 4, 3, 5, 
          1, 2, 7, 6, 8 ], [ 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 3, 4, 2, 8, 
          6, 0, 5, 7, 7, 5, 1, 6, 8, 2, 4, 3 ], 
      [ 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 5, 7, 8, 3, 4, 6, 0, 2, 2, 1, 6, 
          4, 3, 8, 7, 5 ], [ 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 7, 5, 6, 4, 
          3, 8, 2, 0, 1, 2, 8, 3, 4, 6, 5, 7 ], 
      [ 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 7, 5, 6, 4, 3, 8, 2, 1, 0, 2, 8, 
          3, 4, 6, 5, 7 ], [ 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 5, 7, 8, 3, 
          4, 6, 1, 2, 2, 0, 6, 4, 3, 8, 7, 5 ], 
      [ 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 3, 4, 2, 8, 6, 1, 5, 7, 7, 5, 0, 
          6, 8, 2, 4, 3 ], [ 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 8, 6, 7, 2, 
          1, 5, 3, 4, 4, 3, 5, 0, 2, 7, 6, 8 ], 
      [ 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 6, 8, 5, 1, 2, 7, 4, 3, 3, 4, 7, 
          2, 0, 5, 8, 6 ], [ 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 4, 3, 1, 6, 
          8, 2, 7, 5, 5, 7, 2, 8, 6, 0, 3, 4 ], 
      [ 9, 10, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 10, 9, 2, 1, 4, 7, 5, 3, 8, 6, 6, 8, 3, 
          5, 7, 4, 0, 2 ], [ 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 1, 2, 3, 5, 
          7, 4, 6, 8, 8, 6, 4, 7, 5, 3, 2, 0 ] ] )