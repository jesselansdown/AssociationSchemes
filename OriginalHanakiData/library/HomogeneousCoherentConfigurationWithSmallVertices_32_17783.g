rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2, -2, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 
          2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, 2 ], 
      [ 2, 2, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, 
          -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2 ], 
      [ 2, 2, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, -4, -4, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 8, 8, 9, 9, 10, 
          10, 11, 11, 12, 12, 13, 13 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 8, 8, 9, 9, 10, 
          10, 11, 11, 12, 12, 13, 13 ], 
      [ 4, 5, 7, 6, 0, 1, 3, 2, 15, 15, 14, 14, 18, 18, 19, 19, 16, 16, 17, 17, 9, 9, 8, 8, 12, 
          12, 13, 13, 10, 10, 11, 11 ], 
      [ 5, 4, 6, 7, 1, 0, 2, 3, 15, 15, 14, 14, 18, 18, 19, 19, 16, 16, 17, 17, 9, 9, 8, 8, 12, 
          12, 13, 13, 10, 10, 11, 11 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 9, 9, 8, 8, 12, 12, 13, 13, 10, 10, 11, 11, 15, 15, 14, 14, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 9, 9, 8, 8, 12, 12, 13, 13, 10, 10, 11, 11, 15, 15, 14, 14, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 8, 8, 15, 15, 14, 14, 9, 9, 0, 1, 6, 7, 17, 17, 18, 18, 19, 19, 16, 16, 4, 5, 2, 3, 13, 
          13, 10, 10, 11, 11, 12, 12 ], 
      [ 8, 8, 15, 15, 14, 14, 9, 9, 1, 0, 7, 6, 17, 17, 18, 18, 19, 19, 16, 16, 5, 4, 3, 2, 13, 
          13, 10, 10, 11, 11, 12, 12 ], 
      [ 9, 9, 14, 14, 15, 15, 8, 8, 7, 6, 0, 1, 19, 19, 16, 16, 17, 17, 18, 18, 3, 2, 4, 5, 11, 
          11, 12, 12, 13, 13, 10, 10 ], 
      [ 9, 9, 14, 14, 15, 15, 8, 8, 6, 7, 1, 0, 19, 19, 16, 16, 17, 17, 18, 18, 2, 3, 5, 4, 11, 
          11, 12, 12, 13, 13, 10, 10 ], 
      [ 10, 10, 17, 17, 19, 19, 12, 12, 16, 16, 18, 18, 0, 1, 15, 15, 6, 7, 14, 14, 13, 13, 11, 
          11, 8, 8, 2, 3, 9, 9, 4, 5 ], 
      [ 10, 10, 17, 17, 19, 19, 12, 12, 16, 16, 18, 18, 1, 0, 15, 15, 7, 6, 14, 14, 13, 13, 11, 
          11, 8, 8, 3, 2, 9, 9, 5, 4 ], 
      [ 11, 11, 16, 16, 18, 18, 13, 13, 19, 19, 17, 17, 14, 14, 0, 1, 15, 15, 6, 7, 10, 10, 12, 
          12, 2, 3, 9, 9, 4, 5, 8, 8 ], 
      [ 11, 11, 16, 16, 18, 18, 13, 13, 19, 19, 17, 17, 14, 14, 1, 0, 15, 15, 7, 6, 10, 10, 12, 
          12, 3, 2, 9, 9, 5, 4, 8, 8 ], 
      [ 12, 12, 19, 19, 17, 17, 10, 10, 18, 18, 16, 16, 7, 6, 14, 14, 0, 1, 15, 15, 11, 11, 13, 
          13, 9, 9, 4, 5, 8, 8, 3, 2 ], 
      [ 12, 12, 19, 19, 17, 17, 10, 10, 18, 18, 16, 16, 6, 7, 14, 14, 1, 0, 15, 15, 11, 11, 13, 
          13, 9, 9, 5, 4, 8, 8, 2, 3 ], 
      [ 13, 13, 18, 18, 16, 16, 11, 11, 17, 17, 19, 19, 15, 15, 7, 6, 14, 14, 0, 1, 12, 12, 10, 
          10, 4, 5, 8, 8, 3, 2, 9, 9 ], 
      [ 13, 13, 18, 18, 16, 16, 11, 11, 17, 17, 19, 19, 15, 15, 6, 7, 14, 14, 1, 0, 12, 12, 10, 
          10, 5, 4, 8, 8, 2, 3, 9, 9 ], 
      [ 15, 15, 8, 8, 9, 9, 14, 14, 4, 5, 3, 2, 13, 13, 10, 10, 11, 11, 12, 12, 0, 1, 7, 6, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 15, 15, 8, 8, 9, 9, 14, 14, 5, 4, 2, 3, 13, 13, 10, 10, 11, 11, 12, 12, 1, 0, 6, 7, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 14, 14, 9, 9, 8, 8, 15, 15, 2, 3, 4, 5, 11, 11, 12, 12, 13, 13, 10, 10, 6, 7, 0, 1, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 14, 14, 9, 9, 8, 8, 15, 15, 3, 2, 5, 4, 11, 11, 12, 12, 13, 13, 10, 10, 7, 6, 1, 0, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 17, 17, 10, 10, 12, 12, 19, 19, 13, 13, 11, 11, 8, 8, 2, 3, 9, 9, 4, 5, 16, 16, 18, 18, 0, 
          1, 15, 15, 6, 7, 14, 14 ], 
      [ 17, 17, 10, 10, 12, 12, 19, 19, 13, 13, 11, 11, 8, 8, 3, 2, 9, 9, 5, 4, 16, 16, 18, 18, 1, 
          0, 15, 15, 7, 6, 14, 14 ], 
      [ 16, 16, 11, 11, 13, 13, 18, 18, 10, 10, 12, 12, 2, 3, 9, 9, 4, 5, 8, 8, 19, 19, 17, 17, 
          14, 14, 0, 1, 15, 15, 6, 7 ], 
      [ 16, 16, 11, 11, 13, 13, 18, 18, 10, 10, 12, 12, 3, 2, 9, 9, 5, 4, 8, 8, 19, 19, 17, 17, 
          14, 14, 1, 0, 15, 15, 7, 6 ], 
      [ 19, 19, 12, 12, 10, 10, 17, 17, 11, 11, 13, 13, 9, 9, 4, 5, 8, 8, 3, 2, 18, 18, 16, 16, 7, 
          6, 14, 14, 0, 1, 15, 15 ], 
      [ 19, 19, 12, 12, 10, 10, 17, 17, 11, 11, 13, 13, 9, 9, 5, 4, 8, 8, 2, 3, 18, 18, 16, 16, 6, 
          7, 14, 14, 1, 0, 15, 15 ], 
      [ 18, 18, 13, 13, 11, 11, 16, 16, 12, 12, 10, 10, 4, 5, 8, 8, 3, 2, 9, 9, 17, 17, 19, 19, 
          15, 15, 7, 6, 14, 14, 0, 1 ], 
      [ 18, 18, 13, 13, 11, 11, 16, 16, 12, 12, 10, 10, 5, 4, 8, 8, 2, 3, 9, 9, 17, 17, 19, 19, 
          15, 15, 6, 7, 14, 14, 1, 0 ] ] )