rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 4*E(8), -4*E(8)^3, -4*E(8), 
          4*E(8)^3, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -4*E(8), 
          4*E(8)^3, 4*E(8), -4*E(8)^3, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 4*E(8)^3, -4*E(8), 
          -4*E(8)^3, 4*E(8), 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -4*E(8)^3, 4*E(8), 4*E(8)^3, -4*E(8), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 10, 10, 11, 11, 8, 8, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 9, 9, 11, 11, 8, 8, 10, 10, 0, 1, 4, 5, 2, 3, 6, 7, 13, 13, 13, 13, 14, 14, 14, 14, 15, 
          15, 15, 15, 12, 12, 12, 12 ], 
      [ 9, 9, 11, 11, 8, 8, 10, 10, 1, 0, 5, 4, 3, 2, 7, 6, 13, 13, 13, 13, 14, 14, 14, 14, 15, 
          15, 15, 15, 12, 12, 12, 12 ], 
      [ 8, 8, 10, 10, 9, 9, 11, 11, 5, 4, 0, 1, 7, 6, 2, 3, 15, 15, 15, 15, 12, 12, 12, 12, 13, 
          13, 13, 13, 14, 14, 14, 14 ], 
      [ 8, 8, 10, 10, 9, 9, 11, 11, 4, 5, 1, 0, 6, 7, 3, 2, 15, 15, 15, 15, 12, 12, 12, 12, 13, 
          13, 13, 13, 14, 14, 14, 14 ], 
      [ 11, 11, 9, 9, 10, 10, 8, 8, 2, 3, 6, 7, 0, 1, 4, 5, 13, 13, 13, 13, 14, 14, 14, 14, 15, 
          15, 15, 15, 12, 12, 12, 12 ], 
      [ 11, 11, 9, 9, 10, 10, 8, 8, 3, 2, 7, 6, 1, 0, 5, 4, 13, 13, 13, 13, 14, 14, 14, 14, 15, 
          15, 15, 15, 12, 12, 12, 12 ], 
      [ 10, 10, 8, 8, 11, 11, 9, 9, 7, 6, 2, 3, 5, 4, 0, 1, 15, 15, 15, 15, 12, 12, 12, 12, 13, 
          13, 13, 13, 14, 14, 14, 14 ], 
      [ 10, 10, 8, 8, 11, 11, 9, 9, 6, 7, 3, 2, 4, 5, 1, 0, 15, 15, 15, 15, 12, 12, 12, 12, 13, 
          13, 13, 13, 14, 14, 14, 14 ], 
      [ 13, 13, 13, 13, 15, 15, 15, 15, 12, 12, 14, 14, 12, 12, 14, 14, 0, 1, 2, 3, 9, 9, 11, 11, 
          4, 5, 6, 7, 8, 8, 10, 10 ], 
      [ 13, 13, 13, 13, 15, 15, 15, 15, 12, 12, 14, 14, 12, 12, 14, 14, 1, 0, 3, 2, 9, 9, 11, 11, 
          5, 4, 7, 6, 8, 8, 10, 10 ], 
      [ 13, 13, 13, 13, 15, 15, 15, 15, 12, 12, 14, 14, 12, 12, 14, 14, 2, 3, 0, 1, 11, 11, 9, 9, 
          6, 7, 4, 5, 10, 10, 8, 8 ], 
      [ 13, 13, 13, 13, 15, 15, 15, 15, 12, 12, 14, 14, 12, 12, 14, 14, 3, 2, 1, 0, 11, 11, 9, 9, 
          7, 6, 5, 4, 10, 10, 8, 8 ], 
      [ 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 13, 13, 15, 15, 13, 13, 8, 8, 10, 10, 0, 1, 2, 3, 
          9, 9, 11, 11, 4, 5, 6, 7 ], 
      [ 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 13, 13, 15, 15, 13, 13, 8, 8, 10, 10, 1, 0, 3, 2, 
          9, 9, 11, 11, 5, 4, 7, 6 ], 
      [ 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 13, 13, 15, 15, 13, 13, 10, 10, 8, 8, 2, 3, 0, 1, 
          11, 11, 9, 9, 6, 7, 4, 5 ], 
      [ 12, 12, 12, 12, 14, 14, 14, 14, 15, 15, 13, 13, 15, 15, 13, 13, 10, 10, 8, 8, 3, 2, 1, 0, 
          11, 11, 9, 9, 7, 6, 5, 4 ], 
      [ 15, 15, 15, 15, 13, 13, 13, 13, 14, 14, 12, 12, 14, 14, 12, 12, 5, 4, 7, 6, 8, 8, 10, 10, 
          0, 1, 2, 3, 9, 9, 11, 11 ], 
      [ 15, 15, 15, 15, 13, 13, 13, 13, 14, 14, 12, 12, 14, 14, 12, 12, 4, 5, 6, 7, 8, 8, 10, 10, 
          1, 0, 3, 2, 9, 9, 11, 11 ], 
      [ 15, 15, 15, 15, 13, 13, 13, 13, 14, 14, 12, 12, 14, 14, 12, 12, 7, 6, 5, 4, 10, 10, 8, 8, 
          2, 3, 0, 1, 11, 11, 9, 9 ], 
      [ 15, 15, 15, 15, 13, 13, 13, 13, 14, 14, 12, 12, 14, 14, 12, 12, 6, 7, 4, 5, 10, 10, 8, 8, 
          3, 2, 1, 0, 11, 11, 9, 9 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 15, 15, 13, 13, 15, 15, 9, 9, 11, 11, 5, 4, 7, 6, 
          8, 8, 10, 10, 0, 1, 2, 3 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 15, 15, 13, 13, 15, 15, 9, 9, 11, 11, 4, 5, 6, 7, 
          8, 8, 10, 10, 1, 0, 3, 2 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 15, 15, 13, 13, 15, 15, 11, 11, 9, 9, 7, 6, 5, 4, 
          10, 10, 8, 8, 2, 3, 0, 1 ], 
      [ 14, 14, 14, 14, 12, 12, 12, 12, 13, 13, 15, 15, 13, 13, 15, 15, 11, 11, 9, 9, 6, 7, 4, 5, 
          10, 10, 8, 8, 3, 2, 1, 0 ] ] )