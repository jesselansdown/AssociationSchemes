rec(
  ct := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 6, -6, -6*E(4), 6*E(4), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 6, -6, 6*E(4), -6*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 6, 6, -6, -6, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -2, 2, 2*E(4), -2*E(4), 3 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -2, 2, -2*E(4), 2*E(4), 3 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 3 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 3 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 4 ], [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 4 ] 
     ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11 ], [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 11, 11, 
          11, 11, 11, 11, 10, 10, 10, 10, 10, 10 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 11, 
          11, 11, 11, 11, 11 ], [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 11, 
          11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 9, 9, 9, 9, 9, 9, 
          8, 8, 8, 8, 8, 8 ], [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 
          10, 10, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 9, 9, 9, 9, 9, 9, 
          8, 8, 8, 8, 8, 8 ], [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 
          10, 10, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 0, 2, 8, 8, 8, 8, 1, 3, 9, 9, 9, 9, 5, 7, 10, 10, 10, 10, 4, 
          6, 11, 11, 11, 11 ], [ 8, 9, 8, 9, 11, 10, 11, 10, 2, 0, 8, 8, 8, 8, 3, 1, 9, 9, 9, 9, 
          7, 5, 10, 10, 10, 10, 6, 4, 11, 11, 11, 11 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 8, 8, 0, 2, 8, 8, 9, 9, 1, 3, 9, 9, 10, 10, 5, 7, 10, 10, 11, 
          11, 4, 6, 11, 11 ], [ 8, 9, 8, 9, 11, 10, 11, 10, 8, 8, 2, 0, 8, 8, 9, 9, 3, 1, 9, 9, 
          10, 10, 7, 5, 10, 10, 11, 11, 6, 4, 11, 11 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 8, 8, 8, 8, 0, 2, 9, 9, 9, 9, 1, 3, 10, 10, 10, 10, 5, 7, 11, 
          11, 11, 11, 4, 6 ], [ 8, 9, 8, 9, 11, 10, 11, 10, 8, 8, 8, 8, 2, 0, 9, 9, 9, 9, 3, 1, 
          10, 10, 10, 10, 7, 5, 11, 11, 11, 11, 6, 4 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 1, 3, 9, 9, 9, 9, 0, 2, 8, 8, 8, 8, 4, 6, 11, 11, 11, 11, 5, 
          7, 10, 10, 10, 10 ], [ 9, 8, 9, 8, 10, 11, 10, 11, 3, 1, 9, 9, 9, 9, 2, 0, 8, 8, 8, 8, 
          6, 4, 11, 11, 11, 11, 7, 5, 10, 10, 10, 10 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 9, 9, 1, 3, 9, 9, 8, 8, 0, 2, 8, 8, 11, 11, 4, 6, 11, 11, 10, 
          10, 5, 7, 10, 10 ], [ 9, 8, 9, 8, 10, 11, 10, 11, 9, 9, 3, 1, 9, 9, 8, 8, 2, 0, 8, 8, 
          11, 11, 6, 4, 11, 11, 10, 10, 7, 5, 10, 10 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 9, 9, 9, 9, 1, 3, 8, 8, 8, 8, 0, 2, 11, 11, 11, 11, 4, 6, 10, 
          10, 10, 10, 5, 7 ], [ 9, 8, 9, 8, 10, 11, 10, 11, 9, 9, 9, 9, 3, 1, 8, 8, 8, 8, 2, 0, 
          11, 11, 11, 11, 6, 4, 10, 10, 10, 10, 7, 5 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 4, 6, 11, 11, 11, 11, 5, 7, 10, 10, 10, 10, 0, 2, 8, 8, 8, 8, 
          1, 3, 9, 9, 9, 9 ], [ 11, 10, 11, 10, 9, 8, 9, 8, 6, 4, 11, 11, 11, 11, 7, 5, 10, 10, 
          10, 10, 2, 0, 8, 8, 8, 8, 3, 1, 9, 9, 9, 9 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 11, 11, 4, 6, 11, 11, 10, 10, 5, 7, 10, 10, 8, 8, 0, 2, 8, 8, 
          9, 9, 1, 3, 9, 9 ], [ 11, 10, 11, 10, 9, 8, 9, 8, 11, 11, 6, 4, 11, 11, 10, 10, 7, 5, 
          10, 10, 8, 8, 2, 0, 8, 8, 9, 9, 3, 1, 9, 9 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 11, 11, 11, 11, 4, 6, 10, 10, 10, 10, 5, 7, 8, 8, 8, 8, 0, 2, 
          9, 9, 9, 9, 1, 3 ], [ 11, 10, 11, 10, 9, 8, 9, 8, 11, 11, 11, 11, 6, 4, 10, 10, 10, 10, 
          7, 5, 8, 8, 8, 8, 2, 0, 9, 9, 9, 9, 3, 1 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 5, 7, 10, 10, 10, 10, 4, 6, 11, 11, 11, 11, 1, 3, 9, 9, 9, 9, 
          0, 2, 8, 8, 8, 8 ], [ 10, 11, 10, 11, 8, 9, 8, 9, 7, 5, 10, 10, 10, 10, 6, 4, 11, 11, 
          11, 11, 3, 1, 9, 9, 9, 9, 2, 0, 8, 8, 8, 8 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 10, 10, 5, 7, 10, 10, 11, 11, 4, 6, 11, 11, 9, 9, 1, 3, 9, 9, 
          8, 8, 0, 2, 8, 8 ], [ 10, 11, 10, 11, 8, 9, 8, 9, 10, 10, 7, 5, 10, 10, 11, 11, 6, 4, 
          11, 11, 9, 9, 3, 1, 9, 9, 8, 8, 2, 0, 8, 8 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 10, 10, 10, 10, 5, 7, 11, 11, 11, 11, 4, 6, 9, 9, 9, 9, 1, 3, 
          8, 8, 8, 8, 0, 2 ], [ 10, 11, 10, 11, 8, 9, 8, 9, 10, 10, 10, 10, 7, 5, 11, 11, 11, 11, 
          6, 4, 9, 9, 9, 9, 3, 1, 8, 8, 8, 8, 2, 0 ] ] )