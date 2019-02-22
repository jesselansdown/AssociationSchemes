rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, -2-2*E(4), -2+2*E(4), 2+2*E(4), 
          2-2*E(4), 2 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 2+2*E(4), 2-2*E(4), 
          -2-2*E(4), -2+2*E(4), 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, -2+2*E(4), -2-2*E(4), 2-2*E(4), 
          2+2*E(4), 2 ], [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 2-2*E(4), 2+2*E(4), 
          -2+2*E(4), -2-2*E(4), 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -2, 2, 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 2, -2, -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -2, 2, -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 2, -2, 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 9, 9, 8, 8, 13, 13, 13, 13, 14, 14, 14, 14, 15, 
          15, 15, 15, 12, 12, 12, 12 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 15, 15, 12, 12, 12, 12, 13, 
          13, 13, 13, 14, 14, 14, 14 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 11, 11, 9, 9, 8, 8, 15, 15, 15, 15, 12, 12, 12, 12, 13, 
          13, 13, 13, 14, 14, 14, 14 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 8, 8, 9, 9, 13, 13, 13, 13, 14, 14, 14, 14, 15, 
          15, 15, 15, 12, 12, 12, 12 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 0, 2, 1, 3, 5, 7, 4, 6, 12, 12, 14, 14, 13, 13, 15, 15, 12, 
          12, 14, 14, 13, 13, 15, 15 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 2, 0, 3, 1, 7, 5, 6, 4, 14, 14, 12, 12, 15, 15, 13, 13, 14, 
          14, 12, 12, 15, 15, 13, 13 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 1, 3, 0, 2, 4, 6, 5, 7, 14, 14, 12, 12, 15, 15, 13, 13, 14, 
          14, 12, 12, 15, 15, 13, 13 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 3, 1, 2, 0, 6, 4, 7, 5, 12, 12, 14, 14, 13, 13, 15, 15, 12, 
          12, 14, 14, 13, 13, 15, 15 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 4, 6, 5, 7, 0, 2, 1, 3, 15, 15, 13, 13, 12, 12, 14, 14, 15, 
          15, 13, 13, 12, 12, 14, 14 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 6, 4, 7, 5, 2, 0, 3, 1, 13, 13, 15, 15, 14, 14, 12, 12, 13, 
          13, 15, 15, 14, 14, 12, 12 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 5, 7, 4, 6, 1, 3, 0, 2, 13, 13, 15, 15, 14, 14, 12, 12, 13, 
          13, 15, 15, 14, 14, 12, 12 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 7, 5, 6, 4, 3, 1, 2, 0, 15, 15, 13, 13, 12, 12, 14, 14, 15, 
          15, 13, 13, 12, 12, 14, 14 ], 
      [ 13, 15, 15, 13, 12, 14, 14, 12, 13, 15, 15, 13, 14, 12, 12, 14, 0, 3, 8, 9, 5, 6, 10, 11, 
          8, 9, 1, 2, 10, 11, 4, 7 ], 
      [ 13, 15, 15, 13, 12, 14, 14, 12, 13, 15, 15, 13, 14, 12, 12, 14, 3, 0, 9, 8, 6, 5, 11, 10, 
          9, 8, 2, 1, 11, 10, 7, 4 ], 
      [ 13, 15, 15, 13, 12, 14, 14, 12, 15, 13, 13, 15, 12, 14, 14, 12, 8, 9, 0, 3, 10, 11, 5, 6, 
          2, 1, 9, 8, 7, 4, 11, 10 ], 
      [ 13, 15, 15, 13, 12, 14, 14, 12, 15, 13, 13, 15, 12, 14, 14, 12, 9, 8, 3, 0, 11, 10, 6, 5, 
          1, 2, 8, 9, 4, 7, 10, 11 ], 
      [ 12, 14, 14, 12, 15, 13, 13, 15, 12, 14, 14, 12, 13, 15, 15, 13, 4, 7, 11, 10, 0, 3, 8, 9, 
          11, 10, 5, 6, 8, 9, 1, 2 ], 
      [ 12, 14, 14, 12, 15, 13, 13, 15, 12, 14, 14, 12, 13, 15, 15, 13, 7, 4, 10, 11, 3, 0, 9, 8, 
          10, 11, 6, 5, 9, 8, 2, 1 ], 
      [ 12, 14, 14, 12, 15, 13, 13, 15, 14, 12, 12, 14, 15, 13, 13, 15, 11, 10, 4, 7, 8, 9, 0, 3, 
          6, 5, 10, 11, 2, 1, 9, 8 ], 
      [ 12, 14, 14, 12, 15, 13, 13, 15, 14, 12, 12, 14, 15, 13, 13, 15, 10, 11, 7, 4, 9, 8, 3, 0, 
          5, 6, 11, 10, 1, 2, 8, 9 ], 
      [ 15, 13, 13, 15, 14, 12, 12, 14, 13, 15, 15, 13, 14, 12, 12, 14, 8, 9, 2, 1, 10, 11, 7, 4, 
          0, 3, 9, 8, 5, 6, 11, 10 ], 
      [ 15, 13, 13, 15, 14, 12, 12, 14, 13, 15, 15, 13, 14, 12, 12, 14, 9, 8, 1, 2, 11, 10, 4, 7, 
          3, 0, 8, 9, 6, 5, 10, 11 ], 
      [ 15, 13, 13, 15, 14, 12, 12, 14, 15, 13, 13, 15, 12, 14, 14, 12, 1, 2, 9, 8, 4, 7, 11, 10, 
          9, 8, 0, 3, 11, 10, 5, 6 ], 
      [ 15, 13, 13, 15, 14, 12, 12, 14, 15, 13, 13, 15, 12, 14, 14, 12, 2, 1, 8, 9, 7, 4, 10, 11, 
          8, 9, 3, 0, 10, 11, 6, 5 ], 
      [ 14, 12, 12, 14, 13, 15, 15, 13, 12, 14, 14, 12, 13, 15, 15, 13, 11, 10, 6, 5, 8, 9, 2, 1, 
          4, 7, 10, 11, 0, 3, 9, 8 ], 
      [ 14, 12, 12, 14, 13, 15, 15, 13, 12, 14, 14, 12, 13, 15, 15, 13, 10, 11, 5, 6, 9, 8, 1, 2, 
          7, 4, 11, 10, 3, 0, 8, 9 ], 
      [ 14, 12, 12, 14, 13, 15, 15, 13, 14, 12, 12, 14, 15, 13, 13, 15, 5, 6, 10, 11, 1, 2, 9, 8, 
          10, 11, 4, 7, 9, 8, 0, 3 ], 
      [ 14, 12, 12, 14, 13, 15, 15, 13, 14, 12, 12, 14, 15, 13, 13, 15, 6, 5, 11, 10, 2, 1, 8, 9, 
          11, 10, 7, 4, 8, 9, 3, 0 ] ] )