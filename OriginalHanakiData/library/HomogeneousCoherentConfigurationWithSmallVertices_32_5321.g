rec(
  ct := [ [ 1, 1, 3, 3, 8, 8, 8, 1 ], [ 1, 1, 3, 3, -8, 8*E(4), -8*E(4), 1 ], 
      [ 1, 1, 3, 3, -8, -8*E(4), 8*E(4), 1 ], [ 1, 1, 3, 3, 8, -8, -8, 1 ], 
      [ 1, -1, E(3)-E(3)^2, -E(3)+E(3)^2, 0, 0, 0, 8 ], 
      [ 1, -1, -E(3)+E(3)^2, E(3)-E(3)^2, 0, 0, 0, 8 ], [ 1, 1, -1, -1, 0, 0, 0, 12 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 1, 0, 3, 3, 3, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 3, 2, 0, 2, 3, 1, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 
          5, 5, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 3, 2, 3, 0, 2, 2, 3, 1, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 3, 2, 2, 3, 0, 3, 1, 2, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 2, 3, 1, 3, 2, 0, 3, 2, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 
          5, 5, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 2, 3, 3, 2, 1, 2, 0, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 2, 3, 2, 1, 3, 3, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 4, 4, 4, 4, 4, 4, 4, 4, 0, 1, 2, 2, 2, 3, 3, 3, 6, 6, 6, 6, 6, 6, 
          6, 6, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 4, 4, 4, 4, 4, 4, 4, 4, 1, 0, 3, 3, 3, 2, 2, 2, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 4, 4, 4, 4, 4, 4, 4, 4, 3, 2, 0, 2, 3, 1, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 4, 4, 4, 4, 4, 4, 4, 4, 3, 2, 3, 0, 2, 2, 3, 1, 6, 6, 6, 6, 6, 6, 
          6, 6, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 4, 4, 4, 4, 4, 4, 4, 4, 3, 2, 2, 3, 0, 3, 1, 2, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 4, 4, 4, 4, 4, 4, 4, 4, 2, 3, 1, 3, 2, 0, 3, 2, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 4, 4, 4, 4, 4, 4, 4, 4, 2, 3, 3, 2, 1, 2, 0, 3, 6, 6, 6, 6, 6, 6, 
          6, 6, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 4, 4, 4, 4, 4, 4, 4, 4, 2, 3, 2, 1, 3, 3, 2, 0, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 
          4, 4, 4, 4, 4, 4 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 3, 3, 3, 2, 
          2, 2, 4, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 3, 2, 0, 2, 3, 1, 2, 3, 4, 4, 4, 4, 4, 4, 
          4, 4 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 3, 2, 3, 0, 2, 2, 3, 1, 4, 4, 
          4, 4, 4, 4, 4, 4 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 3, 2, 2, 3, 0, 3, 
          1, 2, 4, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 2, 3, 1, 3, 2, 0, 3, 2, 4, 4, 4, 4, 4, 4, 
          4, 4 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 2, 3, 3, 2, 1, 2, 0, 3, 4, 4, 
          4, 4, 4, 4, 4, 4 ], [ 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 2, 3, 2, 1, 3, 3, 
          2, 0, 4, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 4, 4, 4, 0, 1, 2, 2, 2, 3, 
          3, 3 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 4, 4, 4, 1, 0, 
          3, 3, 3, 2, 2, 2 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 4, 
          4, 4, 3, 2, 0, 2, 3, 1, 2, 3 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 4, 4, 4, 3, 2, 3, 0, 2, 2, 
          3, 1 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 4, 4, 4, 3, 2, 
          2, 3, 0, 3, 1, 2 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 4, 
          4, 4, 2, 3, 1, 3, 2, 0, 3, 2 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 4, 4, 4, 2, 3, 3, 2, 1, 2, 
          0, 3 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 4, 4, 4, 2, 3, 
          2, 1, 3, 3, 2, 0 ] ] )