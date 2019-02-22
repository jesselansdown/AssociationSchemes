rec(
  ct := [ [ 1, 1, 2, 2, 2, 6, 6, 12, 1 ], [ 1, 1, 2, -2, -2, -6, -6, 12, 1 ], 
      [ 1, 1, 2, -2, -2, 2, 2, -4, 3 ], [ 1, 1, 2, 2, 2, -2, -2, -4, 3 ], 
      [ 1, 1, -2, -2, 2, 0, 0, 0, 4 ], [ 1, 1, -2, 2, -2, 0, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, E(24)+E(24)^11-E(24)^17-E(24)^19, -E(24)-E(24)^11+E(24)^17+E(24)^19, 0, 8 ]
        , [ 1, -1, 0, 0, 0, -E(24)-E(24)^11+E(24)^17+E(24)^19, E(24)+E(24)^11-E(24)^17-E(24)^19, 
          0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 2, 2, 0, 1, 4, 4, 3, 3, 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 6, 6, 6, 5, 5, 5, 6, 6, 6, 5, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 3, 3, 4, 4, 0, 1, 2, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 5, 
          6, 6, 6, 6, 6, 6 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6, 6, 6, 5, 5, 5, 5, 5, 5 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 
          6, 6 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 
          6, 6, 6, 5, 5, 5 ], [ 6, 5, 6, 5, 7, 7, 7, 7, 0, 7, 7, 2, 7, 7, 2, 7, 7, 1, 7, 7, 3, 5, 
          6, 4, 5, 6, 4, 5, 6, 3, 5, 6 ], 
      [ 6, 5, 6, 5, 7, 7, 7, 7, 7, 0, 7, 7, 2, 7, 7, 2, 7, 7, 1, 7, 5, 6, 3, 5, 6, 4, 6, 4, 5, 6, 
          3, 5 ], [ 6, 5, 6, 5, 7, 7, 7, 7, 7, 7, 0, 7, 7, 2, 7, 7, 2, 7, 7, 1, 6, 4, 5, 6, 3, 5, 
          5, 6, 3, 5, 6, 4 ], [ 6, 5, 5, 6, 7, 7, 7, 7, 2, 7, 7, 0, 7, 7, 1, 7, 7, 2, 7, 7, 4, 6, 
          5, 3, 5, 6, 3, 5, 6, 4, 6, 5 ], 
      [ 6, 5, 5, 6, 7, 7, 7, 7, 7, 2, 7, 7, 0, 7, 7, 1, 7, 7, 2, 7, 6, 5, 4, 5, 6, 3, 6, 3, 5, 5, 
          4, 6 ], [ 6, 5, 5, 6, 7, 7, 7, 7, 7, 7, 2, 7, 7, 0, 7, 7, 1, 7, 7, 2, 5, 3, 6, 6, 4, 5, 
          5, 6, 4, 6, 5, 3 ], [ 5, 6, 6, 5, 7, 7, 7, 7, 2, 7, 7, 1, 7, 7, 0, 7, 7, 2, 7, 7, 4, 5, 
          6, 3, 6, 5, 3, 6, 5, 4, 5, 6 ], 
      [ 5, 6, 6, 5, 7, 7, 7, 7, 7, 2, 7, 7, 1, 7, 7, 0, 7, 7, 2, 7, 5, 6, 4, 6, 5, 3, 5, 3, 6, 6, 
          4, 5 ], [ 5, 6, 6, 5, 7, 7, 7, 7, 7, 7, 2, 7, 7, 1, 7, 7, 0, 7, 7, 2, 6, 3, 5, 5, 4, 6, 
          6, 5, 4, 5, 6, 3 ], [ 5, 6, 5, 6, 7, 7, 7, 7, 1, 7, 7, 2, 7, 7, 2, 7, 7, 0, 7, 7, 3, 6, 
          5, 4, 6, 5, 4, 6, 5, 3, 6, 5 ], 
      [ 5, 6, 5, 6, 7, 7, 7, 7, 7, 1, 7, 7, 2, 7, 7, 2, 7, 7, 0, 7, 6, 5, 3, 6, 5, 4, 5, 4, 6, 5, 
          3, 6 ], [ 5, 6, 5, 6, 7, 7, 7, 7, 7, 7, 1, 7, 7, 2, 7, 7, 2, 7, 7, 0, 5, 4, 6, 5, 3, 6, 
          6, 5, 3, 6, 5, 4 ], [ 7, 7, 7, 7, 6, 5, 6, 5, 3, 6, 5, 4, 5, 6, 4, 6, 5, 3, 5, 6, 0, 7, 
          7, 2, 7, 7, 2, 7, 7, 1, 7, 7 ], 
      [ 7, 7, 7, 7, 6, 5, 6, 5, 6, 5, 4, 5, 6, 3, 6, 5, 3, 5, 6, 4, 7, 0, 7, 7, 2, 7, 7, 7, 2, 7, 
          7, 1 ], [ 7, 7, 7, 7, 6, 5, 6, 5, 5, 3, 6, 6, 4, 5, 5, 4, 6, 6, 3, 5, 7, 7, 0, 7, 7, 2, 
          7, 2, 7, 7, 1, 7 ], [ 7, 7, 7, 7, 6, 5, 5, 6, 4, 6, 5, 3, 6, 5, 3, 5, 6, 4, 5, 6, 2, 7, 
          7, 0, 7, 7, 1, 7, 7, 2, 7, 7 ], 
      [ 7, 7, 7, 7, 6, 5, 5, 6, 6, 5, 3, 6, 5, 4, 5, 6, 4, 5, 6, 3, 7, 2, 7, 7, 0, 7, 7, 7, 1, 7, 
          7, 2 ], [ 7, 7, 7, 7, 6, 5, 5, 6, 5, 4, 6, 5, 3, 6, 6, 3, 5, 6, 4, 5, 7, 7, 2, 7, 7, 0, 
          7, 1, 7, 7, 2, 7 ], [ 7, 7, 7, 7, 5, 6, 6, 5, 4, 5, 6, 3, 5, 6, 3, 6, 5, 4, 6, 5, 2, 7, 
          7, 1, 7, 7, 0, 7, 7, 2, 7, 7 ], 
      [ 7, 7, 7, 7, 5, 6, 6, 5, 6, 4, 5, 6, 3, 5, 5, 3, 6, 5, 4, 6, 7, 7, 2, 7, 7, 1, 7, 0, 7, 7, 
          2, 7 ], [ 7, 7, 7, 7, 5, 6, 6, 5, 5, 6, 3, 5, 6, 4, 6, 5, 4, 6, 5, 3, 7, 2, 7, 7, 1, 7, 
          7, 7, 0, 7, 7, 2 ], [ 7, 7, 7, 7, 5, 6, 5, 6, 3, 5, 6, 4, 6, 5, 4, 5, 6, 3, 6, 5, 1, 7, 
          7, 2, 7, 7, 2, 7, 7, 0, 7, 7 ], 
      [ 7, 7, 7, 7, 5, 6, 5, 6, 6, 3, 5, 5, 4, 6, 6, 4, 5, 5, 3, 6, 7, 7, 1, 7, 7, 2, 7, 2, 7, 7, 
          0, 7 ], [ 7, 7, 7, 7, 5, 6, 5, 6, 5, 6, 4, 6, 5, 3, 5, 6, 3, 6, 5, 4, 7, 1, 7, 7, 2, 7, 
          7, 7, 2, 7, 7, 0 ] ] )