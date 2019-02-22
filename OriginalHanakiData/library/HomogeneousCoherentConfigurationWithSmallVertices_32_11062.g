rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 4, 8, 8, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, 4, -8, -8, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 4, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), -4, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), -4, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, -4*E(4), 4*E(4), 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 4*E(4), -4*E(4), 4 ], [ 2, 0, 0, -2, 0, 0, 0, 0, 0, 0, 0, 8 ] 
     ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 
          10, 10, 10 ], [ 1, 0, 3, 2, 4, 4, 6, 6, 5, 5, 7, 7, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 
          10, 10, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 2, 3, 0, 1, 7, 7, 5, 5, 6, 6, 4, 4, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 
          9, 9, 9, 9, 9 ], [ 3, 2, 1, 0, 7, 7, 6, 6, 5, 5, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 
          9, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 5, 5, 6, 6, 0, 2, 8, 8, 8, 8, 1, 3, 4, 4, 7, 7, 9, 9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 
          10, 10, 10, 10 ], [ 5, 5, 6, 6, 2, 0, 8, 8, 8, 8, 3, 1, 7, 7, 4, 4, 10, 10, 10, 10, 9, 
          9, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 4, 7, 4, 7, 8, 8, 0, 1, 2, 3, 8, 8, 5, 6, 5, 6, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 
          9, 9, 10, 10 ], [ 4, 7, 4, 7, 8, 8, 1, 0, 3, 2, 8, 8, 6, 5, 6, 5, 10, 10, 9, 9, 10, 10, 
          9, 9, 10, 10, 9, 9, 10, 10, 9, 9 ], 
      [ 7, 4, 7, 4, 8, 8, 2, 3, 0, 1, 8, 8, 5, 6, 5, 6, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 
          10, 10, 9, 9 ], [ 7, 4, 7, 4, 8, 8, 3, 2, 1, 0, 8, 8, 6, 5, 6, 5, 9, 9, 10, 10, 9, 9, 
          10, 10, 9, 9, 10, 10, 9, 9, 10, 10 ], 
      [ 6, 6, 5, 5, 1, 3, 8, 8, 8, 8, 0, 2, 4, 4, 7, 7, 10, 10, 10, 10, 9, 9, 9, 9, 10, 10, 10, 
          10, 9, 9, 9, 9 ], [ 6, 6, 5, 5, 3, 1, 8, 8, 8, 8, 2, 0, 7, 7, 4, 4, 9, 9, 9, 9, 10, 10, 
          10, 10, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 8, 8, 8, 8, 5, 6, 4, 7, 4, 7, 5, 6, 0, 2, 1, 3, 9, 9, 10, 10, 10, 10, 9, 9, 10, 10, 9, 9, 
          9, 9, 10, 10 ], [ 8, 8, 8, 8, 5, 6, 7, 4, 7, 4, 5, 6, 2, 0, 3, 1, 10, 10, 9, 9, 9, 9, 
          10, 10, 9, 9, 10, 10, 10, 10, 9, 9 ], 
      [ 8, 8, 8, 8, 6, 5, 4, 7, 4, 7, 6, 5, 1, 3, 0, 2, 10, 10, 9, 9, 9, 9, 10, 10, 9, 9, 10, 10, 
          10, 10, 9, 9 ], [ 8, 8, 8, 8, 6, 5, 7, 4, 7, 4, 6, 5, 3, 1, 2, 0, 9, 9, 10, 10, 10, 10, 
          9, 9, 10, 10, 9, 9, 9, 9, 10, 10 ], 
      [ 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 0, 3, 4, 7, 8, 8, 5, 6, 5, 6, 8, 
          8, 4, 7, 1, 2 ], [ 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 3, 0, 7, 4, 
          8, 8, 6, 5, 6, 5, 8, 8, 7, 4, 2, 1 ], 
      [ 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 5, 6, 0, 3, 4, 7, 8, 8, 8, 8, 4, 
          7, 2, 1, 5, 6 ], [ 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 6, 5, 3, 0, 
          7, 4, 8, 8, 8, 8, 7, 4, 1, 2, 6, 5 ], 
      [ 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 8, 8, 5, 6, 0, 3, 7, 4, 4, 7, 2, 
          1, 6, 5, 8, 8 ], [ 10, 9, 9, 10, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 8, 8, 6, 5, 
          3, 0, 4, 7, 7, 4, 1, 2, 5, 6, 8, 8 ], 
      [ 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 4, 7, 8, 8, 6, 5, 0, 3, 1, 2, 5, 
          6, 8, 8, 7, 4 ], [ 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 7, 4, 8, 8, 
          5, 6, 3, 0, 2, 1, 6, 5, 8, 8, 4, 7 ], 
      [ 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 4, 7, 8, 8, 5, 6, 1, 2, 0, 3, 6, 
          5, 8, 8, 7, 4 ], [ 9, 10, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10, 9, 7, 4, 8, 8, 
          6, 5, 2, 1, 3, 0, 5, 6, 8, 8, 4, 7 ], 
      [ 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 8, 8, 5, 6, 2, 1, 4, 7, 7, 4, 0, 
          3, 6, 5, 8, 8 ], [ 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 8, 8, 6, 5, 
          1, 2, 7, 4, 4, 7, 3, 0, 5, 6, 8, 8 ], 
      [ 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 5, 6, 2, 1, 7, 4, 8, 8, 8, 8, 7, 
          4, 0, 3, 5, 6 ], [ 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 6, 5, 1, 2, 
          4, 7, 8, 8, 8, 8, 4, 7, 3, 0, 6, 5 ], 
      [ 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 1, 2, 4, 7, 8, 8, 6, 5, 6, 5, 8, 
          8, 4, 7, 0, 3 ], [ 9, 10, 10, 9, 9, 10, 9, 10, 10, 9, 10, 9, 9, 10, 10, 9, 2, 1, 7, 4, 
          8, 8, 5, 6, 5, 6, 8, 8, 7, 4, 3, 0 ] ] )