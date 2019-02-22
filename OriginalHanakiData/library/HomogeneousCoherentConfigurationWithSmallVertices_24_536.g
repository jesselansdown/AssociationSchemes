rec(
  ct := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], [ 1, 1, -2, -2, 2, 2, 2, -2, -2, -4, 4, 1 ], 
      [ 1, 1, -2, 2, -2, 2, 2, -2, -2, 4, -4, 1 ], [ 1, 1, 2, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, -2, -2, 2, -1, -1, 1, 1, 2, -2, 2 ], [ 1, 1, -2, 2, -2, -1, -1, 1, 1, -2, 2, 2 ], 
      [ 1, 1, 2, -2, -2, -1, -1, -1, -1, 2, 2, 2 ], [ 1, 1, 2, 2, 2, -1, -1, -1, -1, -2, -2, 2 ], 
      [ 1, -1, 0, 0, 0, -1, 1, E(3)-E(3)^2, -E(3)+E(3)^2, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, -1, 1, -E(3)+E(3)^2, E(3)-E(3)^2, 0, 0, 4 ], 
      [ 1, -1, 0, 0, 0, 2, -2, 0, 0, 0, 0, 4 ] ],
  matrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 1, 0, 2, 2, 3, 3, 4, 4, 6, 6, 5, 5, 8, 8, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 7, 8, 7, 8, 5, 6, 5, 6, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 2, 2, 1, 0, 4, 4, 3, 3, 8, 7, 8, 7, 6, 5, 6, 5, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 3, 3, 4, 4, 0, 1, 2, 2, 9, 9, 9, 9, 10, 10, 10, 10, 5, 5, 6, 6, 7, 7, 8, 8 ], 
      [ 3, 3, 4, 4, 1, 0, 2, 2, 9, 9, 9, 9, 10, 10, 10, 10, 6, 6, 5, 5, 8, 8, 7, 7 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 10, 10, 10, 10, 9, 9, 9, 9, 7, 8, 7, 8, 5, 6, 5, 6 ], 
      [ 4, 4, 3, 3, 2, 2, 1, 0, 10, 10, 10, 10, 9, 9, 9, 9, 8, 7, 8, 7, 6, 5, 6, 5 ], 
      [ 5, 6, 8, 7, 9, 9, 10, 10, 0, 5, 6, 1, 2, 8, 7, 2, 3, 9, 9, 3, 4, 10, 10, 4 ], 
      [ 5, 6, 7, 8, 9, 9, 10, 10, 5, 0, 1, 6, 8, 2, 2, 7, 9, 3, 3, 9, 10, 4, 4, 10 ], 
      [ 6, 5, 8, 7, 9, 9, 10, 10, 6, 1, 0, 5, 7, 2, 2, 8, 9, 3, 3, 9, 10, 4, 4, 10 ], 
      [ 6, 5, 7, 8, 9, 9, 10, 10, 1, 6, 5, 0, 2, 7, 8, 2, 3, 9, 9, 3, 4, 10, 10, 4 ], 
      [ 8, 7, 5, 6, 10, 10, 9, 9, 2, 7, 8, 2, 0, 6, 5, 1, 4, 10, 10, 4, 3, 9, 9, 3 ], 
      [ 8, 7, 6, 5, 10, 10, 9, 9, 7, 2, 2, 8, 6, 0, 1, 5, 10, 4, 4, 10, 9, 3, 3, 9 ], 
      [ 7, 8, 5, 6, 10, 10, 9, 9, 8, 2, 2, 7, 5, 1, 0, 6, 10, 4, 4, 10, 9, 3, 3, 9 ], 
      [ 7, 8, 6, 5, 10, 10, 9, 9, 2, 8, 7, 2, 1, 5, 6, 0, 4, 10, 10, 4, 3, 9, 9, 3 ], 
      [ 9, 9, 10, 10, 5, 6, 8, 7, 3, 9, 9, 3, 4, 10, 10, 4, 0, 5, 6, 1, 2, 8, 7, 2 ], 
      [ 9, 9, 10, 10, 5, 6, 7, 8, 9, 3, 3, 9, 10, 4, 4, 10, 5, 0, 1, 6, 8, 2, 2, 7 ], 
      [ 9, 9, 10, 10, 6, 5, 8, 7, 9, 3, 3, 9, 10, 4, 4, 10, 6, 1, 0, 5, 7, 2, 2, 8 ], 
      [ 9, 9, 10, 10, 6, 5, 7, 8, 3, 9, 9, 3, 4, 10, 10, 4, 1, 6, 5, 0, 2, 7, 8, 2 ], 
      [ 10, 10, 9, 9, 8, 7, 5, 6, 4, 10, 10, 4, 3, 9, 9, 3, 2, 7, 8, 2, 0, 6, 5, 1 ], 
      [ 10, 10, 9, 9, 8, 7, 6, 5, 10, 4, 4, 10, 9, 3, 3, 9, 7, 2, 2, 8, 6, 0, 1, 5 ], 
      [ 10, 10, 9, 9, 7, 8, 5, 6, 10, 4, 4, 10, 9, 3, 3, 9, 8, 2, 2, 7, 5, 1, 0, 6 ], 
      [ 10, 10, 9, 9, 7, 8, 6, 5, 4, 10, 10, 4, 3, 9, 9, 3, 2, 8, 7, 2, 1, 5, 6, 0 ] ] )