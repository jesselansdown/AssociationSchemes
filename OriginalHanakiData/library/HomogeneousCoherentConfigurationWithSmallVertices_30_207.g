rec(
  ct := 
   [ [ 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], [ 1, -1, 2, -2, 2, 2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, -1, -1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 2 ], 
      [ 1, 1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 2 ], 
      [ 2, 0, 4, 0, -1, -1, 0, 0, -2, -2, 0, 0, 4 ], [ 2, 0, -2, 0, -1, -1, 0, 0, 1, 1, 0, 0, 8 ] ]
   ,
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 
          11, 11 ], [ 1, 0, 3, 3, 2, 2, 6, 6, 7, 7, 4, 4, 5, 5, 10, 10, 10, 10, 11, 11, 11, 11, 8, 
          8, 8, 8, 9, 9, 9, 9 ], [ 2, 3, 0, 2, 1, 3, 8, 8, 9, 9, 10, 10, 11, 11, 4, 4, 8, 8, 5, 5, 
          9, 9, 6, 6, 10, 10, 7, 7, 11, 11 ], 
      [ 2, 3, 2, 0, 3, 1, 8, 8, 9, 9, 10, 10, 11, 11, 8, 8, 4, 4, 9, 9, 5, 5, 10, 10, 6, 6, 11, 
          11, 7, 7 ], [ 3, 2, 1, 3, 0, 2, 10, 10, 11, 11, 8, 8, 9, 9, 6, 6, 10, 10, 7, 7, 11, 11, 
          4, 4, 8, 8, 5, 5, 9, 9 ], 
      [ 3, 2, 3, 1, 2, 0, 10, 10, 11, 11, 8, 8, 9, 9, 10, 10, 6, 6, 11, 11, 7, 7, 8, 8, 4, 4, 9, 
          9, 5, 5 ], [ 4, 7, 8, 8, 11, 11, 0, 5, 4, 5, 6, 7, 1, 6, 2, 9, 2, 9, 8, 9, 8, 9, 10, 11, 
          10, 11, 3, 10, 3, 10 ], [ 4, 7, 8, 8, 11, 11, 5, 0, 5, 4, 7, 6, 6, 1, 9, 2, 9, 2, 9, 8, 
          9, 8, 11, 10, 11, 10, 10, 3, 10, 3 ], 
      [ 5, 6, 9, 9, 10, 10, 4, 5, 0, 4, 7, 1, 7, 6, 8, 9, 8, 9, 2, 8, 2, 8, 11, 3, 11, 3, 11, 10, 
          11, 10 ], [ 5, 6, 9, 9, 10, 10, 5, 4, 4, 0, 1, 7, 6, 7, 9, 8, 9, 8, 8, 2, 8, 2, 3, 11, 
          3, 11, 10, 11, 10, 11 ], 
      [ 7, 4, 11, 11, 8, 8, 7, 6, 6, 1, 0, 5, 4, 5, 11, 10, 11, 10, 10, 3, 10, 3, 2, 9, 2, 9, 8, 
          9, 8, 9 ], [ 7, 4, 11, 11, 8, 8, 6, 7, 1, 6, 5, 0, 5, 4, 10, 11, 10, 11, 3, 10, 3, 10, 
          9, 2, 9, 2, 9, 8, 9, 8 ], 
      [ 6, 5, 10, 10, 9, 9, 1, 7, 6, 7, 4, 5, 0, 4, 3, 11, 3, 11, 10, 11, 10, 11, 8, 9, 8, 9, 2, 
          8, 2, 8 ], [ 6, 5, 10, 10, 9, 9, 7, 1, 7, 6, 5, 4, 4, 0, 11, 3, 11, 3, 11, 10, 11, 10, 
          9, 8, 9, 8, 8, 2, 8, 2 ], 
      [ 8, 11, 4, 8, 7, 11, 2, 9, 8, 9, 10, 11, 3, 10, 0, 5, 2, 9, 4, 5, 8, 9, 6, 7, 10, 11, 1, 6, 
          3, 10 ], [ 8, 11, 4, 8, 7, 11, 9, 2, 9, 8, 11, 10, 10, 3, 5, 0, 9, 2, 5, 4, 9, 8, 7, 6, 
          11, 10, 6, 1, 10, 3 ], [ 8, 11, 8, 4, 11, 7, 2, 9, 8, 9, 10, 11, 3, 10, 2, 9, 0, 5, 8, 
          9, 4, 5, 10, 11, 6, 7, 3, 10, 1, 6 ], 
      [ 8, 11, 8, 4, 11, 7, 9, 2, 9, 8, 11, 10, 10, 3, 9, 2, 5, 0, 9, 8, 5, 4, 11, 10, 7, 6, 10, 
          3, 6, 1 ], [ 9, 10, 5, 9, 6, 10, 8, 9, 2, 8, 11, 3, 11, 10, 4, 5, 8, 9, 0, 4, 2, 8, 7, 
          1, 11, 3, 7, 6, 11, 10 ], 
      [ 9, 10, 5, 9, 6, 10, 9, 8, 8, 2, 3, 11, 10, 11, 5, 4, 9, 8, 4, 0, 8, 2, 1, 7, 3, 11, 6, 7, 
          10, 11 ], [ 9, 10, 9, 5, 10, 6, 8, 9, 2, 8, 11, 3, 11, 10, 8, 9, 4, 5, 2, 8, 0, 4, 11, 
          3, 7, 1, 11, 10, 7, 6 ], [ 9, 10, 9, 5, 10, 6, 9, 8, 8, 2, 3, 11, 10, 11, 9, 8, 5, 4, 8, 
          2, 4, 0, 3, 11, 1, 7, 10, 11, 6, 7 ], 
      [ 11, 8, 7, 11, 4, 8, 11, 10, 10, 3, 2, 9, 8, 9, 7, 6, 11, 10, 6, 1, 10, 3, 0, 5, 2, 9, 4, 
          5, 8, 9 ], [ 11, 8, 7, 11, 4, 8, 10, 11, 3, 10, 9, 2, 9, 8, 6, 7, 10, 11, 1, 6, 3, 10, 
          5, 0, 9, 2, 5, 4, 9, 8 ], 
      [ 11, 8, 11, 7, 8, 4, 11, 10, 10, 3, 2, 9, 8, 9, 11, 10, 7, 6, 10, 3, 6, 1, 2, 9, 0, 5, 8, 
          9, 4, 5 ], [ 11, 8, 11, 7, 8, 4, 10, 11, 3, 10, 9, 2, 9, 8, 10, 11, 6, 7, 3, 10, 1, 6, 
          9, 2, 5, 0, 9, 8, 5, 4 ], 
      [ 10, 9, 6, 10, 5, 9, 3, 11, 10, 11, 8, 9, 2, 8, 1, 7, 3, 11, 6, 7, 10, 11, 4, 5, 8, 9, 0, 
          4, 2, 8 ], [ 10, 9, 6, 10, 5, 9, 11, 3, 11, 10, 9, 8, 8, 2, 7, 1, 11, 3, 7, 6, 11, 10, 
          5, 4, 9, 8, 4, 0, 8, 2 ], 
      [ 10, 9, 10, 6, 9, 5, 3, 11, 10, 11, 8, 9, 2, 8, 3, 11, 1, 7, 10, 11, 6, 7, 8, 9, 4, 5, 2, 
          8, 0, 4 ], [ 10, 9, 10, 6, 9, 5, 11, 3, 11, 10, 9, 8, 8, 2, 11, 3, 7, 1, 11, 10, 7, 6, 
          9, 8, 5, 4, 8, 2, 4, 0 ] ] )