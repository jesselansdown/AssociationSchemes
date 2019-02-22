rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 
          -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 
          2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 
          2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 2 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 
          -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 12, 12, 12, 12, 13, 13, 13, 13, 14, 
          14, 14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12, 15, 
          15, 15, 15, 14, 14, 14, 14 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 14, 14, 14, 14, 15, 15, 15, 15, 13, 
          13, 13, 13, 12, 12, 12, 12 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 15, 15, 15, 15, 14, 14, 14, 14, 12, 
          12, 12, 12, 13, 13, 13, 13 ], 
      [ 8, 8, 9, 9, 11, 11, 10, 10, 0, 1, 2, 3, 6, 7, 4, 5, 14, 14, 15, 15, 14, 14, 15, 15, 12, 
          12, 13, 13, 12, 12, 13, 13 ], 
      [ 8, 8, 9, 9, 11, 11, 10, 10, 1, 0, 3, 2, 7, 6, 5, 4, 15, 15, 14, 14, 15, 15, 14, 14, 13, 
          13, 12, 12, 13, 13, 12, 12 ], 
      [ 9, 9, 8, 8, 10, 10, 11, 11, 2, 3, 0, 1, 4, 5, 6, 7, 14, 14, 15, 15, 14, 14, 15, 15, 12, 
          12, 13, 13, 12, 12, 13, 13 ], 
      [ 9, 9, 8, 8, 10, 10, 11, 11, 3, 2, 1, 0, 5, 4, 7, 6, 15, 15, 14, 14, 15, 15, 14, 14, 13, 
          13, 12, 12, 13, 13, 12, 12 ], 
      [ 11, 11, 10, 10, 8, 8, 9, 9, 7, 6, 5, 4, 0, 1, 2, 3, 13, 13, 12, 12, 13, 13, 12, 12, 14, 
          14, 15, 15, 14, 14, 15, 15 ], 
      [ 11, 11, 10, 10, 8, 8, 9, 9, 6, 7, 4, 5, 1, 0, 3, 2, 12, 12, 13, 13, 12, 12, 13, 13, 15, 
          15, 14, 14, 15, 15, 14, 14 ], 
      [ 10, 10, 11, 11, 9, 9, 8, 8, 5, 4, 7, 6, 2, 3, 0, 1, 13, 13, 12, 12, 13, 13, 12, 12, 14, 
          14, 15, 15, 14, 14, 15, 15 ], 
      [ 10, 10, 11, 11, 9, 9, 8, 8, 4, 5, 6, 7, 3, 2, 1, 0, 12, 12, 13, 13, 12, 12, 13, 13, 15, 
          15, 14, 14, 15, 15, 14, 14 ], 
      [ 12, 13, 12, 13, 15, 14, 15, 14, 15, 14, 15, 14, 13, 12, 13, 12, 0, 2, 10, 11, 10, 11, 1, 
          3, 8, 9, 5, 7, 4, 6, 8, 9 ], 
      [ 12, 13, 12, 13, 15, 14, 15, 14, 15, 14, 15, 14, 13, 12, 13, 12, 2, 0, 11, 10, 11, 10, 3, 
          1, 9, 8, 7, 5, 6, 4, 9, 8 ], 
      [ 12, 13, 12, 13, 15, 14, 15, 14, 14, 15, 14, 15, 12, 13, 12, 13, 11, 10, 0, 2, 1, 3, 11, 
          10, 7, 5, 8, 9, 8, 9, 6, 4 ], 
      [ 12, 13, 12, 13, 15, 14, 15, 14, 14, 15, 14, 15, 12, 13, 12, 13, 10, 11, 2, 0, 3, 1, 10, 
          11, 5, 7, 9, 8, 9, 8, 4, 6 ], 
      [ 13, 12, 13, 12, 14, 15, 14, 15, 15, 14, 15, 14, 13, 12, 13, 12, 11, 10, 1, 3, 0, 2, 11, 
          10, 6, 4, 8, 9, 8, 9, 7, 5 ], 
      [ 13, 12, 13, 12, 14, 15, 14, 15, 15, 14, 15, 14, 13, 12, 13, 12, 10, 11, 3, 1, 2, 0, 10, 
          11, 4, 6, 9, 8, 9, 8, 5, 7 ], 
      [ 13, 12, 13, 12, 14, 15, 14, 15, 14, 15, 14, 15, 12, 13, 12, 13, 1, 3, 10, 11, 10, 11, 0, 
          2, 8, 9, 4, 6, 5, 7, 8, 9 ], 
      [ 13, 12, 13, 12, 14, 15, 14, 15, 14, 15, 14, 15, 12, 13, 12, 13, 3, 1, 11, 10, 11, 10, 2, 
          0, 9, 8, 6, 4, 7, 5, 9, 8 ], 
      [ 15, 14, 15, 14, 13, 12, 13, 12, 12, 13, 12, 13, 15, 14, 15, 14, 8, 9, 6, 4, 7, 5, 8, 9, 0, 
          2, 11, 10, 11, 10, 1, 3 ], 
      [ 15, 14, 15, 14, 13, 12, 13, 12, 12, 13, 12, 13, 15, 14, 15, 14, 9, 8, 4, 6, 5, 7, 9, 8, 2, 
          0, 10, 11, 10, 11, 3, 1 ], 
      [ 15, 14, 15, 14, 13, 12, 13, 12, 13, 12, 13, 12, 14, 15, 14, 15, 4, 6, 8, 9, 8, 9, 5, 7, 
          10, 11, 0, 2, 1, 3, 10, 11 ], 
      [ 15, 14, 15, 14, 13, 12, 13, 12, 13, 12, 13, 12, 14, 15, 14, 15, 6, 4, 9, 8, 9, 8, 7, 5, 
          11, 10, 2, 0, 3, 1, 11, 10 ], 
      [ 14, 15, 14, 15, 12, 13, 12, 13, 12, 13, 12, 13, 15, 14, 15, 14, 5, 7, 8, 9, 8, 9, 4, 6, 
          10, 11, 1, 3, 0, 2, 10, 11 ], 
      [ 14, 15, 14, 15, 12, 13, 12, 13, 12, 13, 12, 13, 15, 14, 15, 14, 7, 5, 9, 8, 9, 8, 6, 4, 
          11, 10, 3, 1, 2, 0, 11, 10 ], 
      [ 14, 15, 14, 15, 12, 13, 12, 13, 13, 12, 13, 12, 14, 15, 14, 15, 8, 9, 7, 5, 6, 4, 8, 9, 1, 
          3, 11, 10, 11, 10, 0, 2 ], 
      [ 14, 15, 14, 15, 12, 13, 12, 13, 13, 12, 13, 12, 14, 15, 14, 15, 9, 8, 5, 7, 4, 6, 9, 8, 3, 
          1, 10, 11, 10, 11, 2, 0 ] ] )