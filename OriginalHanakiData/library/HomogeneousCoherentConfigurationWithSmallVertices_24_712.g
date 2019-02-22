rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, -2, -2, 2, 2, 2 ], 
      [ 2, 2, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, -2, -2, -2, -2, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 3 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 3 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 3 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 3 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 12, 12, 13, 13, 14, 14, 15, 15, 8, 8, 9, 9, 10, 10, 11, 11 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 12, 12, 13, 13, 14, 14, 15, 15, 8, 8, 9, 9, 10, 10, 11, 11 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 14, 14, 15, 15, 12, 12, 13, 13, 10, 10, 11, 11, 8, 8, 9, 9 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 14, 14, 15, 15, 12, 12, 13, 13, 10, 10, 11, 11, 8, 8, 9, 9 ], 
      [ 8, 8, 13, 13, 10, 10, 15, 15, 0, 1, 12, 12, 4, 5, 14, 14, 9, 9, 2, 3, 11, 11, 6, 7 ], 
      [ 8, 8, 13, 13, 10, 10, 15, 15, 1, 0, 12, 12, 5, 4, 14, 14, 9, 9, 3, 2, 11, 11, 7, 6 ], 
      [ 9, 9, 12, 12, 11, 11, 14, 14, 13, 13, 0, 1, 15, 15, 4, 5, 2, 3, 8, 8, 6, 7, 10, 10 ], 
      [ 9, 9, 12, 12, 11, 11, 14, 14, 13, 13, 1, 0, 15, 15, 5, 4, 3, 2, 8, 8, 7, 6, 10, 10 ], 
      [ 10, 10, 15, 15, 8, 8, 13, 13, 5, 4, 14, 14, 0, 1, 12, 12, 11, 11, 7, 6, 9, 9, 2, 3 ], 
      [ 10, 10, 15, 15, 8, 8, 13, 13, 4, 5, 14, 14, 1, 0, 12, 12, 11, 11, 6, 7, 9, 9, 3, 2 ], 
      [ 11, 11, 14, 14, 9, 9, 12, 12, 15, 15, 5, 4, 13, 13, 0, 1, 7, 6, 10, 10, 2, 3, 8, 8 ], 
      [ 11, 11, 14, 14, 9, 9, 12, 12, 15, 15, 4, 5, 13, 13, 1, 0, 6, 7, 10, 10, 3, 2, 8, 8 ], 
      [ 13, 13, 8, 8, 15, 15, 10, 10, 9, 9, 2, 3, 11, 11, 6, 7, 0, 1, 12, 12, 4, 5, 14, 14 ], 
      [ 13, 13, 8, 8, 15, 15, 10, 10, 9, 9, 3, 2, 11, 11, 7, 6, 1, 0, 12, 12, 5, 4, 14, 14 ], 
      [ 12, 12, 9, 9, 14, 14, 11, 11, 2, 3, 8, 8, 6, 7, 10, 10, 13, 13, 0, 1, 15, 15, 4, 5 ], 
      [ 12, 12, 9, 9, 14, 14, 11, 11, 3, 2, 8, 8, 7, 6, 10, 10, 13, 13, 1, 0, 15, 15, 5, 4 ], 
      [ 15, 15, 10, 10, 13, 13, 8, 8, 11, 11, 7, 6, 9, 9, 2, 3, 5, 4, 14, 14, 0, 1, 12, 12 ], 
      [ 15, 15, 10, 10, 13, 13, 8, 8, 11, 11, 6, 7, 9, 9, 3, 2, 4, 5, 14, 14, 1, 0, 12, 12 ], 
      [ 14, 14, 11, 11, 12, 12, 9, 9, 7, 6, 10, 10, 2, 3, 8, 8, 15, 15, 5, 4, 13, 13, 0, 1 ], 
      [ 14, 14, 11, 11, 12, 12, 9, 9, 6, 7, 10, 10, 3, 2, 8, 8, 15, 15, 4, 5, 13, 13, 1, 0 ] ] )