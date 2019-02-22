rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 8, 8, 1 ], [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, -8, 8, 1 ]
        , [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 8, -8, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -8, -8, 1 ], 
      [ 1, 1, -1, -1, -2, 2, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 2 ], [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 2 ],
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 8 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 0, 1, 2, 3, 4, 4, 5, 5, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 1, 0, 3, 2, 4, 4, 5, 5, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 3, 2, 0, 1, 5, 5, 4, 4, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 2, 3, 1, 0, 5, 5, 4, 4, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 4, 4, 5, 5, 0, 1, 2, 3, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 4, 4, 5, 5, 1, 0, 3, 2, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 5, 5, 4, 4, 3, 2, 0, 1, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 5, 5, 4, 4, 2, 3, 1, 0, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 0, 1, 2, 3, 6, 6, 7, 7, 4, 
          4, 5, 5, 8, 8, 9, 9 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 
          1, 0, 3, 2, 6, 6, 7, 7, 4, 4, 5, 5, 8, 8, 9, 9 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 3, 2, 0, 1, 7, 7, 6, 6, 5, 
          5, 4, 4, 9, 9, 8, 8 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 
          2, 3, 1, 0, 7, 7, 6, 6, 5, 5, 4, 4, 9, 9, 8, 8 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 7, 7, 6, 6, 0, 1, 2, 3, 9, 
          9, 8, 8, 4, 4, 5, 5 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 
          7, 7, 6, 6, 1, 0, 3, 2, 9, 9, 8, 8, 4, 4, 5, 5 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 6, 6, 7, 7, 3, 2, 0, 1, 8, 
          8, 9, 9, 5, 5, 4, 4 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 
          6, 6, 7, 7, 2, 3, 1, 0, 8, 8, 9, 9, 5, 5, 4, 4 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 4, 4, 5, 5, 8, 8, 9, 9, 0, 
          1, 2, 3, 6, 6, 7, 7 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 
          4, 4, 5, 5, 8, 8, 9, 9, 1, 0, 3, 2, 6, 6, 7, 7 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 5, 5, 4, 4, 9, 9, 8, 8, 3, 
          2, 0, 1, 7, 7, 6, 6 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 
          5, 5, 4, 4, 9, 9, 8, 8, 2, 3, 1, 0, 7, 7, 6, 6 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 8, 8, 4, 4, 5, 5, 7, 
          7, 6, 6, 0, 1, 2, 3 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 
          9, 9, 8, 8, 4, 4, 5, 5, 7, 7, 6, 6, 1, 0, 3, 2 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 8, 8, 9, 9, 5, 5, 4, 4, 6, 
          6, 7, 7, 3, 2, 0, 1 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 
          8, 8, 9, 9, 5, 5, 4, 4, 6, 6, 7, 7, 2, 3, 1, 0 ] ] )