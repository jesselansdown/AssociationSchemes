rec(
  ct := [ [ 1, 1, 5, 5, 1 ], [ 1, -1, -E(5)+E(5)^2+E(5)^3-E(5)^4, E(5)-E(5)^2-E(5)^3+E(5)^4, 3 ], 
      [ 1, -1, E(5)-E(5)^2-E(5)^3+E(5)^4, -E(5)+E(5)^2+E(5)^3-E(5)^4, 3 ], [ 1, 1, -1, -1, 5 ] ],
  matrix := [ [ 0, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3 ], [ 1, 0, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2 ], 
      [ 2, 3, 0, 2, 2, 3, 3, 1, 2, 2, 3, 3 ], [ 2, 3, 2, 0, 3, 2, 3, 3, 2, 3, 1, 2 ], 
      [ 2, 3, 2, 3, 0, 3, 2, 3, 3, 2, 2, 1 ], [ 2, 3, 3, 2, 3, 0, 2, 2, 3, 1, 3, 2 ], 
      [ 2, 3, 3, 3, 2, 2, 0, 2, 1, 3, 2, 3 ], [ 3, 2, 1, 3, 3, 2, 2, 0, 3, 3, 2, 2 ], 
      [ 3, 2, 2, 2, 3, 3, 1, 3, 0, 2, 3, 2 ], [ 3, 2, 2, 3, 2, 1, 3, 3, 2, 0, 2, 3 ], 
      [ 3, 2, 3, 1, 2, 3, 2, 2, 3, 2, 0, 3 ], [ 3, 2, 3, 2, 1, 2, 3, 2, 2, 3, 3, 0 ] ] )