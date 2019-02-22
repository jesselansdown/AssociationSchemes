rec(
  ct := [ [ 1, 1, 2, 4, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 2, 4, 4, 4, -4, -4, -4, -4, 1 ], 
      [ 1, 1, 2, 4, -4, -4, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 0, 0, 2*E(4), -2*E(4), 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 4 ], 
      [ 1, -1, 0, 0, 2*E(4), -2*E(4), -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 4 ], 
      [ 1, -1, 0, 0, -2*E(4), 2*E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 4 ], 
      [ 1, -1, 0, 0, -2*E(4), 2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 4 ], 
      [ 1, 1, -2, 0, 0, 0, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 4 ], 
      [ 1, 1, -2, 0, 0, 0, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 4 ], 
      [ 1, 1, 2, -4, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 
          9, 9 ], [ 1, 0, 2, 2, 3, 3, 3, 3, 5, 5, 5, 5, 4, 4, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9, 6, 6, 
          6, 6, 7, 7, 7, 7 ], [ 2, 2, 0, 1, 3, 3, 3, 3, 4, 4, 5, 5, 4, 4, 5, 5, 7, 7, 9, 9, 6, 6, 
          8, 8, 7, 7, 9, 9, 6, 6, 8, 8 ], 
      [ 2, 2, 1, 0, 3, 3, 3, 3, 5, 5, 4, 4, 5, 5, 4, 4, 9, 9, 7, 7, 8, 8, 6, 6, 9, 9, 7, 7, 8, 8, 
          6, 6 ], [ 3, 3, 3, 3, 0, 1, 2, 2, 4, 5, 4, 5, 4, 5, 4, 5, 6, 8, 7, 9, 7, 9, 6, 8, 7, 9, 
          6, 8, 6, 8, 7, 9 ], [ 3, 3, 3, 3, 1, 0, 2, 2, 5, 4, 5, 4, 5, 4, 5, 4, 8, 6, 9, 7, 9, 7, 
          8, 6, 9, 7, 8, 6, 8, 6, 9, 7 ], 
      [ 3, 3, 3, 3, 2, 2, 0, 1, 4, 5, 5, 4, 5, 4, 4, 5, 9, 7, 6, 8, 8, 6, 7, 9, 6, 8, 9, 7, 7, 9, 
          8, 6 ], [ 3, 3, 3, 3, 2, 2, 1, 0, 5, 4, 4, 5, 4, 5, 5, 4, 7, 9, 8, 6, 6, 8, 9, 7, 8, 6, 
          7, 9, 9, 7, 6, 8 ], [ 5, 4, 5, 4, 5, 4, 5, 4, 0, 2, 3, 3, 3, 3, 2, 1, 7, 8, 7, 6, 8, 7, 
          8, 9, 8, 9, 6, 9, 7, 6, 9, 6 ], 
      [ 5, 4, 5, 4, 4, 5, 4, 5, 2, 0, 3, 3, 3, 3, 1, 2, 8, 7, 6, 7, 7, 8, 9, 8, 9, 8, 9, 6, 6, 7, 
          6, 9 ], [ 5, 4, 4, 5, 5, 4, 4, 5, 3, 3, 0, 2, 2, 1, 3, 3, 7, 6, 8, 7, 8, 9, 7, 8, 9, 6, 
          8, 9, 6, 9, 7, 6 ], [ 5, 4, 4, 5, 4, 5, 5, 4, 3, 3, 2, 0, 1, 2, 3, 3, 6, 7, 7, 8, 9, 8, 
          8, 7, 6, 9, 9, 8, 9, 6, 6, 7 ], 
      [ 4, 5, 5, 4, 5, 4, 4, 5, 3, 3, 2, 1, 0, 2, 3, 3, 8, 9, 9, 6, 7, 6, 6, 9, 8, 7, 7, 6, 7, 8, 
          8, 9 ], [ 4, 5, 5, 4, 4, 5, 5, 4, 3, 3, 1, 2, 2, 0, 3, 3, 9, 8, 6, 9, 6, 7, 9, 6, 7, 8, 
          6, 7, 8, 7, 9, 8 ], [ 4, 5, 4, 5, 5, 4, 5, 4, 2, 1, 3, 3, 3, 3, 0, 2, 6, 9, 8, 9, 9, 6, 
          7, 6, 7, 6, 7, 8, 8, 9, 8, 7 ], 
      [ 4, 5, 4, 5, 4, 5, 4, 5, 1, 2, 3, 3, 3, 3, 2, 0, 9, 6, 9, 8, 6, 9, 6, 7, 6, 7, 8, 7, 9, 8, 
          7, 8 ], [ 7, 9, 6, 8, 7, 9, 8, 6, 6, 9, 6, 7, 9, 8, 7, 8, 0, 3, 5, 4, 2, 3, 5, 5, 5, 4, 
          3, 1, 4, 4, 3, 2 ], [ 7, 9, 6, 8, 9, 7, 6, 8, 9, 6, 7, 6, 8, 9, 8, 7, 3, 0, 4, 5, 3, 2, 
          5, 5, 4, 5, 1, 3, 4, 4, 2, 3 ], 
      [ 7, 9, 8, 6, 6, 8, 7, 9, 6, 7, 9, 6, 8, 7, 9, 8, 4, 5, 0, 3, 5, 5, 2, 3, 3, 1, 4, 5, 3, 2, 
          4, 4 ], [ 7, 9, 8, 6, 8, 6, 9, 7, 7, 6, 6, 9, 7, 8, 8, 9, 5, 4, 3, 0, 5, 5, 3, 2, 1, 3, 
          5, 4, 2, 3, 4, 4 ], [ 6, 8, 7, 9, 6, 8, 9, 7, 9, 6, 9, 8, 6, 7, 8, 7, 2, 3, 4, 4, 0, 3, 
          4, 5, 5, 5, 3, 2, 4, 5, 3, 1 ], 
      [ 6, 8, 7, 9, 8, 6, 7, 9, 6, 9, 8, 9, 7, 6, 7, 8, 3, 2, 4, 4, 3, 0, 5, 4, 5, 5, 2, 3, 5, 4, 
          1, 3 ], [ 6, 8, 9, 7, 7, 9, 6, 8, 9, 8, 6, 9, 7, 8, 6, 7, 4, 4, 2, 3, 5, 4, 0, 3, 3, 2, 
          5, 5, 3, 1, 5, 4 ], [ 6, 8, 9, 7, 9, 7, 8, 6, 8, 9, 9, 6, 8, 7, 7, 6, 4, 4, 3, 2, 4, 5, 
          3, 0, 2, 3, 5, 5, 1, 3, 4, 5 ], 
      [ 9, 7, 6, 8, 6, 8, 7, 9, 9, 8, 8, 7, 9, 6, 6, 7, 4, 5, 3, 1, 4, 4, 3, 2, 0, 3, 4, 5, 2, 3, 
          5, 5 ], [ 9, 7, 6, 8, 8, 6, 9, 7, 8, 9, 7, 8, 6, 9, 7, 6, 5, 4, 1, 3, 4, 4, 2, 3, 3, 0, 
          5, 4, 3, 2, 5, 5 ], [ 9, 7, 8, 6, 7, 9, 8, 6, 7, 8, 9, 8, 6, 7, 6, 9, 3, 1, 5, 4, 3, 2, 
          4, 4, 5, 4, 0, 3, 5, 5, 2, 3 ], 
      [ 9, 7, 8, 6, 9, 7, 6, 8, 8, 7, 8, 9, 7, 6, 9, 6, 1, 3, 4, 5, 2, 3, 4, 4, 4, 5, 3, 0, 5, 5, 
          3, 2 ], [ 8, 6, 7, 9, 7, 9, 6, 8, 6, 7, 7, 8, 6, 9, 9, 8, 5, 5, 3, 2, 5, 4, 3, 1, 2, 3, 
          4, 4, 0, 3, 5, 4 ], [ 8, 6, 7, 9, 9, 7, 8, 6, 7, 6, 8, 7, 9, 6, 8, 9, 5, 5, 2, 3, 4, 5, 
          1, 3, 3, 2, 4, 4, 3, 0, 4, 5 ], 
      [ 8, 6, 9, 7, 6, 8, 9, 7, 8, 7, 6, 7, 9, 8, 9, 6, 3, 2, 5, 5, 3, 1, 4, 5, 4, 4, 2, 3, 4, 5, 
          0, 3 ], [ 8, 6, 9, 7, 8, 6, 7, 9, 7, 8, 7, 6, 8, 9, 6, 9, 2, 3, 5, 5, 1, 3, 5, 4, 4, 4, 
          3, 2, 5, 4, 3, 0 ] ] )