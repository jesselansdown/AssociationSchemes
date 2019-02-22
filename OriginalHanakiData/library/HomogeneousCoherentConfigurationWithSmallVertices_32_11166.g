rec(
  ct := 
   [ [ 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -4, 4*E(4), -4*E(4), 4*E(8), -4*E(8)^3, -4*E(8), 4*E(8)^3, 1 ], 
      [ 1, 1, 1, 1, -4, 4*E(4), -4*E(4), -4*E(8), 4*E(8)^3, 4*E(8), -4*E(8)^3, 1 ], 
      [ 1, 1, 1, 1, -4, -4*E(4), 4*E(4), 4*E(8)^3, -4*E(8), -4*E(8)^3, 4*E(8), 1 ], 
      [ 1, 1, 1, 1, -4, -4*E(4), 4*E(4), -4*E(8)^3, 4*E(8), 4*E(8)^3, -4*E(8), 1 ], 
      [ 1, 1, 1, 1, 4, -4, -4, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 4, -4, -4, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 4, 4, 4, -4, -4, -4, -4, 1 ], [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 8 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 8 ], [ 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 
          10, 10 ], [ 1, 0, 3, 2, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 
          9, 9, 9, 10, 10, 10, 10 ], 
      [ 3, 2, 0, 1, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 
          10, 10, 10 ], [ 2, 3, 1, 0, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 
          9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 4, 4, 4, 4, 0, 1, 2, 3, 6, 6, 6, 6, 5, 5, 5, 5, 9, 9, 9, 9, 10, 10, 10, 10, 7, 7, 7, 7, 8, 
          8, 8, 8 ], [ 4, 4, 4, 4, 1, 0, 3, 2, 6, 6, 6, 6, 5, 5, 5, 5, 9, 9, 9, 9, 10, 10, 10, 10, 
          7, 7, 7, 7, 8, 8, 8, 8 ], 
      [ 4, 4, 4, 4, 3, 2, 0, 1, 6, 6, 6, 6, 5, 5, 5, 5, 9, 9, 9, 9, 10, 10, 10, 10, 7, 7, 7, 7, 8, 
          8, 8, 8 ], [ 4, 4, 4, 4, 2, 3, 1, 0, 6, 6, 6, 6, 5, 5, 5, 5, 9, 9, 9, 9, 10, 10, 10, 10, 
          7, 7, 7, 7, 8, 8, 8, 8 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 0, 1, 2, 3, 4, 4, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 7, 
          7, 7, 7 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 1, 0, 3, 2, 4, 4, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9, 10, 
          10, 10, 10, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 5, 5, 5, 5, 3, 2, 0, 1, 4, 4, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 7, 
          7, 7, 7 ], [ 6, 6, 6, 6, 5, 5, 5, 5, 2, 3, 1, 0, 4, 4, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9, 10, 
          10, 10, 10, 7, 7, 7, 7 ], 
      [ 5, 5, 5, 5, 6, 6, 6, 6, 4, 4, 4, 4, 0, 1, 2, 3, 10, 10, 10, 10, 7, 7, 7, 7, 8, 8, 8, 8, 9, 
          9, 9, 9 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 4, 4, 4, 4, 1, 0, 3, 2, 10, 10, 10, 10, 7, 7, 7, 7, 
          8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 5, 5, 5, 5, 6, 6, 6, 6, 4, 4, 4, 4, 3, 2, 0, 1, 10, 10, 10, 10, 7, 7, 7, 7, 8, 8, 8, 8, 9, 
          9, 9, 9 ], [ 5, 5, 5, 5, 6, 6, 6, 6, 4, 4, 4, 4, 2, 3, 1, 0, 10, 10, 10, 10, 7, 7, 7, 7, 
          8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 8, 8, 8, 8, 10, 10, 10, 10, 7, 7, 7, 7, 9, 9, 9, 9, 0, 1, 2, 3, 6, 6, 6, 6, 4, 4, 4, 4, 5, 
          5, 5, 5 ], [ 8, 8, 8, 8, 10, 10, 10, 10, 7, 7, 7, 7, 9, 9, 9, 9, 1, 0, 3, 2, 6, 6, 6, 6, 
          4, 4, 4, 4, 5, 5, 5, 5 ], 
      [ 8, 8, 8, 8, 10, 10, 10, 10, 7, 7, 7, 7, 9, 9, 9, 9, 3, 2, 0, 1, 6, 6, 6, 6, 4, 4, 4, 4, 5, 
          5, 5, 5 ], [ 8, 8, 8, 8, 10, 10, 10, 10, 7, 7, 7, 7, 9, 9, 9, 9, 2, 3, 1, 0, 6, 6, 6, 6, 
          4, 4, 4, 4, 5, 5, 5, 5 ], 
      [ 7, 7, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 5, 5, 5, 5, 0, 1, 2, 3, 6, 6, 6, 6, 4, 
          4, 4, 4 ], [ 7, 7, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 5, 5, 5, 5, 1, 0, 3, 2, 
          6, 6, 6, 6, 4, 4, 4, 4 ], 
      [ 7, 7, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 5, 5, 5, 5, 3, 2, 0, 1, 6, 6, 6, 6, 4, 
          4, 4, 4 ], [ 7, 7, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10, 8, 8, 8, 8, 5, 5, 5, 5, 2, 3, 1, 0, 
          6, 6, 6, 6, 4, 4, 4, 4 ], 
      [ 10, 10, 10, 10, 8, 8, 8, 8, 9, 9, 9, 9, 7, 7, 7, 7, 4, 4, 4, 4, 5, 5, 5, 5, 0, 1, 2, 3, 6, 
          6, 6, 6 ], [ 10, 10, 10, 10, 8, 8, 8, 8, 9, 9, 9, 9, 7, 7, 7, 7, 4, 4, 4, 4, 5, 5, 5, 5, 
          1, 0, 3, 2, 6, 6, 6, 6 ], 
      [ 10, 10, 10, 10, 8, 8, 8, 8, 9, 9, 9, 9, 7, 7, 7, 7, 4, 4, 4, 4, 5, 5, 5, 5, 3, 2, 0, 1, 6, 
          6, 6, 6 ], [ 10, 10, 10, 10, 8, 8, 8, 8, 9, 9, 9, 9, 7, 7, 7, 7, 4, 4, 4, 4, 5, 5, 5, 5, 
          2, 3, 1, 0, 6, 6, 6, 6 ], 
      [ 9, 9, 9, 9, 7, 7, 7, 7, 8, 8, 8, 8, 10, 10, 10, 10, 6, 6, 6, 6, 4, 4, 4, 4, 5, 5, 5, 5, 0, 
          1, 2, 3 ], [ 9, 9, 9, 9, 7, 7, 7, 7, 8, 8, 8, 8, 10, 10, 10, 10, 6, 6, 6, 6, 4, 4, 4, 4, 
          5, 5, 5, 5, 1, 0, 3, 2 ], 
      [ 9, 9, 9, 9, 7, 7, 7, 7, 8, 8, 8, 8, 10, 10, 10, 10, 6, 6, 6, 6, 4, 4, 4, 4, 5, 5, 5, 5, 3, 
          2, 0, 1 ], [ 9, 9, 9, 9, 7, 7, 7, 7, 8, 8, 8, 8, 10, 10, 10, 10, 6, 6, 6, 6, 4, 4, 4, 4, 
          5, 5, 5, 5, 2, 3, 1, 0 ] ] )