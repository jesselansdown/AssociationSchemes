rec(
  ct := 
   [ [ 1, 9, 10, 18, 1 ], [ 1, -9, -10, 18, 1 ], 
      [ 1, -E(5)+E(5)^2+E(5)^3-E(5)^4, E(5)-E(5)^2-E(5)^3+E(5)^4, -1, 18 ], 
      [ 1, E(5)-E(5)^2-E(5)^3+E(5)^4, -E(5)+E(5)^2+E(5)^3-E(5)^4, -1, 18 ] ],
  matrix := 
   [ [ 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 
          2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 
          1, 1, 1, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 2, 1, 2, 2, 2, 2, 1, 2, 
          2, 2, 2, 1, 1, 1, 1, 2 ], 
      [ 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 1, 1, 2, 2, 2, 1, 
          1, 2, 2, 1, 1, 2, 2, 1 ], 
      [ 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 1, 2, 2, 1, 1, 2, 2, 2, 2, 
          2, 1, 1, 2, 2, 1, 1, 1 ], 
      [ 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 1, 1, 2, 2, 1, 2, 2, 1, 
          2, 1, 2, 1, 2, 1, 2, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 1, 1, 2, 2, 2, 1, 2, 2, 
          1, 2, 1, 2, 1, 2, 1, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 2, 2, 1, 2, 1, 1, 1, 1, 
          2, 1, 2, 2, 1, 2, 1, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 2, 
          1, 2, 1, 1, 2, 1, 2, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 1, 2, 2, 2, 2, 1, 1, 2, 1, 
          2, 2, 1, 1, 2, 2, 1, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 
          2, 2, 1, 2, 1, 1, 2, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 2, 1, 2, 1, 2, 1, 2, 2, 1, 2, 2, 
          1, 1, 2, 1, 2, 1, 1, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 2, 1, 2, 2, 1, 2, 1, 1, 2, 1, 2, 
          1, 1, 2, 2, 2, 2, 1, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 2, 1, 2, 2, 1, 2, 1, 2, 1, 2, 1, 
          2, 1, 1, 2, 1, 1, 2, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 
          1, 2, 2, 2, 1, 1, 1, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 2, 2, 1, 1, 2, 2, 1, 2, 1, 1, 2, 
          2, 1, 2, 1, 1, 2, 2, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 2, 2, 1, 2, 1, 1, 2, 1, 2, 2, 2, 
          1, 1, 1, 1, 1, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 2, 2, 1, 2, 1, 1, 2, 2, 1, 1, 1, 
          1, 2, 2, 2, 2, 1, 2, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 2, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 
          2, 2, 1, 1, 2, 2, 1, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 1, 1, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 1, 2, 2, 2, 1, 1, 2, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 2, 1, 2, 2, 1, 1, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 1, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 2, 2, 1, 1, 2, 2, 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 1, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 2, 2, 1, 1, 2, 2, 2, 1, 2, 2, 2, 1, 1, 1, 1, 2, 2, 1, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 2, 2, 2, 2, 1, 2, 1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 2, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 1, 1, 2, 2, 2, 2, 1, 1, 2, 1, 2, 1, 2, 2, 1, 2, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 2, 2, 1, 1, 2, 2, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 
          3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 2, 1, 1, 2, 1, 2, 1, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          0, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          3, 0, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 1, 2, 2, 1, 2, 1, 2, 1, 1, 1, 2, 2, 1, 2, 2, 1, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 0, 3, 3, 3, 3, 3 ], 
      [ 2, 2, 1, 1, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 2, 1, 1, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 3, 0, 3, 3, 3, 3 ], 
      [ 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 2, 2, 1, 1, 1, 1, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 3, 3, 0, 3, 3, 3 ], 
      [ 2, 2, 1, 2, 1, 1, 2, 2, 1, 2, 1, 1, 2, 1, 1, 2, 2, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 3, 3, 3, 0, 3, 3 ], 
      [ 2, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2, 1, 1, 2, 1, 2, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 0, 3 ], 
      [ 2, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 3, 0 ] ] )