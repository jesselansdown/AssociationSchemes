rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 
          2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 
          -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2 ], 
      [ 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, -4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 16, 16, 18, 18, 17, 17, 19, 19, 12, 
          12, 14, 14, 13, 13, 15, 15 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 16, 16, 18, 18, 17, 17, 19, 19, 12, 
          12, 14, 14, 13, 13, 15, 15 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 18, 18, 16, 16, 19, 19, 17, 17, 13, 
          13, 15, 15, 12, 12, 14, 14 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 18, 18, 16, 16, 19, 19, 17, 17, 13, 
          13, 15, 15, 12, 12, 14, 14 ], 
      [ 8, 8, 9, 9, 11, 11, 10, 10, 0, 1, 2, 3, 6, 7, 4, 5, 17, 17, 19, 19, 18, 18, 16, 16, 15, 
          15, 12, 12, 14, 14, 13, 13 ], 
      [ 8, 8, 9, 9, 11, 11, 10, 10, 1, 0, 3, 2, 7, 6, 5, 4, 17, 17, 19, 19, 18, 18, 16, 16, 15, 
          15, 12, 12, 14, 14, 13, 13 ], 
      [ 9, 9, 8, 8, 10, 10, 11, 11, 2, 3, 0, 1, 4, 5, 6, 7, 19, 19, 17, 17, 16, 16, 18, 18, 14, 
          14, 13, 13, 15, 15, 12, 12 ], 
      [ 9, 9, 8, 8, 10, 10, 11, 11, 3, 2, 1, 0, 5, 4, 7, 6, 19, 19, 17, 17, 16, 16, 18, 18, 14, 
          14, 13, 13, 15, 15, 12, 12 ], 
      [ 11, 11, 10, 10, 8, 8, 9, 9, 7, 6, 5, 4, 0, 1, 2, 3, 15, 15, 14, 14, 12, 12, 13, 13, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 11, 11, 10, 10, 8, 8, 9, 9, 6, 7, 4, 5, 1, 0, 3, 2, 15, 15, 14, 14, 12, 12, 13, 13, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 10, 10, 11, 11, 9, 9, 8, 8, 5, 4, 7, 6, 2, 3, 0, 1, 14, 14, 15, 15, 13, 13, 12, 12, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 10, 10, 11, 11, 9, 9, 8, 8, 4, 5, 6, 7, 3, 2, 1, 0, 14, 14, 15, 15, 13, 13, 12, 12, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 13, 13, 12, 12, 17, 17, 19, 19, 16, 16, 18, 18, 14, 14, 15, 15, 0, 1, 2, 3, 11, 11, 10, 
          10, 9, 9, 6, 7, 8, 8, 4, 5 ], 
      [ 13, 13, 12, 12, 17, 17, 19, 19, 16, 16, 18, 18, 14, 14, 15, 15, 1, 0, 3, 2, 11, 11, 10, 
          10, 9, 9, 7, 6, 8, 8, 5, 4 ], 
      [ 12, 12, 13, 13, 19, 19, 17, 17, 18, 18, 16, 16, 15, 15, 14, 14, 2, 3, 0, 1, 10, 10, 11, 
          11, 8, 8, 4, 5, 9, 9, 6, 7 ], 
      [ 12, 12, 13, 13, 19, 19, 17, 17, 18, 18, 16, 16, 15, 15, 14, 14, 3, 2, 1, 0, 10, 10, 11, 
          11, 8, 8, 5, 4, 9, 9, 7, 6 ], 
      [ 15, 15, 14, 14, 16, 16, 18, 18, 19, 19, 17, 17, 13, 13, 12, 12, 10, 10, 11, 11, 0, 1, 2, 
          3, 6, 7, 8, 8, 4, 5, 9, 9 ], 
      [ 15, 15, 14, 14, 16, 16, 18, 18, 19, 19, 17, 17, 13, 13, 12, 12, 10, 10, 11, 11, 1, 0, 3, 
          2, 7, 6, 8, 8, 5, 4, 9, 9 ], 
      [ 14, 14, 15, 15, 18, 18, 16, 16, 17, 17, 19, 19, 12, 12, 13, 13, 11, 11, 10, 10, 2, 3, 0, 
          1, 4, 5, 9, 9, 6, 7, 8, 8 ], 
      [ 14, 14, 15, 15, 18, 18, 16, 16, 17, 17, 19, 19, 12, 12, 13, 13, 11, 11, 10, 10, 3, 2, 1, 
          0, 5, 4, 9, 9, 7, 6, 8, 8 ], 
      [ 17, 17, 19, 19, 13, 13, 12, 12, 14, 14, 15, 15, 16, 16, 18, 18, 9, 9, 8, 8, 7, 6, 5, 4, 0, 
          1, 11, 11, 2, 3, 10, 10 ], 
      [ 17, 17, 19, 19, 13, 13, 12, 12, 14, 14, 15, 15, 16, 16, 18, 18, 9, 9, 8, 8, 6, 7, 4, 5, 1, 
          0, 11, 11, 3, 2, 10, 10 ], 
      [ 16, 16, 18, 18, 15, 15, 14, 14, 13, 13, 12, 12, 19, 19, 17, 17, 7, 6, 5, 4, 8, 8, 9, 9, 
          10, 10, 0, 1, 11, 11, 2, 3 ], 
      [ 16, 16, 18, 18, 15, 15, 14, 14, 13, 13, 12, 12, 19, 19, 17, 17, 6, 7, 4, 5, 8, 8, 9, 9, 
          10, 10, 1, 0, 11, 11, 3, 2 ], 
      [ 19, 19, 17, 17, 12, 12, 13, 13, 15, 15, 14, 14, 18, 18, 16, 16, 8, 8, 9, 9, 5, 4, 7, 6, 2, 
          3, 10, 10, 0, 1, 11, 11 ], 
      [ 19, 19, 17, 17, 12, 12, 13, 13, 15, 15, 14, 14, 18, 18, 16, 16, 8, 8, 9, 9, 4, 5, 6, 7, 3, 
          2, 10, 10, 1, 0, 11, 11 ], 
      [ 18, 18, 16, 16, 14, 14, 15, 15, 12, 12, 13, 13, 17, 17, 19, 19, 5, 4, 7, 6, 9, 9, 8, 8, 
          11, 11, 2, 3, 10, 10, 0, 1 ], 
      [ 18, 18, 16, 16, 14, 14, 15, 15, 12, 12, 13, 13, 17, 17, 19, 19, 4, 5, 6, 7, 9, 9, 8, 8, 
          11, 11, 3, 2, 10, 10, 1, 0 ] ] )