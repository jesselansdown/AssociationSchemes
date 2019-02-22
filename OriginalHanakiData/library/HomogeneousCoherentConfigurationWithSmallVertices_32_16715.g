rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2, -2, 4, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2, 2, -4, -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2, -2, 4, -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2, 2, -4, 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -2, -2, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2*E(4), -2*E(4), -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2*E(4), 2*E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 
          13, 14, 14, 14, 14 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 11, 11, 10, 10, 
          12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 
          13, 13, 14, 14, 14, 14 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 
          13, 13, 14, 14, 14, 14 ], 
      [ 5, 5, 4, 4, 0, 1, 2, 3, 7, 7, 8, 8, 9, 9, 6, 6, 12, 12, 12, 12, 10, 10, 11, 11, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 5, 5, 4, 4, 1, 0, 3, 2, 7, 7, 8, 8, 9, 9, 6, 6, 12, 12, 12, 12, 11, 11, 10, 10, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 2, 3, 0, 1, 9, 9, 6, 6, 7, 7, 8, 8, 12, 12, 12, 12, 10, 10, 11, 11, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 3, 2, 1, 0, 9, 9, 6, 6, 7, 7, 8, 8, 12, 12, 12, 12, 11, 11, 10, 10, 14, 14, 
          14, 14, 13, 13, 13, 13 ], 
      [ 7, 7, 9, 9, 6, 6, 8, 8, 0, 1, 5, 5, 2, 3, 4, 4, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 
          12, 12, 10, 10, 11, 11 ], 
      [ 7, 7, 9, 9, 6, 6, 8, 8, 1, 0, 5, 5, 3, 2, 4, 4, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 
          12, 12, 11, 11, 10, 10 ], 
      [ 6, 6, 8, 8, 9, 9, 7, 7, 4, 4, 0, 1, 5, 5, 2, 3, 14, 14, 14, 14, 13, 13, 13, 13, 10, 10, 
          11, 11, 12, 12, 12, 12 ], 
      [ 6, 6, 8, 8, 9, 9, 7, 7, 4, 4, 1, 0, 5, 5, 3, 2, 14, 14, 14, 14, 13, 13, 13, 13, 11, 11, 
          10, 10, 12, 12, 12, 12 ], 
      [ 9, 9, 7, 7, 8, 8, 6, 6, 2, 3, 4, 4, 0, 1, 5, 5, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 
          12, 12, 10, 10, 11, 11 ], 
      [ 9, 9, 7, 7, 8, 8, 6, 6, 3, 2, 4, 4, 1, 0, 5, 5, 13, 13, 13, 13, 14, 14, 14, 14, 12, 12, 
          12, 12, 11, 11, 10, 10 ], 
      [ 8, 8, 6, 6, 7, 7, 9, 9, 5, 5, 2, 3, 4, 4, 0, 1, 14, 14, 14, 14, 13, 13, 13, 13, 10, 10, 
          11, 11, 12, 12, 12, 12 ], 
      [ 8, 8, 6, 6, 7, 7, 9, 9, 5, 5, 3, 2, 4, 4, 1, 0, 14, 14, 14, 14, 13, 13, 13, 13, 11, 11, 
          10, 10, 12, 12, 12, 12 ], 
      [ 11, 10, 11, 10, 12, 12, 12, 12, 14, 14, 13, 13, 14, 14, 13, 13, 0, 2, 1, 3, 4, 5, 4, 5, 7, 
          9, 7, 9, 6, 8, 6, 8 ], [ 11, 10, 11, 10, 12, 12, 12, 12, 14, 14, 13, 13, 14, 14, 13, 13, 
          2, 0, 3, 1, 5, 4, 5, 4, 9, 7, 9, 7, 8, 6, 8, 6 ], 
      [ 10, 11, 10, 11, 12, 12, 12, 12, 14, 14, 13, 13, 14, 14, 13, 13, 1, 3, 0, 2, 4, 5, 4, 5, 7, 
          9, 7, 9, 6, 8, 6, 8 ], [ 10, 11, 10, 11, 12, 12, 12, 12, 14, 14, 13, 13, 14, 14, 13, 13, 
          3, 1, 2, 0, 5, 4, 5, 4, 9, 7, 9, 7, 8, 6, 8, 6 ], 
      [ 12, 12, 12, 12, 11, 10, 11, 10, 13, 13, 14, 14, 13, 13, 14, 14, 5, 4, 5, 4, 0, 2, 1, 3, 8, 
          6, 8, 6, 7, 9, 7, 9 ], [ 12, 12, 12, 12, 11, 10, 11, 10, 13, 13, 14, 14, 13, 13, 14, 14, 
          4, 5, 4, 5, 2, 0, 3, 1, 6, 8, 6, 8, 9, 7, 9, 7 ], 
      [ 12, 12, 12, 12, 10, 11, 10, 11, 13, 13, 14, 14, 13, 13, 14, 14, 5, 4, 5, 4, 1, 3, 0, 2, 8, 
          6, 8, 6, 7, 9, 7, 9 ], [ 12, 12, 12, 12, 10, 11, 10, 11, 13, 13, 14, 14, 13, 13, 14, 14, 
          4, 5, 4, 5, 3, 1, 2, 0, 6, 8, 6, 8, 9, 7, 9, 7 ], 
      [ 14, 14, 14, 14, 13, 13, 13, 13, 12, 12, 11, 10, 12, 12, 11, 10, 6, 8, 6, 8, 9, 7, 9, 7, 0, 
          2, 1, 3, 4, 5, 4, 5 ], [ 14, 14, 14, 14, 13, 13, 13, 13, 12, 12, 11, 10, 12, 12, 11, 10, 
          8, 6, 8, 6, 7, 9, 7, 9, 2, 0, 3, 1, 5, 4, 5, 4 ], 
      [ 14, 14, 14, 14, 13, 13, 13, 13, 12, 12, 10, 11, 12, 12, 10, 11, 6, 8, 6, 8, 9, 7, 9, 7, 1, 
          3, 0, 2, 4, 5, 4, 5 ], [ 14, 14, 14, 14, 13, 13, 13, 13, 12, 12, 10, 11, 12, 12, 10, 11, 
          8, 6, 8, 6, 7, 9, 7, 9, 3, 1, 2, 0, 5, 4, 5, 4 ], 
      [ 13, 13, 13, 13, 14, 14, 14, 14, 11, 10, 12, 12, 11, 10, 12, 12, 7, 9, 7, 9, 6, 8, 6, 8, 5, 
          4, 5, 4, 0, 2, 1, 3 ], [ 13, 13, 13, 13, 14, 14, 14, 14, 11, 10, 12, 12, 11, 10, 12, 12, 
          9, 7, 9, 7, 8, 6, 8, 6, 4, 5, 4, 5, 2, 0, 3, 1 ], 
      [ 13, 13, 13, 13, 14, 14, 14, 14, 10, 11, 12, 12, 10, 11, 12, 12, 7, 9, 7, 9, 6, 8, 6, 8, 5, 
          4, 5, 4, 1, 3, 0, 2 ], [ 13, 13, 13, 13, 14, 14, 14, 14, 10, 11, 12, 12, 10, 11, 12, 12, 
          9, 7, 9, 7, 8, 6, 8, 6, 4, 5, 4, 5, 3, 1, 2, 0 ] ] )