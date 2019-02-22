rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, 2, 2, -2, -2, -2, -2, -4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, 4, -4, 1 ], 
      [ 2, 2, 2, 2, 0, 0, -4, -4, 0, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, 0, 0, -2*E(4), 2*E(4), 0, 0, -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 0, 0, 2 ],
      [ 1, -1, 1, -1, 0, 0, -2*E(4), 2*E(4), 0, 0, 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 0, 0, 2 ],
      [ 1, -1, 1, -1, 0, 0, 2*E(4), -2*E(4), 0, 0, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 0, 0, 2 ],
      [ 1, -1, 1, -1, 0, 0, 2*E(4), -2*E(4), 0, 0, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 0, 0, 2 ],
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 
          14, 15, 15, 15, 15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 12, 12, 13, 13, 
          10, 10, 11, 11, 14, 14, 14, 14, 15, 15, 15, 15 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 12, 12, 13, 13, 10, 10, 11, 11, 14, 14, 
          14, 14, 15, 15, 15, 15 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 14, 14, 14, 14, 10, 12, 10, 12, 8, 9, 15, 15, 8, 9, 15, 15, 6, 6, 
          7, 7, 11, 11, 13, 13 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 14, 14, 14, 14, 12, 10, 12, 10, 9, 8, 
          15, 15, 9, 8, 15, 15, 7, 7, 6, 6, 13, 13, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 14, 14, 14, 14, 10, 12, 10, 12, 9, 8, 15, 15, 9, 8, 15, 15, 6, 6, 
          7, 7, 11, 11, 13, 13 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 14, 14, 14, 14, 12, 10, 12, 10, 8, 9, 
          15, 15, 8, 9, 15, 15, 7, 7, 6, 6, 13, 13, 11, 11 ], 
      [ 7, 6, 7, 6, 14, 14, 14, 14, 0, 2, 1, 3, 15, 15, 15, 15, 11, 11, 12, 12, 13, 13, 10, 10, 4, 
          5, 4, 5, 8, 9, 8, 9 ], [ 7, 6, 7, 6, 14, 14, 14, 14, 2, 0, 3, 1, 15, 15, 15, 15, 11, 11, 
          12, 12, 13, 13, 10, 10, 5, 4, 5, 4, 9, 8, 9, 8 ], 
      [ 6, 7, 6, 7, 14, 14, 14, 14, 1, 3, 0, 2, 15, 15, 15, 15, 13, 13, 10, 10, 11, 11, 12, 12, 4, 
          5, 4, 5, 9, 8, 9, 8 ], [ 6, 7, 6, 7, 14, 14, 14, 14, 3, 1, 2, 0, 15, 15, 15, 15, 13, 13, 
          10, 10, 11, 11, 12, 12, 5, 4, 5, 4, 8, 9, 8, 9 ], 
      [ 9, 8, 8, 9, 11, 13, 11, 13, 15, 15, 15, 15, 0, 3, 2, 1, 14, 14, 4, 5, 14, 14, 4, 5, 10, 
          10, 12, 12, 7, 7, 6, 6 ], 
      [ 9, 8, 8, 9, 13, 11, 13, 11, 15, 15, 15, 15, 3, 0, 1, 2, 14, 14, 5, 4, 14, 14, 5, 4, 12, 
          12, 10, 10, 6, 6, 7, 7 ], 
      [ 8, 9, 9, 8, 11, 13, 11, 13, 15, 15, 15, 15, 2, 1, 0, 3, 14, 14, 5, 4, 14, 14, 5, 4, 10, 
          10, 12, 12, 7, 7, 6, 6 ], 
      [ 8, 9, 9, 8, 13, 11, 13, 11, 15, 15, 15, 15, 1, 2, 3, 0, 14, 14, 4, 5, 14, 14, 4, 5, 12, 
          12, 10, 10, 6, 6, 7, 7 ], 
      [ 11, 13, 11, 13, 9, 8, 8, 9, 10, 10, 12, 12, 14, 14, 14, 14, 0, 2, 7, 7, 3, 1, 6, 6, 15, 
          15, 15, 15, 4, 5, 5, 4 ], 
      [ 11, 13, 11, 13, 8, 9, 9, 8, 10, 10, 12, 12, 14, 14, 14, 14, 2, 0, 7, 7, 1, 3, 6, 6, 15, 
          15, 15, 15, 5, 4, 4, 5 ], 
      [ 10, 12, 10, 12, 15, 15, 15, 15, 13, 13, 11, 11, 4, 5, 5, 4, 6, 6, 0, 2, 7, 7, 1, 3, 8, 9, 
          9, 8, 14, 14, 14, 14 ], [ 10, 12, 10, 12, 15, 15, 15, 15, 13, 13, 11, 11, 5, 4, 4, 5, 6, 
          6, 2, 0, 7, 7, 3, 1, 9, 8, 8, 9, 14, 14, 14, 14 ], 
      [ 13, 11, 13, 11, 9, 8, 8, 9, 12, 12, 10, 10, 14, 14, 14, 14, 3, 1, 6, 6, 0, 2, 7, 7, 15, 
          15, 15, 15, 5, 4, 4, 5 ], 
      [ 13, 11, 13, 11, 8, 9, 9, 8, 12, 12, 10, 10, 14, 14, 14, 14, 1, 3, 6, 6, 2, 0, 7, 7, 15, 
          15, 15, 15, 4, 5, 5, 4 ], 
      [ 12, 10, 12, 10, 15, 15, 15, 15, 11, 11, 13, 13, 4, 5, 5, 4, 7, 7, 1, 3, 6, 6, 0, 2, 9, 8, 
          8, 9, 14, 14, 14, 14 ], [ 12, 10, 12, 10, 15, 15, 15, 15, 11, 11, 13, 13, 5, 4, 4, 5, 7, 
          7, 3, 1, 6, 6, 2, 0, 8, 9, 9, 8, 14, 14, 14, 14 ], 
      [ 14, 14, 14, 14, 7, 6, 7, 6, 4, 5, 4, 5, 11, 13, 11, 13, 15, 15, 9, 8, 15, 15, 8, 9, 0, 2, 
          1, 3, 12, 12, 10, 10 ], 
      [ 14, 14, 14, 14, 7, 6, 7, 6, 5, 4, 5, 4, 11, 13, 11, 13, 15, 15, 8, 9, 15, 15, 9, 8, 2, 0, 
          3, 1, 12, 12, 10, 10 ], 
      [ 14, 14, 14, 14, 6, 7, 6, 7, 4, 5, 4, 5, 13, 11, 13, 11, 15, 15, 8, 9, 15, 15, 9, 8, 1, 3, 
          0, 2, 10, 10, 12, 12 ], 
      [ 14, 14, 14, 14, 6, 7, 6, 7, 5, 4, 5, 4, 13, 11, 13, 11, 15, 15, 9, 8, 15, 15, 8, 9, 3, 1, 
          2, 0, 10, 10, 12, 12 ], [ 15, 15, 15, 15, 10, 12, 10, 12, 9, 8, 8, 9, 6, 7, 6, 7, 4, 5, 
          14, 14, 5, 4, 14, 14, 13, 13, 11, 11, 0, 2, 3, 1 ], 
      [ 15, 15, 15, 15, 10, 12, 10, 12, 8, 9, 9, 8, 6, 7, 6, 7, 5, 4, 14, 14, 4, 5, 14, 14, 13, 
          13, 11, 11, 2, 0, 1, 3 ], 
      [ 15, 15, 15, 15, 12, 10, 12, 10, 9, 8, 8, 9, 7, 6, 7, 6, 5, 4, 14, 14, 4, 5, 14, 14, 11, 
          11, 13, 13, 3, 1, 0, 2 ], 
      [ 15, 15, 15, 15, 12, 10, 12, 10, 8, 9, 9, 8, 7, 6, 7, 6, 4, 5, 14, 14, 5, 4, 14, 14, 11, 
          11, 13, 13, 1, 3, 2, 0 ] ] )