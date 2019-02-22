rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 1 ], 
      [ 1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), 1, 1, -1, -1, -3, 3, -3*E(4), 3*E(4), 1 ], 
      [ 1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), 1, 1, -1, -1, 3, -3, 3*E(4), -3*E(4), 1 ], 
      [ 1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), 1, 1, -1, -1, -3, 3, 3*E(4), -3*E(4), 1 ], 
      [ 1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), 1, 1, -1, -1, 3, -3, -3*E(4), 3*E(4), 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -3, -3, 3, 3, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 3, 3, -3, -3, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -3, -3, -3, -3, 1 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 4 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 13, 13, 13, 12, 12, 12, 15, 15, 15, 14, 14, 14 ], 
      [ 3, 2, 0, 1, 8, 10, 9, 11, 5, 7, 4, 6, 14, 14, 14, 15, 15, 15, 13, 13, 13, 12, 12, 12 ], 
      [ 2, 3, 1, 0, 10, 8, 11, 9, 4, 6, 5, 7, 15, 15, 15, 14, 14, 14, 12, 12, 12, 13, 13, 13 ], 
      [ 5, 4, 9, 11, 0, 1, 8, 10, 7, 3, 6, 2, 14, 14, 14, 15, 15, 15, 13, 13, 13, 12, 12, 12 ], 
      [ 4, 5, 11, 9, 1, 0, 10, 8, 6, 2, 7, 3, 15, 15, 15, 14, 14, 14, 12, 12, 12, 13, 13, 13 ], 
      [ 7, 6, 8, 10, 9, 11, 0, 1, 3, 5, 2, 4, 14, 14, 14, 15, 15, 15, 13, 13, 13, 12, 12, 12 ], 
      [ 6, 7, 10, 8, 11, 9, 1, 0, 2, 4, 3, 5, 15, 15, 15, 14, 14, 14, 12, 12, 12, 13, 13, 13 ], 
      [ 9, 11, 4, 5, 6, 7, 2, 3, 0, 8, 1, 10, 12, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 15 ], 
      [ 8, 10, 6, 7, 2, 3, 4, 5, 9, 0, 11, 1, 12, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 15 ], 
      [ 11, 9, 5, 4, 7, 6, 3, 2, 1, 10, 0, 8, 13, 13, 13, 12, 12, 12, 15, 15, 15, 14, 14, 14 ], 
      [ 10, 8, 7, 6, 3, 2, 5, 4, 11, 1, 9, 0, 13, 13, 13, 12, 12, 12, 15, 15, 15, 14, 14, 14 ], 
      [ 12, 13, 15, 14, 15, 14, 15, 14, 12, 12, 13, 13, 0, 8, 9, 1, 10, 11, 3, 5, 7, 2, 4, 6 ], 
      [ 12, 13, 15, 14, 15, 14, 15, 14, 12, 12, 13, 13, 9, 0, 8, 11, 1, 10, 5, 7, 3, 4, 6, 2 ], 
      [ 12, 13, 15, 14, 15, 14, 15, 14, 12, 12, 13, 13, 8, 9, 0, 10, 11, 1, 7, 3, 5, 6, 2, 4 ], 
      [ 13, 12, 14, 15, 14, 15, 14, 15, 13, 13, 12, 12, 1, 10, 11, 0, 8, 9, 2, 4, 6, 3, 5, 7 ], 
      [ 13, 12, 14, 15, 14, 15, 14, 15, 13, 13, 12, 12, 11, 1, 10, 9, 0, 8, 4, 6, 2, 5, 7, 3 ], 
      [ 13, 12, 14, 15, 14, 15, 14, 15, 13, 13, 12, 12, 10, 11, 1, 8, 9, 0, 6, 2, 4, 7, 3, 5 ], 
      [ 15, 14, 13, 12, 13, 12, 13, 12, 15, 15, 14, 14, 2, 4, 6, 3, 5, 7, 0, 8, 9, 1, 10, 11 ], 
      [ 15, 14, 13, 12, 13, 12, 13, 12, 15, 15, 14, 14, 4, 6, 2, 5, 7, 3, 9, 0, 8, 11, 1, 10 ], 
      [ 15, 14, 13, 12, 13, 12, 13, 12, 15, 15, 14, 14, 6, 2, 4, 7, 3, 5, 8, 9, 0, 10, 11, 1 ], 
      [ 14, 15, 12, 13, 12, 13, 12, 13, 14, 14, 15, 15, 3, 5, 7, 2, 4, 6, 1, 10, 11, 0, 8, 9 ], 
      [ 14, 15, 12, 13, 12, 13, 12, 13, 14, 14, 15, 15, 5, 7, 3, 4, 6, 2, 11, 1, 10, 9, 0, 8 ], 
      [ 14, 15, 12, 13, 12, 13, 12, 13, 14, 14, 15, 15, 7, 3, 5, 6, 2, 4, 10, 11, 1, 8, 9, 0 ] ] )