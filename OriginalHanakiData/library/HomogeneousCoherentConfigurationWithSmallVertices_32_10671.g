rec(
  ct := 
   [ [ 1, 1, 2, 2, 2, 3, 3, 6, 6, 6, 1 ], 
      [ 1, 1, -2, 2*E(4), -2*E(4), 3, 3, -6, -6*E(4), 6*E(4), 1 ], 
      [ 1, 1, -2, -2*E(4), 2*E(4), 3, 3, -6, 6*E(4), -6*E(4), 1 ], 
      [ 1, 1, 2, -2, -2, 3, 3, 6, -6, -6, 1 ], 
      [ 1, 1, -2, 2*E(4), -2*E(4), -1, -1, 2, 2*E(4), -2*E(4), 3 ], 
      [ 1, 1, -2, -2*E(4), 2*E(4), -1, -1, 2, -2*E(4), 2*E(4), 3 ], 
      [ 1, 1, 2, -2, -2, -1, -1, -2, 2, 2, 3 ], [ 1, 1, 2, 2, 2, -1, -1, -2, -2, -2, 3 ], 
      [ 1, -1, 0, 0, 0, E(3)-E(3)^2, -E(3)+E(3)^2, 0, 0, 0, 8 ], 
      [ 1, -1, 0, 0, 0, -E(3)+E(3)^2, E(3)-E(3)^2, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 
          9, 9 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 6, 6, 6, 5, 5, 5, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 
          9, 9, 9, 9, 9, 9 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 7, 7, 7, 7, 7, 7, 5, 5, 5, 6, 6, 6, 9, 9, 
          9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 7, 7, 7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 
          8, 8 ], [ 4, 4, 3, 3, 0, 1, 2, 2, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 7, 7, 7, 7, 7, 7, 
          5, 5, 5, 6, 6, 6 ], [ 4, 4, 3, 3, 1, 0, 2, 2, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 7, 7, 
          7, 7, 7, 7, 6, 6, 6, 5, 5, 5 ], 
      [ 3, 3, 4, 4, 2, 2, 0, 1, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 5, 5, 5, 6, 6, 6, 7, 7, 7, 7, 
          7, 7 ], [ 3, 3, 4, 4, 2, 2, 1, 0, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 6, 6, 6, 5, 5, 5, 
          7, 7, 7, 7, 7, 7 ], [ 6, 5, 7, 7, 9, 9, 8, 8, 0, 5, 6, 1, 5, 6, 2, 7, 7, 2, 7, 7, 4, 8, 
          8, 4, 8, 8, 3, 9, 9, 3, 9, 9 ], 
      [ 6, 5, 7, 7, 9, 9, 8, 8, 6, 0, 5, 5, 6, 1, 7, 2, 7, 7, 2, 7, 8, 4, 8, 8, 4, 8, 9, 3, 9, 9, 
          3, 9 ], [ 6, 5, 7, 7, 9, 9, 8, 8, 5, 6, 0, 6, 1, 5, 7, 7, 2, 7, 7, 2, 8, 8, 4, 8, 8, 4, 
          9, 9, 3, 9, 9, 3 ], [ 5, 6, 7, 7, 9, 9, 8, 8, 1, 6, 5, 0, 6, 5, 2, 7, 7, 2, 7, 7, 4, 8, 
          8, 4, 8, 8, 3, 9, 9, 3, 9, 9 ], 
      [ 5, 6, 7, 7, 9, 9, 8, 8, 6, 5, 1, 5, 0, 6, 7, 7, 2, 7, 7, 2, 8, 8, 4, 8, 8, 4, 9, 9, 3, 9, 
          9, 3 ], [ 5, 6, 7, 7, 9, 9, 8, 8, 5, 1, 6, 6, 5, 0, 7, 2, 7, 7, 2, 7, 8, 4, 8, 8, 4, 8, 
          9, 3, 9, 9, 3, 9 ], [ 7, 7, 6, 5, 8, 8, 9, 9, 2, 7, 7, 2, 7, 7, 0, 5, 6, 1, 6, 5, 3, 9, 
          9, 3, 9, 9, 4, 8, 8, 4, 8, 8 ], 
      [ 7, 7, 6, 5, 8, 8, 9, 9, 7, 2, 7, 7, 7, 2, 6, 0, 5, 5, 1, 6, 9, 3, 9, 9, 3, 9, 8, 4, 8, 8, 
          4, 8 ], [ 7, 7, 6, 5, 8, 8, 9, 9, 7, 7, 2, 7, 2, 7, 5, 6, 0, 6, 5, 1, 9, 9, 3, 9, 9, 3, 
          8, 8, 4, 8, 8, 4 ], [ 7, 7, 5, 6, 8, 8, 9, 9, 2, 7, 7, 2, 7, 7, 1, 6, 5, 0, 5, 6, 3, 9, 
          9, 3, 9, 9, 4, 8, 8, 4, 8, 8 ], 
      [ 7, 7, 5, 6, 8, 8, 9, 9, 7, 2, 7, 7, 7, 2, 5, 1, 6, 6, 0, 5, 9, 3, 9, 9, 3, 9, 8, 4, 8, 8, 
          4, 8 ], [ 7, 7, 5, 6, 8, 8, 9, 9, 7, 7, 2, 7, 2, 7, 6, 5, 1, 5, 6, 0, 9, 9, 3, 9, 9, 3, 
          8, 8, 4, 8, 8, 4 ], [ 9, 9, 8, 8, 7, 7, 6, 5, 3, 9, 9, 3, 9, 9, 4, 8, 8, 4, 8, 8, 0, 5, 
          6, 1, 6, 5, 2, 7, 7, 2, 7, 7 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 5, 9, 3, 9, 9, 9, 3, 8, 4, 8, 8, 4, 8, 6, 0, 5, 5, 1, 6, 7, 2, 7, 7, 
          2, 7 ], [ 9, 9, 8, 8, 7, 7, 6, 5, 9, 9, 3, 9, 3, 9, 8, 8, 4, 8, 8, 4, 5, 6, 0, 6, 5, 1, 
          7, 7, 2, 7, 7, 2 ], [ 9, 9, 8, 8, 7, 7, 5, 6, 3, 9, 9, 3, 9, 9, 4, 8, 8, 4, 8, 8, 1, 6, 
          5, 0, 5, 6, 2, 7, 7, 2, 7, 7 ], 
      [ 9, 9, 8, 8, 7, 7, 5, 6, 9, 3, 9, 9, 9, 3, 8, 4, 8, 8, 4, 8, 5, 1, 6, 6, 0, 5, 7, 2, 7, 7, 
          2, 7 ], [ 9, 9, 8, 8, 7, 7, 5, 6, 9, 9, 3, 9, 3, 9, 8, 8, 4, 8, 8, 4, 6, 5, 1, 5, 6, 0, 
          7, 7, 2, 7, 7, 2 ], [ 8, 8, 9, 9, 6, 5, 7, 7, 4, 8, 8, 4, 8, 8, 3, 9, 9, 3, 9, 9, 2, 7, 
          7, 2, 7, 7, 0, 5, 6, 1, 6, 5 ], 
      [ 8, 8, 9, 9, 6, 5, 7, 7, 8, 4, 8, 8, 8, 4, 9, 3, 9, 9, 3, 9, 7, 2, 7, 7, 2, 7, 6, 0, 5, 5, 
          1, 6 ], [ 8, 8, 9, 9, 6, 5, 7, 7, 8, 8, 4, 8, 4, 8, 9, 9, 3, 9, 9, 3, 7, 7, 2, 7, 7, 2, 
          5, 6, 0, 6, 5, 1 ], [ 8, 8, 9, 9, 5, 6, 7, 7, 4, 8, 8, 4, 8, 8, 3, 9, 9, 3, 9, 9, 2, 7, 
          7, 2, 7, 7, 1, 6, 5, 0, 5, 6 ], 
      [ 8, 8, 9, 9, 5, 6, 7, 7, 8, 4, 8, 8, 8, 4, 9, 3, 9, 9, 3, 9, 7, 2, 7, 7, 2, 7, 5, 1, 6, 6, 
          0, 5 ], [ 8, 8, 9, 9, 5, 6, 7, 7, 8, 8, 4, 8, 4, 8, 9, 9, 3, 9, 9, 3, 7, 7, 2, 7, 7, 2, 
          6, 5, 1, 5, 6, 0 ] ] )