rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, -2, -2, -2, -2, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 2, 2, 2, 2, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -4, -4, 1 ], 
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
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 9, 8, 9, 6, 7, 6, 7, 14, 14, 15, 15, 14, 14, 15, 15, 10, 10, 
          12, 12, 11, 11, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6, 14, 14, 15, 15, 14, 14, 15, 15, 12, 12, 
          10, 10, 13, 13, 11, 11 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 8, 9, 8, 6, 7, 6, 7, 14, 14, 15, 15, 14, 14, 15, 15, 10, 10, 
          12, 12, 11, 11, 13, 13 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6, 14, 14, 15, 15, 14, 14, 15, 15, 12, 12, 
          10, 10, 13, 13, 11, 11 ], 
      [ 7, 6, 7, 6, 9, 8, 8, 9, 0, 2, 3, 1, 4, 5, 5, 4, 11, 11, 12, 12, 13, 13, 10, 10, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 7, 6, 7, 6, 8, 9, 9, 8, 2, 0, 1, 3, 5, 4, 4, 5, 11, 11, 12, 12, 13, 13, 10, 10, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 6, 7, 6, 7, 9, 8, 8, 9, 3, 1, 0, 2, 5, 4, 4, 5, 13, 13, 10, 10, 11, 11, 12, 12, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 6, 7, 6, 7, 8, 9, 9, 8, 1, 3, 2, 0, 4, 5, 5, 4, 13, 13, 10, 10, 11, 11, 12, 12, 15, 15, 
          15, 15, 14, 14, 14, 14 ], 
      [ 9, 8, 8, 9, 7, 6, 7, 6, 4, 5, 5, 4, 0, 3, 2, 1, 15, 15, 14, 14, 15, 15, 14, 14, 11, 11, 
          13, 13, 12, 12, 10, 10 ], 
      [ 9, 8, 8, 9, 6, 7, 6, 7, 5, 4, 4, 5, 3, 0, 1, 2, 15, 15, 14, 14, 15, 15, 14, 14, 13, 13, 
          11, 11, 10, 10, 12, 12 ], 
      [ 8, 9, 9, 8, 7, 6, 7, 6, 5, 4, 4, 5, 2, 1, 0, 3, 15, 15, 14, 14, 15, 15, 14, 14, 11, 11, 
          13, 13, 12, 12, 10, 10 ], 
      [ 8, 9, 9, 8, 6, 7, 6, 7, 4, 5, 5, 4, 1, 2, 3, 0, 15, 15, 14, 14, 15, 15, 14, 14, 13, 13, 
          11, 11, 10, 10, 12, 12 ], 
      [ 11, 13, 11, 13, 14, 14, 14, 14, 10, 10, 12, 12, 15, 15, 15, 15, 0, 2, 7, 7, 1, 3, 6, 6, 8, 
          9, 8, 9, 4, 5, 4, 5 ], [ 11, 13, 11, 13, 14, 14, 14, 14, 10, 10, 12, 12, 15, 15, 15, 15, 
          2, 0, 7, 7, 3, 1, 6, 6, 9, 8, 9, 8, 5, 4, 5, 4 ], 
      [ 10, 12, 10, 12, 15, 15, 15, 15, 13, 13, 11, 11, 14, 14, 14, 14, 6, 6, 0, 2, 7, 7, 1, 3, 4, 
          5, 5, 4, 8, 9, 9, 8 ], [ 10, 12, 10, 12, 15, 15, 15, 15, 13, 13, 11, 11, 14, 14, 14, 14, 
          6, 6, 2, 0, 7, 7, 3, 1, 5, 4, 4, 5, 9, 8, 8, 9 ], 
      [ 13, 11, 13, 11, 14, 14, 14, 14, 12, 12, 10, 10, 15, 15, 15, 15, 1, 3, 6, 6, 0, 2, 7, 7, 9, 
          8, 9, 8, 4, 5, 4, 5 ], [ 13, 11, 13, 11, 14, 14, 14, 14, 12, 12, 10, 10, 15, 15, 15, 15, 
          3, 1, 6, 6, 2, 0, 7, 7, 8, 9, 8, 9, 5, 4, 5, 4 ], 
      [ 12, 10, 12, 10, 15, 15, 15, 15, 11, 11, 13, 13, 14, 14, 14, 14, 7, 7, 1, 3, 6, 6, 0, 2, 4, 
          5, 5, 4, 9, 8, 8, 9 ], [ 12, 10, 12, 10, 15, 15, 15, 15, 11, 11, 13, 13, 14, 14, 14, 14, 
          7, 7, 3, 1, 6, 6, 2, 0, 5, 4, 4, 5, 8, 9, 9, 8 ], 
      [ 14, 14, 14, 14, 11, 13, 11, 13, 15, 15, 15, 15, 10, 12, 10, 12, 9, 8, 4, 5, 8, 9, 4, 5, 0, 
          2, 3, 1, 7, 7, 6, 6 ], [ 14, 14, 14, 14, 11, 13, 11, 13, 15, 15, 15, 15, 10, 12, 10, 12, 
          8, 9, 5, 4, 9, 8, 5, 4, 2, 0, 1, 3, 7, 7, 6, 6 ], 
      [ 14, 14, 14, 14, 13, 11, 13, 11, 15, 15, 15, 15, 12, 10, 12, 10, 9, 8, 5, 4, 8, 9, 5, 4, 3, 
          1, 0, 2, 6, 6, 7, 7 ], [ 14, 14, 14, 14, 13, 11, 13, 11, 15, 15, 15, 15, 12, 10, 12, 10, 
          8, 9, 4, 5, 9, 8, 4, 5, 1, 3, 2, 0, 6, 6, 7, 7 ], 
      [ 15, 15, 15, 15, 10, 12, 10, 12, 14, 14, 14, 14, 13, 11, 13, 11, 4, 5, 9, 8, 4, 5, 8, 9, 6, 
          6, 7, 7, 0, 2, 1, 3 ], [ 15, 15, 15, 15, 10, 12, 10, 12, 14, 14, 14, 14, 13, 11, 13, 11, 
          5, 4, 8, 9, 5, 4, 9, 8, 6, 6, 7, 7, 2, 0, 3, 1 ], 
      [ 15, 15, 15, 15, 12, 10, 12, 10, 14, 14, 14, 14, 11, 13, 11, 13, 4, 5, 8, 9, 4, 5, 9, 8, 7, 
          7, 6, 6, 1, 3, 0, 2 ], [ 15, 15, 15, 15, 12, 10, 12, 10, 14, 14, 14, 14, 11, 13, 11, 13, 
          5, 4, 9, 8, 5, 4, 8, 9, 7, 7, 6, 6, 3, 1, 2, 0 ] ] )