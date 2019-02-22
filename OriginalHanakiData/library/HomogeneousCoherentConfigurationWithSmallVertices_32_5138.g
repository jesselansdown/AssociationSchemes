rec(
  ct := [ [ 1, 1, 2, 6, 6, 8, 8, 1 ], [ 1, 1, 2, 6, 6, -8, -8, 1 ], 
      [ 1, 1, -2, 2*E(3)-2*E(3)^2, -2*E(3)+2*E(3)^2, 0, 0, 4 ], 
      [ 1, 1, -2, -2*E(3)+2*E(3)^2, 2*E(3)-2*E(3)^2, 0, 0, 4 ], [ 1, 1, 2, -2, -2, 0, 0, 6 ], 
      [ 1, -1, 0, 0, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 8 ], 
      [ 1, -1, 0, 0, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 1, 0, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 2, 2, 0, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 5, 5, 5, 5, 6, 6, 
          6, 6, 5, 5, 5, 5, 6, 6, 6, 6 ], 
      [ 2, 2, 1, 0, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 6, 6, 6, 6, 5, 5, 5, 5, 6, 6, 6, 6, 5, 5, 
          5, 5 ], [ 4, 4, 3, 3, 0, 1, 3, 3, 4, 4, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 5, 5, 6, 6, 5, 5, 
          6, 6, 5, 5, 6, 6 ], [ 4, 4, 3, 3, 1, 0, 3, 3, 4, 4, 2, 2, 3, 3, 4, 4, 6, 6, 5, 5, 6, 6, 
          5, 5, 6, 6, 5, 5, 6, 6, 5, 5 ], 
      [ 4, 4, 3, 3, 4, 4, 0, 1, 3, 3, 3, 3, 4, 4, 2, 2, 5, 5, 6, 6, 6, 6, 5, 5, 6, 6, 5, 5, 5, 5, 
          6, 6 ], [ 4, 4, 3, 3, 4, 4, 1, 0, 3, 3, 3, 3, 4, 4, 2, 2, 6, 6, 5, 5, 5, 5, 6, 6, 5, 5, 
          6, 6, 6, 6, 5, 5 ], [ 4, 4, 3, 3, 3, 3, 4, 4, 0, 1, 4, 4, 2, 2, 3, 3, 5, 6, 5, 6, 5, 6, 
          5, 6, 5, 6, 5, 6, 5, 6, 5, 6 ], 
      [ 4, 4, 3, 3, 3, 3, 4, 4, 1, 0, 4, 4, 2, 2, 3, 3, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 
          6, 5 ], [ 3, 3, 4, 4, 2, 2, 4, 4, 3, 3, 0, 1, 4, 4, 3, 3, 5, 6, 5, 6, 6, 5, 6, 5, 6, 5, 
          6, 5, 5, 6, 5, 6 ], [ 3, 3, 4, 4, 2, 2, 4, 4, 3, 3, 1, 0, 4, 4, 3, 3, 6, 5, 6, 5, 5, 6, 
          5, 6, 5, 6, 5, 6, 6, 5, 6, 5 ], 
      [ 3, 3, 4, 4, 4, 4, 3, 3, 2, 2, 3, 3, 0, 1, 4, 4, 5, 6, 6, 5, 5, 6, 6, 5, 6, 5, 5, 6, 6, 5, 
          5, 6 ], [ 3, 3, 4, 4, 4, 4, 3, 3, 2, 2, 3, 3, 1, 0, 4, 4, 6, 5, 5, 6, 6, 5, 5, 6, 5, 6, 
          6, 5, 5, 6, 6, 5 ], [ 3, 3, 4, 4, 3, 3, 2, 2, 4, 4, 4, 4, 3, 3, 0, 1, 5, 6, 6, 5, 6, 5, 
          5, 6, 5, 6, 6, 5, 6, 5, 5, 6 ], 
      [ 3, 3, 4, 4, 3, 3, 2, 2, 4, 4, 4, 4, 3, 3, 1, 0, 6, 5, 5, 6, 5, 6, 6, 5, 6, 5, 5, 6, 5, 6, 
          6, 5 ], [ 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 0, 3, 2, 3, 4, 4, 3, 4, 4, 3, 
          4, 4, 3, 2, 3, 1 ], [ 5, 6, 5, 6, 5, 6, 5, 6, 6, 5, 6, 5, 6, 5, 6, 5, 4, 0, 3, 3, 3, 4, 
          4, 2, 2, 4, 4, 3, 3, 3, 1, 4 ], 
      [ 5, 6, 5, 6, 6, 5, 6, 5, 5, 6, 5, 6, 6, 5, 6, 5, 2, 4, 0, 4, 3, 3, 4, 3, 3, 4, 3, 3, 4, 1, 
          4, 2 ], [ 5, 6, 5, 6, 6, 5, 6, 5, 6, 5, 6, 5, 5, 6, 5, 6, 4, 4, 3, 0, 4, 2, 3, 3, 3, 3, 
          2, 4, 1, 3, 4, 4 ], [ 5, 6, 6, 5, 5, 6, 6, 5, 5, 6, 6, 5, 5, 6, 6, 5, 3, 4, 4, 3, 0, 4, 
          2, 3, 3, 2, 4, 1, 3, 4, 4, 3 ], 
      [ 5, 6, 6, 5, 5, 6, 6, 5, 6, 5, 5, 6, 6, 5, 5, 6, 3, 3, 4, 2, 3, 0, 4, 4, 4, 4, 1, 3, 2, 4, 
          3, 3 ], [ 5, 6, 6, 5, 6, 5, 5, 6, 5, 6, 6, 5, 6, 5, 5, 6, 4, 3, 3, 4, 2, 3, 0, 4, 4, 1, 
          3, 2, 4, 3, 3, 4 ], [ 5, 6, 6, 5, 6, 5, 5, 6, 6, 5, 5, 6, 5, 6, 6, 5, 3, 2, 4, 4, 4, 3, 
          3, 0, 1, 3, 3, 4, 4, 4, 2, 3 ], 
      [ 6, 5, 5, 6, 5, 6, 6, 5, 5, 6, 6, 5, 6, 5, 5, 6, 3, 2, 4, 4, 4, 3, 3, 1, 0, 3, 3, 4, 4, 4, 
          2, 3 ], [ 6, 5, 5, 6, 5, 6, 6, 5, 6, 5, 5, 6, 5, 6, 6, 5, 4, 3, 3, 4, 2, 3, 1, 4, 4, 0, 
          3, 2, 4, 3, 3, 4 ], [ 6, 5, 5, 6, 6, 5, 5, 6, 5, 6, 6, 5, 5, 6, 6, 5, 3, 3, 4, 2, 3, 1, 
          4, 4, 4, 4, 0, 3, 2, 4, 3, 3 ], 
      [ 6, 5, 5, 6, 6, 5, 5, 6, 6, 5, 5, 6, 6, 5, 5, 6, 3, 4, 4, 3, 1, 4, 2, 3, 3, 2, 4, 0, 3, 4, 
          4, 3 ], [ 6, 5, 6, 5, 5, 6, 5, 6, 5, 6, 5, 6, 6, 5, 6, 5, 4, 4, 3, 1, 4, 2, 3, 3, 3, 3, 
          2, 4, 0, 3, 4, 4 ], [ 6, 5, 6, 5, 5, 6, 5, 6, 6, 5, 6, 5, 5, 6, 5, 6, 2, 4, 1, 4, 3, 3, 
          4, 3, 3, 4, 3, 3, 4, 0, 4, 2 ], 
      [ 6, 5, 6, 5, 6, 5, 6, 5, 5, 6, 5, 6, 5, 6, 5, 6, 4, 1, 3, 3, 3, 4, 4, 2, 2, 4, 4, 3, 3, 3, 
          0, 4 ], [ 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 1, 3, 2, 3, 4, 4, 3, 4, 4, 3, 
          4, 4, 3, 2, 3, 0 ] ] )