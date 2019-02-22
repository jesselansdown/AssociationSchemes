rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(7)^3+2*E(7)^4, 2*E(7)^3+2*E(7)^4, 2*E(7)+2*E(7)^6, 
          2*E(7)+2*E(7)^6, 2*E(7)^2+2*E(7)^5, 2*E(7)^2+2*E(7)^5, 2 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(7)^2+2*E(7)^5, 2*E(7)^2+2*E(7)^5, 2*E(7)^3+2*E(7)^4, 
          2*E(7)^3+2*E(7)^4, 2*E(7)+2*E(7)^6, 2*E(7)+2*E(7)^6, 2 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2*E(7)+2*E(7)^6, 2*E(7)+2*E(7)^6, 2*E(7)^2+2*E(7)^5, 
          2*E(7)^2+2*E(7)^5, 2*E(7)^3+2*E(7)^4, 2*E(7)^3+2*E(7)^4, 2 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 
          15 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 
          14, 14, 15, 15 ], [ 3, 2, 0, 1, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 4, 4, 5, 
          5, 6, 6, 7, 7, 8, 8, 9, 9 ], 
      [ 2, 3, 1, 0, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 
          9, 9 ], [ 4, 4, 11, 11, 0, 1, 12, 12, 14, 14, 10, 10, 15, 15, 13, 13, 7, 7, 2, 3, 5, 5, 
          9, 9, 6, 6, 8, 8 ], [ 4, 4, 11, 11, 1, 0, 12, 12, 14, 14, 10, 10, 15, 15, 13, 13, 7, 7, 
          3, 2, 5, 5, 9, 9, 6, 6, 8, 8 ], 
      [ 5, 5, 10, 10, 13, 13, 0, 1, 11, 11, 15, 15, 12, 12, 14, 14, 2, 3, 6, 6, 8, 8, 4, 4, 9, 9, 
          7, 7 ], [ 5, 5, 10, 10, 13, 13, 1, 0, 11, 11, 15, 15, 12, 12, 14, 14, 3, 2, 6, 6, 8, 8, 
          4, 4, 9, 9, 7, 7 ], [ 6, 6, 13, 13, 15, 15, 10, 10, 0, 1, 14, 14, 11, 11, 12, 12, 5, 5, 
          8, 8, 9, 9, 2, 3, 7, 7, 4, 4 ], 
      [ 6, 6, 13, 13, 15, 15, 10, 10, 1, 0, 14, 14, 11, 11, 12, 12, 5, 5, 8, 8, 9, 9, 3, 2, 7, 7, 
          4, 4 ], [ 7, 7, 12, 12, 11, 11, 14, 14, 15, 15, 0, 1, 13, 13, 10, 10, 9, 9, 4, 4, 2, 3, 
          8, 8, 5, 5, 6, 6 ], [ 7, 7, 12, 12, 11, 11, 14, 14, 15, 15, 1, 0, 13, 13, 10, 10, 9, 9, 
          4, 4, 3, 2, 8, 8, 5, 5, 6, 6 ], 
      [ 8, 8, 15, 15, 14, 14, 13, 13, 10, 10, 12, 12, 0, 1, 11, 11, 6, 6, 9, 9, 7, 7, 5, 5, 4, 4, 
          2, 3 ], [ 8, 8, 15, 15, 14, 14, 13, 13, 10, 10, 12, 12, 1, 0, 11, 11, 6, 6, 9, 9, 7, 7, 
          5, 5, 4, 4, 3, 2 ], [ 9, 9, 14, 14, 12, 12, 15, 15, 13, 13, 11, 11, 10, 10, 0, 1, 8, 8, 
          7, 7, 4, 4, 6, 6, 2, 3, 5, 5 ], 
      [ 9, 9, 14, 14, 12, 12, 15, 15, 13, 13, 11, 11, 10, 10, 1, 0, 8, 8, 7, 7, 4, 4, 6, 6, 3, 2, 
          5, 5 ], [ 11, 11, 4, 4, 7, 7, 3, 2, 5, 5, 9, 9, 6, 6, 8, 8, 0, 1, 12, 12, 14, 14, 10, 
          10, 15, 15, 13, 13 ], [ 11, 11, 4, 4, 7, 7, 2, 3, 5, 5, 9, 9, 6, 6, 8, 8, 1, 0, 12, 12, 
          14, 14, 10, 10, 15, 15, 13, 13 ], 
      [ 10, 10, 5, 5, 3, 2, 6, 6, 8, 8, 4, 4, 9, 9, 7, 7, 13, 13, 0, 1, 11, 11, 15, 15, 12, 12, 
          14, 14 ], [ 10, 10, 5, 5, 2, 3, 6, 6, 8, 8, 4, 4, 9, 9, 7, 7, 13, 13, 1, 0, 11, 11, 15, 
          15, 12, 12, 14, 14 ], [ 13, 13, 6, 6, 5, 5, 8, 8, 9, 9, 3, 2, 7, 7, 4, 4, 15, 15, 10, 
          10, 0, 1, 14, 14, 11, 11, 12, 12 ], 
      [ 13, 13, 6, 6, 5, 5, 8, 8, 9, 9, 2, 3, 7, 7, 4, 4, 15, 15, 10, 10, 1, 0, 14, 14, 11, 11, 
          12, 12 ], [ 12, 12, 7, 7, 9, 9, 4, 4, 3, 2, 8, 8, 5, 5, 6, 6, 11, 11, 14, 14, 15, 15, 0, 
          1, 13, 13, 10, 10 ], [ 12, 12, 7, 7, 9, 9, 4, 4, 2, 3, 8, 8, 5, 5, 6, 6, 11, 11, 14, 14, 
          15, 15, 1, 0, 13, 13, 10, 10 ], 
      [ 15, 15, 8, 8, 6, 6, 9, 9, 7, 7, 5, 5, 4, 4, 3, 2, 14, 14, 13, 13, 10, 10, 12, 12, 0, 1, 
          11, 11 ], [ 15, 15, 8, 8, 6, 6, 9, 9, 7, 7, 5, 5, 4, 4, 2, 3, 14, 14, 13, 13, 10, 10, 
          12, 12, 1, 0, 11, 11 ], [ 14, 14, 9, 9, 8, 8, 7, 7, 4, 4, 6, 6, 3, 2, 5, 5, 12, 12, 15, 
          15, 13, 13, 11, 11, 10, 10, 0, 1 ], 
      [ 14, 14, 9, 9, 8, 8, 7, 7, 4, 4, 6, 6, 2, 3, 5, 5, 12, 12, 15, 15, 13, 13, 11, 11, 10, 10, 
          1, 0 ] ] )