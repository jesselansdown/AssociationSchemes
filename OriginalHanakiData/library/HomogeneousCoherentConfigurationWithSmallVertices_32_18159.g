rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), E(8), -E(8)^3, E(8), -E(8)^3, -E(8), E(8)^3, 
          -E(8), E(8)^3, 2*E(16), -2*E(16)^7, -2*E(16), 2*E(16)^7, -2*E(16)^5, 2*E(16)^3, 
          2*E(16)^5, -2*E(16)^3, 1 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), E(8), -E(8)^3, E(8), -E(8)^3, -E(8), E(8)^3, 
          -E(8), E(8)^3, -2*E(16), 2*E(16)^7, 2*E(16), -2*E(16)^7, 2*E(16)^5, -2*E(16)^3, 
          -2*E(16)^5, 2*E(16)^3, 1 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), -E(8), E(8)^3, -E(8), E(8)^3, E(8), -E(8)^3, E(8), 
          -E(8)^3, 2*E(16)^5, -2*E(16)^3, -2*E(16)^5, 2*E(16)^3, 2*E(16), -2*E(16)^7, -2*E(16), 
          2*E(16)^7, 1 ], [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), -E(8), E(8)^3, -E(8), E(8)^3, 
          E(8), -E(8)^3, E(8), -E(8)^3, -2*E(16)^5, 2*E(16)^3, 2*E(16)^5, -2*E(16)^3, -2*E(16), 
          2*E(16)^7, 2*E(16), -2*E(16)^7, 1 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), E(8)^3, -E(8), E(8)^3, -E(8), -E(8)^3, E(8), 
          -E(8)^3, E(8), 2*E(16)^3, -2*E(16)^5, -2*E(16)^3, 2*E(16)^5, 2*E(16)^7, -2*E(16), 
          -2*E(16)^7, 2*E(16), 1 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), E(8)^3, -E(8), E(8)^3, -E(8), -E(8)^3, E(8), 
          -E(8)^3, E(8), -2*E(16)^3, 2*E(16)^5, 2*E(16)^3, -2*E(16)^5, -2*E(16)^7, 2*E(16), 
          2*E(16)^7, -2*E(16), 1 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -E(8)^3, E(8), -E(8)^3, E(8), E(8)^3, -E(8), 
          E(8)^3, -E(8), 2*E(16)^7, -2*E(16), -2*E(16)^7, 2*E(16), -2*E(16)^3, 2*E(16)^5, 
          2*E(16)^3, -2*E(16)^5, 1 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), -E(8)^3, E(8), -E(8)^3, E(8), E(8)^3, -E(8), 
          E(8)^3, -E(8), -2*E(16)^7, 2*E(16), 2*E(16)^7, -2*E(16), 2*E(16)^3, -2*E(16)^5, 
          -2*E(16)^3, 2*E(16)^5, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), 2*E(8), 
          -2*E(8)^3, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), -2*E(8), 
          2*E(8)^3, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), 2*E(8)^3, 
          -2*E(8), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), -2*E(8)^3, 2*E(8), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -2*E(8)^3, 
          2*E(8), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 2*E(8)^3, -2*E(8), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, E(16), -E(16)^7, -E(16), E(16)^7, 
          -E(16)^5, E(16)^3, E(16)^5, -E(16)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, -E(16), E(16)^7, E(16), -E(16)^7, 
          E(16)^5, -E(16)^3, -E(16)^5, E(16)^3, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, E(16)^5, -E(16)^3, -E(16)^5, E(16)^3, 
          E(16), -E(16)^7, -E(16), E(16)^7, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, -E(16)^5, E(16)^3, E(16)^5, -E(16)^3, 
          -E(16), E(16)^7, E(16), -E(16)^7, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), E(16)^3, -E(16)^5, -E(16)^3, E(16)^5, 
          E(16)^7, -E(16), -E(16)^7, E(16), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), -E(16)^3, E(16)^5, E(16)^3, -E(16)^5, 
          -E(16)^7, E(16), E(16)^7, -E(16), 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), E(16)^7, -E(16), -E(16)^7, E(16), 
          -E(16)^3, E(16)^5, E(16)^3, -E(16)^5, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), -E(16)^7, E(16), E(16)^7, -E(16), 
          E(16)^3, -E(16)^5, -E(16)^3, E(16)^5, 0, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 6, 7, 4, 5, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 12, 15, 14, 13, 10, 9, 8, 11, 18, 18, 19, 19, 16, 16, 17, 17, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 14, 13, 12, 15, 8, 11, 10, 9, 18, 18, 19, 19, 16, 16, 17, 17, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 5, 7, 4, 6, 0, 3, 1, 2, 9, 12, 11, 14, 15, 8, 13, 10, 20, 20, 23, 23, 22, 22, 21, 21, 18, 
          18, 17, 17, 16, 16, 19, 19 ], 
      [ 4, 6, 7, 5, 2, 0, 3, 1, 13, 8, 15, 10, 9, 14, 11, 12, 22, 22, 21, 21, 20, 20, 23, 23, 16, 
          16, 19, 19, 18, 18, 17, 17 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 11, 14, 9, 12, 13, 10, 15, 8, 20, 20, 23, 23, 22, 22, 21, 21, 18, 
          18, 17, 17, 16, 16, 19, 19 ], 
      [ 6, 4, 5, 7, 3, 1, 2, 0, 15, 10, 13, 8, 11, 12, 9, 14, 22, 22, 21, 21, 20, 20, 23, 23, 16, 
          16, 19, 19, 18, 18, 17, 17 ], 
      [ 9, 11, 13, 15, 8, 12, 10, 14, 0, 5, 1, 7, 3, 4, 2, 6, 17, 17, 20, 20, 19, 19, 22, 22, 23, 
          23, 16, 16, 21, 21, 18, 18 ], 
      [ 8, 10, 14, 12, 13, 9, 15, 11, 4, 0, 6, 1, 5, 2, 7, 3, 21, 21, 16, 16, 23, 23, 18, 18, 17, 
          17, 22, 22, 19, 19, 20, 20 ], 
      [ 11, 9, 15, 13, 10, 14, 8, 12, 1, 7, 0, 5, 2, 6, 3, 4, 17, 17, 20, 20, 19, 19, 22, 22, 23, 
          23, 16, 16, 21, 21, 18, 18 ], 
      [ 10, 8, 12, 14, 15, 11, 13, 9, 6, 1, 4, 0, 7, 3, 5, 2, 21, 21, 16, 16, 23, 23, 18, 18, 17, 
          17, 22, 22, 19, 19, 20, 20 ], 
      [ 13, 15, 11, 9, 14, 8, 12, 10, 2, 4, 3, 6, 0, 7, 1, 5, 19, 19, 22, 22, 17, 17, 20, 20, 21, 
          21, 18, 18, 23, 23, 16, 16 ], 
      [ 12, 14, 8, 10, 9, 15, 11, 13, 5, 3, 7, 2, 6, 0, 4, 1, 23, 23, 18, 18, 21, 21, 16, 16, 19, 
          19, 20, 20, 17, 17, 22, 22 ], 
      [ 15, 13, 9, 11, 12, 10, 14, 8, 3, 6, 2, 4, 1, 5, 0, 7, 19, 19, 22, 22, 17, 17, 20, 20, 21, 
          21, 18, 18, 23, 23, 16, 16 ], 
      [ 14, 12, 10, 8, 11, 13, 9, 15, 7, 2, 5, 3, 4, 1, 6, 0, 23, 23, 18, 18, 21, 21, 16, 16, 19, 
          19, 20, 20, 17, 17, 22, 22 ], 
      [ 17, 17, 19, 19, 21, 23, 21, 23, 16, 20, 16, 20, 18, 22, 18, 22, 0, 1, 9, 11, 2, 3, 13, 15, 
          5, 7, 8, 10, 4, 6, 12, 14 ], 
      [ 17, 17, 19, 19, 21, 23, 21, 23, 16, 20, 16, 20, 18, 22, 18, 22, 1, 0, 11, 9, 3, 2, 15, 13, 
          7, 5, 10, 8, 6, 4, 14, 12 ], 
      [ 16, 16, 18, 18, 22, 20, 22, 20, 21, 17, 21, 17, 23, 19, 23, 19, 8, 10, 0, 1, 14, 12, 2, 3, 
          9, 11, 4, 6, 13, 15, 5, 7 ], 
      [ 16, 16, 18, 18, 22, 20, 22, 20, 21, 17, 21, 17, 23, 19, 23, 19, 10, 8, 1, 0, 12, 14, 3, 2, 
          11, 9, 6, 4, 15, 13, 7, 5 ], 
      [ 19, 19, 17, 17, 23, 21, 23, 21, 18, 22, 18, 22, 16, 20, 16, 20, 3, 2, 15, 13, 0, 1, 9, 11, 
          6, 4, 12, 14, 5, 7, 10, 8 ], 
      [ 19, 19, 17, 17, 23, 21, 23, 21, 18, 22, 18, 22, 16, 20, 16, 20, 2, 3, 13, 15, 1, 0, 11, 9, 
          4, 6, 14, 12, 7, 5, 8, 10 ], 
      [ 18, 18, 16, 16, 20, 22, 20, 22, 23, 19, 23, 19, 21, 17, 21, 17, 12, 14, 3, 2, 8, 10, 0, 1, 
          15, 13, 5, 7, 9, 11, 6, 4 ], 
      [ 18, 18, 16, 16, 20, 22, 20, 22, 23, 19, 23, 19, 21, 17, 21, 17, 14, 12, 2, 3, 10, 8, 1, 0, 
          13, 15, 7, 5, 11, 9, 4, 6 ], 
      [ 21, 21, 23, 23, 19, 17, 19, 17, 22, 16, 22, 16, 20, 18, 20, 18, 4, 6, 8, 10, 7, 5, 14, 12, 
          0, 1, 13, 15, 2, 3, 9, 11 ], 
      [ 21, 21, 23, 23, 19, 17, 19, 17, 22, 16, 22, 16, 20, 18, 20, 18, 6, 4, 10, 8, 5, 7, 12, 14, 
          1, 0, 15, 13, 3, 2, 11, 9 ], 
      [ 20, 20, 22, 22, 16, 18, 16, 18, 17, 23, 17, 23, 19, 21, 19, 21, 9, 11, 5, 7, 13, 15, 4, 6, 
          12, 14, 0, 1, 8, 10, 3, 2 ], 
      [ 20, 20, 22, 22, 16, 18, 16, 18, 17, 23, 17, 23, 19, 21, 19, 21, 11, 9, 7, 5, 15, 13, 6, 4, 
          14, 12, 1, 0, 10, 8, 2, 3 ], 
      [ 23, 23, 21, 21, 17, 19, 17, 19, 20, 18, 20, 18, 22, 16, 22, 16, 5, 7, 12, 14, 4, 6, 8, 10, 
          3, 2, 9, 11, 0, 1, 15, 13 ], 
      [ 23, 23, 21, 21, 17, 19, 17, 19, 20, 18, 20, 18, 22, 16, 22, 16, 7, 5, 14, 12, 6, 4, 10, 8, 
          2, 3, 11, 9, 1, 0, 13, 15 ], 
      [ 22, 22, 20, 20, 18, 16, 18, 16, 19, 21, 19, 21, 17, 23, 17, 23, 13, 15, 4, 6, 11, 9, 7, 5, 
          8, 10, 2, 3, 14, 12, 0, 1 ], 
      [ 22, 22, 20, 20, 18, 16, 18, 16, 19, 21, 19, 21, 17, 23, 17, 23, 15, 13, 6, 4, 9, 11, 5, 7, 
          10, 8, 3, 2, 12, 14, 1, 0 ] ] )