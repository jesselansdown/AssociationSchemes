rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, 
          -2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 2*E(8)^3, -2*E(8), 
          -2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), -2*E(8), 2*E(8)^3, 2*E(8), 
          -2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 2*E(8), -2*E(8)^3, -2*E(8), 
          2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, 
          -2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(8)^3, -2*E(8), 
          -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2*E(8), 2*E(8)^3, 2*E(8), 
          -2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(8), -2*E(8)^3, -2*E(8), 
          2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 4, 5, 7, 6, 0, 1, 3, 2, 10, 10, 11, 11, 8, 8, 9, 9, 16, 16, 17, 17, 18, 18, 19, 19, 12, 
          12, 13, 13, 14, 14, 15, 15 ], 
      [ 5, 4, 6, 7, 1, 0, 2, 3, 10, 10, 11, 11, 8, 8, 9, 9, 16, 16, 17, 17, 18, 18, 19, 19, 12, 
          12, 13, 13, 14, 14, 15, 15 ], 
      [ 7, 6, 4, 5, 3, 2, 0, 1, 11, 11, 10, 10, 9, 9, 8, 8, 18, 18, 19, 19, 16, 16, 17, 17, 14, 
          14, 15, 15, 12, 12, 13, 13 ], 
      [ 6, 7, 5, 4, 2, 3, 1, 0, 11, 11, 10, 10, 9, 9, 8, 8, 18, 18, 19, 19, 16, 16, 17, 17, 14, 
          14, 15, 15, 12, 12, 13, 13 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 0, 1, 2, 3, 4, 5, 6, 7, 13, 13, 14, 14, 15, 15, 12, 12, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 9, 9, 8, 8, 11, 11, 10, 10, 1, 0, 3, 2, 5, 4, 7, 6, 13, 13, 14, 14, 15, 15, 12, 12, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 2, 3, 0, 1, 6, 7, 4, 5, 15, 15, 12, 12, 13, 13, 14, 14, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 8, 8, 9, 9, 10, 10, 11, 11, 3, 2, 1, 0, 7, 6, 5, 4, 15, 15, 12, 12, 13, 13, 14, 14, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 4, 5, 7, 6, 0, 1, 3, 2, 17, 17, 18, 18, 19, 19, 16, 16, 13, 
          13, 14, 14, 15, 15, 12, 12 ], 
      [ 11, 11, 10, 10, 9, 9, 8, 8, 5, 4, 6, 7, 1, 0, 2, 3, 17, 17, 18, 18, 19, 19, 16, 16, 13, 
          13, 14, 14, 15, 15, 12, 12 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 7, 6, 4, 5, 3, 2, 0, 1, 19, 19, 16, 16, 17, 17, 18, 18, 15, 
          15, 12, 12, 13, 13, 14, 14 ], 
      [ 10, 10, 11, 11, 8, 8, 9, 9, 6, 7, 5, 4, 2, 3, 1, 0, 19, 19, 16, 16, 17, 17, 18, 18, 15, 
          15, 12, 12, 13, 13, 14, 14 ], 
      [ 13, 13, 15, 15, 17, 17, 19, 19, 12, 12, 14, 14, 16, 16, 18, 18, 0, 1, 9, 9, 2, 3, 8, 8, 4, 
          5, 11, 11, 6, 7, 10, 10 ], 
      [ 13, 13, 15, 15, 17, 17, 19, 19, 12, 12, 14, 14, 16, 16, 18, 18, 1, 0, 9, 9, 3, 2, 8, 8, 5, 
          4, 11, 11, 7, 6, 10, 10 ], 
      [ 12, 12, 14, 14, 16, 16, 18, 18, 15, 15, 13, 13, 19, 19, 17, 17, 8, 8, 0, 1, 9, 9, 2, 3, 
          10, 10, 4, 5, 11, 11, 6, 7 ], 
      [ 12, 12, 14, 14, 16, 16, 18, 18, 15, 15, 13, 13, 19, 19, 17, 17, 8, 8, 1, 0, 9, 9, 3, 2, 
          10, 10, 5, 4, 11, 11, 7, 6 ], 
      [ 15, 15, 13, 13, 19, 19, 17, 17, 14, 14, 12, 12, 18, 18, 16, 16, 2, 3, 8, 8, 0, 1, 9, 9, 6, 
          7, 10, 10, 4, 5, 11, 11 ], 
      [ 15, 15, 13, 13, 19, 19, 17, 17, 14, 14, 12, 12, 18, 18, 16, 16, 3, 2, 8, 8, 1, 0, 9, 9, 7, 
          6, 10, 10, 5, 4, 11, 11 ], 
      [ 14, 14, 12, 12, 18, 18, 16, 16, 13, 13, 15, 15, 17, 17, 19, 19, 9, 9, 2, 3, 8, 8, 0, 1, 
          11, 11, 6, 7, 10, 10, 4, 5 ], 
      [ 14, 14, 12, 12, 18, 18, 16, 16, 13, 13, 15, 15, 17, 17, 19, 19, 9, 9, 3, 2, 8, 8, 1, 0, 
          11, 11, 7, 6, 10, 10, 5, 4 ], 
      [ 17, 17, 19, 19, 13, 13, 15, 15, 16, 16, 18, 18, 12, 12, 14, 14, 4, 5, 11, 11, 7, 6, 10, 
          10, 0, 1, 9, 9, 3, 2, 8, 8 ], 
      [ 17, 17, 19, 19, 13, 13, 15, 15, 16, 16, 18, 18, 12, 12, 14, 14, 5, 4, 11, 11, 6, 7, 10, 
          10, 1, 0, 9, 9, 2, 3, 8, 8 ], 
      [ 16, 16, 18, 18, 12, 12, 14, 14, 19, 19, 17, 17, 15, 15, 13, 13, 10, 10, 4, 5, 11, 11, 7, 
          6, 8, 8, 0, 1, 9, 9, 3, 2 ], 
      [ 16, 16, 18, 18, 12, 12, 14, 14, 19, 19, 17, 17, 15, 15, 13, 13, 10, 10, 5, 4, 11, 11, 6, 
          7, 8, 8, 1, 0, 9, 9, 2, 3 ], 
      [ 19, 19, 17, 17, 15, 15, 13, 13, 18, 18, 16, 16, 14, 14, 12, 12, 7, 6, 10, 10, 4, 5, 11, 
          11, 3, 2, 8, 8, 0, 1, 9, 9 ], 
      [ 19, 19, 17, 17, 15, 15, 13, 13, 18, 18, 16, 16, 14, 14, 12, 12, 6, 7, 10, 10, 5, 4, 11, 
          11, 2, 3, 8, 8, 1, 0, 9, 9 ], 
      [ 18, 18, 16, 16, 14, 14, 12, 12, 17, 17, 19, 19, 13, 13, 15, 15, 11, 11, 7, 6, 10, 10, 4, 
          5, 9, 9, 3, 2, 8, 8, 0, 1 ], 
      [ 18, 18, 16, 16, 14, 14, 12, 12, 17, 17, 19, 19, 13, 13, 15, 15, 11, 11, 6, 7, 10, 10, 5, 
          4, 9, 9, 2, 3, 8, 8, 1, 0 ] ] )