rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 6, 12, 1 ], [ 1, 1, 1, 1, 1, 1, 6, -12, 1 ], 
      [ 1, 1, 1, 1, 1, 1, -6, 0, 2 ], [ 1, -1, 1, 1, -1, -1, 0, 0, 4 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 0, 0, 4 ], 
      [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 0, 0, 4 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 0, 0, 4 ], [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 0, 0, 4 ] 
     ],
  matrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 3, 5, 0, 2, 1, 4, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 2, 4, 3, 0, 5, 1, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 5, 3, 1, 4, 0, 2, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 4, 2, 5, 1, 3, 0, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 6, 6, 3, 5, 0, 2, 1, 4, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 6, 6, 2, 4, 3, 0, 5, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 6, 6, 5, 3, 1, 4, 0, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 6, 6, 6, 6, 6, 6, 4, 2, 5, 1, 3, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 5, 0, 2, 1, 4, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 2, 4, 3, 0, 5, 1, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 3, 1, 4, 0, 2, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 4, 2, 5, 1, 3, 0, 6, 6, 6, 6, 6, 6 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 3, 5, 0, 2, 1, 4 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 2, 4, 3, 0, 5, 1 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 3, 1, 4, 0, 2 ], 
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 4, 2, 5, 1, 3, 0 ] ] )