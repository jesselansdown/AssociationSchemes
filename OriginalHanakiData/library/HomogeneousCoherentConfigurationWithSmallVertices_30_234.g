rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 2*E(5), 2*E(5)^4, 2*E(5), 2*E(5)^4, 2*E(5)^4, 2*E(5), 2*E(5)^3, 
          2*E(5)^2, 2*E(5)^3, 2*E(5)^2, 2*E(5)^2, 2*E(5)^3, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 2*E(5)^2, 2*E(5)^3, 2*E(5)^2, 2*E(5)^3, 2*E(5)^3, 2*E(5)^2, 2*E(5), 
          2*E(5)^4, 2*E(5), 2*E(5)^4, 2*E(5)^4, 2*E(5), 1 ], 
      [ 1, 1, 1, 1, 1, 1, 2*E(5)^3, 2*E(5)^2, 2*E(5)^3, 2*E(5)^2, 2*E(5)^2, 2*E(5)^3, 2*E(5)^4, 
          2*E(5), 2*E(5)^4, 2*E(5), 2*E(5), 2*E(5)^4, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 2*E(5)^4, 2*E(5), 2*E(5)^4, 2*E(5), 2*E(5), 2*E(5)^4, 2*E(5)^2, 
          2*E(5)^3, 2*E(5)^2, 2*E(5)^3, 2*E(5)^3, 2*E(5)^2, 1 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 2, 2, 2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3), 2, 2, 
          2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3), 1 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 2*E(5), 2*E(5)^4, 2*E(15)^13, 2*E(15)^2, 2*E(15)^7, 
          2*E(15)^8, 2*E(5)^3, 2*E(5)^2, 2*E(15)^4, 2*E(15)^11, 2*E(15), 2*E(15)^14, 1 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 2*E(5)^2, 2*E(5)^3, 2*E(15), 2*E(15)^14, 2*E(15)^4, 
          2*E(15)^11, 2*E(5), 2*E(5)^4, 2*E(15)^13, 2*E(15)^2, 2*E(15)^7, 2*E(15)^8, 1 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 2*E(5)^3, 2*E(5)^2, 2*E(15)^4, 2*E(15)^11, 2*E(15), 
          2*E(15)^14, 2*E(5)^4, 2*E(5), 2*E(15)^7, 2*E(15)^8, 2*E(15)^13, 2*E(15)^2, 1 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 2*E(5)^4, 2*E(5), 2*E(15)^7, 2*E(15)^8, 2*E(15)^13, 
          2*E(15)^2, 2*E(5)^2, 2*E(5)^3, 2*E(15), 2*E(15)^14, 2*E(15)^4, 2*E(15)^11, 1 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 2, 2, 2*E(3), 2*E(3)^2, 2*E(3), 2*E(3)^2, 2, 2, 2*E(3), 
          2*E(3)^2, 2*E(3), 2*E(3)^2, 1 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 2*E(5), 2*E(5)^4, 2*E(15)^8, 2*E(15)^7, 2*E(15)^2, 
          2*E(15)^13, 2*E(5)^3, 2*E(5)^2, 2*E(15)^14, 2*E(15), 2*E(15)^11, 2*E(15)^4, 1 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 2*E(5)^2, 2*E(5)^3, 2*E(15)^11, 2*E(15)^4, 2*E(15)^14, 
          2*E(15), 2*E(5), 2*E(5)^4, 2*E(15)^8, 2*E(15)^7, 2*E(15)^2, 2*E(15)^13, 1 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 2*E(5)^3, 2*E(5)^2, 2*E(15)^14, 2*E(15), 2*E(15)^11, 
          2*E(15)^4, 2*E(5)^4, 2*E(5), 2*E(15)^2, 2*E(15)^13, 2*E(15)^8, 2*E(15)^7, 1 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 2*E(5)^4, 2*E(5), 2*E(15)^2, 2*E(15)^13, 2*E(15)^8, 
          2*E(15)^7, 2*E(5)^2, 2*E(5)^3, 2*E(15)^11, 2*E(15)^4, 2*E(15)^14, 2*E(15), 1 ], 
      [ 1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5 ], 
      [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 
          16, 16, 17, 17 ], [ 1, 0, 4, 5, 2, 3, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 
          13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], 
      [ 3, 5, 0, 2, 1, 4, 8, 8, 10, 10, 11, 11, 7, 7, 9, 9, 6, 6, 14, 14, 16, 16, 17, 17, 13, 13, 
          15, 15, 12, 12 ], [ 2, 4, 3, 0, 5, 1, 11, 11, 9, 9, 6, 6, 10, 10, 7, 7, 8, 8, 17, 17, 
          15, 15, 12, 12, 16, 16, 13, 13, 14, 14 ], 
      [ 5, 3, 1, 4, 0, 2, 8, 8, 10, 10, 11, 11, 7, 7, 9, 9, 6, 6, 14, 14, 16, 16, 17, 17, 13, 13, 
          15, 15, 12, 12 ], [ 4, 2, 5, 1, 3, 0, 11, 11, 9, 9, 6, 6, 10, 10, 7, 7, 8, 8, 17, 17, 
          15, 15, 12, 12, 16, 16, 13, 13, 14, 14 ], 
      [ 7, 7, 9, 10, 9, 10, 0, 1, 12, 12, 3, 5, 17, 17, 14, 14, 2, 4, 13, 13, 6, 6, 16, 16, 11, 
          11, 8, 8, 15, 15 ], [ 7, 7, 9, 10, 9, 10, 1, 0, 12, 12, 5, 3, 17, 17, 14, 14, 4, 2, 13, 
          13, 6, 6, 16, 16, 11, 11, 8, 8, 15, 15 ], 
      [ 6, 6, 11, 8, 11, 8, 13, 13, 0, 1, 16, 16, 2, 4, 3, 5, 15, 15, 7, 7, 12, 12, 10, 10, 17, 
          17, 14, 14, 9, 9 ], [ 6, 6, 11, 8, 11, 8, 13, 13, 1, 0, 16, 16, 4, 2, 5, 3, 15, 15, 7, 
          7, 12, 12, 10, 10, 17, 17, 14, 14, 9, 9 ], 
      [ 9, 9, 10, 7, 10, 7, 2, 4, 17, 17, 0, 1, 14, 14, 12, 12, 3, 5, 15, 15, 11, 11, 13, 13, 8, 
          8, 6, 6, 16, 16 ], [ 9, 9, 10, 7, 10, 7, 4, 2, 17, 17, 1, 0, 14, 14, 12, 12, 5, 3, 15, 
          15, 11, 11, 13, 13, 8, 8, 6, 6, 16, 16 ], 
      [ 8, 8, 6, 11, 6, 11, 16, 16, 3, 5, 15, 15, 0, 1, 2, 4, 13, 13, 10, 10, 14, 14, 9, 9, 12, 
          12, 17, 17, 7, 7 ], [ 8, 8, 6, 11, 6, 11, 16, 16, 5, 3, 15, 15, 1, 0, 4, 2, 13, 13, 10, 
          10, 14, 14, 9, 9, 12, 12, 17, 17, 7, 7 ], 
      [ 11, 11, 8, 6, 8, 6, 15, 15, 2, 4, 13, 13, 3, 5, 0, 1, 16, 16, 9, 9, 17, 17, 7, 7, 14, 14, 
          12, 12, 10, 10 ], [ 11, 11, 8, 6, 8, 6, 15, 15, 4, 2, 13, 13, 5, 3, 1, 0, 16, 16, 9, 9, 
          17, 17, 7, 7, 14, 14, 12, 12, 10, 10 ], 
      [ 10, 10, 7, 9, 7, 9, 3, 5, 14, 14, 2, 4, 12, 12, 17, 17, 0, 1, 16, 16, 8, 8, 15, 15, 6, 6, 
          11, 11, 13, 13 ], [ 10, 10, 7, 9, 7, 9, 5, 3, 14, 14, 4, 2, 12, 12, 17, 17, 1, 0, 16, 
          16, 8, 8, 15, 15, 6, 6, 11, 11, 13, 13 ], 
      [ 13, 13, 15, 16, 15, 16, 12, 12, 6, 6, 14, 14, 11, 11, 8, 8, 17, 17, 0, 1, 7, 7, 3, 5, 9, 
          9, 10, 10, 2, 4 ], [ 13, 13, 15, 16, 15, 16, 12, 12, 6, 6, 14, 14, 11, 11, 8, 8, 17, 17, 
          1, 0, 7, 7, 5, 3, 9, 9, 10, 10, 4, 2 ], 
      [ 12, 12, 17, 14, 17, 14, 7, 7, 13, 13, 10, 10, 15, 15, 16, 16, 9, 9, 6, 6, 0, 1, 8, 8, 2, 
          4, 3, 5, 11, 11 ], [ 12, 12, 17, 14, 17, 14, 7, 7, 13, 13, 10, 10, 15, 15, 16, 16, 9, 9, 
          6, 6, 1, 0, 8, 8, 4, 2, 5, 3, 11, 11 ], 
      [ 15, 15, 16, 13, 16, 13, 17, 17, 11, 11, 12, 12, 8, 8, 6, 6, 14, 14, 2, 4, 9, 9, 0, 1, 10, 
          10, 7, 7, 3, 5 ], [ 15, 15, 16, 13, 16, 13, 17, 17, 11, 11, 12, 12, 8, 8, 6, 6, 14, 14, 
          4, 2, 9, 9, 1, 0, 10, 10, 7, 7, 5, 3 ], 
      [ 14, 14, 12, 17, 12, 17, 10, 10, 16, 16, 9, 9, 13, 13, 15, 15, 7, 7, 8, 8, 3, 5, 11, 11, 0, 
          1, 2, 4, 6, 6 ], [ 14, 14, 12, 17, 12, 17, 10, 10, 16, 16, 9, 9, 13, 13, 15, 15, 7, 7, 
          8, 8, 5, 3, 11, 11, 1, 0, 4, 2, 6, 6 ], 
      [ 17, 17, 14, 12, 14, 12, 9, 9, 15, 15, 7, 7, 16, 16, 13, 13, 10, 10, 11, 11, 2, 4, 6, 6, 3, 
          5, 0, 1, 8, 8 ], [ 17, 17, 14, 12, 14, 12, 9, 9, 15, 15, 7, 7, 16, 16, 13, 13, 10, 10, 
          11, 11, 4, 2, 6, 6, 5, 3, 1, 0, 8, 8 ], 
      [ 16, 16, 13, 15, 13, 15, 14, 14, 8, 8, 17, 17, 6, 6, 11, 11, 12, 12, 3, 5, 10, 10, 2, 4, 7, 
          7, 9, 9, 0, 1 ], [ 16, 16, 13, 15, 13, 15, 14, 14, 8, 8, 17, 17, 6, 6, 11, 11, 12, 12, 
          5, 3, 10, 10, 4, 2, 7, 7, 9, 9, 1, 0 ] ] )