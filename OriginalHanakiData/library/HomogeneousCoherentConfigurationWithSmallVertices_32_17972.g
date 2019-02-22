rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 
          2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 2 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 
          -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2 ], 
      [ 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -4, -4, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ]
   ,
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 5, 7, 4, 6, 0, 3, 1, 2, 16, 16, 18, 18, 17, 17, 19, 19, 14, 14, 15, 15, 13, 13, 12, 12, 9, 
          9, 11, 11, 8, 8, 10, 10 ], 
      [ 4, 6, 7, 5, 2, 0, 3, 1, 18, 18, 16, 16, 19, 19, 17, 17, 15, 15, 14, 14, 12, 12, 13, 13, 8, 
          8, 10, 10, 9, 9, 11, 11 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 16, 16, 18, 18, 17, 17, 19, 19, 14, 14, 15, 15, 13, 13, 12, 12, 9, 
          9, 11, 11, 8, 8, 10, 10 ], 
      [ 6, 4, 5, 7, 3, 1, 2, 0, 18, 18, 16, 16, 19, 19, 17, 17, 15, 15, 14, 14, 12, 12, 13, 13, 8, 
          8, 10, 10, 9, 9, 11, 11 ], 
      [ 8, 8, 9, 9, 17, 19, 17, 19, 0, 1, 2, 3, 12, 12, 13, 13, 10, 10, 11, 11, 16, 16, 18, 18, 
          14, 14, 4, 6, 15, 15, 5, 7 ], 
      [ 8, 8, 9, 9, 17, 19, 17, 19, 1, 0, 3, 2, 12, 12, 13, 13, 10, 10, 11, 11, 16, 16, 18, 18, 
          14, 14, 6, 4, 15, 15, 7, 5 ], 
      [ 9, 9, 8, 8, 19, 17, 19, 17, 3, 2, 0, 1, 13, 13, 12, 12, 11, 11, 10, 10, 18, 18, 16, 16, 
          15, 15, 5, 7, 14, 14, 6, 4 ], 
      [ 9, 9, 8, 8, 19, 17, 19, 17, 2, 3, 1, 0, 13, 13, 12, 12, 11, 11, 10, 10, 18, 18, 16, 16, 
          15, 15, 7, 5, 14, 14, 4, 6 ], 
      [ 10, 10, 11, 11, 16, 18, 16, 18, 13, 13, 12, 12, 0, 1, 2, 3, 9, 9, 8, 8, 19, 19, 17, 17, 4, 
          6, 15, 15, 5, 7, 14, 14 ], 
      [ 10, 10, 11, 11, 16, 18, 16, 18, 13, 13, 12, 12, 1, 0, 3, 2, 9, 9, 8, 8, 19, 19, 17, 17, 6, 
          4, 15, 15, 7, 5, 14, 14 ], 
      [ 11, 11, 10, 10, 18, 16, 18, 16, 12, 12, 13, 13, 3, 2, 0, 1, 8, 8, 9, 9, 17, 17, 19, 19, 5, 
          7, 14, 14, 6, 4, 15, 15 ], 
      [ 11, 11, 10, 10, 18, 16, 18, 16, 12, 12, 13, 13, 2, 3, 1, 0, 8, 8, 9, 9, 17, 17, 19, 19, 7, 
          5, 14, 14, 4, 6, 15, 15 ], 
      [ 13, 13, 12, 12, 15, 14, 15, 14, 10, 10, 11, 11, 9, 9, 8, 8, 0, 1, 2, 3, 4, 6, 5, 7, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 13, 13, 12, 12, 15, 14, 15, 14, 10, 10, 11, 11, 9, 9, 8, 8, 1, 0, 3, 2, 6, 4, 7, 5, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 12, 12, 13, 13, 14, 15, 14, 15, 11, 11, 10, 10, 8, 8, 9, 9, 3, 2, 0, 1, 5, 7, 6, 4, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 12, 12, 13, 13, 14, 15, 14, 15, 11, 11, 10, 10, 8, 8, 9, 9, 2, 3, 1, 0, 7, 5, 4, 6, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 15, 15, 14, 14, 12, 13, 12, 13, 17, 17, 19, 19, 18, 18, 16, 16, 5, 7, 4, 6, 0, 1, 3, 2, 
          10, 10, 9, 9, 11, 11, 8, 8 ], 
      [ 15, 15, 14, 14, 12, 13, 12, 13, 17, 17, 19, 19, 18, 18, 16, 16, 7, 5, 6, 4, 1, 0, 2, 3, 
          10, 10, 9, 9, 11, 11, 8, 8 ], 
      [ 14, 14, 15, 15, 13, 12, 13, 12, 19, 19, 17, 17, 16, 16, 18, 18, 4, 6, 7, 5, 2, 3, 0, 1, 
          11, 11, 8, 8, 10, 10, 9, 9 ], 
      [ 14, 14, 15, 15, 13, 12, 13, 12, 19, 19, 17, 17, 16, 16, 18, 18, 6, 4, 5, 7, 3, 2, 1, 0, 
          11, 11, 8, 8, 10, 10, 9, 9 ], 
      [ 17, 17, 19, 19, 9, 8, 9, 8, 15, 15, 14, 14, 5, 7, 4, 6, 18, 18, 16, 16, 10, 10, 11, 11, 0, 
          1, 12, 12, 3, 2, 13, 13 ], 
      [ 17, 17, 19, 19, 9, 8, 9, 8, 15, 15, 14, 14, 7, 5, 6, 4, 18, 18, 16, 16, 10, 10, 11, 11, 1, 
          0, 12, 12, 2, 3, 13, 13 ], 
      [ 16, 16, 18, 18, 11, 10, 11, 10, 5, 7, 4, 6, 14, 14, 15, 15, 17, 17, 19, 19, 9, 9, 8, 8, 
          13, 13, 0, 1, 12, 12, 3, 2 ], 
      [ 16, 16, 18, 18, 11, 10, 11, 10, 7, 5, 6, 4, 14, 14, 15, 15, 17, 17, 19, 19, 9, 9, 8, 8, 
          13, 13, 1, 0, 12, 12, 2, 3 ], 
      [ 19, 19, 17, 17, 8, 9, 8, 9, 14, 14, 15, 15, 4, 6, 7, 5, 16, 16, 18, 18, 11, 11, 10, 10, 2, 
          3, 13, 13, 0, 1, 12, 12 ], 
      [ 19, 19, 17, 17, 8, 9, 8, 9, 14, 14, 15, 15, 6, 4, 5, 7, 16, 16, 18, 18, 11, 11, 10, 10, 3, 
          2, 13, 13, 1, 0, 12, 12 ], 
      [ 18, 18, 16, 16, 10, 11, 10, 11, 4, 6, 7, 5, 15, 15, 14, 14, 19, 19, 17, 17, 8, 8, 9, 9, 
          12, 12, 2, 3, 13, 13, 0, 1 ], 
      [ 18, 18, 16, 16, 10, 11, 10, 11, 6, 4, 5, 7, 15, 15, 14, 14, 19, 19, 17, 17, 8, 8, 9, 9, 
          12, 12, 3, 2, 13, 13, 1, 0 ] ] )