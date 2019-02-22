rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, 4*E(4), -4*E(4), 4*E(4), -4*E(4), 1 ], 
      [ 1, 1, 1, 1, -2, -2, 2, 2, -2, -2, -4*E(4), 4*E(4), -4*E(4), 4*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, -2*E(8)-2*E(8)^3, 
          2*E(8)+2*E(8)^3, 2 ], 
      [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2*E(8)+2*E(8)^3, 
          -2*E(8)-2*E(8)^3, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 
          2*E(8)-2*E(8)^3, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 
          -2*E(8)+2*E(8)^3, 2 ], [ 1, 1, 1, 1, -2, -2, -2, -2, 2, 2, 0, 0, 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 0, 0, 2 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, -2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 
          12, 13, 13, 13, 13 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 6, 6, 9, 9, 8, 8, 10, 10, 10, 10, 
          11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 6, 6, 7, 7, 9, 9, 8, 8, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 12, 12, 12, 12, 13, 13, 13, 13, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 8, 9, 8, 9, 6, 7, 6, 7, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 4, 4, 5, 5, 1, 0, 3, 2, 9, 8, 9, 8, 7, 6, 7, 6, 11, 11, 11, 11, 10, 10, 10, 10, 13, 13, 
          13, 13, 12, 12, 12, 12 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 9, 8, 9, 8, 6, 7, 6, 7, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 8, 9, 8, 9, 7, 6, 7, 6, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 7, 6, 7, 6, 9, 8, 8, 9, 0, 2, 3, 1, 5, 4, 4, 5, 10, 10, 12, 12, 11, 11, 13, 13, 10, 10, 
          12, 12, 11, 11, 13, 13 ], 
      [ 7, 6, 7, 6, 8, 9, 9, 8, 2, 0, 1, 3, 4, 5, 5, 4, 12, 12, 10, 10, 13, 13, 11, 11, 12, 12, 
          10, 10, 13, 13, 11, 11 ], 
      [ 6, 7, 6, 7, 9, 8, 8, 9, 3, 1, 0, 2, 4, 5, 5, 4, 12, 12, 10, 10, 13, 13, 11, 11, 12, 12, 
          10, 10, 13, 13, 11, 11 ], 
      [ 6, 7, 6, 7, 8, 9, 9, 8, 1, 3, 2, 0, 5, 4, 4, 5, 10, 10, 12, 12, 11, 11, 13, 13, 10, 10, 
          12, 12, 11, 11, 13, 13 ], 
      [ 9, 8, 8, 9, 7, 6, 7, 6, 5, 4, 4, 5, 0, 3, 2, 1, 13, 13, 11, 11, 12, 12, 10, 10, 13, 13, 
          11, 11, 12, 12, 10, 10 ], 
      [ 9, 8, 8, 9, 6, 7, 6, 7, 4, 5, 5, 4, 3, 0, 1, 2, 11, 11, 13, 13, 10, 10, 12, 12, 11, 11, 
          13, 13, 10, 10, 12, 12 ], 
      [ 8, 9, 9, 8, 7, 6, 7, 6, 4, 5, 5, 4, 2, 1, 0, 3, 11, 11, 13, 13, 10, 10, 12, 12, 11, 11, 
          13, 13, 10, 10, 12, 12 ], 
      [ 8, 9, 9, 8, 6, 7, 6, 7, 5, 4, 4, 5, 1, 2, 3, 0, 13, 13, 11, 11, 12, 12, 10, 10, 13, 13, 
          11, 11, 12, 12, 10, 10 ], 
      [ 11, 11, 13, 13, 10, 10, 12, 12, 11, 13, 13, 11, 12, 10, 10, 12, 0, 1, 6, 7, 4, 4, 8, 9, 6, 
          7, 2, 3, 8, 9, 5, 5 ], [ 11, 11, 13, 13, 10, 10, 12, 12, 11, 13, 13, 11, 12, 10, 10, 12, 
          1, 0, 7, 6, 4, 4, 9, 8, 7, 6, 3, 2, 9, 8, 5, 5 ], 
      [ 11, 11, 13, 13, 10, 10, 12, 12, 13, 11, 11, 13, 10, 12, 12, 10, 7, 6, 0, 1, 8, 9, 4, 4, 2, 
          3, 7, 6, 5, 5, 8, 9 ], [ 11, 11, 13, 13, 10, 10, 12, 12, 13, 11, 11, 13, 10, 12, 12, 10, 
          6, 7, 1, 0, 9, 8, 4, 4, 3, 2, 6, 7, 5, 5, 9, 8 ], 
      [ 10, 10, 12, 12, 11, 11, 13, 13, 10, 12, 12, 10, 13, 11, 11, 13, 4, 4, 9, 8, 0, 1, 6, 7, 8, 
          9, 5, 5, 7, 6, 3, 2 ], [ 10, 10, 12, 12, 11, 11, 13, 13, 10, 12, 12, 10, 13, 11, 11, 13, 
          4, 4, 8, 9, 1, 0, 7, 6, 9, 8, 5, 5, 6, 7, 2, 3 ], 
      [ 10, 10, 12, 12, 11, 11, 13, 13, 12, 10, 10, 12, 11, 13, 13, 11, 9, 8, 4, 4, 7, 6, 0, 1, 5, 
          5, 8, 9, 3, 2, 6, 7 ], [ 10, 10, 12, 12, 11, 11, 13, 13, 12, 10, 10, 12, 11, 13, 13, 11, 
          8, 9, 4, 4, 6, 7, 1, 0, 5, 5, 9, 8, 2, 3, 7, 6 ], 
      [ 13, 13, 11, 11, 12, 12, 10, 10, 11, 13, 13, 11, 12, 10, 10, 12, 7, 6, 2, 3, 9, 8, 5, 5, 0, 
          1, 7, 6, 4, 4, 9, 8 ], [ 13, 13, 11, 11, 12, 12, 10, 10, 11, 13, 13, 11, 12, 10, 10, 12, 
          6, 7, 3, 2, 8, 9, 5, 5, 1, 0, 6, 7, 4, 4, 8, 9 ], 
      [ 13, 13, 11, 11, 12, 12, 10, 10, 13, 11, 11, 13, 10, 12, 12, 10, 2, 3, 6, 7, 5, 5, 9, 8, 6, 
          7, 0, 1, 9, 8, 4, 4 ], [ 13, 13, 11, 11, 12, 12, 10, 10, 13, 11, 11, 13, 10, 12, 12, 10, 
          3, 2, 7, 6, 5, 5, 8, 9, 7, 6, 1, 0, 8, 9, 4, 4 ], 
      [ 12, 12, 10, 10, 13, 13, 11, 11, 10, 12, 12, 10, 13, 11, 11, 13, 9, 8, 5, 5, 6, 7, 3, 2, 4, 
          4, 8, 9, 0, 1, 7, 6 ], [ 12, 12, 10, 10, 13, 13, 11, 11, 10, 12, 12, 10, 13, 11, 11, 13, 
          8, 9, 5, 5, 7, 6, 2, 3, 4, 4, 9, 8, 1, 0, 6, 7 ], 
      [ 12, 12, 10, 10, 13, 13, 11, 11, 12, 10, 10, 12, 11, 13, 13, 11, 5, 5, 9, 8, 3, 2, 7, 6, 8, 
          9, 4, 4, 6, 7, 0, 1 ], [ 12, 12, 10, 10, 13, 13, 11, 11, 12, 10, 10, 12, 11, 13, 13, 11, 
          5, 5, 8, 9, 2, 3, 6, 7, 9, 8, 4, 4, 7, 6, 1, 0 ] ] )