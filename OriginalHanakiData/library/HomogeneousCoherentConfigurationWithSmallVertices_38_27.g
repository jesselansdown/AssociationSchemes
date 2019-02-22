rec(
  ct := [ [ 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 1, -1, -3, -3, -3, -3, -3, -3, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 2, 0, 0, 0, 0, 0, 0, 0, E(19)^4+E(19)^6+E(19)^9+E(19)^10+E(19)^13+E(19)^15, 
          E(19)^4+E(19)^6+E(19)^9+E(19)^10+E(19)^13+E(19)^15, 
          E(19)^2+E(19)^3+E(19)^5+E(19)^14+E(19)^16+E(19)^17, 
          E(19)^2+E(19)^3+E(19)^5+E(19)^14+E(19)^16+E(19)^17, 
          E(19)+E(19)^7+E(19)^8+E(19)^11+E(19)^12+E(19)^18, 
          E(19)+E(19)^7+E(19)^8+E(19)^11+E(19)^12+E(19)^18, 6 ], 
      [ 2, 0, 0, 0, 0, 0, 0, 0, E(19)^2+E(19)^3+E(19)^5+E(19)^14+E(19)^16+E(19)^17, 
          E(19)^2+E(19)^3+E(19)^5+E(19)^14+E(19)^16+E(19)^17, 
          E(19)+E(19)^7+E(19)^8+E(19)^11+E(19)^12+E(19)^18, 
          E(19)+E(19)^7+E(19)^8+E(19)^11+E(19)^12+E(19)^18, 
          E(19)^4+E(19)^6+E(19)^9+E(19)^10+E(19)^13+E(19)^15, 
          E(19)^4+E(19)^6+E(19)^9+E(19)^10+E(19)^13+E(19)^15, 6 ], 
      [ 2, 0, 0, 0, 0, 0, 0, 0, E(19)+E(19)^7+E(19)^8+E(19)^11+E(19)^12+E(19)^18, 
          E(19)+E(19)^7+E(19)^8+E(19)^11+E(19)^12+E(19)^18, 
          E(19)^4+E(19)^6+E(19)^9+E(19)^10+E(19)^13+E(19)^15, 
          E(19)^4+E(19)^6+E(19)^9+E(19)^10+E(19)^13+E(19)^15, 
          E(19)^2+E(19)^3+E(19)^5+E(19)^14+E(19)^16+E(19)^17, 
          E(19)^2+E(19)^3+E(19)^5+E(19)^14+E(19)^16+E(19)^17, 6 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 
          11, 11, 11, 12, 12, 12, 13, 13, 13 ], 
      [ 1, 0, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11, 12, 12, 12, 13, 13, 13, 2, 2, 2, 3, 3, 3, 
          4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7 ], 
      [ 2, 9, 0, 10, 11, 8, 8, 12, 9, 11, 13, 9, 12, 13, 10, 11, 12, 8, 10, 13, 3, 3, 7, 1, 4, 5, 
          2, 6, 7, 2, 4, 6, 3, 5, 6, 4, 5, 7 ], 
      [ 2, 9, 11, 0, 10, 8, 12, 8, 13, 9, 11, 12, 13, 9, 12, 10, 11, 10, 13, 8, 3, 7, 3, 4, 5, 1, 
          7, 2, 6, 6, 2, 4, 5, 6, 3, 5, 7, 4 ], 
      [ 2, 9, 10, 11, 0, 12, 8, 8, 11, 13, 9, 13, 9, 12, 11, 12, 10, 13, 8, 10, 7, 3, 3, 5, 1, 4, 
          6, 7, 2, 4, 6, 2, 6, 3, 5, 7, 4, 5 ], 
      [ 3, 8, 9, 9, 13, 0, 10, 11, 8, 12, 13, 12, 10, 8, 11, 9, 12, 11, 13, 10, 1, 5, 4, 2, 6, 2, 
          7, 3, 5, 3, 7, 6, 4, 6, 5, 2, 4, 7 ], 
      [ 3, 8, 9, 13, 9, 11, 0, 10, 12, 13, 8, 8, 12, 10, 9, 12, 11, 10, 11, 13, 4, 1, 5, 2, 2, 6, 
          3, 5, 7, 7, 6, 3, 5, 4, 6, 7, 2, 4 ], 
      [ 3, 8, 13, 9, 9, 10, 11, 0, 13, 8, 12, 10, 8, 12, 12, 11, 9, 13, 10, 11, 5, 4, 1, 6, 2, 2, 
          5, 7, 3, 6, 3, 7, 6, 5, 4, 4, 7, 2 ], 
      [ 4, 11, 8, 12, 10, 9, 13, 12, 0, 12, 13, 10, 9, 10, 13, 8, 11, 9, 8, 11, 2, 6, 7, 3, 5, 7, 
          5, 5, 2, 1, 7, 6, 2, 3, 4, 3, 6, 4 ], 
      [ 4, 11, 10, 8, 12, 13, 12, 9, 13, 0, 12, 9, 10, 10, 11, 13, 8, 8, 11, 9, 6, 7, 2, 5, 7, 3, 
          2, 5, 5, 6, 1, 7, 3, 4, 2, 6, 4, 3 ], 
      [ 4, 11, 12, 10, 8, 12, 9, 13, 12, 13, 0, 10, 10, 9, 8, 11, 13, 11, 9, 8, 7, 2, 6, 7, 3, 5, 
          5, 2, 5, 7, 6, 1, 4, 2, 3, 4, 3, 6 ], 
      [ 5, 10, 8, 13, 12, 13, 9, 11, 11, 8, 11, 0, 12, 13, 8, 10, 9, 9, 12, 10, 6, 2, 4, 3, 7, 6, 
          1, 6, 7, 4, 3, 4, 2, 7, 5, 5, 3, 2 ], 
      [ 5, 10, 13, 12, 8, 11, 13, 9, 8, 11, 11, 13, 0, 12, 10, 9, 8, 10, 9, 12, 4, 6, 2, 6, 3, 7, 
          6, 7, 1, 3, 4, 4, 5, 2, 7, 2, 5, 3 ], 
      [ 5, 10, 12, 8, 13, 9, 11, 13, 11, 11, 8, 12, 13, 0, 9, 8, 10, 12, 10, 9, 2, 4, 6, 7, 6, 3, 
          7, 1, 6, 4, 4, 3, 7, 5, 2, 3, 2, 5 ], 
      [ 6, 13, 11, 13, 10, 10, 8, 13, 12, 10, 9, 9, 11, 8, 0, 9, 8, 12, 12, 11, 5, 3, 6, 4, 5, 6, 
          2, 3, 4, 7, 5, 2, 7, 7, 4, 2, 1, 3 ], 
      [ 6, 13, 10, 11, 13, 8, 13, 10, 9, 12, 10, 11, 8, 9, 8, 0, 9, 12, 11, 12, 3, 6, 5, 5, 6, 4, 
          4, 2, 3, 2, 7, 5, 7, 4, 7, 1, 3, 2 ], 
      [ 6, 13, 13, 10, 11, 13, 10, 8, 10, 9, 12, 8, 9, 11, 9, 8, 0, 11, 12, 12, 6, 5, 3, 6, 4, 5, 
          3, 4, 2, 5, 2, 7, 4, 7, 7, 3, 2, 1 ], 
      [ 7, 12, 9, 11, 12, 10, 11, 12, 8, 9, 10, 8, 11, 13, 13, 13, 10, 0, 9, 8, 5, 4, 7, 2, 7, 4, 
          3, 6, 4, 3, 2, 5, 1, 2, 3, 6, 6, 5 ], 
      [ 7, 12, 11, 12, 9, 12, 10, 11, 9, 10, 8, 13, 8, 11, 13, 10, 13, 8, 0, 9, 7, 5, 4, 4, 2, 7, 
          6, 4, 3, 2, 5, 3, 3, 1, 2, 5, 6, 6 ], 
      [ 7, 12, 12, 9, 11, 11, 12, 10, 10, 8, 9, 11, 13, 8, 10, 13, 13, 9, 8, 0, 4, 7, 5, 7, 4, 2, 
          4, 3, 6, 5, 3, 2, 2, 3, 1, 6, 5, 6 ], 
      [ 9, 2, 3, 3, 7, 1, 4, 5, 2, 6, 7, 6, 4, 2, 5, 3, 6, 5, 7, 4, 0, 11, 10, 8, 12, 8, 13, 9, 
          11, 9, 13, 12, 10, 12, 11, 8, 10, 13 ], 
      [ 9, 2, 3, 7, 3, 5, 1, 4, 6, 7, 2, 2, 6, 4, 3, 6, 5, 4, 5, 7, 10, 0, 11, 8, 8, 12, 9, 11, 
          13, 13, 12, 9, 11, 10, 12, 13, 8, 10 ], 
      [ 9, 2, 7, 3, 3, 4, 5, 1, 7, 2, 6, 4, 2, 6, 6, 5, 3, 7, 4, 5, 11, 10, 0, 12, 8, 8, 11, 13, 
          9, 12, 9, 13, 12, 11, 10, 10, 13, 8 ], 
      [ 8, 3, 1, 4, 5, 2, 2, 6, 3, 5, 7, 3, 6, 7, 4, 5, 6, 2, 4, 7, 9, 9, 13, 0, 10, 11, 8, 12, 
          13, 8, 10, 12, 9, 11, 12, 10, 11, 13 ], 
      [ 8, 3, 4, 5, 1, 6, 2, 2, 5, 7, 3, 7, 3, 6, 5, 6, 4, 7, 2, 4, 13, 9, 9, 11, 0, 10, 12, 13, 
          8, 10, 12, 8, 12, 9, 11, 13, 10, 11 ], 
      [ 8, 3, 5, 1, 4, 2, 6, 2, 7, 3, 5, 6, 7, 3, 6, 4, 5, 4, 7, 2, 9, 13, 9, 10, 11, 0, 13, 8, 
          12, 12, 8, 10, 11, 12, 9, 11, 13, 10 ], 
      [ 11, 4, 2, 7, 6, 7, 3, 5, 5, 2, 5, 1, 6, 7, 2, 4, 3, 3, 6, 4, 12, 8, 10, 9, 13, 12, 0, 12, 
          13, 10, 9, 10, 8, 13, 11, 11, 9, 8 ], 
      [ 11, 4, 6, 2, 7, 3, 5, 7, 5, 5, 2, 6, 7, 1, 3, 2, 4, 6, 4, 3, 8, 10, 12, 13, 12, 9, 13, 0, 
          12, 10, 10, 9, 13, 11, 8, 9, 8, 11 ], 
      [ 11, 4, 7, 6, 2, 5, 7, 3, 2, 5, 5, 7, 1, 6, 4, 3, 2, 4, 3, 6, 10, 12, 8, 12, 9, 13, 12, 13, 
          0, 9, 10, 10, 11, 8, 13, 8, 11, 9 ], 
      [ 10, 5, 2, 6, 4, 3, 7, 6, 1, 6, 7, 4, 3, 4, 7, 2, 5, 3, 2, 5, 8, 12, 13, 9, 11, 13, 11, 11, 
          8, 0, 13, 12, 8, 9, 10, 9, 12, 10 ], 
      [ 10, 5, 4, 2, 6, 7, 6, 3, 7, 1, 6, 3, 4, 4, 5, 7, 2, 2, 5, 3, 12, 13, 8, 11, 13, 9, 8, 11, 
          11, 12, 0, 13, 9, 10, 8, 12, 10, 9 ], 
      [ 10, 5, 6, 4, 2, 6, 3, 7, 6, 7, 1, 4, 4, 3, 2, 5, 7, 5, 3, 2, 13, 8, 12, 13, 9, 11, 11, 8, 
          11, 13, 12, 0, 10, 8, 9, 10, 9, 12 ], 
      [ 13, 6, 3, 5, 6, 4, 5, 6, 2, 3, 4, 2, 5, 7, 7, 7, 4, 1, 3, 2, 11, 10, 13, 8, 13, 10, 9, 12, 
          10, 9, 8, 11, 0, 8, 9, 12, 12, 11 ], 
      [ 13, 6, 5, 6, 3, 6, 4, 5, 3, 4, 2, 7, 2, 5, 7, 4, 7, 2, 1, 3, 13, 11, 10, 10, 8, 13, 12, 
          10, 9, 8, 11, 9, 9, 0, 8, 11, 12, 12 ], 
      [ 13, 6, 6, 3, 5, 5, 6, 4, 4, 2, 3, 5, 7, 2, 4, 7, 7, 3, 2, 1, 10, 13, 11, 13, 10, 8, 10, 9, 
          12, 11, 9, 8, 8, 9, 0, 12, 11, 12 ], 
      [ 12, 7, 4, 5, 7, 2, 7, 4, 3, 6, 4, 5, 2, 3, 2, 1, 3, 6, 5, 6, 9, 12, 11, 11, 12, 10, 10, 8, 
          9, 8, 13, 11, 13, 10, 13, 0, 9, 8 ], 
      [ 12, 7, 5, 7, 4, 4, 2, 7, 6, 4, 3, 3, 5, 2, 1, 3, 2, 6, 6, 5, 11, 9, 12, 10, 11, 12, 8, 9, 
          10, 13, 11, 8, 13, 13, 10, 8, 0, 9 ], 
      [ 12, 7, 7, 4, 5, 7, 4, 2, 4, 3, 6, 2, 3, 5, 3, 2, 1, 5, 6, 6, 12, 11, 9, 12, 10, 11, 9, 10, 
          8, 11, 8, 13, 10, 13, 13, 9, 8, 0 ] ] )