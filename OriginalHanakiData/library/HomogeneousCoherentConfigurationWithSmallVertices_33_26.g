rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, E(11), E(11)^10, E(11)^9, E(11)^2, E(11)^8, E(11)^3, E(11)^7, E(11)^4, E(11)^6, 
          E(11)^5, 2, 2*E(11)^10, 2*E(11), 2*E(11)^9, 2*E(11)^2, 2*E(11)^8, 2*E(11)^3, 2*E(11)^7, 
          2*E(11)^4, 2*E(11)^6, 2*E(11)^5, 1 ], 
      [ 1, E(11)^2, E(11)^9, E(11)^7, E(11)^4, E(11)^5, E(11)^6, E(11)^3, E(11)^8, E(11), 
          E(11)^10, 2, 2*E(11)^9, 2*E(11)^2, 2*E(11)^7, 2*E(11)^4, 2*E(11)^5, 2*E(11)^6, 
          2*E(11)^3, 2*E(11)^8, 2*E(11), 2*E(11)^10, 1 ], 
      [ 1, E(11)^3, E(11)^8, E(11)^5, E(11)^6, E(11)^2, E(11)^9, E(11)^10, E(11), E(11)^7, 
          E(11)^4, 2, 2*E(11)^8, 2*E(11)^3, 2*E(11)^5, 2*E(11)^6, 2*E(11)^2, 2*E(11)^9, 
          2*E(11)^10, 2*E(11), 2*E(11)^7, 2*E(11)^4, 1 ], 
      [ 1, E(11)^4, E(11)^7, E(11)^3, E(11)^8, E(11)^10, E(11), E(11)^6, E(11)^5, E(11)^2, 
          E(11)^9, 2, 2*E(11)^7, 2*E(11)^4, 2*E(11)^3, 2*E(11)^8, 2*E(11)^10, 2*E(11), 2*E(11)^6, 
          2*E(11)^5, 2*E(11)^2, 2*E(11)^9, 1 ], 
      [ 1, E(11)^5, E(11)^6, E(11), E(11)^10, E(11)^7, E(11)^4, E(11)^2, E(11)^9, E(11)^8, 
          E(11)^3, 2, 2*E(11)^6, 2*E(11)^5, 2*E(11), 2*E(11)^10, 2*E(11)^7, 2*E(11)^4, 2*E(11)^2, 
          2*E(11)^9, 2*E(11)^8, 2*E(11)^3, 1 ], 
      [ 1, E(11)^6, E(11)^5, E(11)^10, E(11), E(11)^4, E(11)^7, E(11)^9, E(11)^2, E(11)^3, 
          E(11)^8, 2, 2*E(11)^5, 2*E(11)^6, 2*E(11)^10, 2*E(11), 2*E(11)^4, 2*E(11)^7, 2*E(11)^9, 
          2*E(11)^2, 2*E(11)^3, 2*E(11)^8, 1 ], 
      [ 1, E(11)^7, E(11)^4, E(11)^8, E(11)^3, E(11), E(11)^10, E(11)^5, E(11)^6, E(11)^9, 
          E(11)^2, 2, 2*E(11)^4, 2*E(11)^7, 2*E(11)^8, 2*E(11)^3, 2*E(11), 2*E(11)^10, 2*E(11)^5, 
          2*E(11)^6, 2*E(11)^9, 2*E(11)^2, 1 ], 
      [ 1, E(11)^8, E(11)^3, E(11)^6, E(11)^5, E(11)^9, E(11)^2, E(11), E(11)^10, E(11)^4, 
          E(11)^7, 2, 2*E(11)^3, 2*E(11)^8, 2*E(11)^6, 2*E(11)^5, 2*E(11)^9, 2*E(11)^2, 2*E(11), 
          2*E(11)^10, 2*E(11)^4, 2*E(11)^7, 1 ], 
      [ 1, E(11)^9, E(11)^2, E(11)^4, E(11)^7, E(11)^6, E(11)^5, E(11)^8, E(11)^3, E(11)^10, 
          E(11), 2, 2*E(11)^2, 2*E(11)^9, 2*E(11)^4, 2*E(11)^7, 2*E(11)^6, 2*E(11)^5, 2*E(11)^8, 
          2*E(11)^3, 2*E(11)^10, 2*E(11), 1 ], 
      [ 1, E(11)^10, E(11), E(11)^2, E(11)^9, E(11)^3, E(11)^8, E(11)^4, E(11)^7, E(11)^5, 
          E(11)^6, 2, 2*E(11), 2*E(11)^10, 2*E(11)^2, 2*E(11)^9, 2*E(11)^3, 2*E(11)^8, 2*E(11)^4, 
          2*E(11)^7, 2*E(11)^5, 2*E(11)^6, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2 ], 
      [ 1, E(11), E(11)^10, E(11)^9, E(11)^2, E(11)^8, E(11)^3, E(11)^7, E(11)^4, E(11)^6, 
          E(11)^5, -1, -E(11)^10, -E(11), -E(11)^9, -E(11)^2, -E(11)^8, -E(11)^3, -E(11)^7, 
          -E(11)^4, -E(11)^6, -E(11)^5, 2 ], 
      [ 1, E(11)^2, E(11)^9, E(11)^7, E(11)^4, E(11)^5, E(11)^6, E(11)^3, E(11)^8, E(11), 
          E(11)^10, -1, -E(11)^9, -E(11)^2, -E(11)^7, -E(11)^4, -E(11)^5, -E(11)^6, -E(11)^3, 
          -E(11)^8, -E(11), -E(11)^10, 2 ], 
      [ 1, E(11)^3, E(11)^8, E(11)^5, E(11)^6, E(11)^2, E(11)^9, E(11)^10, E(11), E(11)^7, 
          E(11)^4, -1, -E(11)^8, -E(11)^3, -E(11)^5, -E(11)^6, -E(11)^2, -E(11)^9, -E(11)^10, 
          -E(11), -E(11)^7, -E(11)^4, 2 ], 
      [ 1, E(11)^4, E(11)^7, E(11)^3, E(11)^8, E(11)^10, E(11), E(11)^6, E(11)^5, E(11)^2, 
          E(11)^9, -1, -E(11)^7, -E(11)^4, -E(11)^3, -E(11)^8, -E(11)^10, -E(11), -E(11)^6, 
          -E(11)^5, -E(11)^2, -E(11)^9, 2 ], 
      [ 1, E(11)^5, E(11)^6, E(11), E(11)^10, E(11)^7, E(11)^4, E(11)^2, E(11)^9, E(11)^8, 
          E(11)^3, -1, -E(11)^6, -E(11)^5, -E(11), -E(11)^10, -E(11)^7, -E(11)^4, -E(11)^2, 
          -E(11)^9, -E(11)^8, -E(11)^3, 2 ], 
      [ 1, E(11)^6, E(11)^5, E(11)^10, E(11), E(11)^4, E(11)^7, E(11)^9, E(11)^2, E(11)^3, 
          E(11)^8, -1, -E(11)^5, -E(11)^6, -E(11)^10, -E(11), -E(11)^4, -E(11)^7, -E(11)^9, 
          -E(11)^2, -E(11)^3, -E(11)^8, 2 ], 
      [ 1, E(11)^7, E(11)^4, E(11)^8, E(11)^3, E(11), E(11)^10, E(11)^5, E(11)^6, E(11)^9, 
          E(11)^2, -1, -E(11)^4, -E(11)^7, -E(11)^8, -E(11)^3, -E(11), -E(11)^10, -E(11)^5, 
          -E(11)^6, -E(11)^9, -E(11)^2, 2 ], 
      [ 1, E(11)^8, E(11)^3, E(11)^6, E(11)^5, E(11)^9, E(11)^2, E(11), E(11)^10, E(11)^4, 
          E(11)^7, -1, -E(11)^3, -E(11)^8, -E(11)^6, -E(11)^5, -E(11)^9, -E(11)^2, -E(11), 
          -E(11)^10, -E(11)^4, -E(11)^7, 2 ], 
      [ 1, E(11)^9, E(11)^2, E(11)^4, E(11)^7, E(11)^6, E(11)^5, E(11)^8, E(11)^3, E(11)^10, 
          E(11), -1, -E(11)^2, -E(11)^9, -E(11)^4, -E(11)^7, -E(11)^6, -E(11)^5, -E(11)^8, 
          -E(11)^3, -E(11)^10, -E(11), 2 ], 
      [ 1, E(11)^10, E(11), E(11)^2, E(11)^9, E(11)^3, E(11)^8, E(11)^4, E(11)^7, E(11)^5, 
          E(11)^6, -1, -E(11), -E(11)^10, -E(11)^2, -E(11)^9, -E(11)^3, -E(11)^8, -E(11)^4, 
          -E(11)^7, -E(11)^5, -E(11)^6, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 
          18, 18, 19, 19, 20, 20, 21, 21 ], 
      [ 2, 0, 3, 5, 1, 7, 4, 9, 6, 10, 8, 12, 12, 14, 14, 11, 11, 16, 16, 13, 13, 18, 18, 15, 15, 
          20, 20, 17, 17, 21, 21, 19, 19 ], 
      [ 1, 4, 0, 2, 6, 3, 8, 5, 10, 7, 9, 13, 13, 11, 11, 15, 15, 12, 12, 17, 17, 14, 14, 19, 19, 
          16, 16, 21, 21, 18, 18, 20, 20 ], 
      [ 4, 6, 1, 0, 8, 2, 10, 3, 9, 5, 7, 15, 15, 13, 13, 17, 17, 11, 11, 19, 19, 12, 12, 21, 21, 
          14, 14, 20, 20, 16, 16, 18, 18 ], 
      [ 3, 2, 5, 7, 0, 9, 1, 10, 4, 8, 6, 14, 14, 16, 16, 12, 12, 18, 18, 11, 11, 20, 20, 13, 13, 
          21, 21, 15, 15, 19, 19, 17, 17 ], 
      [ 6, 8, 4, 1, 10, 0, 9, 2, 7, 3, 5, 17, 17, 15, 15, 19, 19, 13, 13, 21, 21, 11, 11, 20, 20, 
          12, 12, 18, 18, 14, 14, 16, 16 ], 
      [ 5, 3, 7, 9, 2, 10, 0, 8, 1, 6, 4, 16, 16, 18, 18, 14, 14, 20, 20, 12, 12, 21, 21, 11, 11, 
          19, 19, 13, 13, 17, 17, 15, 15 ], 
      [ 8, 10, 6, 4, 9, 1, 7, 0, 5, 2, 3, 19, 19, 17, 17, 21, 21, 15, 15, 20, 20, 13, 13, 18, 18, 
          11, 11, 16, 16, 12, 12, 14, 14 ], 
      [ 7, 5, 9, 10, 3, 8, 2, 6, 0, 4, 1, 18, 18, 20, 20, 16, 16, 21, 21, 14, 14, 19, 19, 12, 12, 
          17, 17, 11, 11, 15, 15, 13, 13 ], 
      [ 10, 9, 8, 6, 7, 4, 5, 1, 3, 0, 2, 21, 21, 19, 19, 20, 20, 17, 17, 18, 18, 15, 15, 16, 16, 
          13, 13, 14, 14, 11, 11, 12, 12 ], 
      [ 9, 7, 10, 8, 5, 6, 3, 4, 2, 1, 0, 20, 20, 21, 21, 18, 18, 19, 19, 16, 16, 17, 17, 14, 14, 
          15, 15, 12, 12, 13, 13, 11, 11 ], 
      [ 11, 13, 12, 14, 15, 16, 17, 18, 19, 20, 21, 0, 11, 2, 12, 1, 13, 3, 14, 4, 15, 5, 16, 6, 
          17, 7, 18, 8, 19, 9, 20, 10, 21 ], 
      [ 11, 13, 12, 14, 15, 16, 17, 18, 19, 20, 21, 11, 0, 12, 2, 13, 1, 14, 3, 15, 4, 16, 5, 17, 
          6, 18, 7, 19, 8, 20, 9, 21, 10 ], 
      [ 13, 15, 11, 12, 17, 14, 19, 16, 21, 18, 20, 1, 13, 0, 11, 4, 15, 2, 12, 6, 17, 3, 14, 8, 
          19, 5, 16, 10, 21, 7, 18, 9, 20 ], 
      [ 13, 15, 11, 12, 17, 14, 19, 16, 21, 18, 20, 13, 1, 11, 0, 15, 4, 12, 2, 17, 6, 14, 3, 19, 
          8, 16, 5, 21, 10, 18, 7, 20, 9 ], 
      [ 12, 11, 14, 16, 13, 18, 15, 20, 17, 21, 19, 2, 12, 3, 14, 0, 11, 5, 16, 1, 13, 7, 18, 4, 
          15, 9, 20, 6, 17, 10, 21, 8, 19 ], 
      [ 12, 11, 14, 16, 13, 18, 15, 20, 17, 21, 19, 12, 2, 14, 3, 11, 0, 16, 5, 13, 1, 18, 7, 15, 
          4, 20, 9, 17, 6, 21, 10, 19, 8 ], 
      [ 15, 17, 13, 11, 19, 12, 21, 14, 20, 16, 18, 4, 15, 1, 13, 6, 17, 0, 11, 8, 19, 2, 12, 10, 
          21, 3, 14, 9, 20, 5, 16, 7, 18 ], 
      [ 15, 17, 13, 11, 19, 12, 21, 14, 20, 16, 18, 15, 4, 13, 1, 17, 6, 11, 0, 19, 8, 12, 2, 21, 
          10, 14, 3, 20, 9, 16, 5, 18, 7 ], 
      [ 14, 12, 16, 18, 11, 20, 13, 21, 15, 19, 17, 3, 14, 5, 16, 2, 12, 7, 18, 0, 11, 9, 20, 1, 
          13, 10, 21, 4, 15, 8, 19, 6, 17 ], 
      [ 14, 12, 16, 18, 11, 20, 13, 21, 15, 19, 17, 14, 3, 16, 5, 12, 2, 18, 7, 11, 0, 20, 9, 13, 
          1, 21, 10, 15, 4, 19, 8, 17, 6 ], 
      [ 17, 19, 15, 13, 21, 11, 20, 12, 18, 14, 16, 6, 17, 4, 15, 8, 19, 1, 13, 10, 21, 0, 11, 9, 
          20, 2, 12, 7, 18, 3, 14, 5, 16 ], 
      [ 17, 19, 15, 13, 21, 11, 20, 12, 18, 14, 16, 17, 6, 15, 4, 19, 8, 13, 1, 21, 10, 11, 0, 20, 
          9, 12, 2, 18, 7, 14, 3, 16, 5 ], 
      [ 16, 14, 18, 20, 12, 21, 11, 19, 13, 17, 15, 5, 16, 7, 18, 3, 14, 9, 20, 2, 12, 10, 21, 0, 
          11, 8, 19, 1, 13, 6, 17, 4, 15 ], 
      [ 16, 14, 18, 20, 12, 21, 11, 19, 13, 17, 15, 16, 5, 18, 7, 14, 3, 20, 9, 12, 2, 21, 10, 11, 
          0, 19, 8, 13, 1, 17, 6, 15, 4 ], 
      [ 19, 21, 17, 15, 20, 13, 18, 11, 16, 12, 14, 8, 19, 6, 17, 10, 21, 4, 15, 9, 20, 1, 13, 7, 
          18, 0, 11, 5, 16, 2, 12, 3, 14 ], 
      [ 19, 21, 17, 15, 20, 13, 18, 11, 16, 12, 14, 19, 8, 17, 6, 21, 10, 15, 4, 20, 9, 13, 1, 18, 
          7, 11, 0, 16, 5, 12, 2, 14, 3 ], 
      [ 18, 16, 20, 21, 14, 19, 12, 17, 11, 15, 13, 7, 18, 9, 20, 5, 16, 10, 21, 3, 14, 8, 19, 2, 
          12, 6, 17, 0, 11, 4, 15, 1, 13 ], 
      [ 18, 16, 20, 21, 14, 19, 12, 17, 11, 15, 13, 18, 7, 20, 9, 16, 5, 21, 10, 14, 3, 19, 8, 12, 
          2, 17, 6, 11, 0, 15, 4, 13, 1 ], 
      [ 21, 20, 19, 17, 18, 15, 16, 13, 14, 11, 12, 10, 21, 8, 19, 9, 20, 6, 17, 7, 18, 4, 15, 5, 
          16, 1, 13, 3, 14, 0, 11, 2, 12 ], 
      [ 21, 20, 19, 17, 18, 15, 16, 13, 14, 11, 12, 21, 10, 19, 8, 20, 9, 17, 6, 18, 7, 15, 4, 16, 
          5, 13, 1, 14, 3, 11, 0, 12, 2 ], 
      [ 20, 18, 21, 19, 16, 17, 14, 15, 12, 13, 11, 9, 20, 10, 21, 7, 18, 8, 19, 5, 16, 6, 17, 3, 
          14, 4, 15, 2, 12, 1, 13, 0, 11 ], 
      [ 20, 18, 21, 19, 16, 17, 14, 15, 12, 13, 11, 20, 9, 21, 10, 18, 7, 19, 8, 16, 5, 17, 6, 14, 
          3, 15, 4, 12, 2, 13, 1, 11, 0 ] ] )