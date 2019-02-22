rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 2, 2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
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
      [ 3, 2, 0, 1, 5, 6, 7, 4, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 9, 9, 8, 8, 11, 11, 10, 10, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 5, 7, 4, 6, 0, 3, 1, 2, 10, 10, 11, 11, 9, 9, 8, 8, 13, 13, 14, 14, 15, 15, 12, 12, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 4, 6, 7, 5, 2, 0, 3, 1, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 12, 12, 13, 13, 14, 14, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 10, 10, 11, 11, 9, 9, 8, 8, 13, 13, 14, 14, 15, 15, 12, 12, 17, 
          17, 18, 18, 19, 19, 16, 16 ], 
      [ 6, 4, 5, 7, 3, 1, 2, 0, 11, 11, 10, 10, 8, 8, 9, 9, 15, 15, 12, 12, 13, 13, 14, 14, 19, 
          19, 16, 16, 17, 17, 18, 18 ], 
      [ 8, 8, 9, 9, 11, 10, 11, 10, 0, 1, 2, 3, 5, 7, 4, 6, 17, 17, 18, 18, 19, 19, 16, 16, 15, 
          15, 12, 12, 13, 13, 14, 14 ], 
      [ 8, 8, 9, 9, 11, 10, 11, 10, 1, 0, 3, 2, 7, 5, 6, 4, 17, 17, 18, 18, 19, 19, 16, 16, 15, 
          15, 12, 12, 13, 13, 14, 14 ], 
      [ 9, 9, 8, 8, 10, 11, 10, 11, 3, 2, 0, 1, 6, 4, 5, 7, 19, 19, 16, 16, 17, 17, 18, 18, 13, 
          13, 14, 14, 15, 15, 12, 12 ], 
      [ 9, 9, 8, 8, 10, 11, 10, 11, 2, 3, 1, 0, 4, 6, 7, 5, 19, 19, 16, 16, 17, 17, 18, 18, 13, 
          13, 14, 14, 15, 15, 12, 12 ], 
      [ 11, 11, 10, 10, 9, 8, 9, 8, 4, 6, 7, 5, 0, 1, 2, 3, 16, 16, 17, 17, 18, 18, 19, 19, 14, 
          14, 15, 15, 12, 12, 13, 13 ], 
      [ 11, 11, 10, 10, 9, 8, 9, 8, 6, 4, 5, 7, 1, 0, 3, 2, 16, 16, 17, 17, 18, 18, 19, 19, 14, 
          14, 15, 15, 12, 12, 13, 13 ], 
      [ 10, 10, 11, 11, 8, 9, 8, 9, 5, 7, 4, 6, 3, 2, 0, 1, 18, 18, 19, 19, 16, 16, 17, 17, 12, 
          12, 13, 13, 14, 14, 15, 15 ], 
      [ 10, 10, 11, 11, 8, 9, 8, 9, 7, 5, 6, 4, 2, 3, 1, 0, 18, 18, 19, 19, 16, 16, 17, 17, 12, 
          12, 13, 13, 14, 14, 15, 15 ], 
      [ 13, 13, 15, 15, 12, 14, 12, 14, 16, 16, 18, 18, 17, 17, 19, 19, 0, 1, 5, 7, 2, 3, 4, 6, 
          10, 10, 9, 9, 11, 11, 8, 8 ], 
      [ 13, 13, 15, 15, 12, 14, 12, 14, 16, 16, 18, 18, 17, 17, 19, 19, 1, 0, 7, 5, 3, 2, 6, 4, 
          10, 10, 9, 9, 11, 11, 8, 8 ], 
      [ 12, 12, 14, 14, 15, 13, 15, 13, 19, 19, 17, 17, 16, 16, 18, 18, 4, 6, 0, 1, 7, 5, 2, 3, 8, 
          8, 10, 10, 9, 9, 11, 11 ], 
      [ 12, 12, 14, 14, 15, 13, 15, 13, 19, 19, 17, 17, 16, 16, 18, 18, 6, 4, 1, 0, 5, 7, 3, 2, 8, 
          8, 10, 10, 9, 9, 11, 11 ], 
      [ 15, 15, 13, 13, 14, 12, 14, 12, 18, 18, 16, 16, 19, 19, 17, 17, 3, 2, 6, 4, 0, 1, 5, 7, 
          11, 11, 8, 8, 10, 10, 9, 9 ], 
      [ 15, 15, 13, 13, 14, 12, 14, 12, 18, 18, 16, 16, 19, 19, 17, 17, 2, 3, 4, 6, 1, 0, 7, 5, 
          11, 11, 8, 8, 10, 10, 9, 9 ], 
      [ 14, 14, 12, 12, 13, 15, 13, 15, 17, 17, 19, 19, 18, 18, 16, 16, 5, 7, 3, 2, 4, 6, 0, 1, 9, 
          9, 11, 11, 8, 8, 10, 10 ], 
      [ 14, 14, 12, 12, 13, 15, 13, 15, 17, 17, 19, 19, 18, 18, 16, 16, 7, 5, 2, 3, 6, 4, 1, 0, 9, 
          9, 11, 11, 8, 8, 10, 10 ], 
      [ 17, 17, 19, 19, 16, 18, 16, 18, 14, 14, 12, 12, 15, 15, 13, 13, 11, 11, 8, 8, 10, 10, 9, 
          9, 0, 1, 5, 7, 2, 3, 4, 6 ], 
      [ 17, 17, 19, 19, 16, 18, 16, 18, 14, 14, 12, 12, 15, 15, 13, 13, 11, 11, 8, 8, 10, 10, 9, 
          9, 1, 0, 7, 5, 3, 2, 6, 4 ], 
      [ 16, 16, 18, 18, 19, 17, 19, 17, 13, 13, 15, 15, 14, 14, 12, 12, 9, 9, 11, 11, 8, 8, 10, 
          10, 4, 6, 0, 1, 7, 5, 2, 3 ], 
      [ 16, 16, 18, 18, 19, 17, 19, 17, 13, 13, 15, 15, 14, 14, 12, 12, 9, 9, 11, 11, 8, 8, 10, 
          10, 6, 4, 1, 0, 5, 7, 3, 2 ], 
      [ 19, 19, 17, 17, 18, 16, 18, 16, 12, 12, 14, 14, 13, 13, 15, 15, 10, 10, 9, 9, 11, 11, 8, 
          8, 3, 2, 6, 4, 0, 1, 5, 7 ], 
      [ 19, 19, 17, 17, 18, 16, 18, 16, 12, 12, 14, 14, 13, 13, 15, 15, 10, 10, 9, 9, 11, 11, 8, 
          8, 2, 3, 4, 6, 1, 0, 7, 5 ], 
      [ 18, 18, 16, 16, 17, 19, 17, 19, 15, 15, 13, 13, 12, 12, 14, 14, 8, 8, 10, 10, 9, 9, 11, 
          11, 5, 7, 3, 2, 4, 6, 0, 1 ], 
      [ 18, 18, 16, 16, 17, 19, 17, 19, 15, 15, 13, 13, 12, 12, 14, 14, 8, 8, 10, 10, 9, 9, 11, 
          11, 7, 5, 2, 3, 6, 4, 1, 0 ] ] )