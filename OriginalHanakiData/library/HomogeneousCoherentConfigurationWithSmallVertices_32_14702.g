rec(
  ct := 
   [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 8, 8, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -8*E(4), 8*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 8*E(4), -8*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -8, -8, 1 ], [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 0, 0, 2 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 4 ],
      [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 0, 0, 4 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 7, 7, 6, 6, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 9, 9, 8, 8, 6, 6, 7, 7, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 7, 6, 7, 8, 9, 8, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 6, 7, 6, 9, 8, 9, 8, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 8, 9, 8, 9, 7, 6, 7, 6, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 8, 9, 8, 6, 7, 6, 7, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 6, 7, 8, 9, 6, 7, 8, 9, 0, 4, 4, 1, 2, 5, 5, 3, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 6, 7, 8, 9, 7, 6, 9, 8, 4, 0, 1, 4, 5, 2, 3, 5, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 7, 6, 9, 8, 6, 7, 8, 9, 4, 1, 0, 4, 5, 3, 2, 5, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 7, 6, 9, 8, 7, 6, 9, 8, 1, 4, 4, 0, 3, 5, 5, 2, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 8, 9, 7, 6, 8, 9, 7, 6, 3, 5, 5, 2, 0, 4, 4, 1, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 8, 9, 7, 6, 9, 8, 6, 7, 5, 3, 2, 5, 4, 0, 1, 4, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 9, 8, 6, 7, 8, 9, 7, 6, 5, 2, 3, 5, 4, 1, 0, 4, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 9, 8, 6, 7, 9, 8, 6, 7, 2, 5, 5, 3, 1, 4, 4, 0, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 0, 1, 2, 3, 4, 4, 5, 5, 6, 
          6, 7, 7, 8, 8, 9, 9 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 3, 2, 0, 1, 5, 5, 4, 4, 8, 
          8, 9, 9, 7, 7, 6, 6 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          2, 3, 1, 0, 5, 5, 4, 4, 9, 9, 8, 8, 6, 6, 7, 7 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 4, 4, 5, 5, 0, 1, 2, 3, 6, 
          7, 6, 7, 8, 9, 8, 9 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          4, 4, 5, 5, 1, 0, 3, 2, 7, 6, 7, 6, 9, 8, 9, 8 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 5, 5, 4, 4, 3, 2, 0, 1, 8, 
          9, 8, 9, 7, 6, 7, 6 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 
          5, 5, 4, 4, 2, 3, 1, 0, 9, 8, 9, 8, 6, 7, 6, 7 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 6, 7, 8, 9, 6, 7, 8, 9, 0, 
          4, 4, 1, 2, 5, 5, 3 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          6, 7, 8, 9, 7, 6, 9, 8, 4, 0, 1, 4, 5, 2, 3, 5 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 7, 6, 9, 8, 6, 7, 8, 9, 4, 
          1, 0, 4, 5, 3, 2, 5 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          7, 6, 9, 8, 7, 6, 9, 8, 1, 4, 4, 0, 3, 5, 5, 2 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 8, 9, 7, 6, 8, 9, 7, 6, 3, 
          5, 5, 2, 0, 4, 4, 1 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          8, 9, 7, 6, 9, 8, 6, 7, 5, 3, 2, 5, 4, 0, 1, 4 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 9, 8, 6, 7, 8, 9, 7, 6, 5, 
          2, 3, 5, 4, 1, 0, 4 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 
          9, 8, 6, 7, 9, 8, 6, 7, 2, 5, 5, 3, 1, 4, 4, 0 ] ] )