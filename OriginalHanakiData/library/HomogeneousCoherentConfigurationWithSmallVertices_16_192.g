rec(
  ct := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, -1, -1, 1, 1, -2, -2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 1 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 10, 11, 11, 8, 8, 9, 9 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 10, 10, 11, 11, 8, 8, 9, 9 ], 
      [ 4, 5, 7, 6, 0, 1, 3, 2, 11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 5, 4, 6, 7, 1, 0, 2, 3, 11, 11, 10, 10, 9, 9, 8, 8 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 9, 9, 8, 8, 11, 11, 10, 10 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 9, 9, 8, 8, 11, 11, 10, 10 ], 
      [ 9, 9, 11, 11, 10, 10, 8, 8, 0, 1, 6, 7, 2, 3, 4, 5 ], 
      [ 9, 9, 11, 11, 10, 10, 8, 8, 1, 0, 7, 6, 3, 2, 5, 4 ], 
      [ 8, 8, 10, 10, 11, 11, 9, 9, 7, 6, 0, 1, 4, 5, 3, 2 ], 
      [ 8, 8, 10, 10, 11, 11, 9, 9, 6, 7, 1, 0, 5, 4, 2, 3 ], 
      [ 11, 11, 9, 9, 8, 8, 10, 10, 2, 3, 4, 5, 0, 1, 6, 7 ], 
      [ 11, 11, 9, 9, 8, 8, 10, 10, 3, 2, 5, 4, 1, 0, 7, 6 ], 
      [ 10, 10, 8, 8, 9, 9, 11, 11, 4, 5, 3, 2, 7, 6, 0, 1 ], 
      [ 10, 10, 8, 8, 9, 9, 11, 11, 5, 4, 2, 3, 6, 7, 1, 0 ] ] )