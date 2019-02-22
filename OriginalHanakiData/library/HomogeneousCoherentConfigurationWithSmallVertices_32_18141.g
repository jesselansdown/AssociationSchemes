rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -2, -2, 2, 
          2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), 2, 2, -2, 
          -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), -2, -2, 2, 
          2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, E(4), -E(4), E(4), -E(4), E(4), -E(4), E(4), -E(4), 2, 2, -2, 
          -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 2, -2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, -2, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, -2, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 14, 15, 12, 13, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 21, 21, 22, 22, 23, 23 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 12, 15, 14, 13, 8, 11, 10, 9, 17, 17, 16, 16, 19, 19, 18, 18, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 14, 13, 12, 15, 10, 9, 8, 11, 17, 17, 16, 16, 19, 19, 18, 18, 22, 
          22, 23, 23, 20, 20, 21, 21 ], 
      [ 5, 4, 7, 6, 0, 1, 2, 3, 9, 10, 11, 8, 15, 12, 13, 14, 18, 18, 19, 19, 16, 16, 17, 17, 21, 
          21, 20, 20, 23, 23, 22, 22 ], 
      [ 4, 5, 6, 7, 1, 0, 3, 2, 11, 8, 9, 10, 13, 14, 15, 12, 18, 18, 19, 19, 16, 16, 17, 17, 21, 
          21, 20, 20, 23, 23, 22, 22 ], 
      [ 7, 6, 5, 4, 2, 3, 0, 1, 15, 14, 13, 12, 9, 8, 11, 10, 19, 19, 18, 18, 17, 17, 16, 16, 23, 
          23, 22, 22, 21, 21, 20, 20 ], 
      [ 6, 7, 4, 5, 3, 2, 1, 0, 13, 12, 15, 14, 11, 10, 9, 8, 19, 19, 18, 18, 17, 17, 16, 16, 23, 
          23, 22, 22, 21, 21, 20, 20 ], 
      [ 9, 11, 13, 15, 8, 10, 14, 12, 0, 5, 1, 4, 3, 7, 2, 6, 20, 20, 22, 22, 21, 21, 23, 23, 18, 
          18, 16, 16, 19, 19, 17, 17 ], 
      [ 8, 10, 14, 12, 11, 9, 15, 13, 4, 0, 5, 1, 7, 2, 6, 3, 21, 21, 23, 23, 20, 20, 22, 22, 16, 
          16, 18, 18, 17, 17, 19, 19 ], 
      [ 11, 9, 15, 13, 10, 8, 12, 14, 1, 4, 0, 5, 2, 6, 3, 7, 20, 20, 22, 22, 21, 21, 23, 23, 18, 
          18, 16, 16, 19, 19, 17, 17 ], 
      [ 10, 8, 12, 14, 9, 11, 13, 15, 5, 1, 4, 0, 6, 3, 7, 2, 21, 21, 23, 23, 20, 20, 22, 22, 16, 
          16, 18, 18, 17, 17, 19, 19 ], 
      [ 13, 15, 9, 11, 14, 12, 8, 10, 3, 6, 2, 7, 0, 4, 1, 5, 22, 22, 20, 20, 23, 23, 21, 21, 19, 
          19, 17, 17, 18, 18, 16, 16 ], 
      [ 12, 14, 10, 8, 13, 15, 9, 11, 6, 2, 7, 3, 5, 0, 4, 1, 23, 23, 21, 21, 22, 22, 20, 20, 17, 
          17, 19, 19, 16, 16, 18, 18 ], 
      [ 15, 13, 11, 9, 12, 14, 10, 8, 2, 7, 3, 6, 1, 5, 0, 4, 22, 22, 20, 20, 23, 23, 21, 21, 19, 
          19, 17, 17, 18, 18, 16, 16 ], 
      [ 14, 12, 8, 10, 15, 13, 11, 9, 7, 3, 6, 2, 4, 1, 5, 0, 23, 23, 21, 21, 22, 22, 20, 20, 17, 
          17, 19, 19, 16, 16, 18, 18 ], 
      [ 17, 17, 16, 16, 19, 19, 18, 18, 21, 20, 21, 20, 23, 22, 23, 22, 0, 1, 2, 3, 4, 5, 6, 7, 
          13, 15, 12, 14, 9, 11, 8, 10 ], 
      [ 17, 17, 16, 16, 19, 19, 18, 18, 21, 20, 21, 20, 23, 22, 23, 22, 1, 0, 3, 2, 5, 4, 7, 6, 
          15, 13, 14, 12, 11, 9, 10, 8 ], 
      [ 16, 16, 17, 17, 18, 18, 19, 19, 23, 22, 23, 22, 21, 20, 21, 20, 2, 3, 0, 1, 6, 7, 4, 5, 
          11, 9, 8, 10, 15, 13, 12, 14 ], 
      [ 16, 16, 17, 17, 18, 18, 19, 19, 23, 22, 23, 22, 21, 20, 21, 20, 3, 2, 1, 0, 7, 6, 5, 4, 9, 
          11, 10, 8, 13, 15, 14, 12 ], 
      [ 19, 19, 18, 18, 17, 17, 16, 16, 20, 21, 20, 21, 22, 23, 22, 23, 5, 4, 7, 6, 0, 1, 2, 3, 
          12, 14, 15, 13, 10, 8, 9, 11 ], 
      [ 19, 19, 18, 18, 17, 17, 16, 16, 20, 21, 20, 21, 22, 23, 22, 23, 4, 5, 6, 7, 1, 0, 3, 2, 
          14, 12, 13, 15, 8, 10, 11, 9 ], 
      [ 18, 18, 19, 19, 16, 16, 17, 17, 22, 23, 22, 23, 20, 21, 20, 21, 7, 6, 5, 4, 2, 3, 0, 1, 8, 
          10, 9, 11, 14, 12, 15, 13 ], 
      [ 18, 18, 19, 19, 16, 16, 17, 17, 22, 23, 22, 23, 20, 21, 20, 21, 6, 7, 4, 5, 3, 2, 1, 0, 
          10, 8, 11, 9, 12, 14, 13, 15 ], 
      [ 21, 21, 23, 23, 20, 20, 22, 22, 19, 17, 19, 17, 18, 16, 18, 16, 12, 14, 10, 8, 13, 15, 9, 
          11, 0, 1, 5, 4, 2, 3, 6, 7 ], 
      [ 21, 21, 23, 23, 20, 20, 22, 22, 19, 17, 19, 17, 18, 16, 18, 16, 14, 12, 8, 10, 15, 13, 11, 
          9, 1, 0, 4, 5, 3, 2, 7, 6 ], 
      [ 20, 20, 22, 22, 21, 21, 23, 23, 17, 19, 17, 19, 16, 18, 16, 18, 13, 15, 9, 11, 14, 12, 8, 
          10, 4, 5, 0, 1, 6, 7, 3, 2 ], 
      [ 20, 20, 22, 22, 21, 21, 23, 23, 17, 19, 17, 19, 16, 18, 16, 18, 15, 13, 11, 9, 12, 14, 10, 
          8, 5, 4, 1, 0, 7, 6, 2, 3 ], 
      [ 23, 23, 21, 21, 22, 22, 20, 20, 18, 16, 18, 16, 19, 17, 19, 17, 8, 10, 14, 12, 11, 9, 15, 
          13, 2, 3, 7, 6, 0, 1, 4, 5 ], 
      [ 23, 23, 21, 21, 22, 22, 20, 20, 18, 16, 18, 16, 19, 17, 19, 17, 10, 8, 12, 14, 9, 11, 13, 
          15, 3, 2, 6, 7, 1, 0, 5, 4 ], 
      [ 22, 22, 20, 20, 23, 23, 21, 21, 16, 18, 16, 18, 17, 19, 17, 19, 9, 11, 13, 15, 8, 10, 14, 
          12, 7, 6, 3, 2, 5, 4, 0, 1 ], 
      [ 22, 22, 20, 20, 23, 23, 21, 21, 16, 18, 16, 18, 17, 19, 17, 19, 11, 9, 15, 13, 10, 8, 12, 
          14, 6, 7, 2, 3, 4, 5, 1, 0 ] ] )