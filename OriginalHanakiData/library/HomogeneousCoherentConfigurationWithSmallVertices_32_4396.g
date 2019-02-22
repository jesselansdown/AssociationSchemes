rec(
  ct := [ [ 1, 1, 2, 2, 2, 12, 12, 1 ], [ 1, 1, 2, 2, 2, -4, -4, 3 ], 
      [ 1, 1, -2, 2*E(4), -2*E(4), 0, 0, 4 ], [ 1, 1, -2, -2*E(4), 2*E(4), 0, 0, 4 ], 
      [ 1, 1, 2, -2, -2, 0, 0, 4 ], [ 1, -1, 0, 0, 0, 2*E(3)-2*E(3)^2, -2*E(3)+2*E(3)^2, 8 ], 
      [ 1, -1, 0, 0, 0, -2*E(3)+2*E(3)^2, 2*E(3)-2*E(3)^2, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 5, 5, 
          5, 5, 5, 5, 6, 6, 6, 6, 6, 6 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 
          5, 5 ], [ 4, 4, 3, 3, 0, 1, 2, 2, 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 6, 6, 
          5, 5, 5, 6, 6, 6 ], [ 4, 4, 3, 3, 1, 0, 2, 2, 6, 6, 6, 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 6, 
          6, 5, 5, 5, 6, 6, 6, 5, 5, 5 ], 
      [ 3, 3, 4, 4, 2, 2, 0, 1, 5, 5, 5, 6, 6, 6, 6, 6, 6, 5, 5, 5, 6, 6, 6, 5, 5, 5, 5, 5, 5, 6, 
          6, 6 ], [ 3, 3, 4, 4, 2, 2, 1, 0, 6, 6, 6, 5, 5, 5, 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 6, 6, 
          6, 6, 6, 5, 5, 5 ], [ 6, 5, 6, 5, 6, 5, 6, 5, 0, 5, 6, 2, 5, 6, 3, 5, 6, 4, 5, 6, 4, 5, 
          6, 3, 5, 6, 2, 5, 6, 1, 5, 6 ], 
      [ 6, 5, 6, 5, 6, 5, 6, 5, 6, 0, 5, 5, 6, 2, 5, 6, 3, 5, 6, 4, 6, 4, 5, 6, 3, 5, 6, 2, 5, 5, 
          6, 1 ], [ 6, 5, 6, 5, 6, 5, 6, 5, 5, 6, 0, 6, 2, 5, 6, 4, 5, 6, 3, 5, 5, 6, 3, 5, 6, 4, 
          5, 6, 2, 6, 1, 5 ], [ 6, 5, 6, 5, 5, 6, 5, 6, 2, 6, 5, 0, 6, 5, 4, 5, 6, 3, 5, 6, 3, 5, 
          6, 4, 5, 6, 1, 6, 5, 2, 6, 5 ], 
      [ 6, 5, 6, 5, 5, 6, 5, 6, 6, 5, 2, 5, 0, 6, 6, 3, 5, 6, 4, 5, 5, 6, 4, 5, 6, 3, 6, 5, 1, 5, 
          2, 6 ], [ 6, 5, 6, 5, 5, 6, 5, 6, 5, 2, 6, 6, 5, 0, 5, 6, 4, 5, 6, 3, 6, 3, 5, 6, 4, 5, 
          5, 1, 6, 6, 5, 2 ], [ 6, 5, 5, 6, 6, 5, 5, 6, 4, 6, 5, 3, 5, 6, 0, 5, 6, 2, 6, 5, 2, 6, 
          5, 1, 5, 6, 3, 5, 6, 4, 6, 5 ], 
      [ 6, 5, 5, 6, 6, 5, 5, 6, 6, 5, 3, 6, 4, 5, 6, 0, 5, 5, 2, 6, 6, 5, 2, 5, 6, 1, 5, 6, 4, 5, 
          3, 6 ], [ 6, 5, 5, 6, 6, 5, 5, 6, 5, 4, 6, 5, 6, 3, 5, 6, 0, 6, 5, 2, 5, 2, 6, 6, 1, 5, 
          6, 3, 5, 6, 5, 4 ], [ 6, 5, 5, 6, 5, 6, 6, 5, 3, 6, 5, 4, 5, 6, 2, 6, 5, 0, 5, 6, 1, 5, 
          6, 2, 6, 5, 4, 5, 6, 3, 6, 5 ], 
      [ 6, 5, 5, 6, 5, 6, 6, 5, 6, 5, 4, 6, 3, 5, 5, 2, 6, 6, 0, 5, 5, 6, 1, 6, 5, 2, 5, 6, 3, 5, 
          4, 6 ], [ 6, 5, 5, 6, 5, 6, 6, 5, 5, 3, 6, 5, 6, 4, 6, 5, 2, 5, 6, 0, 6, 1, 5, 5, 2, 6, 
          6, 4, 5, 6, 5, 3 ], [ 5, 6, 6, 5, 6, 5, 5, 6, 3, 5, 6, 4, 6, 5, 2, 5, 6, 1, 6, 5, 0, 6, 
          5, 2, 5, 6, 4, 6, 5, 3, 5, 6 ], 
      [ 5, 6, 6, 5, 6, 5, 5, 6, 6, 3, 5, 6, 5, 4, 5, 6, 2, 6, 5, 1, 5, 0, 6, 6, 2, 5, 5, 4, 6, 5, 
          6, 3 ], [ 5, 6, 6, 5, 6, 5, 5, 6, 5, 6, 4, 5, 3, 6, 6, 2, 5, 5, 1, 6, 6, 5, 0, 5, 6, 2, 
          6, 5, 3, 6, 4, 5 ], [ 5, 6, 6, 5, 5, 6, 6, 5, 4, 5, 6, 3, 6, 5, 1, 6, 5, 2, 5, 6, 2, 5, 
          6, 0, 6, 5, 3, 6, 5, 4, 5, 6 ], 
      [ 5, 6, 6, 5, 5, 6, 6, 5, 6, 4, 5, 6, 5, 3, 6, 5, 1, 5, 6, 2, 6, 2, 5, 5, 0, 6, 5, 3, 6, 5, 
          6, 4 ], [ 5, 6, 6, 5, 5, 6, 6, 5, 5, 6, 3, 5, 4, 6, 5, 1, 6, 6, 2, 5, 5, 6, 2, 6, 5, 0, 
          6, 5, 4, 6, 3, 5 ], [ 5, 6, 5, 6, 6, 5, 6, 5, 2, 5, 6, 1, 5, 6, 4, 6, 5, 3, 6, 5, 3, 6, 
          5, 4, 6, 5, 0, 5, 6, 2, 5, 6 ], 
      [ 5, 6, 5, 6, 6, 5, 6, 5, 6, 2, 5, 5, 6, 1, 6, 5, 4, 6, 5, 3, 5, 3, 6, 5, 4, 6, 6, 0, 5, 5, 
          6, 2 ], [ 5, 6, 5, 6, 6, 5, 6, 5, 5, 6, 2, 6, 1, 5, 5, 3, 6, 5, 4, 6, 6, 5, 4, 6, 5, 3, 
          5, 6, 0, 6, 2, 5 ], [ 5, 6, 5, 6, 5, 6, 5, 6, 1, 6, 5, 2, 6, 5, 3, 6, 5, 4, 6, 5, 4, 6, 
          5, 3, 6, 5, 2, 6, 5, 0, 6, 5 ], 
      [ 5, 6, 5, 6, 5, 6, 5, 6, 6, 5, 1, 5, 2, 6, 5, 4, 6, 5, 3, 6, 6, 5, 3, 6, 5, 4, 6, 5, 2, 5, 
          0, 6 ], [ 5, 6, 5, 6, 5, 6, 5, 6, 5, 1, 6, 6, 5, 2, 6, 5, 3, 6, 5, 4, 5, 4, 6, 5, 3, 6, 
          5, 2, 6, 6, 5, 0 ] ] )