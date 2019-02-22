rec(
  ct := 
   [ [ 1, 1, 1, 1, 1, 1, 9, 9, 1 ], [ 1, -1, -1, -1, 1, 1, -3*E(3)+3*E(3)^2, 3*E(3)-3*E(3)^2, 2 ], 
      [ 1, -1, -1, -1, 1, 1, 3*E(3)-3*E(3)^2, -3*E(3)+3*E(3)^2, 2 ], 
      [ 1, 1, 1, 1, 1, 1, -3, -3, 3 ], [ 2, 0, 0, 0, -1, -1, 0, 0, 8 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 1, 0, 4, 5, 2, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 2, 5, 0, 4, 3, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 3, 4, 5, 0, 1, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 5, 2, 3, 1, 0, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 4, 3, 1, 2, 5, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 7, 6, 6, 6, 7, 7, 0, 4, 5, 6, 6, 6, 7, 7, 7, 1, 2, 3, 6, 6, 6, 7, 7, 7 ], 
      [ 7, 6, 6, 6, 7, 7, 5, 0, 4, 6, 6, 6, 7, 7, 7, 2, 3, 1, 6, 6, 6, 7, 7, 7 ], 
      [ 7, 6, 6, 6, 7, 7, 4, 5, 0, 6, 6, 6, 7, 7, 7, 3, 1, 2, 6, 6, 6, 7, 7, 7 ], 
      [ 7, 6, 6, 6, 7, 7, 7, 7, 7, 0, 4, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 1, 2, 3 ], 
      [ 7, 6, 6, 6, 7, 7, 7, 7, 7, 5, 0, 4, 6, 6, 6, 6, 6, 6, 7, 7, 7, 2, 3, 1 ], 
      [ 7, 6, 6, 6, 7, 7, 7, 7, 7, 4, 5, 0, 6, 6, 6, 6, 6, 6, 7, 7, 7, 3, 1, 2 ], 
      [ 7, 6, 6, 6, 7, 7, 6, 6, 6, 7, 7, 7, 0, 4, 5, 7, 7, 7, 1, 2, 3, 6, 6, 6 ], 
      [ 7, 6, 6, 6, 7, 7, 6, 6, 6, 7, 7, 7, 5, 0, 4, 7, 7, 7, 2, 3, 1, 6, 6, 6 ], 
      [ 7, 6, 6, 6, 7, 7, 6, 6, 6, 7, 7, 7, 4, 5, 0, 7, 7, 7, 3, 1, 2, 6, 6, 6 ], 
      [ 6, 7, 7, 7, 6, 6, 1, 2, 3, 7, 7, 7, 6, 6, 6, 0, 4, 5, 7, 7, 7, 6, 6, 6 ], 
      [ 6, 7, 7, 7, 6, 6, 2, 3, 1, 7, 7, 7, 6, 6, 6, 5, 0, 4, 7, 7, 7, 6, 6, 6 ], 
      [ 6, 7, 7, 7, 6, 6, 3, 1, 2, 7, 7, 7, 6, 6, 6, 4, 5, 0, 7, 7, 7, 6, 6, 6 ], 
      [ 6, 7, 7, 7, 6, 6, 7, 7, 7, 6, 6, 6, 1, 2, 3, 6, 6, 6, 0, 4, 5, 7, 7, 7 ], 
      [ 6, 7, 7, 7, 6, 6, 7, 7, 7, 6, 6, 6, 2, 3, 1, 6, 6, 6, 5, 0, 4, 7, 7, 7 ], 
      [ 6, 7, 7, 7, 6, 6, 7, 7, 7, 6, 6, 6, 3, 1, 2, 6, 6, 6, 4, 5, 0, 7, 7, 7 ], 
      [ 6, 7, 7, 7, 6, 6, 6, 6, 6, 1, 2, 3, 7, 7, 7, 7, 7, 7, 6, 6, 6, 0, 4, 5 ], 
      [ 6, 7, 7, 7, 6, 6, 6, 6, 6, 2, 3, 1, 7, 7, 7, 7, 7, 7, 6, 6, 6, 5, 0, 4 ], 
      [ 6, 7, 7, 7, 6, 6, 6, 6, 6, 3, 1, 2, 7, 7, 7, 7, 7, 7, 6, 6, 6, 4, 5, 0 ] ] )