rec(
  ct := 
   [ [ 1, 1, 1, 1, 2, 2, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, -1, -1, 2, -2, -4, 4, -4, 4, 4, -4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, -4, 4, 4, -4, -4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 4, -4, -4, 4, -4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 4, -4, 4, -4, 4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -4, -4, -4, -4, 4, 4, 1 ], [ 1, 1, 1, 1, 2, 2, -4, -4, 4, 4, -4, -4, 1 ],
      [ 1, 1, 1, 1, 2, 2, 4, 4, -4, -4, -4, -4, 1 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 
          11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 
          10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 9, 9, 8, 8, 8, 8, 11, 11, 11, 11, 
          10, 10, 10, 10 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 9, 9, 8, 8, 8, 
          8, 11, 11, 11, 11, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 
          11, 11, 11, 11 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 
          9, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 9, 9, 8, 8, 8, 8, 11, 11, 11, 11, 
          10, 10, 10, 10 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 9, 9, 8, 8, 8, 
          8, 11, 11, 11, 11, 10, 10, 10, 10 ], 
      [ 6, 6, 7, 7, 6, 6, 7, 7, 0, 1, 4, 4, 2, 3, 5, 5, 10, 10, 10, 10, 11, 11, 11, 11, 8, 8, 8, 
          8, 9, 9, 9, 9 ], [ 6, 6, 7, 7, 6, 6, 7, 7, 1, 0, 4, 4, 3, 2, 5, 5, 10, 10, 10, 10, 11, 
          11, 11, 11, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 6, 6, 7, 7, 6, 6, 7, 7, 4, 4, 0, 1, 5, 5, 2, 3, 10, 10, 10, 10, 11, 11, 11, 11, 8, 8, 8, 
          8, 9, 9, 9, 9 ], [ 6, 6, 7, 7, 6, 6, 7, 7, 4, 4, 1, 0, 5, 5, 3, 2, 10, 10, 10, 10, 11, 
          11, 11, 11, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 7, 7, 6, 6, 7, 7, 6, 6, 2, 3, 5, 5, 0, 1, 4, 4, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 
          9, 8, 8, 8, 8 ], [ 7, 7, 6, 6, 7, 7, 6, 6, 3, 2, 5, 5, 1, 0, 4, 4, 11, 11, 11, 11, 10, 
          10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 7, 7, 6, 6, 7, 7, 6, 6, 5, 5, 2, 3, 4, 4, 0, 1, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 
          9, 8, 8, 8, 8 ], [ 7, 7, 6, 6, 7, 7, 6, 6, 5, 5, 3, 2, 4, 4, 1, 0, 11, 11, 11, 11, 10, 
          10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 8, 8, 9, 9, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 0, 1, 4, 4, 2, 3, 5, 5, 6, 6, 6, 
          6, 7, 7, 7, 7 ], [ 8, 8, 9, 9, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 1, 0, 4, 4, 
          3, 2, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7 ], 
      [ 8, 8, 9, 9, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 4, 4, 0, 1, 5, 5, 2, 3, 6, 6, 6, 
          6, 7, 7, 7, 7 ], [ 8, 8, 9, 9, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 4, 4, 1, 0, 
          5, 5, 3, 2, 6, 6, 6, 6, 7, 7, 7, 7 ], 
      [ 9, 9, 8, 8, 9, 9, 8, 8, 11, 11, 11, 11, 10, 10, 10, 10, 2, 3, 5, 5, 0, 1, 4, 4, 7, 7, 7, 
          7, 6, 6, 6, 6 ], [ 9, 9, 8, 8, 9, 9, 8, 8, 11, 11, 11, 11, 10, 10, 10, 10, 3, 2, 5, 5, 
          1, 0, 4, 4, 7, 7, 7, 7, 6, 6, 6, 6 ], 
      [ 9, 9, 8, 8, 9, 9, 8, 8, 11, 11, 11, 11, 10, 10, 10, 10, 5, 5, 2, 3, 4, 4, 0, 1, 7, 7, 7, 
          7, 6, 6, 6, 6 ], [ 9, 9, 8, 8, 9, 9, 8, 8, 11, 11, 11, 11, 10, 10, 10, 10, 5, 5, 3, 2, 
          4, 4, 1, 0, 7, 7, 7, 7, 6, 6, 6, 6 ], 
      [ 10, 10, 11, 11, 10, 10, 11, 11, 8, 8, 8, 8, 9, 9, 9, 9, 6, 6, 6, 6, 7, 7, 7, 7, 0, 1, 4, 
          4, 2, 3, 5, 5 ], [ 10, 10, 11, 11, 10, 10, 11, 11, 8, 8, 8, 8, 9, 9, 9, 9, 6, 6, 6, 6, 
          7, 7, 7, 7, 1, 0, 4, 4, 3, 2, 5, 5 ], 
      [ 10, 10, 11, 11, 10, 10, 11, 11, 8, 8, 8, 8, 9, 9, 9, 9, 6, 6, 6, 6, 7, 7, 7, 7, 4, 4, 0, 
          1, 5, 5, 2, 3 ], [ 10, 10, 11, 11, 10, 10, 11, 11, 8, 8, 8, 8, 9, 9, 9, 9, 6, 6, 6, 6, 
          7, 7, 7, 7, 4, 4, 1, 0, 5, 5, 3, 2 ], 
      [ 11, 11, 10, 10, 11, 11, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 2, 3, 5, 
          5, 0, 1, 4, 4 ], [ 11, 11, 10, 10, 11, 11, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 
          6, 6, 6, 6, 3, 2, 5, 5, 1, 0, 4, 4 ], 
      [ 11, 11, 10, 10, 11, 11, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 2, 
          3, 4, 4, 0, 1 ], [ 11, 11, 10, 10, 11, 11, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 
          6, 6, 6, 6, 5, 5, 3, 2, 4, 4, 1, 0 ] ] )