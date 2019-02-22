rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -5, -5, -5, 1 ], 
      [ 2, -1, -1, 2, 2, -1, -1, -1, -1, 2, 2, -1, -1, -1, -1, 0, 0, 0, 2 ], 
      [ 1, 1, 1, E(5)^4, E(5), E(5)^4, E(5), E(5), E(5)^4, E(5)^2, E(5)^3, E(5)^2, E(5)^3, E(5)^3, 
          E(5)^2, 0, 0, 0, 2 ], [ 1, 1, 1, E(5)^3, E(5)^2, E(5)^3, E(5)^2, E(5)^2, E(5)^3, E(5)^4, 
          E(5), E(5)^4, E(5), E(5), E(5)^4, 0, 0, 0, 2 ], 
      [ 1, 1, 1, E(5)^2, E(5)^3, E(5)^2, E(5)^3, E(5)^3, E(5)^2, E(5), E(5)^4, E(5), E(5)^4, 
          E(5)^4, E(5), 0, 0, 0, 2 ], 
      [ 1, 1, 1, E(5), E(5)^4, E(5), E(5)^4, E(5)^4, E(5), E(5)^3, E(5)^2, E(5)^3, E(5)^2, E(5)^2, 
          E(5)^3, 0, 0, 0, 2 ], 
      [ 1, E(3)^2, E(3), E(5)^4, E(5), E(15)^2, E(15)^13, E(15)^8, E(15)^7, E(5)^2, E(5)^3, 
          E(15)^11, E(15)^4, E(15)^14, E(15), 0, 0, 0, 2 ], 
      [ 1, E(3)^2, E(3), E(5)^3, E(5)^2, E(15)^14, E(15), E(15)^11, E(15)^4, E(5)^4, E(5), 
          E(15)^2, E(15)^13, E(15)^8, E(15)^7, 0, 0, 0, 2 ], 
      [ 1, E(3)^2, E(3), E(5)^2, E(5)^3, E(15)^11, E(15)^4, E(15)^14, E(15), E(5), E(5)^4, 
          E(15)^8, E(15)^7, E(15)^2, E(15)^13, 0, 0, 0, 2 ], 
      [ 1, E(3)^2, E(3), E(5), E(5)^4, E(15)^8, E(15)^7, E(15)^2, E(15)^13, E(5)^3, E(5)^2, 
          E(15)^14, E(15), E(15)^11, E(15)^4, 0, 0, 0, 2 ], 
      [ 1, E(3), E(3)^2, E(5)^4, E(5), E(15)^7, E(15)^8, E(15)^13, E(15)^2, E(5)^2, E(5)^3, E(15), 
          E(15)^14, E(15)^4, E(15)^11, 0, 0, 0, 2 ], 
      [ 1, E(3), E(3)^2, E(5)^3, E(5)^2, E(15)^4, E(15)^11, E(15), E(15)^14, E(5)^4, E(5), 
          E(15)^7, E(15)^8, E(15)^13, E(15)^2, 0, 0, 0, 2 ], 
      [ 1, E(3), E(3)^2, E(5)^2, E(5)^3, E(15), E(15)^14, E(15)^4, E(15)^11, E(5), E(5)^4, 
          E(15)^13, E(15)^2, E(15)^7, E(15)^8, 0, 0, 0, 2 ], 
      [ 1, E(3), E(3)^2, E(5), E(5)^4, E(15)^13, E(15)^2, E(15)^7, E(15)^8, E(5)^3, E(5)^2, 
          E(15)^4, E(15)^11, E(15), E(15)^14, 0, 0, 0, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 
          17, 17, 17, 17, 17 ], [ 2, 0, 1, 5, 7, 8, 4, 6, 3, 11, 13, 14, 10, 12, 9, 16, 16, 16, 
          16, 16, 17, 17, 17, 17, 17, 15, 15, 15, 15, 15 ], 
      [ 1, 2, 0, 8, 6, 3, 7, 4, 5, 14, 12, 9, 13, 10, 11, 17, 17, 17, 17, 17, 15, 15, 15, 15, 15, 
          16, 16, 16, 16, 16 ], [ 4, 6, 7, 0, 9, 2, 14, 11, 1, 10, 3, 13, 8, 5, 12, 15, 15, 15, 
          15, 15, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17 ], 
      [ 3, 8, 5, 10, 0, 13, 1, 2, 12, 4, 9, 7, 14, 11, 6, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 
          17, 17, 17, 17, 17 ], [ 6, 7, 4, 1, 14, 0, 11, 9, 2, 12, 8, 10, 5, 3, 13, 17, 17, 17, 
          17, 17, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16 ], 
      [ 5, 3, 8, 13, 2, 12, 0, 1, 10, 7, 11, 6, 9, 14, 4, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 
          15, 15, 15, 15, 15 ], [ 8, 5, 3, 12, 1, 10, 2, 0, 13, 6, 14, 4, 11, 9, 7, 17, 17, 17, 
          17, 17, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16 ], 
      [ 7, 4, 6, 2, 11, 1, 9, 14, 0, 13, 5, 12, 3, 8, 10, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 
          15, 15, 15, 15, 15 ], [ 10, 12, 13, 9, 3, 11, 8, 5, 14, 0, 4, 2, 6, 7, 1, 15, 15, 15, 
          15, 15, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17 ], 
      [ 9, 14, 11, 4, 10, 7, 12, 13, 6, 3, 0, 5, 1, 2, 8, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 
          17, 17, 17, 17, 17 ], [ 12, 13, 10, 14, 8, 9, 5, 3, 11, 1, 6, 0, 7, 4, 2, 17, 17, 17, 
          17, 17, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16 ], 
      [ 11, 9, 14, 7, 13, 6, 10, 12, 4, 5, 2, 8, 0, 1, 3, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 
          15, 15, 15, 15, 15 ], [ 14, 11, 9, 6, 12, 4, 13, 10, 7, 8, 1, 3, 2, 0, 5, 17, 17, 17, 
          17, 17, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16 ], 
      [ 13, 10, 12, 11, 5, 14, 3, 8, 9, 2, 7, 1, 4, 6, 0, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 
          15, 15, 15, 15, 15 ], [ 15, 16, 17, 15, 15, 17, 16, 17, 16, 15, 15, 17, 16, 17, 16, 0, 
          3, 4, 9, 10, 1, 6, 8, 12, 14, 2, 5, 7, 11, 13 ], 
      [ 15, 16, 17, 15, 15, 17, 16, 17, 16, 15, 15, 17, 16, 17, 16, 4, 0, 9, 10, 3, 6, 14, 1, 8, 
          12, 7, 2, 11, 13, 5 ], [ 15, 16, 17, 15, 15, 17, 16, 17, 16, 15, 15, 17, 16, 17, 16, 3, 
          10, 0, 4, 9, 8, 1, 12, 14, 6, 5, 13, 2, 7, 11 ], 
      [ 15, 16, 17, 15, 15, 17, 16, 17, 16, 15, 15, 17, 16, 17, 16, 10, 9, 3, 0, 4, 12, 8, 14, 6, 
          1, 13, 11, 5, 2, 7 ], [ 15, 16, 17, 15, 15, 17, 16, 17, 16, 15, 15, 17, 16, 17, 16, 9, 
          4, 10, 3, 0, 14, 12, 6, 1, 8, 11, 7, 13, 5, 2 ], 
      [ 16, 17, 15, 16, 16, 15, 17, 15, 17, 16, 16, 15, 17, 15, 17, 2, 5, 7, 11, 13, 0, 4, 3, 10, 
          9, 1, 8, 6, 14, 12 ], [ 16, 17, 15, 16, 16, 15, 17, 15, 17, 16, 16, 15, 17, 15, 17, 5, 
          13, 2, 7, 11, 3, 0, 10, 9, 4, 8, 12, 1, 6, 14 ], 
      [ 16, 17, 15, 16, 16, 15, 17, 15, 17, 16, 16, 15, 17, 15, 17, 7, 2, 11, 13, 5, 4, 9, 0, 3, 
          10, 6, 1, 14, 12, 8 ], [ 16, 17, 15, 16, 16, 15, 17, 15, 17, 16, 16, 15, 17, 15, 17, 11, 
          7, 13, 5, 2, 9, 10, 4, 0, 3, 14, 6, 12, 8, 1 ], 
      [ 16, 17, 15, 16, 16, 15, 17, 15, 17, 16, 16, 15, 17, 15, 17, 13, 11, 5, 2, 7, 10, 3, 9, 4, 
          0, 12, 14, 8, 1, 6 ], [ 17, 15, 16, 17, 17, 16, 15, 16, 15, 17, 17, 16, 15, 16, 15, 1, 
          8, 6, 14, 12, 2, 7, 5, 13, 11, 0, 3, 4, 9, 10 ], 
      [ 17, 15, 16, 17, 17, 16, 15, 16, 15, 17, 17, 16, 15, 16, 15, 6, 1, 14, 12, 8, 7, 11, 2, 5, 
          13, 4, 0, 9, 10, 3 ], [ 17, 15, 16, 17, 17, 16, 15, 16, 15, 17, 17, 16, 15, 16, 15, 8, 
          12, 1, 6, 14, 5, 2, 13, 11, 7, 3, 10, 0, 4, 9 ], 
      [ 17, 15, 16, 17, 17, 16, 15, 16, 15, 17, 17, 16, 15, 16, 15, 12, 14, 8, 1, 6, 13, 5, 11, 7, 
          2, 10, 9, 3, 0, 4 ], [ 17, 15, 16, 17, 17, 16, 15, 16, 15, 17, 17, 16, 15, 16, 15, 14, 
          6, 12, 8, 1, 11, 13, 7, 2, 5, 9, 4, 10, 3, 0 ] ] )