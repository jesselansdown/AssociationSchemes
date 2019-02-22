rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 16, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -8, 2 ], 
      [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, 0, 3 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, 0, 3 ], 
      [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), 0, 3 ], 
      [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 0, 3 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), 0, 3 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), 0, 3 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 0, 3 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 5, 7, 4, 6, 0, 3, 1, 2, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 4, 6, 7, 5, 2, 0, 3, 1, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 6, 4, 5, 7, 3, 1, 2, 0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 1, 0, 3, 2, 6, 7, 4, 5, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 3, 2, 0, 1, 5, 6, 7, 4, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 2, 3, 1, 0, 7, 4, 5, 6, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 5, 7, 4, 6, 0, 3, 1, 2, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 4, 6, 7, 5, 2, 0, 3, 1, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 7, 5, 6, 4, 1, 2, 0, 3, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 6, 4, 5, 7, 3, 1, 2, 0, 8, 8, 8, 8, 8, 8, 8, 8 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, 1, 2, 3, 4, 5, 6, 7 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, 0, 3, 2, 6, 7, 4, 5 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 3, 2, 0, 1, 5, 6, 7, 4 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 2, 3, 1, 0, 7, 4, 5, 6 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 5, 7, 4, 6, 0, 3, 1, 2 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 4, 6, 7, 5, 2, 0, 3, 1 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 5, 6, 4, 1, 2, 0, 3 ], 
      [ 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 6, 4, 5, 7, 3, 1, 2, 0 ] ] )