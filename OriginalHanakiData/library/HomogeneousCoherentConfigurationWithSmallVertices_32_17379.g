rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 8, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -8*E(4), 8*E(4), 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 8*E(4), -8*E(4), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -8, -8, 1 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, -E(4), E(4), E(4), -E(4), E(4), -E(4), -E(4), E(4), 0, 0, 2 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, E(4), -E(4), -E(4), E(4), -E(4), E(4), E(4), -E(4), 0, 0, 2 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -E(4), E(4), E(4), -E(4), 0, 0, 2 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), E(4), -E(4), -E(4), E(4), 0, 0, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2 ], 
      [ 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 2, 2, -2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 14, 15, 12, 13, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 2, 3, 0, 1, 6, 7, 4, 5, 10, 11, 8, 9, 13, 12, 15, 14, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 4, 5, 6, 7, 0, 1, 2, 3, 12, 14, 13, 15, 8, 10, 9, 11, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 5, 4, 7, 6, 1, 0, 3, 2, 14, 12, 15, 13, 9, 11, 8, 10, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 6, 7, 4, 5, 2, 3, 0, 1, 13, 15, 12, 14, 10, 8, 11, 9, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 15, 13, 14, 12, 11, 9, 10, 8, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 9, 8, 11, 10, 13, 15, 12, 14, 0, 1, 2, 3, 7, 5, 6, 4, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 8, 9, 10, 11, 15, 13, 14, 12, 1, 0, 3, 2, 6, 4, 7, 5, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 11, 10, 9, 8, 12, 14, 13, 15, 2, 3, 0, 1, 5, 7, 4, 6, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 10, 11, 8, 9, 14, 12, 15, 13, 3, 2, 1, 0, 4, 6, 5, 7, 16, 16, 16, 16, 16, 16, 16, 16, 17, 
          17, 17, 17, 17, 17, 17, 17 ], 
      [ 13, 15, 12, 14, 9, 8, 11, 10, 7, 6, 5, 4, 0, 2, 1, 3, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 12, 14, 13, 15, 11, 10, 9, 8, 5, 4, 7, 6, 2, 0, 3, 1, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 15, 13, 14, 12, 8, 9, 10, 11, 6, 7, 4, 5, 1, 3, 0, 2, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 14, 12, 15, 13, 10, 11, 8, 9, 4, 5, 6, 7, 3, 1, 2, 0, 17, 17, 17, 17, 17, 17, 17, 17, 16, 
          16, 16, 16, 16, 16, 16, 16 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 0, 1, 2, 3, 8, 9, 10, 11, 
          4, 5, 6, 7, 12, 13, 14, 15 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 1, 0, 3, 2, 9, 8, 11, 10, 
          5, 4, 7, 6, 14, 15, 12, 13 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 2, 3, 0, 1, 10, 11, 8, 9, 
          6, 7, 4, 5, 13, 12, 15, 14 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 3, 2, 1, 0, 11, 10, 9, 8, 
          7, 6, 5, 4, 15, 14, 13, 12 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 9, 8, 11, 10, 0, 1, 2, 3, 
          13, 15, 12, 14, 7, 5, 6, 4 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 8, 9, 10, 11, 1, 0, 3, 2, 
          15, 13, 14, 12, 6, 4, 7, 5 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 11, 10, 9, 8, 2, 3, 0, 1, 
          12, 14, 13, 15, 5, 7, 4, 6 ], 
      [ 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 10, 11, 8, 9, 3, 2, 1, 0, 
          14, 12, 15, 13, 4, 6, 5, 7 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 4, 5, 6, 7, 12, 14, 13, 
          15, 0, 1, 2, 3, 8, 10, 9, 11 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 5, 4, 7, 6, 14, 12, 15, 
          13, 1, 0, 3, 2, 9, 11, 8, 10 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 6, 7, 4, 5, 13, 15, 12, 
          14, 2, 3, 0, 1, 10, 8, 11, 9 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 7, 6, 5, 4, 15, 13, 14, 
          12, 3, 2, 1, 0, 11, 9, 10, 8 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 13, 15, 12, 14, 7, 6, 5, 
          4, 9, 8, 11, 10, 0, 2, 1, 3 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 12, 14, 13, 15, 5, 4, 7, 
          6, 11, 10, 9, 8, 2, 0, 3, 1 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 15, 13, 14, 12, 6, 7, 4, 
          5, 8, 9, 10, 11, 1, 3, 0, 2 ], 
      [ 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 16, 17, 17, 17, 17, 14, 12, 15, 13, 4, 5, 6, 
          7, 10, 11, 8, 9, 3, 1, 2, 0 ] ] )