rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 8, 8, 1 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -8, 8, 1 ]
        , [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 8, -8, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -8, -8, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, -1, E(4), -E(4), 0, 0, -1-E(4), -1+E(4), 1+E(4), 1-E(4), 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 1+E(4), 1-E(4), -1-E(4), -1+E(4), 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), 0, 0, -1+E(4), -1-E(4), 1-E(4), 1+E(4), 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 1-E(4), 1+E(4), -1+E(4), -1-E(4), 0, 0, 4 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 10, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 7, 7, 8, 8, 9, 9, 6, 6, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 9, 9, 6, 6, 7, 7, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 8, 7, 9, 6, 8, 7, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 6, 9, 7, 8, 6, 9, 7, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 7, 9, 8, 6, 7, 9, 8, 6, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 7, 6, 8, 9, 7, 6, 8, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 7, 9, 6, 8, 7, 9, 6, 8, 0, 4, 3, 5, 4, 1, 5, 2, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 7, 9, 6, 8, 9, 7, 8, 6, 4, 0, 5, 3, 1, 4, 2, 5, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 6, 8, 9, 7, 6, 8, 9, 7, 2, 5, 0, 4, 5, 3, 4, 1, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 6, 8, 9, 7, 8, 6, 7, 9, 5, 2, 4, 0, 3, 5, 1, 4, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 9, 7, 8, 6, 7, 9, 6, 8, 4, 1, 5, 2, 0, 4, 3, 5, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 9, 7, 8, 6, 9, 7, 8, 6, 1, 4, 2, 5, 4, 0, 5, 3, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 8, 6, 7, 9, 6, 8, 9, 7, 5, 3, 4, 1, 2, 5, 0, 4, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 8, 6, 7, 9, 8, 6, 7, 9, 3, 5, 1, 4, 5, 2, 4, 0, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 0, 1, 2, 3, 4, 4, 5, 5, 6, 
          6, 7, 7, 8, 8, 9, 9 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          1, 0, 3, 2, 4, 4, 5, 5, 8, 8, 9, 9, 6, 6, 7, 7 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 3, 2, 0, 1, 5, 5, 4, 4, 7, 
          7, 8, 8, 9, 9, 6, 6 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          2, 3, 1, 0, 5, 5, 4, 4, 9, 9, 6, 6, 7, 7, 8, 8 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 4, 4, 5, 5, 0, 1, 2, 3, 6, 
          8, 7, 9, 6, 8, 7, 9 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          4, 4, 5, 5, 1, 0, 3, 2, 8, 6, 9, 7, 8, 6, 9, 7 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 5, 5, 4, 4, 3, 2, 0, 1, 7, 
          9, 8, 6, 7, 9, 8, 6 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          5, 5, 4, 4, 2, 3, 1, 0, 9, 7, 6, 8, 9, 7, 6, 8 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 7, 9, 6, 8, 7, 9, 6, 8, 0, 
          4, 3, 5, 4, 1, 5, 2 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          7, 9, 6, 8, 9, 7, 8, 6, 4, 0, 5, 3, 1, 4, 2, 5 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 6, 8, 9, 7, 6, 8, 9, 7, 2, 
          5, 0, 4, 5, 3, 4, 1 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          6, 8, 9, 7, 8, 6, 7, 9, 5, 2, 4, 0, 3, 5, 1, 4 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 9, 7, 8, 6, 7, 9, 6, 8, 4, 
          1, 5, 2, 0, 4, 3, 5 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          9, 7, 8, 6, 9, 7, 8, 6, 1, 4, 2, 5, 4, 0, 5, 3 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 8, 6, 7, 9, 6, 8, 9, 7, 5, 
          3, 4, 1, 2, 5, 0, 4 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          8, 6, 7, 9, 8, 6, 7, 9, 3, 5, 1, 4, 5, 2, 4, 0 ] ] )