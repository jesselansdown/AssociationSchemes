rec(
  ct := 
   [ [ 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2*E(5)^4, 2*E(5), 2*E(5), 2*E(5)^4, 4*E(5)^2, 4*E(5)^3, 1 ], 
      [ 1, 1, 1, 1, 2*E(5)^3, 2*E(5)^2, 2*E(5)^2, 2*E(5)^3, 4*E(5)^4, 4*E(5), 1 ], 
      [ 1, 1, 1, 1, 2*E(5)^2, 2*E(5)^3, 2*E(5)^3, 2*E(5)^2, 4*E(5), 4*E(5)^4, 1 ], 
      [ 1, 1, 1, 1, 2*E(5), 2*E(5)^4, 2*E(5)^4, 2*E(5), 4*E(5)^3, 4*E(5)^2, 1 ], 
      [ 2, 0, 0, -2, 0, 0, 0, 0, 0, 0, 5 ], [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 5 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 1, 0, 3, 2, 4, 4, 6, 6, 5, 5, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 2, 3, 0, 1, 7, 7, 5, 5, 6, 6, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 3, 2, 1, 0, 7, 7, 6, 6, 5, 5, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 5, 5, 6, 6, 0, 2, 8, 8, 8, 8, 1, 3, 9, 9, 9, 9, 4, 4, 7, 7 ], 
      [ 5, 5, 6, 6, 2, 0, 8, 8, 8, 8, 3, 1, 9, 9, 9, 9, 7, 7, 4, 4 ], 
      [ 4, 7, 4, 7, 9, 9, 0, 1, 2, 3, 9, 9, 5, 5, 6, 6, 8, 8, 8, 8 ], 
      [ 4, 7, 4, 7, 9, 9, 1, 0, 3, 2, 9, 9, 6, 6, 5, 5, 8, 8, 8, 8 ], 
      [ 7, 4, 7, 4, 9, 9, 2, 3, 0, 1, 9, 9, 5, 5, 6, 6, 8, 8, 8, 8 ], 
      [ 7, 4, 7, 4, 9, 9, 3, 2, 1, 0, 9, 9, 6, 6, 5, 5, 8, 8, 8, 8 ], 
      [ 6, 6, 5, 5, 1, 3, 8, 8, 8, 8, 0, 2, 9, 9, 9, 9, 4, 4, 7, 7 ], 
      [ 6, 6, 5, 5, 3, 1, 8, 8, 8, 8, 2, 0, 9, 9, 9, 9, 7, 7, 4, 4 ], 
      [ 9, 9, 9, 9, 8, 8, 4, 7, 4, 7, 8, 8, 0, 1, 2, 3, 5, 6, 5, 6 ], 
      [ 9, 9, 9, 9, 8, 8, 4, 7, 4, 7, 8, 8, 1, 0, 3, 2, 6, 5, 6, 5 ], 
      [ 9, 9, 9, 9, 8, 8, 7, 4, 7, 4, 8, 8, 2, 3, 0, 1, 5, 6, 5, 6 ], 
      [ 9, 9, 9, 9, 8, 8, 7, 4, 7, 4, 8, 8, 3, 2, 1, 0, 6, 5, 6, 5 ], 
      [ 8, 8, 8, 8, 5, 6, 9, 9, 9, 9, 5, 6, 4, 7, 4, 7, 0, 2, 1, 3 ], 
      [ 8, 8, 8, 8, 5, 6, 9, 9, 9, 9, 5, 6, 7, 4, 7, 4, 2, 0, 3, 1 ], 
      [ 8, 8, 8, 8, 6, 5, 9, 9, 9, 9, 6, 5, 4, 7, 4, 7, 1, 3, 0, 2 ], 
      [ 8, 8, 8, 8, 6, 5, 9, 9, 9, 9, 6, 5, 7, 4, 7, 4, 3, 1, 2, 0 ] ] )