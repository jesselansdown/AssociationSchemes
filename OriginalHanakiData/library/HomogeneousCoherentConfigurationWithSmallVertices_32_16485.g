rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, -2, 2, -2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, -1, -1, 2, -2, 2, -2, 2, -2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -2, 2, -2, 2, 2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 2, -2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2, 2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 4 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 4 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 4 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 12, 12, 12, 12, 
          13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 11, 11 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 
          13, 13, 10, 10, 10, 10 ], 
      [ 2, 3, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 13, 13, 13, 13, 10, 10, 10, 10, 11, 11, 
          11, 11, 12, 12, 12, 12 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 12, 12, 11, 11, 13, 13, 10, 10, 
          12, 12, 11, 11, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 8, 8, 9, 9, 6, 6, 7, 7, 12, 12, 10, 10, 13, 13, 11, 11, 12, 12, 
          10, 10, 13, 13, 11, 11 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 11, 11, 13, 13, 12, 12, 10, 10, 11, 11, 
          13, 13, 12, 12, 10, 10 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 13, 13, 11, 11, 10, 10, 12, 12, 13, 13, 
          11, 11, 10, 10, 12, 12 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 0, 1, 2, 3, 4, 4, 5, 5, 10, 12, 10, 12, 11, 13, 11, 13, 10, 12, 
          10, 12, 11, 13, 11, 13 ], 
      [ 6, 6, 7, 7, 8, 8, 9, 9, 1, 0, 3, 2, 4, 4, 5, 5, 12, 10, 12, 10, 13, 11, 13, 11, 12, 10, 
          12, 10, 13, 11, 13, 11 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 3, 2, 0, 1, 5, 5, 4, 4, 11, 13, 11, 13, 12, 10, 12, 10, 11, 13, 
          11, 13, 12, 10, 12, 10 ], 
      [ 7, 7, 6, 6, 9, 9, 8, 8, 2, 3, 1, 0, 5, 5, 4, 4, 13, 11, 13, 11, 10, 12, 10, 12, 13, 11, 
          13, 11, 10, 12, 10, 12 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 0, 1, 2, 3, 10, 12, 12, 10, 11, 13, 13, 11, 12, 10, 
          10, 12, 13, 11, 11, 13 ], 
      [ 8, 8, 9, 9, 6, 6, 7, 7, 4, 4, 5, 5, 1, 0, 3, 2, 12, 10, 10, 12, 13, 11, 11, 13, 10, 12, 
          12, 10, 11, 13, 13, 11 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 2, 0, 1, 11, 13, 13, 11, 12, 10, 10, 12, 13, 11, 
          11, 13, 10, 12, 12, 10 ], 
      [ 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 2, 3, 1, 0, 13, 11, 11, 13, 10, 12, 12, 10, 11, 13, 
          13, 11, 12, 10, 10, 12 ], 
      [ 11, 13, 10, 12, 11, 13, 10, 12, 11, 13, 10, 12, 11, 13, 10, 12, 0, 6, 8, 4, 3, 7, 9, 5, 4, 
          8, 6, 1, 5, 9, 7, 2 ], [ 11, 13, 10, 12, 11, 13, 10, 12, 13, 11, 12, 10, 13, 11, 12, 10, 
          6, 0, 4, 8, 7, 3, 5, 9, 8, 4, 1, 6, 9, 5, 2, 7 ], 
      [ 11, 13, 10, 12, 13, 11, 12, 10, 11, 13, 10, 12, 13, 11, 12, 10, 8, 4, 0, 6, 9, 5, 3, 7, 6, 
          1, 4, 8, 7, 2, 5, 9 ], [ 11, 13, 10, 12, 13, 11, 12, 10, 13, 11, 12, 10, 11, 13, 10, 12, 
          4, 8, 6, 0, 5, 9, 7, 3, 1, 6, 8, 4, 2, 7, 9, 5 ], 
      [ 10, 12, 13, 11, 10, 12, 13, 11, 10, 12, 13, 11, 10, 12, 13, 11, 2, 7, 9, 5, 0, 6, 8, 4, 5, 
          9, 7, 3, 4, 8, 6, 1 ], [ 10, 12, 13, 11, 10, 12, 13, 11, 12, 10, 11, 13, 12, 10, 11, 13, 
          7, 2, 5, 9, 6, 0, 4, 8, 9, 5, 3, 7, 8, 4, 1, 6 ], 
      [ 10, 12, 13, 11, 12, 10, 11, 13, 10, 12, 13, 11, 12, 10, 11, 13, 9, 5, 2, 7, 8, 4, 0, 6, 7, 
          3, 5, 9, 6, 1, 4, 8 ], [ 10, 12, 13, 11, 12, 10, 11, 13, 12, 10, 11, 13, 10, 12, 13, 11, 
          5, 9, 7, 2, 4, 8, 6, 0, 3, 7, 9, 5, 1, 6, 8, 4 ], 
      [ 13, 11, 12, 10, 11, 13, 10, 12, 11, 13, 10, 12, 13, 11, 12, 10, 4, 8, 6, 1, 5, 9, 7, 2, 0, 
          6, 8, 4, 3, 7, 9, 5 ], [ 13, 11, 12, 10, 11, 13, 10, 12, 13, 11, 12, 10, 11, 13, 10, 12, 
          8, 4, 1, 6, 9, 5, 2, 7, 6, 0, 4, 8, 7, 3, 5, 9 ], 
      [ 13, 11, 12, 10, 13, 11, 12, 10, 11, 13, 10, 12, 11, 13, 10, 12, 6, 1, 4, 8, 7, 2, 5, 9, 8, 
          4, 0, 6, 9, 5, 3, 7 ], [ 13, 11, 12, 10, 13, 11, 12, 10, 13, 11, 12, 10, 13, 11, 12, 10, 
          1, 6, 8, 4, 2, 7, 9, 5, 4, 8, 6, 0, 5, 9, 7, 3 ], 
      [ 12, 10, 11, 13, 10, 12, 13, 11, 10, 12, 13, 11, 12, 10, 11, 13, 5, 9, 7, 3, 4, 8, 6, 1, 2, 
          7, 9, 5, 0, 6, 8, 4 ], [ 12, 10, 11, 13, 10, 12, 13, 11, 12, 10, 11, 13, 10, 12, 13, 11, 
          9, 5, 3, 7, 8, 4, 1, 6, 7, 2, 5, 9, 6, 0, 4, 8 ], 
      [ 12, 10, 11, 13, 12, 10, 11, 13, 10, 12, 13, 11, 10, 12, 13, 11, 7, 3, 5, 9, 6, 1, 4, 8, 9, 
          5, 2, 7, 8, 4, 0, 6 ], [ 12, 10, 11, 13, 12, 10, 11, 13, 12, 10, 11, 13, 12, 10, 11, 13, 
          3, 7, 9, 5, 1, 6, 8, 4, 5, 9, 7, 2, 4, 8, 6, 0 ] ] )