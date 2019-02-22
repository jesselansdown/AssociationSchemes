rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -2, 2, 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 2, -2, -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -2, 2, -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 2, -2, 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 
          -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2*E(8)+2*E(8)^3,
          -2*E(8)-2*E(8)^3, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3,
          -2*E(8)-2*E(8)^3, 2 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 
          -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 10, 10, 8, 8, 9, 9, 14, 14, 14, 14, 15, 15, 15, 15, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 10, 10, 11, 11, 9, 9, 8, 8, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 15, 15, 14, 14, 14, 14, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 0, 2, 1, 3, 5, 7, 4, 6, 14, 14, 15, 15, 14, 14, 15, 15, 12, 
          12, 13, 13, 12, 12, 13, 13 ], 
      [ 8, 9, 8, 9, 11, 10, 11, 10, 2, 0, 3, 1, 7, 5, 6, 4, 15, 15, 14, 14, 15, 15, 14, 14, 13, 
          13, 12, 12, 13, 13, 12, 12 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 1, 3, 0, 2, 4, 6, 5, 7, 14, 14, 15, 15, 14, 14, 15, 15, 12, 
          12, 13, 13, 12, 12, 13, 13 ], 
      [ 9, 8, 9, 8, 10, 11, 10, 11, 3, 1, 2, 0, 6, 4, 7, 5, 15, 15, 14, 14, 15, 15, 14, 14, 13, 
          13, 12, 12, 13, 13, 12, 12 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 4, 6, 5, 7, 0, 2, 1, 3, 12, 12, 13, 13, 12, 12, 13, 13, 14, 
          14, 15, 15, 14, 14, 15, 15 ], 
      [ 11, 10, 11, 10, 9, 8, 9, 8, 6, 4, 7, 5, 2, 0, 3, 1, 13, 13, 12, 12, 13, 13, 12, 12, 15, 
          15, 14, 14, 15, 15, 14, 14 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 5, 7, 4, 6, 1, 3, 0, 2, 12, 12, 13, 13, 12, 12, 13, 13, 14, 
          14, 15, 15, 14, 14, 15, 15 ], 
      [ 10, 11, 10, 11, 8, 9, 8, 9, 7, 5, 6, 4, 3, 1, 2, 0, 13, 13, 12, 12, 13, 13, 12, 12, 15, 
          15, 14, 14, 15, 15, 14, 14 ], 
      [ 13, 13, 12, 12, 15, 15, 14, 14, 15, 14, 15, 14, 13, 12, 13, 12, 0, 1, 10, 11, 10, 11, 2, 
          3, 4, 5, 8, 9, 8, 9, 6, 7 ], 
      [ 13, 13, 12, 12, 15, 15, 14, 14, 15, 14, 15, 14, 13, 12, 13, 12, 1, 0, 11, 10, 11, 10, 3, 
          2, 5, 4, 9, 8, 9, 8, 7, 6 ], 
      [ 13, 13, 12, 12, 15, 15, 14, 14, 14, 15, 14, 15, 12, 13, 12, 13, 11, 10, 0, 1, 2, 3, 11, 
          10, 9, 8, 4, 5, 6, 7, 9, 8 ], 
      [ 13, 13, 12, 12, 15, 15, 14, 14, 14, 15, 14, 15, 12, 13, 12, 13, 10, 11, 1, 0, 3, 2, 10, 
          11, 8, 9, 5, 4, 7, 6, 8, 9 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 15, 14, 15, 14, 13, 12, 13, 12, 11, 10, 2, 3, 0, 1, 11, 
          10, 9, 8, 6, 7, 4, 5, 9, 8 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 15, 14, 15, 14, 13, 12, 13, 12, 10, 11, 3, 2, 1, 0, 10, 
          11, 8, 9, 7, 6, 5, 4, 8, 9 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 14, 15, 14, 15, 12, 13, 12, 13, 2, 3, 10, 11, 10, 11, 0, 
          1, 6, 7, 8, 9, 8, 9, 4, 5 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 14, 15, 14, 15, 12, 13, 12, 13, 3, 2, 11, 10, 11, 10, 1, 
          0, 7, 6, 9, 8, 9, 8, 5, 4 ], 
      [ 15, 15, 14, 14, 13, 13, 12, 12, 13, 12, 13, 12, 15, 14, 15, 14, 5, 4, 9, 8, 9, 8, 7, 6, 0, 
          1, 10, 11, 10, 11, 2, 3 ], 
      [ 15, 15, 14, 14, 13, 13, 12, 12, 13, 12, 13, 12, 15, 14, 15, 14, 4, 5, 8, 9, 8, 9, 6, 7, 1, 
          0, 11, 10, 11, 10, 3, 2 ], 
      [ 15, 15, 14, 14, 13, 13, 12, 12, 12, 13, 12, 13, 14, 15, 14, 15, 8, 9, 5, 4, 7, 6, 8, 9, 
          11, 10, 0, 1, 2, 3, 11, 10 ], 
      [ 15, 15, 14, 14, 13, 13, 12, 12, 12, 13, 12, 13, 14, 15, 14, 15, 9, 8, 4, 5, 6, 7, 9, 8, 
          10, 11, 1, 0, 3, 2, 10, 11 ], 
      [ 14, 14, 15, 15, 12, 12, 13, 13, 13, 12, 13, 12, 15, 14, 15, 14, 8, 9, 7, 6, 5, 4, 8, 9, 
          11, 10, 2, 3, 0, 1, 11, 10 ], 
      [ 14, 14, 15, 15, 12, 12, 13, 13, 13, 12, 13, 12, 15, 14, 15, 14, 9, 8, 6, 7, 4, 5, 9, 8, 
          10, 11, 3, 2, 1, 0, 10, 11 ], 
      [ 14, 14, 15, 15, 12, 12, 13, 13, 12, 13, 12, 13, 14, 15, 14, 15, 7, 6, 9, 8, 9, 8, 5, 4, 2, 
          3, 10, 11, 10, 11, 0, 1 ], 
      [ 14, 14, 15, 15, 12, 12, 13, 13, 12, 13, 12, 13, 14, 15, 14, 15, 6, 7, 8, 9, 8, 9, 4, 5, 3, 
          2, 11, 10, 11, 10, 1, 0 ] ] )