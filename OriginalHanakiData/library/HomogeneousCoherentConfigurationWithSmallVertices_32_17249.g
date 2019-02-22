rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -2, 2, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 
          14, 15, 15, 15, 15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 12, 12, 13, 13, 
          10, 10, 11, 11, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 13, 13, 12, 12, 11, 11, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 11, 11, 10, 10, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 9, 9, 6, 6, 7, 7, 14, 14, 15, 15, 14, 14, 15, 15, 10, 10, 
          12, 12, 11, 11, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 9, 9, 6, 6, 7, 7, 14, 14, 15, 15, 14, 14, 15, 15, 12, 12, 
          10, 10, 13, 13, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 14, 14, 15, 15, 14, 14, 15, 15, 10, 10, 
          12, 12, 13, 13, 11, 11 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 14, 14, 15, 15, 14, 14, 15, 15, 12, 12, 
          10, 10, 11, 11, 13, 13 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 0, 1, 2, 3, 4, 4, 5, 5, 11, 13, 10, 12, 11, 13, 10, 12, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 1, 0, 3, 2, 4, 4, 5, 5, 13, 11, 12, 10, 13, 11, 12, 10, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 2, 3, 0, 1, 5, 5, 4, 4, 13, 11, 10, 12, 13, 11, 10, 12, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 3, 2, 1, 0, 5, 5, 4, 4, 11, 13, 12, 10, 11, 13, 12, 10, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 4, 4, 5, 5, 0, 1, 2, 3, 15, 15, 14, 14, 15, 15, 14, 14, 11, 13, 
          11, 13, 10, 12, 10, 12 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 4, 4, 5, 5, 1, 0, 3, 2, 15, 15, 14, 14, 15, 15, 14, 14, 13, 11, 
          13, 11, 12, 10, 12, 10 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 5, 5, 4, 4, 2, 3, 0, 1, 15, 15, 14, 14, 15, 15, 14, 14, 13, 11, 
          13, 11, 10, 12, 10, 12 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 5, 5, 4, 4, 3, 2, 1, 0, 15, 15, 14, 14, 15, 15, 14, 14, 11, 13, 
          11, 13, 12, 10, 12, 10 ], 
      [ 11, 13, 11, 13, 15, 15, 15, 15, 10, 12, 12, 10, 14, 14, 14, 14, 0, 3, 6, 7, 2, 1, 7, 6, 4, 
          5, 5, 4, 9, 8, 8, 9 ], [ 11, 13, 11, 13, 15, 15, 15, 15, 12, 10, 10, 12, 14, 14, 14, 14, 
          3, 0, 7, 6, 1, 2, 6, 7, 5, 4, 4, 5, 8, 9, 9, 8 ], 
      [ 10, 12, 12, 10, 14, 14, 14, 14, 11, 13, 11, 13, 15, 15, 15, 15, 7, 6, 0, 2, 6, 7, 3, 1, 9, 
          8, 8, 9, 5, 4, 4, 5 ], [ 10, 12, 12, 10, 14, 14, 14, 14, 13, 11, 13, 11, 15, 15, 15, 15, 
          6, 7, 2, 0, 7, 6, 1, 3, 8, 9, 9, 8, 4, 5, 5, 4 ], 
      [ 13, 11, 13, 11, 15, 15, 15, 15, 10, 12, 12, 10, 14, 14, 14, 14, 2, 1, 7, 6, 0, 3, 6, 7, 5, 
          4, 4, 5, 8, 9, 9, 8 ], [ 13, 11, 13, 11, 15, 15, 15, 15, 12, 10, 10, 12, 14, 14, 14, 14, 
          1, 2, 6, 7, 3, 0, 7, 6, 4, 5, 5, 4, 9, 8, 8, 9 ], 
      [ 12, 10, 10, 12, 14, 14, 14, 14, 11, 13, 11, 13, 15, 15, 15, 15, 6, 7, 3, 1, 7, 6, 0, 2, 8, 
          9, 9, 8, 4, 5, 5, 4 ], [ 12, 10, 10, 12, 14, 14, 14, 14, 13, 11, 13, 11, 15, 15, 15, 15, 
          7, 6, 1, 3, 6, 7, 2, 0, 9, 8, 8, 9, 5, 4, 4, 5 ], 
      [ 15, 15, 15, 15, 11, 13, 11, 13, 14, 14, 14, 14, 10, 12, 12, 10, 4, 5, 8, 9, 5, 4, 9, 8, 0, 
          3, 2, 1, 7, 6, 6, 7 ], [ 15, 15, 15, 15, 11, 13, 11, 13, 14, 14, 14, 14, 12, 10, 10, 12, 
          5, 4, 9, 8, 4, 5, 8, 9, 3, 0, 1, 2, 6, 7, 7, 6 ], 
      [ 15, 15, 15, 15, 13, 11, 13, 11, 14, 14, 14, 14, 10, 12, 12, 10, 5, 4, 9, 8, 4, 5, 8, 9, 2, 
          1, 0, 3, 6, 7, 7, 6 ], [ 15, 15, 15, 15, 13, 11, 13, 11, 14, 14, 14, 14, 12, 10, 10, 12, 
          4, 5, 8, 9, 5, 4, 9, 8, 1, 2, 3, 0, 7, 6, 6, 7 ], 
      [ 14, 14, 14, 14, 10, 12, 12, 10, 15, 15, 15, 15, 11, 13, 11, 13, 8, 9, 5, 4, 9, 8, 4, 5, 6, 
          7, 7, 6, 0, 2, 3, 1 ], [ 14, 14, 14, 14, 10, 12, 12, 10, 15, 15, 15, 15, 13, 11, 13, 11, 
          9, 8, 4, 5, 8, 9, 5, 4, 7, 6, 6, 7, 2, 0, 1, 3 ], 
      [ 14, 14, 14, 14, 12, 10, 10, 12, 15, 15, 15, 15, 11, 13, 11, 13, 9, 8, 4, 5, 8, 9, 5, 4, 7, 
          6, 6, 7, 3, 1, 0, 2 ], [ 14, 14, 14, 14, 12, 10, 10, 12, 15, 15, 15, 15, 13, 11, 13, 11, 
          8, 9, 5, 4, 9, 8, 4, 5, 6, 7, 7, 6, 1, 3, 2, 0 ] ] )