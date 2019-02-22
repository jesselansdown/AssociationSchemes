rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, -2-2*E(4), -2+2*E(4), 2+2*E(4), 
          2-2*E(4), 2 ], [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 2+2*E(4), 2-2*E(4), 
          -2-2*E(4), -2+2*E(4), 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, -2+2*E(4), -2-2*E(4), 2-2*E(4), 
          2+2*E(4), 2 ], [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 2-2*E(4), 2+2*E(4), 
          -2+2*E(4), -2-2*E(4), 2 ], [ 1, 1, -1, -1, -1, -1, 1, 1, -2, 2, 2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2, -2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2, 2, -2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2, -2, 2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 13, 13, 13, 13, 14, 14, 14, 14, 15, 
          15, 15, 15, 12, 12, 12, 12 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 15, 15, 15, 15, 12, 12, 12, 12, 13, 
          13, 13, 13, 14, 14, 14, 14 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 13, 13, 13, 13, 14, 14, 14, 14, 15, 
          15, 15, 15, 12, 12, 12, 12 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 15, 15, 12, 12, 12, 12, 13, 
          13, 13, 13, 14, 14, 14, 14 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 0, 1, 2, 3, 4, 5, 6, 7, 12, 12, 14, 14, 13, 13, 15, 15, 12, 
          12, 14, 14, 13, 13, 15, 15 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 1, 0, 3, 2, 5, 4, 7, 6, 14, 14, 12, 12, 15, 15, 13, 13, 14, 
          14, 12, 12, 15, 15, 13, 13 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 2, 3, 0, 1, 6, 7, 4, 5, 12, 12, 14, 14, 13, 13, 15, 15, 12, 
          12, 14, 14, 13, 13, 15, 15 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 3, 2, 1, 0, 7, 6, 5, 4, 14, 14, 12, 12, 15, 15, 13, 13, 14, 
          14, 12, 12, 15, 15, 13, 13 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 5, 4, 7, 6, 0, 1, 2, 3, 13, 13, 15, 15, 14, 14, 12, 12, 13, 
          13, 15, 15, 14, 14, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 4, 5, 6, 7, 1, 0, 3, 2, 15, 15, 13, 13, 12, 12, 14, 14, 15, 
          15, 13, 13, 12, 12, 14, 14 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 7, 6, 5, 4, 2, 3, 0, 1, 13, 13, 15, 15, 14, 14, 12, 12, 13, 
          13, 15, 15, 14, 14, 12, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 6, 7, 4, 5, 3, 2, 1, 0, 15, 15, 13, 13, 12, 12, 14, 14, 15, 
          15, 13, 13, 12, 12, 14, 14 ], 
      [ 13, 15, 13, 15, 12, 14, 12, 14, 13, 15, 13, 15, 12, 14, 12, 14, 0, 2, 8, 9, 5, 7, 10, 11, 
          8, 9, 1, 3, 10, 11, 4, 6 ], 
      [ 13, 15, 13, 15, 12, 14, 12, 14, 13, 15, 13, 15, 12, 14, 12, 14, 2, 0, 9, 8, 7, 5, 11, 10, 
          9, 8, 3, 1, 11, 10, 6, 4 ], 
      [ 13, 15, 13, 15, 12, 14, 12, 14, 15, 13, 15, 13, 14, 12, 14, 12, 8, 9, 0, 2, 10, 11, 5, 7, 
          1, 3, 8, 9, 4, 6, 10, 11 ], 
      [ 13, 15, 13, 15, 12, 14, 12, 14, 15, 13, 15, 13, 14, 12, 14, 12, 9, 8, 2, 0, 11, 10, 7, 5, 
          3, 1, 9, 8, 6, 4, 11, 10 ], 
      [ 12, 14, 12, 14, 15, 13, 15, 13, 12, 14, 12, 14, 15, 13, 15, 13, 4, 6, 10, 11, 0, 2, 8, 9, 
          10, 11, 5, 7, 8, 9, 1, 3 ], 
      [ 12, 14, 12, 14, 15, 13, 15, 13, 12, 14, 12, 14, 15, 13, 15, 13, 6, 4, 11, 10, 2, 0, 9, 8, 
          11, 10, 7, 5, 9, 8, 3, 1 ], 
      [ 12, 14, 12, 14, 15, 13, 15, 13, 14, 12, 14, 12, 13, 15, 13, 15, 10, 11, 4, 6, 8, 9, 0, 2, 
          5, 7, 10, 11, 1, 3, 8, 9 ], 
      [ 12, 14, 12, 14, 15, 13, 15, 13, 14, 12, 14, 12, 13, 15, 13, 15, 11, 10, 6, 4, 9, 8, 2, 0, 
          7, 5, 11, 10, 3, 1, 9, 8 ], 
      [ 15, 13, 15, 13, 14, 12, 14, 12, 13, 15, 13, 15, 12, 14, 12, 14, 8, 9, 1, 3, 10, 11, 4, 6, 
          0, 2, 8, 9, 5, 7, 10, 11 ], 
      [ 15, 13, 15, 13, 14, 12, 14, 12, 13, 15, 13, 15, 12, 14, 12, 14, 9, 8, 3, 1, 11, 10, 6, 4, 
          2, 0, 9, 8, 7, 5, 11, 10 ], 
      [ 15, 13, 15, 13, 14, 12, 14, 12, 15, 13, 15, 13, 14, 12, 14, 12, 1, 3, 8, 9, 4, 6, 10, 11, 
          8, 9, 0, 2, 10, 11, 5, 7 ], 
      [ 15, 13, 15, 13, 14, 12, 14, 12, 15, 13, 15, 13, 14, 12, 14, 12, 3, 1, 9, 8, 6, 4, 11, 10, 
          9, 8, 2, 0, 11, 10, 7, 5 ], 
      [ 14, 12, 14, 12, 13, 15, 13, 15, 12, 14, 12, 14, 15, 13, 15, 13, 10, 11, 5, 7, 8, 9, 1, 3, 
          4, 6, 10, 11, 0, 2, 8, 9 ], 
      [ 14, 12, 14, 12, 13, 15, 13, 15, 12, 14, 12, 14, 15, 13, 15, 13, 11, 10, 7, 5, 9, 8, 3, 1, 
          6, 4, 11, 10, 2, 0, 9, 8 ], 
      [ 14, 12, 14, 12, 13, 15, 13, 15, 14, 12, 14, 12, 13, 15, 13, 15, 5, 7, 10, 11, 1, 3, 8, 9, 
          10, 11, 4, 6, 8, 9, 0, 2 ], 
      [ 14, 12, 14, 12, 13, 15, 13, 15, 14, 12, 14, 12, 13, 15, 13, 15, 7, 5, 11, 10, 3, 1, 9, 8, 
          11, 10, 6, 4, 9, 8, 2, 0 ] ] )