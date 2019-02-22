rec(
  ct := 
   [ [ 1, 3, 4, 6, 6, 6, 6, 1 ], [ 1, 3, -4, 2*E(3)-2*E(3)^2, -2*E(3)+2*E(3)^2, 2*E(3)-2*E(3)^2, 
          -2*E(3)+2*E(3)^2, 2 ], [ 1, 3, -4, -2*E(3)+2*E(3)^2, 2*E(3)-2*E(3)^2, -2*E(3)+2*E(3)^2, 
          2*E(3)-2*E(3)^2, 2 ], [ 1, 3, 4, -2, -2, -2, -2, 3 ], [ 1, -1, 0, 2, 2, -2, -2, 8 ], 
      [ 1, -1, 0, 2*E(3), 2*E(3)^2, -2*E(3), -2*E(3)^2, 8 ], 
      [ 1, -1, 0, 2*E(3)^2, 2*E(3), -2*E(3)^2, -2*E(3), 8 ] ],
  matrix := 
   [ [ 0, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 
          6, 6 ], [ 1, 0, 1, 1, 2, 2, 2, 2, 3, 3, 5, 5, 5, 5, 4, 4, 6, 6, 6, 6, 3, 3, 3, 3, 5, 5, 
          4, 4, 4, 4, 6, 6 ], [ 1, 1, 0, 1, 2, 2, 2, 2, 5, 5, 3, 3, 5, 5, 6, 6, 4, 4, 6, 6, 3, 3, 
          5, 5, 3, 3, 4, 4, 6, 6, 4, 4 ], 
      [ 1, 1, 1, 0, 2, 2, 2, 2, 5, 5, 5, 5, 3, 3, 6, 6, 6, 6, 4, 4, 5, 5, 3, 3, 3, 3, 6, 6, 4, 4, 
          4, 4 ], [ 2, 2, 2, 2, 0, 1, 1, 1, 4, 6, 4, 6, 4, 6, 3, 5, 3, 5, 3, 5, 4, 6, 4, 6, 4, 6, 
          3, 5, 3, 5, 3, 5 ], [ 2, 2, 2, 2, 1, 0, 1, 1, 4, 6, 6, 4, 6, 4, 5, 3, 3, 5, 5, 3, 6, 4, 
          6, 4, 4, 6, 5, 3, 3, 5, 5, 3 ], 
      [ 2, 2, 2, 2, 1, 1, 0, 1, 6, 4, 4, 6, 6, 4, 5, 3, 5, 3, 3, 5, 6, 4, 4, 6, 6, 4, 3, 5, 5, 3, 
          5, 3 ], [ 2, 2, 2, 2, 1, 1, 1, 0, 6, 4, 6, 4, 4, 6, 3, 5, 5, 3, 5, 3, 4, 6, 6, 4, 6, 4, 
          5, 3, 5, 3, 3, 5 ], [ 4, 4, 6, 6, 3, 3, 5, 5, 0, 1, 4, 6, 3, 5, 3, 3, 4, 6, 2, 2, 5, 3, 
          6, 4, 1, 1, 2, 2, 4, 6, 5, 5 ], 
      [ 4, 4, 6, 6, 5, 5, 3, 3, 1, 0, 6, 4, 5, 3, 3, 3, 6, 4, 2, 2, 3, 5, 4, 6, 1, 1, 2, 2, 6, 4, 
          5, 5 ], [ 4, 6, 4, 6, 3, 5, 3, 5, 3, 5, 0, 1, 4, 6, 2, 2, 3, 3, 4, 6, 6, 4, 1, 1, 5, 3, 
          4, 6, 5, 5, 2, 2 ], [ 4, 6, 4, 6, 5, 3, 5, 3, 5, 3, 1, 0, 6, 4, 2, 2, 3, 3, 6, 4, 4, 6, 
          1, 1, 3, 5, 6, 4, 5, 5, 2, 2 ], 
      [ 4, 6, 6, 4, 3, 5, 5, 3, 4, 6, 3, 5, 0, 1, 4, 6, 2, 2, 3, 3, 1, 1, 5, 3, 6, 4, 5, 5, 2, 2, 
          4, 6 ], [ 4, 6, 6, 4, 5, 3, 3, 5, 6, 4, 5, 3, 1, 0, 6, 4, 2, 2, 3, 3, 1, 1, 3, 5, 4, 6, 
          5, 5, 2, 2, 6, 4 ], [ 3, 3, 5, 5, 4, 6, 6, 4, 4, 4, 2, 2, 3, 5, 0, 1, 4, 6, 3, 5, 3, 5, 
          2, 2, 6, 6, 5, 3, 6, 4, 1, 1 ], 
      [ 3, 3, 5, 5, 6, 4, 4, 6, 4, 4, 2, 2, 5, 3, 1, 0, 6, 4, 5, 3, 5, 3, 2, 2, 6, 6, 3, 5, 4, 6, 
          1, 1 ], [ 3, 5, 3, 5, 4, 4, 6, 6, 3, 5, 4, 4, 2, 2, 3, 5, 0, 1, 4, 6, 2, 2, 6, 6, 3, 5, 
          6, 4, 1, 1, 5, 3 ], [ 3, 5, 3, 5, 6, 6, 4, 4, 5, 3, 4, 4, 2, 2, 5, 3, 1, 0, 6, 4, 2, 2, 
          6, 6, 5, 3, 4, 6, 1, 1, 3, 5 ], 
      [ 3, 5, 5, 3, 4, 6, 4, 6, 2, 2, 3, 5, 4, 4, 4, 6, 3, 5, 0, 1, 6, 6, 3, 5, 2, 2, 1, 1, 5, 3, 
          6, 4 ], [ 3, 5, 5, 3, 6, 4, 6, 4, 2, 2, 5, 3, 4, 4, 6, 4, 5, 3, 1, 0, 6, 6, 5, 3, 2, 2, 
          1, 1, 3, 5, 4, 6 ], [ 6, 4, 4, 6, 3, 5, 5, 3, 6, 4, 5, 3, 1, 1, 4, 6, 2, 2, 5, 5, 0, 1, 
          3, 5, 4, 6, 3, 3, 2, 2, 4, 6 ], 
      [ 6, 4, 4, 6, 5, 3, 3, 5, 4, 6, 3, 5, 1, 1, 6, 4, 2, 2, 5, 5, 1, 0, 5, 3, 6, 4, 3, 3, 2, 2, 
          6, 4 ], [ 6, 4, 6, 4, 3, 5, 3, 5, 5, 3, 1, 1, 6, 4, 2, 2, 5, 5, 4, 6, 4, 6, 0, 1, 3, 5, 
          4, 6, 3, 3, 2, 2 ], [ 6, 4, 6, 4, 5, 3, 5, 3, 3, 5, 1, 1, 4, 6, 2, 2, 5, 5, 6, 4, 6, 4, 
          1, 0, 5, 3, 6, 4, 3, 3, 2, 2 ], 
      [ 6, 6, 4, 4, 3, 3, 5, 5, 1, 1, 6, 4, 5, 3, 5, 5, 4, 6, 2, 2, 3, 5, 4, 6, 0, 1, 2, 2, 4, 6, 
          3, 3 ], [ 6, 6, 4, 4, 5, 5, 3, 3, 1, 1, 4, 6, 3, 5, 5, 5, 6, 4, 2, 2, 5, 3, 6, 4, 1, 0, 
          2, 2, 6, 4, 3, 3 ], [ 5, 3, 3, 5, 4, 6, 4, 6, 2, 2, 3, 5, 6, 6, 6, 4, 5, 3, 1, 1, 4, 4, 
          3, 5, 2, 2, 0, 1, 3, 5, 4, 6 ], 
      [ 5, 3, 3, 5, 6, 4, 6, 4, 2, 2, 5, 3, 6, 6, 4, 6, 3, 5, 1, 1, 4, 4, 5, 3, 2, 2, 1, 0, 5, 3, 
          6, 4 ], [ 5, 3, 5, 3, 4, 4, 6, 6, 3, 5, 6, 6, 2, 2, 5, 3, 1, 1, 6, 4, 2, 2, 4, 4, 3, 5, 
          4, 6, 0, 1, 3, 5 ], [ 5, 3, 5, 3, 6, 6, 4, 4, 5, 3, 6, 6, 2, 2, 3, 5, 1, 1, 4, 6, 2, 2, 
          4, 4, 5, 3, 6, 4, 1, 0, 5, 3 ], 
      [ 5, 5, 3, 3, 4, 6, 6, 4, 6, 6, 2, 2, 3, 5, 1, 1, 6, 4, 5, 3, 3, 5, 2, 2, 4, 4, 3, 5, 4, 6, 
          0, 1 ], [ 5, 5, 3, 3, 6, 4, 4, 6, 6, 6, 2, 2, 5, 3, 1, 1, 4, 6, 3, 5, 5, 3, 2, 2, 4, 4, 
          5, 3, 6, 4, 1, 0 ] ] )