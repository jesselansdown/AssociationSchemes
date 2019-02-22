rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2, 2, -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2, 2, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2, -2, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2, -2, -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 
          14, 15, 15, 15, 15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 8, 8, 9, 9, 10, 10, 11, 11, 
          13, 13, 12, 12, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 10, 10, 11, 11, 8, 8, 9, 9, 13, 13, 12, 12, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 12, 13, 12, 13, 9, 9, 8, 8, 11, 11, 10, 10, 6, 7, 6, 7, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 13, 12, 13, 12, 9, 9, 8, 8, 11, 11, 10, 10, 7, 6, 7, 6, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 13, 12, 13, 12, 11, 11, 10, 10, 9, 9, 8, 8, 6, 7, 6, 7, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 12, 13, 12, 13, 11, 11, 10, 10, 9, 9, 8, 8, 7, 6, 7, 6, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 6, 7, 6, 7, 13, 12, 12, 13, 0, 2, 3, 1, 14, 14, 15, 15, 14, 14, 15, 15, 5, 4, 4, 5, 8, 8, 
          10, 10, 9, 9, 11, 11 ], 
      [ 6, 7, 6, 7, 12, 13, 13, 12, 2, 0, 1, 3, 14, 14, 15, 15, 14, 14, 15, 15, 4, 5, 5, 4, 10, 
          10, 8, 8, 11, 11, 9, 9 ], 
      [ 7, 6, 7, 6, 13, 12, 12, 13, 3, 1, 0, 2, 14, 14, 15, 15, 14, 14, 15, 15, 4, 5, 5, 4, 10, 
          10, 8, 8, 11, 11, 9, 9 ], 
      [ 7, 6, 7, 6, 12, 13, 13, 12, 1, 3, 2, 0, 14, 14, 15, 15, 14, 14, 15, 15, 5, 4, 4, 5, 8, 8, 
          10, 10, 9, 9, 11, 11 ], [ 9, 9, 11, 11, 8, 8, 10, 10, 15, 15, 15, 15, 0, 1, 4, 4, 2, 3, 
          5, 5, 14, 14, 14, 14, 6, 7, 6, 7, 12, 13, 12, 13 ], 
      [ 9, 9, 11, 11, 8, 8, 10, 10, 15, 15, 15, 15, 1, 0, 4, 4, 3, 2, 5, 5, 14, 14, 14, 14, 7, 6, 
          7, 6, 13, 12, 13, 12 ], [ 8, 8, 10, 10, 9, 9, 11, 11, 14, 14, 14, 14, 4, 4, 0, 1, 5, 5, 
          2, 3, 15, 15, 15, 15, 12, 13, 13, 12, 7, 6, 6, 7 ], 
      [ 8, 8, 10, 10, 9, 9, 11, 11, 14, 14, 14, 14, 4, 4, 1, 0, 5, 5, 3, 2, 15, 15, 15, 15, 13, 
          12, 12, 13, 6, 7, 7, 6 ], 
      [ 11, 11, 9, 9, 10, 10, 8, 8, 15, 15, 15, 15, 2, 3, 5, 5, 0, 1, 4, 4, 14, 14, 14, 14, 6, 7, 
          6, 7, 13, 12, 13, 12 ], [ 11, 11, 9, 9, 10, 10, 8, 8, 15, 15, 15, 15, 3, 2, 5, 5, 1, 0, 
          4, 4, 14, 14, 14, 14, 7, 6, 7, 6, 12, 13, 12, 13 ], 
      [ 10, 10, 8, 8, 11, 11, 9, 9, 14, 14, 14, 14, 5, 5, 2, 3, 4, 4, 0, 1, 15, 15, 15, 15, 13, 
          12, 12, 13, 7, 6, 6, 7 ], 
      [ 10, 10, 8, 8, 11, 11, 9, 9, 14, 14, 14, 14, 5, 5, 3, 2, 4, 4, 1, 0, 15, 15, 15, 15, 12, 
          13, 13, 12, 6, 7, 7, 6 ], 
      [ 13, 12, 12, 13, 6, 7, 6, 7, 5, 4, 4, 5, 15, 15, 14, 14, 15, 15, 14, 14, 0, 3, 2, 1, 11, 
          11, 9, 9, 10, 10, 8, 8 ], 
      [ 13, 12, 12, 13, 7, 6, 7, 6, 4, 5, 5, 4, 15, 15, 14, 14, 15, 15, 14, 14, 3, 0, 1, 2, 9, 9, 
          11, 11, 8, 8, 10, 10 ], 
      [ 12, 13, 13, 12, 6, 7, 6, 7, 4, 5, 5, 4, 15, 15, 14, 14, 15, 15, 14, 14, 2, 1, 0, 3, 9, 9, 
          11, 11, 8, 8, 10, 10 ], 
      [ 12, 13, 13, 12, 7, 6, 7, 6, 5, 4, 4, 5, 15, 15, 14, 14, 15, 15, 14, 14, 1, 2, 3, 0, 11, 
          11, 9, 9, 10, 10, 8, 8 ], 
      [ 15, 15, 15, 15, 14, 14, 14, 14, 9, 11, 11, 9, 6, 7, 13, 12, 6, 7, 12, 13, 10, 8, 8, 10, 0, 
          1, 2, 3, 4, 4, 5, 5 ], [ 15, 15, 15, 15, 14, 14, 14, 14, 9, 11, 11, 9, 7, 6, 12, 13, 7, 
          6, 13, 12, 10, 8, 8, 10, 1, 0, 3, 2, 4, 4, 5, 5 ], 
      [ 15, 15, 15, 15, 14, 14, 14, 14, 11, 9, 9, 11, 6, 7, 12, 13, 6, 7, 13, 12, 8, 10, 10, 8, 2, 
          3, 0, 1, 5, 5, 4, 4 ], [ 15, 15, 15, 15, 14, 14, 14, 14, 11, 9, 9, 11, 7, 6, 13, 12, 7, 
          6, 12, 13, 8, 10, 10, 8, 3, 2, 1, 0, 5, 5, 4, 4 ], 
      [ 14, 14, 14, 14, 15, 15, 15, 15, 8, 10, 10, 8, 13, 12, 7, 6, 12, 13, 7, 6, 11, 9, 9, 11, 4, 
          4, 5, 5, 0, 1, 3, 2 ], [ 14, 14, 14, 14, 15, 15, 15, 15, 8, 10, 10, 8, 12, 13, 6, 7, 13, 
          12, 6, 7, 11, 9, 9, 11, 4, 4, 5, 5, 1, 0, 2, 3 ], 
      [ 14, 14, 14, 14, 15, 15, 15, 15, 10, 8, 8, 10, 13, 12, 6, 7, 12, 13, 6, 7, 9, 11, 11, 9, 5, 
          5, 4, 4, 3, 2, 0, 1 ], [ 14, 14, 14, 14, 15, 15, 15, 15, 10, 8, 8, 10, 12, 13, 7, 6, 13, 
          12, 7, 6, 9, 11, 11, 9, 5, 5, 4, 4, 2, 3, 1, 0 ] ] )