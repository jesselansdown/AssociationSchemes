rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(16), 
          -2*E(16)^7, -2*E(16), 2*E(16)^7, -2*E(16)^5, 2*E(16)^3, 2*E(16)^5, -2*E(16)^3, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(16), 
          2*E(16)^7, 2*E(16), -2*E(16)^7, 2*E(16)^5, -2*E(16)^3, -2*E(16)^5, 2*E(16)^3, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(16)^5, 
          -2*E(16)^3, -2*E(16)^5, 2*E(16)^3, 2*E(16), -2*E(16)^7, -2*E(16), 2*E(16)^7, 1 ], 
      [ 1, -1, 1, -1, E(4), -E(4), E(4), -E(4), -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(16)^5, 
          2*E(16)^3, 2*E(16)^5, -2*E(16)^3, -2*E(16), 2*E(16)^7, 2*E(16), -2*E(16)^7, 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 2*E(16)^3, 
          -2*E(16)^5, -2*E(16)^3, 2*E(16)^5, 2*E(16)^7, -2*E(16), -2*E(16)^7, 2*E(16), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), -2*E(16)^3, 
          2*E(16)^5, 2*E(16)^3, -2*E(16)^5, -2*E(16)^7, 2*E(16), 2*E(16)^7, -2*E(16), 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 2*E(16)^7, 
          -2*E(16), -2*E(16)^7, 2*E(16), -2*E(16)^3, 2*E(16)^5, 2*E(16)^3, -2*E(16)^5, 1 ], 
      [ 1, -1, 1, -1, -E(4), E(4), -E(4), E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), -2*E(16)^7, 
          2*E(16), 2*E(16)^7, -2*E(16), 2*E(16)^3, -2*E(16)^5, -2*E(16)^3, 2*E(16)^5, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(8), -2*E(8)^3, 2*E(8), 
          -2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), -2*E(8), 2*E(8)^3, -2*E(8), 
          2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 2*E(8)^3, -2*E(8), 2*E(8)^3, 
          -2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(8)^3, 2*E(8), 
          -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, -2, 
          -2, 1 ], [ 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 
         ], [ 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17, 18, 18, 19, 19 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 
          16, 17, 17, 18, 18, 19, 19 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 10, 10, 11, 11, 8, 8, 9, 9, 14, 14, 15, 15, 12, 12, 13, 13, 18, 
          18, 19, 19, 16, 16, 17, 17 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 9, 10, 10, 11, 11, 8, 8, 16, 16, 19, 19, 18, 18, 17, 17, 14, 
          14, 13, 13, 12, 12, 15, 15 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 11, 8, 8, 9, 9, 10, 10, 18, 18, 17, 17, 16, 16, 19, 19, 12, 
          12, 15, 15, 14, 14, 13, 13 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 9, 9, 10, 10, 11, 11, 8, 8, 16, 16, 19, 19, 18, 18, 17, 17, 14, 
          14, 13, 13, 12, 12, 15, 15 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 11, 11, 8, 8, 9, 9, 10, 10, 18, 18, 17, 17, 16, 16, 19, 19, 12, 
          12, 15, 15, 14, 14, 13, 13 ], 
      [ 9, 11, 9, 11, 8, 10, 8, 10, 0, 2, 5, 7, 1, 3, 4, 6, 13, 13, 16, 16, 15, 15, 18, 18, 19, 
          19, 12, 12, 17, 17, 14, 14 ], 
      [ 9, 11, 9, 11, 8, 10, 8, 10, 2, 0, 7, 5, 3, 1, 6, 4, 13, 13, 16, 16, 15, 15, 18, 18, 19, 
          19, 12, 12, 17, 17, 14, 14 ], 
      [ 8, 10, 8, 10, 11, 9, 11, 9, 4, 6, 0, 2, 5, 7, 1, 3, 17, 17, 12, 12, 19, 19, 14, 14, 13, 
          13, 18, 18, 15, 15, 16, 16 ], 
      [ 8, 10, 8, 10, 11, 9, 11, 9, 6, 4, 2, 0, 7, 5, 3, 1, 17, 17, 12, 12, 19, 19, 14, 14, 13, 
          13, 18, 18, 15, 15, 16, 16 ], 
      [ 11, 9, 11, 9, 10, 8, 10, 8, 1, 3, 4, 6, 0, 2, 5, 7, 15, 15, 18, 18, 13, 13, 16, 16, 17, 
          17, 14, 14, 19, 19, 12, 12 ], 
      [ 11, 9, 11, 9, 10, 8, 10, 8, 3, 1, 6, 4, 2, 0, 7, 5, 15, 15, 18, 18, 13, 13, 16, 16, 17, 
          17, 14, 14, 19, 19, 12, 12 ], 
      [ 10, 8, 10, 8, 9, 11, 9, 11, 5, 7, 1, 3, 4, 6, 0, 2, 19, 19, 14, 14, 17, 17, 12, 12, 15, 
          15, 16, 16, 13, 13, 18, 18 ], 
      [ 10, 8, 10, 8, 9, 11, 9, 11, 7, 5, 3, 1, 6, 4, 2, 0, 19, 19, 14, 14, 17, 17, 12, 12, 15, 
          15, 16, 16, 13, 13, 18, 18 ], 
      [ 13, 15, 13, 15, 17, 19, 17, 19, 12, 12, 16, 16, 14, 14, 18, 18, 0, 2, 9, 9, 1, 3, 11, 11, 
          5, 7, 8, 8, 4, 6, 10, 10 ], 
      [ 13, 15, 13, 15, 17, 19, 17, 19, 12, 12, 16, 16, 14, 14, 18, 18, 2, 0, 9, 9, 3, 1, 11, 11, 
          7, 5, 8, 8, 6, 4, 10, 10 ], 
      [ 12, 14, 12, 14, 18, 16, 18, 16, 17, 17, 13, 13, 19, 19, 15, 15, 8, 8, 0, 2, 10, 10, 1, 3, 
          9, 9, 4, 6, 11, 11, 5, 7 ], 
      [ 12, 14, 12, 14, 18, 16, 18, 16, 17, 17, 13, 13, 19, 19, 15, 15, 8, 8, 2, 0, 10, 10, 3, 1, 
          9, 9, 6, 4, 11, 11, 7, 5 ], 
      [ 15, 13, 15, 13, 19, 17, 19, 17, 14, 14, 18, 18, 12, 12, 16, 16, 1, 3, 11, 11, 0, 2, 9, 9, 
          4, 6, 10, 10, 5, 7, 8, 8 ], 
      [ 15, 13, 15, 13, 19, 17, 19, 17, 14, 14, 18, 18, 12, 12, 16, 16, 3, 1, 11, 11, 2, 0, 9, 9, 
          6, 4, 10, 10, 7, 5, 8, 8 ], 
      [ 14, 12, 14, 12, 16, 18, 16, 18, 19, 19, 15, 15, 17, 17, 13, 13, 10, 10, 1, 3, 8, 8, 0, 2, 
          11, 11, 5, 7, 9, 9, 4, 6 ], 
      [ 14, 12, 14, 12, 16, 18, 16, 18, 19, 19, 15, 15, 17, 17, 13, 13, 10, 10, 3, 1, 8, 8, 2, 0, 
          11, 11, 7, 5, 9, 9, 6, 4 ], 
      [ 17, 19, 17, 19, 15, 13, 15, 13, 18, 18, 12, 12, 16, 16, 14, 14, 4, 6, 8, 8, 5, 7, 10, 10, 
          0, 2, 11, 11, 1, 3, 9, 9 ], 
      [ 17, 19, 17, 19, 15, 13, 15, 13, 18, 18, 12, 12, 16, 16, 14, 14, 6, 4, 8, 8, 7, 5, 10, 10, 
          2, 0, 11, 11, 3, 1, 9, 9 ], 
      [ 16, 18, 16, 18, 12, 14, 12, 14, 13, 13, 19, 19, 15, 15, 17, 17, 9, 9, 5, 7, 11, 11, 4, 6, 
          10, 10, 0, 2, 8, 8, 1, 3 ], 
      [ 16, 18, 16, 18, 12, 14, 12, 14, 13, 13, 19, 19, 15, 15, 17, 17, 9, 9, 7, 5, 11, 11, 6, 4, 
          10, 10, 2, 0, 8, 8, 3, 1 ], 
      [ 19, 17, 19, 17, 13, 15, 13, 15, 16, 16, 14, 14, 18, 18, 12, 12, 5, 7, 10, 10, 4, 6, 8, 8, 
          1, 3, 9, 9, 0, 2, 11, 11 ], 
      [ 19, 17, 19, 17, 13, 15, 13, 15, 16, 16, 14, 14, 18, 18, 12, 12, 7, 5, 10, 10, 6, 4, 8, 8, 
          3, 1, 9, 9, 2, 0, 11, 11 ], 
      [ 18, 16, 18, 16, 14, 12, 14, 12, 15, 15, 17, 17, 13, 13, 19, 19, 11, 11, 4, 6, 9, 9, 5, 7, 
          8, 8, 1, 3, 10, 10, 0, 2 ], 
      [ 18, 16, 18, 16, 14, 12, 14, 12, 15, 15, 17, 17, 13, 13, 19, 19, 11, 11, 6, 4, 9, 9, 7, 5, 
          8, 8, 3, 1, 10, 10, 2, 0 ] ] )