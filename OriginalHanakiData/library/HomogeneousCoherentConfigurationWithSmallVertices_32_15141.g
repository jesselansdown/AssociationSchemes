rec(
  ct := 
   [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 4, 4, 8, 1 ], [ 1, 1, 2, -2, -2, -2, -2, 2, 2, -4, -4, 8, 1 ], 
      [ 1, 1, 2, -2, -2, -2, -2, 2, 2, 4, 4, -8, 1 ], [ 1, 1, 2, 2, 2, 2, 2, 2, 2, -4, -4, -8, 1 ],
      [ 1, 1, 2, -2, -2, 2, 2, -2, -2, 0, 0, 0, 2 ], [ 1, 1, 2, 2, 2, -2, -2, -2, -2, 0, 0, 0, 2 ],
      [ 2, 2, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, 0, 0, 0, 0, 0, 0, 0, -2, 2, 0, 8 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 2, -2, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 
          11, 11, 11, 11 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 10, 10, 10, 10, 9, 
          9, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 9, 9, 10, 10, 9, 9, 10, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 10, 10, 9, 9, 
          10, 10, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 3, 3, 4, 4, 0, 1, 2, 2, 7, 7, 8, 8, 5, 5, 6, 6, 11, 11, 11, 11, 11, 11, 11, 11, 9, 9, 9, 
          9, 10, 10, 10, 10 ], [ 3, 3, 4, 4, 1, 0, 2, 2, 7, 7, 8, 8, 5, 5, 6, 6, 11, 11, 11, 11, 
          11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 4, 4, 3, 3, 2, 2, 0, 1, 8, 8, 7, 7, 6, 6, 5, 5, 11, 11, 11, 11, 11, 11, 11, 11, 9, 9, 10, 
          10, 9, 9, 10, 10 ], [ 4, 4, 3, 3, 2, 2, 1, 0, 8, 8, 7, 7, 6, 6, 5, 5, 11, 11, 11, 11, 
          11, 11, 11, 11, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 5, 5, 6, 6, 8, 8, 7, 7, 0, 1, 2, 2, 4, 4, 3, 3, 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 9, 
          10, 9, 10, 9, 10 ], [ 5, 5, 6, 6, 8, 8, 7, 7, 1, 0, 2, 2, 4, 4, 3, 3, 11, 11, 11, 11, 
          11, 11, 11, 11, 10, 9, 10, 9, 10, 9, 10, 9 ], 
      [ 6, 6, 5, 5, 7, 7, 8, 8, 2, 2, 0, 1, 3, 3, 4, 4, 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 10, 
          9, 10, 9, 9, 10 ], [ 6, 6, 5, 5, 7, 7, 8, 8, 2, 2, 1, 0, 3, 3, 4, 4, 11, 11, 11, 11, 11, 
          11, 11, 11, 10, 9, 9, 10, 9, 10, 10, 9 ], 
      [ 8, 8, 7, 7, 5, 5, 6, 6, 4, 4, 3, 3, 0, 1, 2, 2, 9, 10, 9, 10, 9, 10, 9, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 8, 8, 7, 7, 5, 5, 6, 6, 4, 4, 3, 3, 1, 0, 2, 2, 10, 9, 10, 9, 
          10, 9, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 7, 7, 8, 8, 6, 6, 5, 5, 3, 3, 4, 4, 2, 2, 0, 1, 9, 10, 10, 9, 10, 9, 9, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 7, 7, 8, 8, 6, 6, 5, 5, 3, 3, 4, 4, 2, 2, 1, 0, 10, 9, 9, 10, 9, 
          10, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 9, 10, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 9, 10, 0, 2, 7, 8, 8, 7, 2, 1, 3, 4, 
          6, 5, 5, 6, 4, 3 ], [ 9, 10, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 10, 9, 2, 0, 
          8, 7, 7, 8, 1, 2, 4, 3, 5, 6, 6, 5, 3, 4 ], 
      [ 9, 10, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 10, 9, 8, 7, 0, 2, 2, 1, 7, 8, 5, 6, 
          3, 4, 4, 3, 6, 5 ], [ 9, 10, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 9, 10, 7, 8, 
          2, 0, 1, 2, 8, 7, 6, 5, 4, 3, 3, 4, 5, 6 ], 
      [ 10, 9, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 10, 9, 7, 8, 2, 1, 0, 2, 8, 7, 6, 5, 
          4, 3, 3, 4, 5, 6 ], [ 10, 9, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 9, 10, 8, 7, 
          1, 2, 2, 0, 7, 8, 5, 6, 3, 4, 4, 3, 6, 5 ], 
      [ 10, 9, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 9, 10, 2, 1, 8, 7, 7, 8, 0, 2, 4, 3, 
          5, 6, 6, 5, 3, 4 ], [ 10, 9, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 10, 9, 1, 2, 
          7, 8, 8, 7, 2, 0, 3, 4, 6, 5, 5, 6, 4, 3 ], 
      [ 11, 11, 11, 11, 9, 10, 9, 10, 9, 10, 9, 10, 11, 11, 11, 11, 3, 4, 5, 6, 6, 5, 4, 3, 0, 2, 
          8, 7, 7, 8, 2, 1 ], [ 11, 11, 11, 11, 9, 10, 9, 10, 10, 9, 10, 9, 11, 11, 11, 11, 4, 3, 
          6, 5, 5, 6, 3, 4, 2, 0, 7, 8, 8, 7, 1, 2 ], 
      [ 11, 11, 11, 11, 9, 10, 10, 9, 9, 10, 10, 9, 11, 11, 11, 11, 6, 5, 3, 4, 4, 3, 5, 6, 7, 8, 
          0, 2, 2, 1, 8, 7 ], [ 11, 11, 11, 11, 9, 10, 10, 9, 10, 9, 9, 10, 11, 11, 11, 11, 5, 6, 
          4, 3, 3, 4, 6, 5, 8, 7, 2, 0, 1, 2, 7, 8 ], 
      [ 11, 11, 11, 11, 10, 9, 9, 10, 9, 10, 10, 9, 11, 11, 11, 11, 5, 6, 4, 3, 3, 4, 6, 5, 8, 7, 
          2, 1, 0, 2, 7, 8 ], [ 11, 11, 11, 11, 10, 9, 9, 10, 10, 9, 9, 10, 11, 11, 11, 11, 6, 5, 
          3, 4, 4, 3, 5, 6, 7, 8, 1, 2, 2, 0, 8, 7 ], 
      [ 11, 11, 11, 11, 10, 9, 10, 9, 9, 10, 9, 10, 11, 11, 11, 11, 4, 3, 6, 5, 5, 6, 3, 4, 2, 1, 
          7, 8, 8, 7, 0, 2 ], [ 11, 11, 11, 11, 10, 9, 10, 9, 10, 9, 10, 9, 11, 11, 11, 11, 3, 4, 
          5, 6, 6, 5, 4, 3, 1, 2, 8, 7, 7, 8, 2, 0 ] ] )