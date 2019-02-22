rec(
  ct := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 2, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 2, 2, 4, -4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -2, -2*E(4), 2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -2, -2*E(4), 2*E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -2, 2*E(4), -2*E(4), -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -2, 2*E(4), -2*E(4), 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 
          12, 12, 12, 12 ], [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 10, 10, 
          10, 10, 11, 11, 11, 11, 12, 12, 12, 12 ], 
      [ 2, 2, 0, 1, 4, 4, 3, 3, 7, 7, 8, 8, 5, 5, 6, 6, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 
          11, 12, 12, 12, 12 ], [ 2, 2, 1, 0, 4, 4, 3, 3, 7, 7, 8, 8, 5, 5, 6, 6, 9, 9, 9, 9, 10, 
          10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12 ], 
      [ 4, 4, 3, 3, 0, 1, 2, 2, 6, 6, 7, 7, 8, 8, 5, 5, 10, 10, 10, 10, 9, 9, 9, 9, 12, 12, 12, 
          12, 11, 11, 11, 11 ], [ 4, 4, 3, 3, 1, 0, 2, 2, 6, 6, 7, 7, 8, 8, 5, 5, 10, 10, 10, 10, 
          9, 9, 9, 9, 12, 12, 12, 12, 11, 11, 11, 11 ], 
      [ 3, 3, 4, 4, 2, 2, 0, 1, 8, 8, 5, 5, 6, 6, 7, 7, 10, 10, 10, 10, 9, 9, 9, 9, 12, 12, 12, 
          12, 11, 11, 11, 11 ], [ 3, 3, 4, 4, 2, 2, 1, 0, 8, 8, 5, 5, 6, 6, 7, 7, 10, 10, 10, 10, 
          9, 9, 9, 9, 12, 12, 12, 12, 11, 11, 11, 11 ], 
      [ 6, 6, 8, 8, 5, 5, 7, 7, 0, 1, 4, 4, 2, 2, 3, 3, 11, 11, 11, 11, 12, 12, 12, 12, 10, 10, 
          10, 10, 9, 9, 9, 9 ], [ 6, 6, 8, 8, 5, 5, 7, 7, 1, 0, 4, 4, 2, 2, 3, 3, 11, 11, 11, 11, 
          12, 12, 12, 12, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 5, 5, 7, 7, 8, 8, 6, 6, 3, 3, 0, 1, 4, 4, 2, 2, 12, 12, 12, 12, 11, 11, 11, 11, 9, 9, 9, 
          9, 10, 10, 10, 10 ], [ 5, 5, 7, 7, 8, 8, 6, 6, 3, 3, 1, 0, 4, 4, 2, 2, 12, 12, 12, 12, 
          11, 11, 11, 11, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 8, 8, 6, 6, 7, 7, 5, 5, 2, 2, 3, 3, 0, 1, 4, 4, 11, 11, 11, 11, 12, 12, 12, 12, 10, 10, 
          10, 10, 9, 9, 9, 9 ], [ 8, 8, 6, 6, 7, 7, 5, 5, 2, 2, 3, 3, 1, 0, 4, 4, 11, 11, 11, 11, 
          12, 12, 12, 12, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 7, 7, 5, 5, 6, 6, 8, 8, 4, 4, 2, 2, 3, 3, 0, 1, 12, 12, 12, 12, 11, 11, 11, 11, 9, 9, 9, 
          9, 10, 10, 10, 10 ], [ 7, 7, 5, 5, 6, 6, 8, 8, 4, 4, 2, 2, 3, 3, 1, 0, 12, 12, 12, 12, 
          11, 11, 11, 11, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 12, 12, 11, 11, 12, 12, 11, 11, 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 
          7, 7, 6, 6, 8, 8 ], [ 10, 10, 10, 10, 9, 9, 9, 9, 12, 12, 11, 11, 12, 12, 11, 11, 1, 0, 
          2, 2, 3, 3, 4, 4, 5, 5, 7, 7, 6, 6, 8, 8 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 12, 12, 11, 11, 12, 12, 11, 11, 2, 2, 0, 1, 4, 4, 3, 3, 7, 7, 
          5, 5, 8, 8, 6, 6 ], [ 10, 10, 10, 10, 9, 9, 9, 9, 12, 12, 11, 11, 12, 12, 11, 11, 2, 2, 
          1, 0, 4, 4, 3, 3, 7, 7, 5, 5, 8, 8, 6, 6 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 12, 12, 11, 11, 12, 12, 4, 4, 3, 3, 0, 1, 2, 2, 6, 6, 
          8, 8, 7, 7, 5, 5 ], [ 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 12, 12, 11, 11, 12, 12, 4, 4, 
          3, 3, 1, 0, 2, 2, 6, 6, 8, 8, 7, 7, 5, 5 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 12, 12, 11, 11, 12, 12, 3, 3, 4, 4, 2, 2, 0, 1, 8, 8, 
          6, 6, 5, 5, 7, 7 ], [ 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 12, 12, 11, 11, 12, 12, 3, 3, 
          4, 4, 2, 2, 1, 0, 8, 8, 6, 6, 5, 5, 7, 7 ], 
      [ 12, 12, 12, 12, 11, 11, 11, 11, 9, 9, 10, 10, 9, 9, 10, 10, 6, 6, 8, 8, 5, 5, 7, 7, 0, 1, 
          2, 2, 4, 4, 3, 3 ], [ 12, 12, 12, 12, 11, 11, 11, 11, 9, 9, 10, 10, 9, 9, 10, 10, 6, 6, 
          8, 8, 5, 5, 7, 7, 1, 0, 2, 2, 4, 4, 3, 3 ], 
      [ 12, 12, 12, 12, 11, 11, 11, 11, 9, 9, 10, 10, 9, 9, 10, 10, 8, 8, 6, 6, 7, 7, 5, 5, 2, 2, 
          0, 1, 3, 3, 4, 4 ], [ 12, 12, 12, 12, 11, 11, 11, 11, 9, 9, 10, 10, 9, 9, 10, 10, 8, 8, 
          6, 6, 7, 7, 5, 5, 2, 2, 1, 0, 3, 3, 4, 4 ], 
      [ 11, 11, 11, 11, 12, 12, 12, 12, 10, 10, 9, 9, 10, 10, 9, 9, 5, 5, 7, 7, 8, 8, 6, 6, 3, 3, 
          4, 4, 0, 1, 2, 2 ], [ 11, 11, 11, 11, 12, 12, 12, 12, 10, 10, 9, 9, 10, 10, 9, 9, 5, 5, 
          7, 7, 8, 8, 6, 6, 3, 3, 4, 4, 1, 0, 2, 2 ], 
      [ 11, 11, 11, 11, 12, 12, 12, 12, 10, 10, 9, 9, 10, 10, 9, 9, 7, 7, 5, 5, 6, 6, 8, 8, 4, 4, 
          3, 3, 2, 2, 0, 1 ], [ 11, 11, 11, 11, 12, 12, 12, 12, 10, 10, 9, 9, 10, 10, 9, 9, 7, 7, 
          5, 5, 6, 6, 8, 8, 4, 4, 3, 3, 2, 2, 1, 0 ] ] )