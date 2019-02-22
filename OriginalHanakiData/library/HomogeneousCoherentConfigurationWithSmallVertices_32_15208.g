rec(
  ct := 
   [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 4, 4, 8, 1 ], [ 1, 1, 2, 2, 2, -2, -2, -2, -2, -4, -4, 8, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, -2, -2, 4, 4, -8, 1 ], [ 1, 1, 2, 2, 2, 2, 2, 2, 2, -4, -4, -8, 1 ],
      [ 1, 1, 2, -2, -2, -2, -2, 2, 2, 0, 0, 0, 2 ], [ 1, 1, 2, -2, -2, 2, 2, -2, -2, 0, 0, 0, 2 ],
      [ 2, 2, -4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], [ 1, -1, 0, 0, 0, 0, 0, 0, 0, -2, 2, 0, 8 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 2, -2, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 
          11, 11, 11, 11 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 10, 10, 10, 10, 9, 
          9, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 9, 9, 10, 10, 9, 9, 10, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 10, 10, 9, 9, 
          10, 10, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 4, 4, 3, 3, 0, 1, 2, 2, 7, 7, 8, 8, 6, 6, 5, 5, 9, 10, 9, 10, 9, 10, 9, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 4, 4, 3, 3, 1, 0, 2, 2, 7, 7, 8, 8, 6, 6, 5, 5, 10, 9, 10, 9, 
          10, 9, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 3, 3, 4, 4, 2, 2, 0, 1, 8, 8, 7, 7, 5, 5, 6, 6, 9, 10, 10, 9, 10, 9, 9, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 3, 3, 4, 4, 2, 2, 1, 0, 8, 8, 7, 7, 5, 5, 6, 6, 10, 9, 9, 10, 9, 
          10, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 6, 6, 5, 5, 8, 8, 7, 7, 0, 1, 2, 2, 3, 3, 4, 4, 11, 11, 11, 11, 11, 11, 11, 11, 9, 9, 9, 
          9, 10, 10, 10, 10 ], [ 6, 6, 5, 5, 8, 8, 7, 7, 1, 0, 2, 2, 3, 3, 4, 4, 11, 11, 11, 11, 
          11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 5, 5, 6, 6, 7, 7, 8, 8, 2, 2, 0, 1, 4, 4, 3, 3, 11, 11, 11, 11, 11, 11, 11, 11, 9, 9, 10, 
          10, 9, 9, 10, 10 ], [ 5, 5, 6, 6, 7, 7, 8, 8, 2, 2, 1, 0, 4, 4, 3, 3, 11, 11, 11, 11, 
          11, 11, 11, 11, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 8, 8, 7, 7, 5, 5, 6, 6, 4, 4, 3, 3, 0, 1, 2, 2, 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 9, 
          10, 9, 10, 9, 10 ], [ 8, 8, 7, 7, 5, 5, 6, 6, 4, 4, 3, 3, 1, 0, 2, 2, 11, 11, 11, 11, 
          11, 11, 11, 11, 10, 9, 10, 9, 10, 9, 10, 9 ], 
      [ 7, 7, 8, 8, 6, 6, 5, 5, 3, 3, 4, 4, 2, 2, 0, 1, 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 10, 
          9, 10, 9, 9, 10 ], [ 7, 7, 8, 8, 6, 6, 5, 5, 3, 3, 4, 4, 2, 2, 1, 0, 11, 11, 11, 11, 11, 
          11, 11, 11, 10, 9, 9, 10, 9, 10, 10, 9 ], 
      [ 9, 10, 9, 10, 9, 10, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 0, 3, 2, 4, 4, 2, 3, 1, 5, 7, 
          6, 8, 8, 6, 7, 5 ], [ 9, 10, 9, 10, 10, 9, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11, 4, 0, 
          3, 2, 2, 3, 1, 4, 7, 6, 8, 5, 5, 8, 6, 7 ], 
      [ 9, 10, 10, 9, 9, 10, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11, 2, 4, 0, 3, 3, 1, 4, 2, 6, 8, 
          5, 7, 7, 5, 8, 6 ], [ 9, 10, 10, 9, 10, 9, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 3, 2, 
          4, 0, 1, 4, 2, 3, 8, 5, 7, 6, 6, 7, 5, 8 ], 
      [ 10, 9, 9, 10, 9, 10, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11, 3, 2, 4, 1, 0, 4, 2, 3, 8, 5, 
          7, 6, 6, 7, 5, 8 ], [ 10, 9, 9, 10, 10, 9, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 2, 4, 
          1, 3, 3, 0, 4, 2, 6, 8, 5, 7, 7, 5, 8, 6 ], 
      [ 10, 9, 10, 9, 9, 10, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 4, 1, 3, 2, 2, 3, 0, 4, 7, 6, 
          8, 5, 5, 8, 6, 7 ], [ 10, 9, 10, 9, 10, 9, 10, 9, 11, 11, 11, 11, 11, 11, 11, 11, 1, 3, 
          2, 4, 4, 2, 3, 0, 5, 7, 6, 8, 8, 6, 7, 5 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 9, 10, 9, 10, 9, 10, 6, 8, 5, 7, 7, 5, 8, 6, 0, 3, 
          2, 4, 4, 2, 3, 1 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 9, 10, 10, 9, 10, 9, 8, 5, 
          7, 6, 6, 7, 5, 8, 4, 0, 3, 2, 2, 3, 1, 4 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 10, 9, 9, 10, 10, 9, 5, 7, 6, 8, 8, 6, 7, 5, 2, 4, 
          0, 3, 3, 1, 4, 2 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 10, 9, 10, 9, 9, 10, 7, 6, 
          8, 5, 5, 8, 6, 7, 3, 2, 4, 0, 1, 4, 2, 3 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 9, 10, 9, 10, 10, 9, 7, 6, 8, 5, 5, 8, 6, 7, 3, 2, 
          4, 1, 0, 4, 2, 3 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 9, 10, 10, 9, 9, 10, 5, 7, 
          6, 8, 8, 6, 7, 5, 2, 4, 1, 3, 3, 0, 4, 2 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 10, 9, 9, 10, 9, 10, 8, 5, 7, 6, 6, 7, 5, 8, 4, 1, 
          3, 2, 2, 3, 0, 4 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 10, 9, 10, 9, 10, 9, 6, 8, 
          5, 7, 7, 5, 8, 6, 1, 3, 2, 4, 4, 2, 3, 0 ] ] )