rec(
  ct := 
   [ [ 1, 1, 1, 1, 3, 3, 3, 3, 4, 4, 4, 4, 1 ], [ 1, 1, -1, -1, 3, 3, -3, -3, -4, -4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 3, 3, -3, -3, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 3, 3, 3, 3, -4, -4, -4, -4, 1 ], [ 2, -2, 0, 0, 6, -6, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, 0, 0, 6 ], [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, 0, 0, 6 ],
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 6 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 0, 0, 6 ] 
     ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 
          11, 11, 11 ], [ 1, 0, 3, 2, 5, 5, 5, 4, 4, 4, 7, 7, 7, 6, 6, 6, 9, 9, 9, 9, 8, 8, 8, 8, 
          11, 11, 11, 11, 10, 10, 10, 10 ], 
      [ 2, 3, 0, 1, 6, 6, 6, 7, 7, 7, 4, 4, 4, 5, 5, 5, 10, 10, 10, 10, 11, 11, 11, 11, 8, 8, 8, 
          8, 9, 9, 9, 9 ], [ 3, 2, 1, 0, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 11, 11, 11, 11, 10, 
          10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 4, 5, 6, 7, 0, 4, 4, 1, 5, 5, 2, 6, 6, 3, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 
          11, 11, 11, 11 ], [ 4, 5, 6, 7, 4, 0, 4, 5, 1, 5, 6, 2, 6, 7, 3, 7, 8, 8, 8, 8, 9, 9, 9, 
          9, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 4, 5, 6, 7, 4, 4, 0, 5, 5, 1, 6, 6, 2, 7, 7, 3, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 
          11, 11, 11, 11 ], [ 5, 4, 7, 6, 1, 5, 5, 0, 4, 4, 3, 7, 7, 2, 6, 6, 9, 9, 9, 9, 8, 8, 8, 
          8, 11, 11, 11, 11, 10, 10, 10, 10 ], 
      [ 5, 4, 7, 6, 5, 1, 5, 4, 0, 4, 7, 3, 7, 6, 2, 6, 9, 9, 9, 9, 8, 8, 8, 8, 11, 11, 11, 11, 
          10, 10, 10, 10 ], [ 5, 4, 7, 6, 5, 5, 1, 4, 4, 0, 7, 7, 3, 6, 6, 2, 9, 9, 9, 9, 8, 8, 8, 
          8, 11, 11, 11, 11, 10, 10, 10, 10 ], 
      [ 6, 7, 4, 5, 2, 6, 6, 3, 7, 7, 0, 4, 4, 1, 5, 5, 10, 10, 10, 10, 11, 11, 11, 11, 8, 8, 8, 
          8, 9, 9, 9, 9 ], [ 6, 7, 4, 5, 6, 2, 6, 7, 3, 7, 4, 0, 4, 5, 1, 5, 10, 10, 10, 10, 11, 
          11, 11, 11, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 6, 7, 4, 5, 6, 6, 2, 7, 7, 3, 4, 4, 0, 5, 5, 1, 10, 10, 10, 10, 11, 11, 11, 11, 8, 8, 8, 
          8, 9, 9, 9, 9 ], [ 7, 6, 5, 4, 3, 7, 7, 2, 6, 6, 1, 5, 5, 0, 4, 4, 11, 11, 11, 11, 10, 
          10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 7, 6, 5, 4, 7, 3, 7, 6, 2, 6, 5, 1, 5, 4, 0, 4, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 
          9, 8, 8, 8, 8 ], [ 7, 6, 5, 4, 7, 7, 3, 6, 6, 2, 5, 5, 1, 4, 4, 0, 11, 11, 11, 11, 10, 
          10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 8, 9, 11, 10, 8, 8, 8, 9, 9, 9, 11, 11, 11, 10, 10, 10, 0, 4, 4, 4, 1, 5, 5, 5, 3, 7, 7, 
          7, 2, 6, 6, 6 ], [ 8, 9, 11, 10, 8, 8, 8, 9, 9, 9, 11, 11, 11, 10, 10, 10, 4, 0, 4, 4, 
          5, 1, 5, 5, 7, 3, 7, 7, 6, 2, 6, 6 ], 
      [ 8, 9, 11, 10, 8, 8, 8, 9, 9, 9, 11, 11, 11, 10, 10, 10, 4, 4, 0, 4, 5, 5, 1, 5, 7, 7, 3, 
          7, 6, 6, 2, 6 ], [ 8, 9, 11, 10, 8, 8, 8, 9, 9, 9, 11, 11, 11, 10, 10, 10, 4, 4, 4, 0, 
          5, 5, 5, 1, 7, 7, 7, 3, 6, 6, 6, 2 ], 
      [ 9, 8, 10, 11, 9, 9, 9, 8, 8, 8, 10, 10, 10, 11, 11, 11, 1, 5, 5, 5, 0, 4, 4, 4, 2, 6, 6, 
          6, 3, 7, 7, 7 ], [ 9, 8, 10, 11, 9, 9, 9, 8, 8, 8, 10, 10, 10, 11, 11, 11, 5, 1, 5, 5, 
          4, 0, 4, 4, 6, 2, 6, 6, 7, 3, 7, 7 ], 
      [ 9, 8, 10, 11, 9, 9, 9, 8, 8, 8, 10, 10, 10, 11, 11, 11, 5, 5, 1, 5, 4, 4, 0, 4, 6, 6, 2, 
          6, 7, 7, 3, 7 ], [ 9, 8, 10, 11, 9, 9, 9, 8, 8, 8, 10, 10, 10, 11, 11, 11, 5, 5, 5, 1, 
          4, 4, 4, 0, 6, 6, 6, 2, 7, 7, 7, 3 ], 
      [ 11, 10, 8, 9, 11, 11, 11, 10, 10, 10, 8, 8, 8, 9, 9, 9, 3, 7, 7, 7, 2, 6, 6, 6, 0, 4, 4, 
          4, 1, 5, 5, 5 ], [ 11, 10, 8, 9, 11, 11, 11, 10, 10, 10, 8, 8, 8, 9, 9, 9, 7, 3, 7, 7, 
          6, 2, 6, 6, 4, 0, 4, 4, 5, 1, 5, 5 ], 
      [ 11, 10, 8, 9, 11, 11, 11, 10, 10, 10, 8, 8, 8, 9, 9, 9, 7, 7, 3, 7, 6, 6, 2, 6, 4, 4, 0, 
          4, 5, 5, 1, 5 ], [ 11, 10, 8, 9, 11, 11, 11, 10, 10, 10, 8, 8, 8, 9, 9, 9, 7, 7, 7, 3, 
          6, 6, 6, 2, 4, 4, 4, 0, 5, 5, 5, 1 ], 
      [ 10, 11, 9, 8, 10, 10, 10, 11, 11, 11, 9, 9, 9, 8, 8, 8, 2, 6, 6, 6, 3, 7, 7, 7, 1, 5, 5, 
          5, 0, 4, 4, 4 ], [ 10, 11, 9, 8, 10, 10, 10, 11, 11, 11, 9, 9, 9, 8, 8, 8, 6, 2, 6, 6, 
          7, 3, 7, 7, 5, 1, 5, 5, 4, 0, 4, 4 ], 
      [ 10, 11, 9, 8, 10, 10, 10, 11, 11, 11, 9, 9, 9, 8, 8, 8, 6, 6, 2, 6, 7, 7, 3, 7, 5, 5, 1, 
          5, 4, 4, 0, 4 ], [ 10, 11, 9, 8, 10, 10, 10, 11, 11, 11, 9, 9, 9, 8, 8, 8, 6, 6, 6, 2, 
          7, 7, 7, 3, 5, 5, 5, 1, 4, 4, 4, 0 ] ] )