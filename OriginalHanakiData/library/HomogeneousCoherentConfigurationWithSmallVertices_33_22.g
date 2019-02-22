rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 11, 11, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 11*E(3), 11*E(3)^2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 11*E(3)^2, 11*E(3), 1 ], 
      [ 1, E(11), E(11)^10, E(11)^9, E(11)^2, E(11)^8, E(11)^3, E(11)^7, E(11)^4, E(11)^6, 
          E(11)^5, 0, 0, 3 ], [ 1, E(11)^2, E(11)^9, E(11)^7, E(11)^4, E(11)^5, E(11)^6, E(11)^3, 
          E(11)^8, E(11), E(11)^10, 0, 0, 3 ], 
      [ 1, E(11)^3, E(11)^8, E(11)^5, E(11)^6, E(11)^2, E(11)^9, E(11)^10, E(11), E(11)^7, 
          E(11)^4, 0, 0, 3 ], [ 1, E(11)^4, E(11)^7, E(11)^3, E(11)^8, E(11)^10, E(11), E(11)^6, 
          E(11)^5, E(11)^2, E(11)^9, 0, 0, 3 ], 
      [ 1, E(11)^5, E(11)^6, E(11), E(11)^10, E(11)^7, E(11)^4, E(11)^2, E(11)^9, E(11)^8, 
          E(11)^3, 0, 0, 3 ], [ 1, E(11)^6, E(11)^5, E(11)^10, E(11), E(11)^4, E(11)^7, E(11)^9, 
          E(11)^2, E(11)^3, E(11)^8, 0, 0, 3 ], 
      [ 1, E(11)^7, E(11)^4, E(11)^8, E(11)^3, E(11), E(11)^10, E(11)^5, E(11)^6, E(11)^9, 
          E(11)^2, 0, 0, 3 ], [ 1, E(11)^8, E(11)^3, E(11)^6, E(11)^5, E(11)^9, E(11)^2, E(11), 
          E(11)^10, E(11)^4, E(11)^7, 0, 0, 3 ], 
      [ 1, E(11)^9, E(11)^2, E(11)^4, E(11)^7, E(11)^6, E(11)^5, E(11)^8, E(11)^3, E(11)^10, 
          E(11), 0, 0, 3 ], [ 1, E(11)^10, E(11), E(11)^2, E(11)^9, E(11)^3, E(11)^8, E(11)^4, 
          E(11)^7, E(11)^5, E(11)^6, 0, 0, 3 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 2, 0, 3, 5, 1, 7, 4, 9, 6, 10, 8, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 1, 4, 0, 2, 6, 3, 8, 5, 10, 7, 9, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 4, 6, 1, 0, 8, 2, 10, 3, 9, 5, 7, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 3, 2, 5, 7, 0, 9, 1, 10, 4, 8, 6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 6, 8, 4, 1, 10, 0, 9, 2, 7, 3, 5, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 5, 3, 7, 9, 2, 10, 0, 8, 1, 6, 4, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 8, 10, 6, 4, 9, 1, 7, 0, 5, 2, 3, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 7, 5, 9, 10, 3, 8, 2, 6, 0, 4, 1, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 10, 9, 8, 6, 7, 4, 5, 1, 3, 0, 2, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 9, 7, 10, 8, 5, 6, 3, 4, 2, 1, 0, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 
          12, 12, 12, 12, 12, 12, 12, 12 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 2, 0, 3, 5, 1, 7, 4, 9, 6, 10, 8, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 1, 4, 0, 2, 6, 3, 8, 5, 10, 7, 9, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 4, 6, 1, 0, 8, 2, 10, 3, 9, 5, 7, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 3, 2, 5, 7, 0, 9, 1, 10, 4, 8, 6, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 6, 8, 4, 1, 10, 0, 9, 2, 7, 3, 5, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 5, 3, 7, 9, 2, 10, 0, 8, 1, 6, 4, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 8, 10, 6, 4, 9, 1, 7, 0, 5, 2, 3, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 7, 5, 9, 10, 3, 8, 2, 6, 0, 4, 1, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 10, 9, 8, 6, 7, 4, 5, 1, 3, 0, 2, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 9, 7, 10, 8, 5, 6, 3, 4, 2, 1, 0, 11, 11, 11, 
          11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 
          1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 2, 
          0, 3, 5, 1, 7, 4, 9, 6, 10, 8 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 1, 
          4, 0, 2, 6, 3, 8, 5, 10, 7, 9 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 4, 
          6, 1, 0, 8, 2, 10, 3, 9, 5, 7 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 3, 
          2, 5, 7, 0, 9, 1, 10, 4, 8, 6 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 6, 
          8, 4, 1, 10, 0, 9, 2, 7, 3, 5 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 5, 
          3, 7, 9, 2, 10, 0, 8, 1, 6, 4 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 8, 
          10, 6, 4, 9, 1, 7, 0, 5, 2, 3 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 7, 
          5, 9, 10, 3, 8, 2, 6, 0, 4, 1 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 
          10, 9, 8, 6, 7, 4, 5, 1, 3, 0, 2 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 9, 
          7, 10, 8, 5, 6, 3, 4, 2, 1, 0 ] ] )