rec(
  ct := 
   [ [ 1, 1, 1, 1, 2, 2, 3, 3, 3, 3, 6, 6, 1 ], 
      [ 1, 1, -1, -1, 2*E(4), -2*E(4), 3, 3, -3, -3, -6*E(4), 6*E(4), 1 ], 
      [ 1, 1, -1, -1, -2*E(4), 2*E(4), 3, 3, -3, -3, 6*E(4), -6*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, 3, 3, 3, 3, -6, -6, 1 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 3, -3, -3*E(4), 3*E(4), 0, 0, 2 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 3, -3, 3*E(4), -3*E(4), 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2*E(4), -2*E(4), -1, -1, 1, 1, 2*E(4), -2*E(4), 3 ], 
      [ 1, 1, -1, -1, -2*E(4), 2*E(4), -1, -1, 1, 1, -2*E(4), 2*E(4), 3 ], 
      [ 1, 1, 1, 1, -2, -2, -1, -1, -1, -1, 2, 2, 3 ], 
      [ 1, 1, 1, 1, 2, 2, -1, -1, -1, -1, -2, -2, 3 ], 
      [ 1, -1, E(4), -E(4), 0, 0, -1, 1, E(4), -E(4), 0, 0, 6 ], 
      [ 1, -1, -E(4), E(4), 0, 0, -1, 1, -E(4), E(4), 0, 0, 6 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 7, 6, 6, 6, 9, 9, 9, 8, 8, 8, 10, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11, 11 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 8, 9, 9, 9, 7, 7, 7, 6, 6, 6, 11, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10, 10 ], [ 2, 3, 1, 0, 5, 5, 4, 4, 9, 9, 9, 8, 8, 8, 6, 6, 6, 7, 7, 7, 11, 
          11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10 ], 
      [ 5, 5, 4, 4, 0, 1, 2, 3, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 8, 8, 8, 9, 9, 9, 
          6, 6, 6, 7, 7, 7 ], [ 5, 5, 4, 4, 1, 0, 3, 2, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 
          11, 11, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6 ], 
      [ 4, 4, 5, 5, 3, 2, 0, 1, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 7, 7, 7, 6, 6, 6, 
          8, 8, 8, 9, 9, 9 ], [ 4, 4, 5, 5, 2, 3, 1, 0, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 
          10, 10, 6, 6, 6, 7, 7, 7, 9, 9, 9, 8, 8, 8 ], 
      [ 6, 7, 9, 8, 11, 11, 10, 10, 0, 6, 6, 1, 7, 7, 3, 8, 8, 2, 9, 9, 5, 10, 10, 5, 10, 10, 4, 
          11, 11, 4, 11, 11 ], [ 6, 7, 9, 8, 11, 11, 10, 10, 6, 0, 6, 7, 1, 7, 8, 3, 8, 9, 2, 9, 
          10, 5, 10, 10, 5, 10, 11, 4, 11, 11, 4, 11 ], 
      [ 6, 7, 9, 8, 11, 11, 10, 10, 6, 6, 0, 7, 7, 1, 8, 8, 3, 9, 9, 2, 10, 10, 5, 10, 10, 5, 11, 
          11, 4, 11, 11, 4 ], [ 7, 6, 8, 9, 11, 11, 10, 10, 1, 7, 7, 0, 6, 6, 2, 9, 9, 3, 8, 8, 5, 
          10, 10, 5, 10, 10, 4, 11, 11, 4, 11, 11 ], 
      [ 7, 6, 8, 9, 11, 11, 10, 10, 7, 1, 7, 6, 0, 6, 9, 2, 9, 8, 3, 8, 10, 5, 10, 10, 5, 10, 11, 
          4, 11, 11, 4, 11 ], [ 7, 6, 8, 9, 11, 11, 10, 10, 7, 7, 1, 6, 6, 0, 9, 9, 2, 8, 8, 3, 
          10, 10, 5, 10, 10, 5, 11, 11, 4, 11, 11, 4 ], 
      [ 9, 8, 7, 6, 10, 10, 11, 11, 2, 9, 9, 3, 8, 8, 0, 6, 6, 1, 7, 7, 4, 11, 11, 4, 11, 11, 5, 
          10, 10, 5, 10, 10 ], [ 9, 8, 7, 6, 10, 10, 11, 11, 9, 2, 9, 8, 3, 8, 6, 0, 6, 7, 1, 7, 
          11, 4, 11, 11, 4, 11, 10, 5, 10, 10, 5, 10 ], 
      [ 9, 8, 7, 6, 10, 10, 11, 11, 9, 9, 2, 8, 8, 3, 6, 6, 0, 7, 7, 1, 11, 11, 4, 11, 11, 4, 10, 
          10, 5, 10, 10, 5 ], [ 8, 9, 6, 7, 10, 10, 11, 11, 3, 8, 8, 2, 9, 9, 1, 7, 7, 0, 6, 6, 4, 
          11, 11, 4, 11, 11, 5, 10, 10, 5, 10, 10 ], 
      [ 8, 9, 6, 7, 10, 10, 11, 11, 8, 3, 8, 9, 2, 9, 7, 1, 7, 6, 0, 6, 11, 4, 11, 11, 4, 11, 10, 
          5, 10, 10, 5, 10 ], [ 8, 9, 6, 7, 10, 10, 11, 11, 8, 8, 3, 9, 9, 2, 7, 7, 1, 6, 6, 0, 
          11, 11, 4, 11, 11, 4, 10, 10, 5, 10, 10, 5 ], 
      [ 11, 11, 10, 10, 9, 8, 7, 6, 4, 11, 11, 4, 11, 11, 5, 10, 10, 5, 10, 10, 0, 6, 6, 1, 7, 7, 
          2, 9, 9, 3, 8, 8 ], [ 11, 11, 10, 10, 9, 8, 7, 6, 11, 4, 11, 11, 4, 11, 10, 5, 10, 10, 
          5, 10, 6, 0, 6, 7, 1, 7, 9, 2, 9, 8, 3, 8 ], 
      [ 11, 11, 10, 10, 9, 8, 7, 6, 11, 11, 4, 11, 11, 4, 10, 10, 5, 10, 10, 5, 6, 6, 0, 7, 7, 1, 
          9, 9, 2, 8, 8, 3 ], [ 11, 11, 10, 10, 8, 9, 6, 7, 4, 11, 11, 4, 11, 11, 5, 10, 10, 5, 
          10, 10, 1, 7, 7, 0, 6, 6, 3, 8, 8, 2, 9, 9 ], 
      [ 11, 11, 10, 10, 8, 9, 6, 7, 11, 4, 11, 11, 4, 11, 10, 5, 10, 10, 5, 10, 7, 1, 7, 6, 0, 6, 
          8, 3, 8, 9, 2, 9 ], [ 11, 11, 10, 10, 8, 9, 6, 7, 11, 11, 4, 11, 11, 4, 10, 10, 5, 10, 
          10, 5, 7, 7, 1, 6, 6, 0, 8, 8, 3, 9, 9, 2 ], 
      [ 10, 10, 11, 11, 6, 7, 9, 8, 5, 10, 10, 5, 10, 10, 4, 11, 11, 4, 11, 11, 3, 8, 8, 2, 9, 9, 
          0, 6, 6, 1, 7, 7 ], [ 10, 10, 11, 11, 6, 7, 9, 8, 10, 5, 10, 10, 5, 10, 11, 4, 11, 11, 
          4, 11, 8, 3, 8, 9, 2, 9, 6, 0, 6, 7, 1, 7 ], 
      [ 10, 10, 11, 11, 6, 7, 9, 8, 10, 10, 5, 10, 10, 5, 11, 11, 4, 11, 11, 4, 8, 8, 3, 9, 9, 2, 
          6, 6, 0, 7, 7, 1 ], [ 10, 10, 11, 11, 7, 6, 8, 9, 5, 10, 10, 5, 10, 10, 4, 11, 11, 4, 
          11, 11, 2, 9, 9, 3, 8, 8, 1, 7, 7, 0, 6, 6 ], 
      [ 10, 10, 11, 11, 7, 6, 8, 9, 10, 5, 10, 10, 5, 10, 11, 4, 11, 11, 4, 11, 9, 2, 9, 8, 3, 8, 
          7, 1, 7, 6, 0, 6 ], [ 10, 10, 11, 11, 7, 6, 8, 9, 10, 10, 5, 10, 10, 5, 11, 11, 4, 11, 
          11, 4, 9, 9, 2, 8, 8, 3, 7, 7, 1, 6, 6, 0 ] ] )