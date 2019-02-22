rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -4*E(4), 4*E(4), 4*E(4), -4*E(4), 
          1 ], [ 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, 4*E(4), -4*E(4), -4*E(4), 
          4*E(4), 1 ], [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -4, -4, 4, 4, 1 ],
      [ 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 
          1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 4*E(4), -4*E(4), 4*E(4), 
          -4*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, -4, -4, 1 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -E(8)-E(8)^3, E(8)+E(8)^3, E(8)+E(8)^3, -E(8)-E(8)^3, 
          0, 0, 0, 0, 4 ], [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, E(8)+E(8)^3, -E(8)-E(8)^3, 
          -E(8)-E(8)^3, E(8)+E(8)^3, 0, 0, 0, 0, 4 ], 
      [ 2, 2, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 12, 14, 13, 15, 8, 10, 9, 11, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 14, 12, 15, 13, 9, 11, 8, 10, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 4, 5, 7, 6, 0, 1, 3, 2, 13, 15, 14, 12, 11, 8, 10, 9, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 5, 4, 6, 7, 1, 0, 2, 3, 15, 13, 12, 14, 10, 9, 11, 8, 18, 18, 18, 18, 19, 19, 19, 19, 16, 
          16, 16, 16, 17, 17, 17, 17 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 11, 10, 8, 9, 13, 14, 15, 12, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 10, 11, 9, 8, 15, 12, 13, 14, 16, 16, 16, 16, 17, 17, 17, 17, 18, 
          18, 18, 18, 19, 19, 19, 19 ], 
      [ 9, 8, 13, 15, 12, 14, 10, 11, 0, 1, 7, 6, 5, 3, 4, 2, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 8, 9, 15, 13, 14, 12, 11, 10, 1, 0, 6, 7, 4, 2, 5, 3, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 11, 10, 12, 14, 15, 13, 9, 8, 6, 7, 0, 1, 3, 4, 2, 5, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 10, 11, 14, 12, 13, 15, 8, 9, 7, 6, 1, 0, 2, 5, 3, 4, 17, 17, 17, 17, 16, 16, 16, 16, 19, 
          19, 19, 19, 18, 18, 18, 18 ], 
      [ 13, 15, 9, 8, 10, 11, 12, 14, 5, 4, 3, 2, 0, 7, 1, 6, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 12, 14, 11, 10, 9, 8, 15, 13, 3, 2, 4, 5, 6, 0, 7, 1, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 15, 13, 8, 9, 11, 10, 14, 12, 4, 5, 2, 3, 1, 6, 0, 7, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 14, 12, 10, 11, 8, 9, 13, 15, 2, 3, 5, 4, 7, 1, 6, 0, 19, 19, 19, 19, 18, 18, 18, 18, 17, 
          17, 17, 17, 16, 16, 16, 16 ], 
      [ 17, 17, 19, 19, 19, 19, 17, 17, 16, 16, 16, 16, 18, 18, 18, 18, 0, 1, 6, 7, 8, 9, 10, 11, 
          2, 3, 4, 5, 12, 13, 14, 15 ], 
      [ 17, 17, 19, 19, 19, 19, 17, 17, 16, 16, 16, 16, 18, 18, 18, 18, 1, 0, 7, 6, 9, 8, 11, 10, 
          3, 2, 5, 4, 14, 15, 12, 13 ], 
      [ 17, 17, 19, 19, 19, 19, 17, 17, 16, 16, 16, 16, 18, 18, 18, 18, 7, 6, 0, 1, 11, 10, 8, 9, 
          4, 5, 3, 2, 13, 14, 15, 12 ], 
      [ 17, 17, 19, 19, 19, 19, 17, 17, 16, 16, 16, 16, 18, 18, 18, 18, 6, 7, 1, 0, 10, 11, 9, 8, 
          5, 4, 2, 3, 15, 12, 13, 14 ], 
      [ 16, 16, 18, 18, 18, 18, 16, 16, 17, 17, 17, 17, 19, 19, 19, 19, 9, 8, 10, 11, 0, 1, 7, 6, 
          13, 15, 12, 14, 5, 3, 4, 2 ], 
      [ 16, 16, 18, 18, 18, 18, 16, 16, 17, 17, 17, 17, 19, 19, 19, 19, 8, 9, 11, 10, 1, 0, 6, 7, 
          15, 13, 14, 12, 4, 2, 5, 3 ], 
      [ 16, 16, 18, 18, 18, 18, 16, 16, 17, 17, 17, 17, 19, 19, 19, 19, 11, 10, 9, 8, 6, 7, 0, 1, 
          12, 14, 15, 13, 3, 4, 2, 5 ], 
      [ 16, 16, 18, 18, 18, 18, 16, 16, 17, 17, 17, 17, 19, 19, 19, 19, 10, 11, 8, 9, 7, 6, 1, 0, 
          14, 12, 13, 15, 2, 5, 3, 4 ], 
      [ 19, 19, 17, 17, 17, 17, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 2, 3, 4, 5, 12, 14, 13, 
          15, 0, 1, 6, 7, 8, 10, 9, 11 ], 
      [ 19, 19, 17, 17, 17, 17, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 3, 2, 5, 4, 14, 12, 15, 
          13, 1, 0, 7, 6, 9, 11, 8, 10 ], 
      [ 19, 19, 17, 17, 17, 17, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 4, 5, 3, 2, 13, 15, 14, 
          12, 7, 6, 0, 1, 11, 8, 10, 9 ], 
      [ 19, 19, 17, 17, 17, 17, 19, 19, 18, 18, 18, 18, 16, 16, 16, 16, 5, 4, 2, 3, 15, 13, 12, 
          14, 6, 7, 1, 0, 10, 9, 11, 8 ], 
      [ 18, 18, 16, 16, 16, 16, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 13, 15, 12, 14, 5, 4, 3, 
          2, 9, 8, 10, 11, 0, 7, 1, 6 ], 
      [ 18, 18, 16, 16, 16, 16, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 12, 14, 15, 13, 3, 2, 4, 
          5, 11, 10, 9, 8, 6, 0, 7, 1 ], 
      [ 18, 18, 16, 16, 16, 16, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 15, 13, 14, 12, 4, 5, 2, 
          3, 8, 9, 11, 10, 1, 6, 0, 7 ], 
      [ 18, 18, 16, 16, 16, 16, 18, 18, 19, 19, 19, 19, 17, 17, 17, 17, 14, 12, 13, 15, 2, 3, 5, 
          4, 10, 11, 8, 9, 7, 1, 6, 0 ] ] )