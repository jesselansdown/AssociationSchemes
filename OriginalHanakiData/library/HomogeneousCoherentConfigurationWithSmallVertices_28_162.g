rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 14, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -14, 1 ], 
      [ 1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 0, 2 ], 
      [ 2, 0, 0, 0, 0, 0, 0, 0, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)+E(7)^6, E(7)+E(7)^6, 
          E(7)^2+E(7)^5, E(7)^2+E(7)^5, 0, 4 ], 
      [ 2, 0, 0, 0, 0, 0, 0, 0, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^3+E(7)^4, E(7)^3+E(7)^4, 
          E(7)+E(7)^6, E(7)+E(7)^6, 0, 4 ], 
      [ 2, 0, 0, 0, 0, 0, 0, 0, E(7)+E(7)^6, E(7)+E(7)^6, E(7)^2+E(7)^5, E(7)^2+E(7)^5, 
          E(7)^3+E(7)^4, E(7)^3+E(7)^4, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 
          14, 14, 14 ], [ 1, 0, 8, 9, 10, 11, 12, 13, 2, 3, 4, 5, 6, 7, 14, 14, 14, 14, 14, 14, 
          14, 14, 14, 14, 14, 14, 14, 14 ], 
      [ 2, 9, 0, 10, 12, 8, 13, 11, 5, 1, 3, 7, 4, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 
          14, 14, 14 ], [ 3, 8, 11, 0, 9, 13, 10, 12, 1, 4, 6, 2, 7, 5, 14, 14, 14, 14, 14, 14, 
          14, 14, 14, 14, 14, 14, 14, 14 ], 
      [ 4, 11, 13, 8, 0, 12, 9, 10, 3, 6, 7, 1, 5, 2, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 
          14, 14, 14 ], [ 5, 10, 9, 12, 13, 0, 11, 8, 7, 2, 1, 6, 3, 4, 14, 14, 14, 14, 14, 14, 
          14, 14, 14, 14, 14, 14, 14, 14 ], 
      [ 6, 13, 12, 11, 8, 10, 0, 9, 4, 7, 5, 3, 2, 1, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 
          14, 14, 14 ], [ 7, 12, 10, 13, 11, 9, 8, 0, 6, 5, 2, 4, 1, 3, 14, 14, 14, 14, 14, 14, 
          14, 14, 14, 14, 14, 14, 14, 14 ], 
      [ 9, 2, 5, 1, 3, 7, 4, 6, 0, 10, 12, 8, 13, 11, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 
          14, 14, 14 ], [ 8, 3, 1, 4, 6, 2, 7, 5, 11, 0, 9, 13, 10, 12, 14, 14, 14, 14, 14, 14, 
          14, 14, 14, 14, 14, 14, 14, 14 ], 
      [ 11, 4, 3, 6, 7, 1, 5, 2, 13, 8, 0, 12, 9, 10, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 
          14, 14, 14 ], [ 10, 5, 7, 2, 1, 6, 3, 4, 9, 12, 13, 0, 11, 8, 14, 14, 14, 14, 14, 14, 
          14, 14, 14, 14, 14, 14, 14, 14 ], 
      [ 13, 6, 4, 7, 5, 3, 2, 1, 12, 11, 8, 10, 0, 9, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 
          14, 14, 14 ], [ 12, 7, 6, 5, 2, 4, 1, 3, 10, 13, 11, 9, 8, 0, 14, 14, 14, 14, 14, 14, 
          14, 14, 14, 14, 14, 14, 14, 14 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
          11, 12, 13 ], [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 1, 0, 8, 9, 10, 
          11, 12, 13, 2, 3, 4, 5, 6, 7 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 2, 9, 0, 10, 12, 8, 13, 11, 5, 1, 
          3, 7, 4, 6 ], [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 3, 8, 11, 0, 9, 
          13, 10, 12, 1, 4, 6, 2, 7, 5 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 4, 11, 13, 8, 0, 12, 9, 10, 3, 6, 
          7, 1, 5, 2 ], [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 5, 10, 9, 12, 
          13, 0, 11, 8, 7, 2, 1, 6, 3, 4 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 13, 12, 11, 8, 10, 0, 9, 4, 7, 
          5, 3, 2, 1 ], [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 12, 10, 13, 
          11, 9, 8, 0, 6, 5, 2, 4, 1, 3 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 9, 2, 5, 1, 3, 7, 4, 6, 0, 10, 12, 
          8, 13, 11 ], [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 3, 1, 4, 6, 2, 
          7, 5, 11, 0, 9, 13, 10, 12 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 11, 4, 3, 6, 7, 1, 5, 2, 13, 8, 0, 
          12, 9, 10 ], [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 10, 5, 7, 2, 1, 
          6, 3, 4, 9, 12, 13, 0, 11, 8 ], 
      [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 13, 6, 4, 7, 5, 3, 2, 1, 12, 11, 
          8, 10, 0, 9 ], [ 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 7, 6, 5, 2, 
          4, 1, 3, 10, 13, 11, 9, 8, 0 ] ] )