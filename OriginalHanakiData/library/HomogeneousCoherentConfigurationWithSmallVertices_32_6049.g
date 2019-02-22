rec(
  ct := [ [ 1, 1, 2, 3, 3, 6, 8, 8, 1 ], [ 1, 1, -2, -3, -3, 6, -8, 8, 1 ], 
      [ 1, 1, -2, -3, -3, 6, 8, -8, 1 ], [ 1, 1, 2, 3, 3, 6, -8, -8, 1 ], 
      [ 1, 1, -2, 1, 1, -2, 0, 0, 6 ], [ 1, 1, 2, -1, -1, -2, 0, 0, 6 ], 
      [ 1, -1, 0, -E(12)^7+E(12)^11, E(12)^7-E(12)^11, 0, 0, 0, 8 ], 
      [ 1, -1, 0, E(12)^7-E(12)^11, -E(12)^7+E(12)^11, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 1, 0, 2, 2, 4, 4, 4, 3, 3, 3, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 2, 2, 0, 1, 5, 5, 5, 5, 5, 5, 3, 3, 3, 4, 4, 4, 7, 7, 7, 7, 7, 7, 
          7, 7, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 2, 2, 1, 0, 5, 5, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 3, 4, 5, 5, 0, 5, 5, 1, 5, 5, 2, 3, 4, 2, 3, 4, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 3, 4, 5, 5, 5, 0, 5, 5, 1, 5, 3, 4, 2, 4, 2, 3, 7, 7, 7, 7, 7, 7, 
          7, 7, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 3, 4, 5, 5, 5, 5, 0, 5, 5, 1, 4, 2, 3, 3, 4, 2, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 4, 3, 5, 5, 1, 5, 5, 0, 5, 5, 2, 4, 3, 2, 4, 3, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 4, 3, 5, 5, 5, 1, 5, 5, 0, 5, 4, 3, 2, 3, 2, 4, 7, 7, 7, 7, 7, 7, 
          7, 7, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 4, 3, 5, 5, 5, 5, 1, 5, 5, 0, 3, 2, 4, 4, 3, 2, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 
          6, 6 ], [ 5, 5, 3, 4, 2, 3, 4, 2, 4, 3, 0, 5, 5, 1, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 5, 5, 3, 4, 3, 4, 2, 4, 3, 2, 5, 0, 5, 5, 5, 1, 6, 6, 6, 6, 6, 6, 
          6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 5, 5, 3, 4, 4, 2, 3, 3, 2, 4, 5, 5, 0, 5, 1, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 5, 5, 4, 3, 2, 4, 3, 2, 3, 4, 1, 5, 5, 0, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 
          7, 7, 7, 7, 7, 7 ], [ 5, 5, 4, 3, 3, 2, 4, 4, 2, 3, 5, 5, 1, 5, 0, 5, 6, 6, 6, 6, 6, 6, 
          6, 6, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 5, 5, 4, 3, 4, 3, 2, 3, 4, 2, 5, 1, 5, 5, 5, 0, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 0, 1, 5, 5, 5, 5, 5, 5, 2, 2, 
          3, 3, 3, 4, 4, 4 ], [ 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 1, 0, 5, 5, 5, 5, 
          5, 5, 2, 2, 4, 4, 4, 3, 3, 3 ], 
      [ 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 5, 0, 1, 5, 5, 5, 5, 3, 4, 2, 3, 4, 2, 
          3, 4 ], [ 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 5, 1, 0, 5, 5, 5, 5, 4, 3, 
          2, 4, 3, 2, 4, 3 ], [ 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 0, 1, 
          5, 5, 3, 4, 3, 4, 2, 4, 2, 3 ], 
      [ 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 1, 0, 5, 5, 4, 3, 4, 3, 2, 3, 
          2, 4 ], [ 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 0, 1, 3, 4, 
          4, 2, 3, 3, 4, 2 ], [ 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 
          1, 0, 4, 3, 3, 2, 4, 4, 3, 2 ], 
      [ 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 2, 2, 3, 4, 3, 4, 3, 4, 0, 1, 5, 5, 5, 5, 
          5, 5 ], [ 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 2, 2, 4, 3, 4, 3, 4, 3, 1, 0, 
          5, 5, 5, 5, 5, 5 ], [ 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 3, 4, 2, 2, 3, 4, 
          4, 3, 5, 5, 0, 5, 5, 1, 5, 5 ], 
      [ 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 3, 4, 3, 4, 4, 3, 2, 2, 5, 5, 5, 0, 5, 5, 
          5, 1 ], [ 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 3, 4, 4, 3, 2, 2, 3, 4, 5, 5, 
          5, 5, 0, 5, 1, 5 ], [ 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 4, 3, 2, 2, 4, 3, 
          3, 4, 5, 5, 1, 5, 5, 0, 5, 5 ], 
      [ 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 4, 3, 3, 4, 2, 2, 4, 3, 5, 5, 5, 5, 1, 5, 
          0, 5 ], [ 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 4, 3, 4, 3, 3, 4, 2, 2, 5, 5, 
          5, 1, 5, 5, 5, 0 ] ] )