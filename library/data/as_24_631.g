[ [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12 ], 
      [ 1, 0, 2, 2, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 11, 11, 12, 12, 9, 9, 10, 10 ], 
      [ 2, 2, 0, 1, 9, 11, 9, 11, 10, 12, 10, 12, 7, 8, 7, 8, 3, 4, 5, 6, 3, 4, 5, 6 ], 
      [ 2, 2, 1, 0, 11, 9, 11, 9, 12, 10, 12, 10, 8, 7, 8, 7, 4, 3, 6, 5, 4, 3, 6, 5 ], 
      [ 3, 4, 10, 12, 0, 3, 4, 1, 7, 9, 11, 8, 5, 9, 11, 6, 5, 7, 12, 2, 8, 6, 2, 10 ], 
      [ 3, 4, 12, 10, 3, 0, 1, 4, 9, 7, 8, 11, 9, 5, 6, 11, 7, 5, 2, 12, 6, 8, 10, 2 ], 
      [ 4, 3, 10, 12, 4, 1, 0, 3, 11, 8, 7, 9, 11, 6, 5, 9, 8, 6, 2, 10, 5, 7, 12, 2 ], 
      [ 4, 3, 12, 10, 1, 4, 3, 0, 8, 11, 9, 7, 6, 11, 9, 5, 6, 8, 10, 2, 7, 5, 2, 12 ], 
      [ 5, 6, 9, 11, 8, 10, 12, 7, 0, 5, 6, 1, 4, 12, 10, 3, 11, 2, 3, 8, 2, 9, 7, 4 ], 
      [ 5, 6, 11, 9, 10, 8, 7, 12, 5, 0, 1, 6, 12, 4, 3, 10, 2, 11, 8, 3, 9, 2, 4, 7 ], 
      [ 6, 5, 9, 11, 12, 7, 8, 10, 6, 1, 0, 5, 10, 3, 4, 12, 2, 9, 7, 4, 11, 2, 3, 8 ], 
      [ 6, 5, 11, 9, 7, 12, 10, 8, 1, 6, 5, 0, 3, 10, 12, 4, 9, 2, 4, 7, 2, 11, 8, 3 ], 
      [ 8, 7, 8, 7, 5, 10, 12, 6, 4, 11, 9, 3, 0, 2, 2, 1, 5, 12, 4, 9, 10, 6, 11, 3 ], 
      [ 8, 7, 7, 8, 10, 5, 6, 12, 11, 4, 3, 9, 2, 0, 1, 2, 12, 5, 9, 4, 6, 10, 3, 11 ], 
      [ 7, 8, 8, 7, 12, 6, 5, 10, 9, 3, 4, 11, 2, 1, 0, 2, 10, 6, 11, 3, 5, 12, 4, 9 ], 
      [ 7, 8, 7, 8, 6, 12, 10, 5, 3, 9, 11, 4, 1, 2, 2, 0, 6, 10, 3, 11, 12, 5, 9, 4 ], 
      [ 10, 12, 3, 4, 5, 8, 7, 6, 12, 2, 2, 10, 5, 11, 9, 6, 0, 4, 7, 11, 3, 1, 9, 8 ], 
      [ 10, 12, 4, 3, 8, 5, 6, 7, 2, 12, 10, 2, 11, 5, 6, 9, 4, 0, 11, 7, 1, 3, 8, 9 ], 
      [ 9, 11, 5, 6, 11, 2, 2, 9, 3, 7, 8, 4, 4, 10, 12, 3, 8, 12, 0, 6, 10, 7, 5, 1 ], 
      [ 9, 11, 6, 5, 2, 11, 9, 2, 7, 3, 4, 8, 10, 4, 3, 12, 12, 8, 6, 0, 7, 10, 1, 5 ], 
      [ 12, 10, 3, 4, 7, 6, 5, 8, 2, 10, 12, 2, 9, 6, 5, 11, 3, 1, 9, 8, 0, 4, 7, 11 ], 
      [ 12, 10, 4, 3, 6, 7, 8, 5, 10, 2, 2, 12, 6, 9, 11, 5, 1, 3, 8, 9, 4, 0, 11, 7 ], 
      [ 11, 9, 5, 6, 2, 9, 11, 2, 8, 4, 3, 7, 12, 3, 4, 10, 10, 7, 5, 1, 8, 12, 0, 6 ], 
      [ 11, 9, 6, 5, 9, 2, 2, 11, 4, 8, 7, 3, 3, 12, 10, 4, 7, 10, 1, 5, 12, 8, 6, 0 ] ], 
  [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], [ 2, 2, 0, 1, 1, 1, 1, -2, -2, -1, -1, -1, -1 ], 
      [ 1, -1, 0, -1, 1, -1, 1, -E(8)-E(8)^3, E(8)+E(8)^3, 1+E(8)+E(8)^3, 1-E(8)-E(8)^3, -1-E(8)-E(8)^3, -1+E(8)+E(8)^3 ], 
      [ 1, -1, 0, -1, 1, -1, 1, E(8)+E(8)^3, -E(8)-E(8)^3, 1-E(8)-E(8)^3, 1+E(8)+E(8)^3, -1+E(8)+E(8)^3, -1-E(8)-E(8)^3 ], 
      [ 1, 1, 2, -1, -1, -1, -1, 2, 2, -1, -1, -1, -1 ], [ 2, -2, 0, 1, -1, 1, -1, 0, 0, -1, -1, 1, 1 ], 
      [ 1, 1, -2, -1, -1, -1, -1, 0, 0, 1, 1, 1, 1 ] ] ]