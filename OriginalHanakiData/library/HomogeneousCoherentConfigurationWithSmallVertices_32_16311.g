rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, -4, -4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 4, 4, -4, -4, 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -2, 2, 2*E(4), -2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, -2*E(4), 2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 2, 2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 11, 11, 11, 11, 
          10, 10, 10, 10, 13, 13, 13, 13, 12, 12, 12, 12 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 10, 10, 11, 11, 11, 11, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 11, 11, 10, 10, 10, 10, 12, 12, 
          12, 12, 13, 13, 13, 13 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 11, 11, 10, 10, 11, 11, 12, 12, 
          13, 13, 12, 12, 13, 13 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 11, 11, 10, 10, 13, 13, 
          12, 12, 13, 13, 12, 12 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 9, 8, 8, 7, 7, 6, 6, 10, 10, 11, 11, 10, 10, 11, 11, 13, 13, 
          12, 12, 13, 13, 12, 12 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 9, 8, 8, 7, 7, 6, 6, 11, 11, 10, 10, 11, 11, 10, 10, 12, 12, 
          13, 13, 12, 12, 13, 13 ], 
      [ 7, 7, 9, 9, 6, 6, 8, 8, 0, 1, 4, 4, 2, 3, 5, 5, 12, 13, 12, 13, 12, 13, 12, 13, 10, 11, 
          10, 11, 10, 11, 10, 11 ], 
      [ 7, 7, 9, 9, 6, 6, 8, 8, 1, 0, 4, 4, 3, 2, 5, 5, 13, 12, 13, 12, 13, 12, 13, 12, 11, 10, 
          11, 10, 11, 10, 11, 10 ], 
      [ 6, 6, 8, 8, 7, 7, 9, 9, 4, 4, 0, 1, 5, 5, 2, 3, 12, 13, 13, 12, 13, 12, 12, 13, 10, 11, 
          11, 10, 11, 10, 10, 11 ], 
      [ 6, 6, 8, 8, 7, 7, 9, 9, 4, 4, 1, 0, 5, 5, 3, 2, 13, 12, 12, 13, 12, 13, 13, 12, 11, 10, 
          10, 11, 10, 11, 11, 10 ], 
      [ 9, 9, 7, 7, 8, 8, 6, 6, 2, 3, 5, 5, 0, 1, 4, 4, 13, 12, 13, 12, 13, 12, 13, 12, 10, 11, 
          10, 11, 10, 11, 10, 11 ], 
      [ 9, 9, 7, 7, 8, 8, 6, 6, 3, 2, 5, 5, 1, 0, 4, 4, 12, 13, 12, 13, 12, 13, 12, 13, 11, 10, 
          11, 10, 11, 10, 11, 10 ], 
      [ 8, 8, 6, 6, 9, 9, 7, 7, 5, 5, 2, 3, 4, 4, 0, 1, 13, 12, 12, 13, 12, 13, 13, 12, 10, 11, 
          11, 10, 11, 10, 10, 11 ], 
      [ 8, 8, 6, 6, 9, 9, 7, 7, 5, 5, 3, 2, 4, 4, 1, 0, 12, 13, 13, 12, 13, 12, 12, 13, 11, 10, 
          10, 11, 10, 11, 11, 10 ], 
      [ 11, 10, 11, 10, 11, 10, 11, 10, 13, 12, 13, 12, 12, 13, 12, 13, 0, 2, 4, 5, 5, 4, 3, 1, 8, 
          6, 9, 7, 7, 9, 6, 8 ], [ 11, 10, 11, 10, 11, 10, 11, 10, 12, 13, 12, 13, 13, 12, 13, 12, 
          2, 0, 5, 4, 4, 5, 1, 3, 6, 8, 7, 9, 9, 7, 8, 6 ], 
      [ 11, 10, 11, 10, 10, 11, 10, 11, 13, 12, 12, 13, 12, 13, 13, 12, 4, 5, 0, 2, 3, 1, 5, 4, 9, 
          7, 8, 6, 6, 8, 7, 9 ], [ 11, 10, 11, 10, 10, 11, 10, 11, 12, 13, 13, 12, 13, 12, 12, 13, 
          5, 4, 2, 0, 1, 3, 4, 5, 7, 9, 6, 8, 8, 6, 9, 7 ], 
      [ 10, 11, 10, 11, 11, 10, 11, 10, 13, 12, 12, 13, 12, 13, 13, 12, 5, 4, 3, 1, 0, 2, 4, 5, 7, 
          9, 6, 8, 8, 6, 9, 7 ], [ 10, 11, 10, 11, 11, 10, 11, 10, 12, 13, 13, 12, 13, 12, 12, 13, 
          4, 5, 1, 3, 2, 0, 5, 4, 9, 7, 8, 6, 6, 8, 7, 9 ], 
      [ 10, 11, 10, 11, 10, 11, 10, 11, 13, 12, 13, 12, 12, 13, 12, 13, 3, 1, 5, 4, 4, 5, 0, 2, 6, 
          8, 7, 9, 9, 7, 8, 6 ], [ 10, 11, 10, 11, 10, 11, 10, 11, 12, 13, 12, 13, 13, 12, 13, 12, 
          1, 3, 4, 5, 5, 4, 2, 0, 8, 6, 9, 7, 7, 9, 6, 8 ], 
      [ 13, 12, 12, 13, 13, 12, 12, 13, 11, 10, 11, 10, 11, 10, 11, 10, 9, 7, 8, 6, 6, 8, 7, 9, 0, 
          3, 4, 5, 5, 4, 2, 1 ], [ 13, 12, 12, 13, 13, 12, 12, 13, 10, 11, 10, 11, 10, 11, 10, 11, 
          7, 9, 6, 8, 8, 6, 9, 7, 3, 0, 5, 4, 4, 5, 1, 2 ], 
      [ 13, 12, 12, 13, 12, 13, 13, 12, 11, 10, 10, 11, 11, 10, 10, 11, 8, 6, 9, 7, 7, 9, 6, 8, 4, 
          5, 0, 3, 2, 1, 5, 4 ], [ 13, 12, 12, 13, 12, 13, 13, 12, 10, 11, 11, 10, 10, 11, 11, 10, 
          6, 8, 7, 9, 9, 7, 8, 6, 5, 4, 3, 0, 1, 2, 4, 5 ], 
      [ 12, 13, 13, 12, 13, 12, 12, 13, 11, 10, 10, 11, 11, 10, 10, 11, 6, 8, 7, 9, 9, 7, 8, 6, 5, 
          4, 2, 1, 0, 3, 4, 5 ], [ 12, 13, 13, 12, 13, 12, 12, 13, 10, 11, 11, 10, 10, 11, 11, 10, 
          8, 6, 9, 7, 7, 9, 6, 8, 4, 5, 1, 2, 3, 0, 5, 4 ], 
      [ 12, 13, 13, 12, 12, 13, 13, 12, 11, 10, 11, 10, 11, 10, 11, 10, 7, 9, 6, 8, 8, 6, 9, 7, 2, 
          1, 5, 4, 4, 5, 0, 3 ], [ 12, 13, 13, 12, 12, 13, 13, 12, 10, 11, 10, 11, 10, 11, 10, 11, 
          9, 7, 8, 6, 6, 8, 7, 9, 1, 2, 4, 5, 5, 4, 3, 0 ] ] )