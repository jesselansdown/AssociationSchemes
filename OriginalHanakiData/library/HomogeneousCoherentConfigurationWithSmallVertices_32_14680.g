rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 8, 8, 1 ], [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, -8, -8, 1 ], 
      [ 1, 1, -1, -1, 2*E(4), -2*E(4), 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2*E(4), -2*E(4), -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2*E(4), 2*E(4), 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2*E(4), 2*E(4), -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 0, 0, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), 0, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 0, 0, 2 ], [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, -4, 4, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 0, 0, 0, 4, -4, 4 ], [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 11, 11, 11, 11, 
          11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 3, 2, 1, 0, 5, 5, 4, 4, 8, 8, 9, 9, 6, 6, 7, 7, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 5, 5, 4, 4, 0, 1, 2, 3, 7, 7, 8, 8, 9, 9, 6, 6, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 5, 5, 4, 4, 1, 0, 3, 2, 7, 7, 8, 8, 9, 9, 6, 6, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 2, 3, 0, 1, 9, 9, 6, 6, 7, 7, 8, 8, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 
          10, 10, 11, 11, 11, 11 ], 
      [ 4, 4, 5, 5, 3, 2, 1, 0, 9, 9, 6, 6, 7, 7, 8, 8, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 
          11, 11, 10, 10, 10, 10 ], 
      [ 7, 7, 9, 9, 6, 6, 8, 8, 0, 1, 5, 5, 2, 3, 4, 4, 10, 10, 11, 11, 10, 10, 11, 11, 10, 10, 
          11, 11, 10, 10, 11, 11 ], 
      [ 7, 7, 9, 9, 6, 6, 8, 8, 1, 0, 5, 5, 3, 2, 4, 4, 11, 11, 10, 10, 11, 11, 10, 10, 11, 11, 
          10, 10, 11, 11, 10, 10 ], 
      [ 6, 6, 8, 8, 9, 9, 7, 7, 4, 4, 0, 1, 5, 5, 2, 3, 10, 10, 11, 11, 11, 11, 10, 10, 11, 11, 
          10, 10, 10, 10, 11, 11 ], 
      [ 6, 6, 8, 8, 9, 9, 7, 7, 4, 4, 1, 0, 5, 5, 3, 2, 11, 11, 10, 10, 10, 10, 11, 11, 10, 10, 
          11, 11, 11, 11, 10, 10 ], 
      [ 9, 9, 7, 7, 8, 8, 6, 6, 2, 3, 4, 4, 0, 1, 5, 5, 10, 10, 11, 11, 10, 10, 11, 11, 10, 10, 
          11, 11, 10, 10, 11, 11 ], 
      [ 9, 9, 7, 7, 8, 8, 6, 6, 3, 2, 4, 4, 1, 0, 5, 5, 11, 11, 10, 10, 11, 11, 10, 10, 11, 11, 
          10, 10, 11, 11, 10, 10 ], 
      [ 8, 8, 6, 6, 7, 7, 9, 9, 5, 5, 2, 3, 4, 4, 0, 1, 10, 10, 11, 11, 11, 11, 10, 10, 11, 11, 
          10, 10, 10, 10, 11, 11 ], 
      [ 8, 8, 6, 6, 7, 7, 9, 9, 5, 5, 3, 2, 4, 4, 1, 0, 11, 11, 10, 10, 10, 10, 11, 11, 10, 10, 
          11, 11, 11, 11, 10, 10 ], 
      [ 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 0, 2, 6, 8, 4, 5, 7, 9, 7, 
          9, 4, 5, 6, 8, 1, 3 ], [ 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 
          2, 0, 8, 6, 5, 4, 9, 7, 9, 7, 5, 4, 8, 6, 3, 1 ], 
      [ 10, 11, 10, 11, 10, 11, 10, 11, 11, 10, 11, 10, 11, 10, 11, 10, 7, 9, 0, 2, 6, 8, 5, 4, 5, 
          4, 6, 8, 1, 3, 7, 9 ], [ 10, 11, 10, 11, 10, 11, 10, 11, 11, 10, 11, 10, 11, 10, 11, 10, 
          9, 7, 2, 0, 8, 6, 4, 5, 4, 5, 8, 6, 3, 1, 9, 7 ], 
      [ 10, 11, 10, 11, 11, 10, 11, 10, 10, 11, 11, 10, 10, 11, 11, 10, 5, 4, 7, 9, 0, 2, 8, 6, 8, 
          6, 1, 3, 7, 9, 5, 4 ], [ 10, 11, 10, 11, 11, 10, 11, 10, 10, 11, 11, 10, 10, 11, 11, 10, 
          4, 5, 9, 7, 2, 0, 6, 8, 6, 8, 3, 1, 9, 7, 4, 5 ], 
      [ 10, 11, 10, 11, 11, 10, 11, 10, 11, 10, 10, 11, 11, 10, 10, 11, 6, 8, 4, 5, 9, 7, 0, 2, 1, 
          3, 9, 7, 4, 5, 6, 8 ], [ 10, 11, 10, 11, 11, 10, 11, 10, 11, 10, 10, 11, 11, 10, 10, 11, 
          8, 6, 5, 4, 7, 9, 2, 0, 3, 1, 7, 9, 5, 4, 8, 6 ], 
      [ 11, 10, 11, 10, 10, 11, 10, 11, 10, 11, 11, 10, 10, 11, 11, 10, 6, 8, 4, 5, 9, 7, 1, 3, 0, 
          2, 9, 7, 4, 5, 6, 8 ], [ 11, 10, 11, 10, 10, 11, 10, 11, 10, 11, 11, 10, 10, 11, 11, 10, 
          8, 6, 5, 4, 7, 9, 3, 1, 2, 0, 7, 9, 5, 4, 8, 6 ], 
      [ 11, 10, 11, 10, 10, 11, 10, 11, 11, 10, 10, 11, 11, 10, 10, 11, 5, 4, 7, 9, 1, 3, 8, 6, 8, 
          6, 0, 2, 7, 9, 5, 4 ], [ 11, 10, 11, 10, 10, 11, 10, 11, 11, 10, 10, 11, 11, 10, 10, 11, 
          4, 5, 9, 7, 3, 1, 6, 8, 6, 8, 2, 0, 9, 7, 4, 5 ], 
      [ 11, 10, 11, 10, 11, 10, 11, 10, 10, 11, 10, 11, 10, 11, 10, 11, 7, 9, 1, 3, 6, 8, 5, 4, 5, 
          4, 6, 8, 0, 2, 7, 9 ], [ 11, 10, 11, 10, 11, 10, 11, 10, 10, 11, 10, 11, 10, 11, 10, 11, 
          9, 7, 3, 1, 8, 6, 4, 5, 4, 5, 8, 6, 2, 0, 9, 7 ], 
      [ 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 1, 3, 6, 8, 4, 5, 7, 9, 7, 
          9, 4, 5, 6, 8, 0, 2 ], [ 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 
          3, 1, 8, 6, 5, 4, 9, 7, 9, 7, 5, 4, 8, 6, 2, 0 ] ] )