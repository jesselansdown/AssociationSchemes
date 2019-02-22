rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 8, 8, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -8, 8, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 8, -8, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -8, -8, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -2, 2, 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 2, -2, -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -2, 2, -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 2, -2, 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 
          13, 13, 13, 13, 13, 13 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 9, 9, 8, 8, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 10, 10, 8, 8, 9, 9, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 11, 11, 9, 9, 8, 8, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 8, 8, 9, 9, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 0, 2, 1, 3, 5, 7, 4, 6, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 2, 0, 3, 1, 7, 5, 6, 4, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 1, 3, 0, 2, 4, 6, 5, 7, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 3, 1, 2, 0, 6, 4, 7, 5, 13, 13, 13, 13, 13, 13, 13, 13, 12, 
          12, 12, 12, 12, 12, 12, 12 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 4, 6, 5, 7, 0, 2, 1, 3, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 6, 4, 7, 5, 2, 0, 3, 1, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 5, 7, 4, 6, 1, 3, 0, 2, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 7, 5, 6, 4, 3, 1, 2, 0, 12, 12, 12, 12, 12, 12, 12, 12, 13, 
          13, 13, 13, 13, 13, 13, 13 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 0, 1, 2, 3, 10, 10, 11, 
          11, 4, 5, 6, 7, 8, 8, 9, 9 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 1, 0, 3, 2, 11, 11, 10, 
          10, 5, 4, 7, 6, 9, 9, 8, 8 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 2, 3, 0, 1, 10, 10, 11, 
          11, 6, 7, 4, 5, 8, 8, 9, 9 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 3, 2, 1, 0, 11, 11, 10, 
          10, 7, 6, 5, 4, 9, 9, 8, 8 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 11, 10, 11, 10, 0, 2, 1, 
          3, 9, 8, 9, 8, 4, 6, 5, 7 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 11, 10, 11, 10, 2, 0, 3, 
          1, 9, 8, 9, 8, 6, 4, 7, 5 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 10, 11, 10, 11, 1, 3, 0, 
          2, 8, 9, 8, 9, 5, 7, 4, 6 ], 
      [ 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 10, 11, 10, 11, 3, 1, 2, 
          0, 8, 9, 8, 9, 7, 5, 6, 4 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 5, 4, 7, 6, 9, 9, 8, 8, 0, 
          1, 2, 3, 10, 10, 11, 11 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 4, 5, 6, 7, 8, 8, 9, 9, 1, 
          0, 3, 2, 11, 11, 10, 10 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 7, 6, 5, 4, 9, 9, 8, 8, 2, 
          3, 0, 1, 10, 10, 11, 11 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 6, 7, 4, 5, 8, 8, 9, 9, 3, 
          2, 1, 0, 11, 11, 10, 10 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 8, 9, 8, 9, 5, 7, 4, 6, 
          11, 10, 11, 10, 0, 2, 1, 3 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 8, 9, 8, 9, 7, 5, 6, 4, 
          11, 10, 11, 10, 2, 0, 3, 1 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 9, 8, 9, 8, 4, 6, 5, 7, 
          10, 11, 10, 11, 1, 3, 0, 2 ], 
      [ 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 9, 8, 9, 8, 6, 4, 7, 5, 
          10, 11, 10, 11, 3, 1, 2, 0 ] ] )