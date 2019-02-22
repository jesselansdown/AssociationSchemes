rec(
  ct := [ [ 1, 1, 2, 4, 6, 6, 6, 6, 1 ], [ 1, 1, 2, -4, -6, -6, 6, 6, 1 ], 
      [ 1, 1, 2, -4, 2, 2, -2, -2, 3 ], [ 1, 1, 2, 4, -2, -2, -2, -2, 3 ], 
      [ 1, 1, -2, 0, 0, 0, 2*E(3)-2*E(3)^2, -2*E(3)+2*E(3)^2, 4 ], 
      [ 1, 1, -2, 0, 0, 0, -2*E(3)+2*E(3)^2, 2*E(3)-2*E(3)^2, 4 ], 
      [ 1, -1, 0, 0, -E(24)+E(24)^11+E(24)^17-E(24)^19, E(24)-E(24)^11-E(24)^17+E(24)^19, 0, 0, 8 ]
        , [ 1, -1, 0, 0, E(24)-E(24)^11-E(24)^17+E(24)^19, -E(24)+E(24)^11+E(24)^17-E(24)^19, 0, 
          0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 
          7, 7 ], [ 1, 0, 2, 2, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 
          7, 7, 7, 7, 7, 7 ], [ 2, 2, 0, 1, 3, 3, 3, 3, 4, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 5, 7, 7, 
          7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], 
      [ 2, 2, 1, 0, 3, 3, 3, 3, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 
          6, 6 ], [ 3, 3, 3, 3, 0, 1, 2, 2, 6, 6, 6, 7, 7, 7, 7, 7, 7, 6, 6, 6, 4, 4, 4, 5, 5, 5, 
          4, 4, 4, 5, 5, 5 ], [ 3, 3, 3, 3, 1, 0, 2, 2, 6, 6, 6, 7, 7, 7, 7, 7, 7, 6, 6, 6, 5, 5, 
          5, 4, 4, 4, 5, 5, 5, 4, 4, 4 ], 
      [ 3, 3, 3, 3, 2, 2, 0, 1, 7, 7, 7, 6, 6, 6, 6, 6, 6, 7, 7, 7, 4, 4, 5, 4, 5, 5, 4, 5, 5, 4, 
          4, 5 ], [ 3, 3, 3, 3, 2, 2, 1, 0, 7, 7, 7, 6, 6, 6, 6, 6, 6, 7, 7, 7, 5, 5, 4, 5, 4, 4, 
          5, 4, 4, 5, 5, 4 ], [ 4, 5, 4, 5, 7, 7, 6, 6, 0, 6, 7, 2, 6, 7, 2, 6, 7, 1, 6, 7, 3, 4, 
          4, 5, 3, 5, 5, 3, 5, 3, 4, 4 ], 
      [ 4, 5, 4, 5, 7, 7, 6, 6, 7, 0, 6, 6, 7, 2, 6, 7, 2, 7, 1, 6, 4, 5, 3, 3, 5, 4, 3, 5, 4, 4, 
          5, 3 ], [ 4, 5, 4, 5, 7, 7, 6, 6, 6, 7, 0, 7, 2, 6, 7, 2, 6, 6, 7, 1, 5, 3, 5, 4, 4, 3, 
          4, 4, 3, 5, 3, 5 ], [ 4, 5, 5, 4, 6, 6, 7, 7, 2, 7, 6, 0, 7, 6, 1, 7, 6, 2, 7, 6, 3, 4, 
          5, 4, 3, 5, 5, 3, 4, 3, 5, 4 ], 
      [ 4, 5, 5, 4, 6, 6, 7, 7, 7, 6, 2, 6, 0, 7, 6, 1, 7, 7, 6, 2, 5, 3, 4, 5, 4, 3, 4, 5, 3, 4, 
          3, 5 ], [ 4, 5, 5, 4, 6, 6, 7, 7, 6, 2, 7, 7, 6, 0, 7, 6, 1, 6, 2, 7, 4, 5, 3, 3, 5, 4, 
          3, 4, 5, 5, 4, 3 ], [ 5, 4, 4, 5, 6, 6, 7, 7, 2, 7, 6, 1, 7, 6, 0, 7, 6, 2, 7, 6, 3, 5, 
          4, 5, 3, 4, 4, 3, 5, 3, 4, 5 ], 
      [ 5, 4, 4, 5, 6, 6, 7, 7, 7, 6, 2, 6, 1, 7, 6, 0, 7, 7, 6, 2, 4, 3, 5, 4, 5, 3, 5, 4, 3, 5, 
          3, 4 ], [ 5, 4, 4, 5, 6, 6, 7, 7, 6, 2, 7, 7, 6, 1, 7, 6, 0, 6, 2, 7, 5, 4, 3, 3, 4, 5, 
          3, 5, 4, 4, 5, 3 ], [ 5, 4, 5, 4, 7, 7, 6, 6, 1, 6, 7, 2, 6, 7, 2, 6, 7, 0, 6, 7, 3, 5, 
          5, 4, 3, 4, 4, 3, 4, 3, 5, 5 ], 
      [ 5, 4, 5, 4, 7, 7, 6, 6, 7, 1, 6, 6, 7, 2, 6, 7, 2, 7, 0, 6, 5, 4, 3, 3, 4, 5, 3, 4, 5, 5, 
          4, 3 ], [ 5, 4, 5, 4, 7, 7, 6, 6, 6, 7, 1, 7, 2, 6, 7, 2, 6, 6, 7, 0, 4, 3, 4, 5, 5, 3, 
          5, 5, 3, 4, 3, 4 ], [ 7, 7, 6, 6, 4, 5, 4, 5, 3, 4, 5, 3, 5, 4, 3, 4, 5, 3, 5, 4, 0, 7, 
          6, 6, 1, 7, 7, 2, 6, 2, 6, 7 ], 
      [ 7, 7, 6, 6, 4, 5, 4, 5, 4, 5, 3, 4, 3, 5, 5, 3, 4, 5, 4, 3, 6, 0, 7, 7, 6, 1, 6, 7, 2, 7, 
          2, 6 ], [ 7, 7, 6, 6, 4, 5, 5, 4, 4, 3, 5, 5, 4, 3, 4, 5, 3, 5, 3, 4, 7, 6, 0, 1, 7, 6, 
          2, 6, 7, 6, 7, 2 ], [ 7, 7, 6, 6, 5, 4, 4, 5, 5, 3, 4, 4, 5, 3, 5, 4, 3, 4, 3, 5, 7, 6, 
          1, 0, 7, 6, 2, 6, 7, 6, 7, 2 ], 
      [ 7, 7, 6, 6, 5, 4, 5, 4, 3, 5, 4, 3, 4, 5, 3, 5, 4, 3, 4, 5, 1, 7, 6, 6, 0, 7, 7, 2, 6, 2, 
          6, 7 ], [ 7, 7, 6, 6, 5, 4, 5, 4, 5, 4, 3, 5, 3, 4, 4, 3, 5, 4, 5, 3, 6, 1, 7, 7, 6, 0, 
          6, 7, 2, 7, 2, 6 ], [ 6, 6, 7, 7, 4, 5, 4, 5, 5, 3, 4, 5, 4, 3, 4, 5, 3, 4, 3, 5, 6, 7, 
          2, 2, 6, 7, 0, 7, 6, 7, 6, 1 ], 
      [ 6, 6, 7, 7, 4, 5, 5, 4, 3, 5, 4, 3, 5, 4, 3, 4, 5, 3, 4, 5, 2, 6, 7, 7, 2, 6, 6, 0, 7, 1, 
          7, 6 ], [ 6, 6, 7, 7, 4, 5, 5, 4, 5, 4, 3, 4, 3, 5, 5, 3, 4, 4, 5, 3, 7, 2, 6, 6, 7, 2, 
          7, 6, 0, 6, 1, 7 ], [ 6, 6, 7, 7, 5, 4, 4, 5, 3, 4, 5, 3, 4, 5, 3, 5, 4, 3, 5, 4, 2, 6, 
          7, 7, 2, 6, 6, 1, 7, 0, 7, 6 ], 
      [ 6, 6, 7, 7, 5, 4, 4, 5, 4, 5, 3, 5, 3, 4, 4, 3, 5, 5, 4, 3, 7, 2, 6, 6, 7, 2, 7, 6, 1, 6, 
          0, 7 ], [ 6, 6, 7, 7, 5, 4, 5, 4, 4, 3, 5, 4, 5, 3, 5, 4, 3, 5, 3, 4, 6, 7, 2, 2, 6, 7, 
          1, 7, 6, 7, 6, 0 ] ] )