rec(
  ct := [ [ 1, 1, 4, 4, 4, 4, 4, 4, 4, 4, 1 ], [ 1, -1, 4, 4, 4, 4, -4, -4, -4, -4, 1 ], 
      [ 2, 0, E(17)^3+E(17)^5+E(17)^6+E(17)^7+E(17)^10+E(17)^11+E(17)^12+E(17)^14, 
          E(17)^3+E(17)^5+E(17)^6+E(17)^7+E(17)^10+E(17)^11+E(17)^12+E(17)^14, 
          E(17)+E(17)^2+E(17)^4+E(17)^8+E(17)^9+E(17)^13+E(17)^15+E(17)^16, 
          E(17)+E(17)^2+E(17)^4+E(17)^8+E(17)^9+E(17)^13+E(17)^15+E(17)^16, 0, 0, 0, 0, 8 ], 
      [ 2, 0, E(17)+E(17)^2+E(17)^4+E(17)^8+E(17)^9+E(17)^13+E(17)^15+E(17)^16, 
          E(17)+E(17)^2+E(17)^4+E(17)^8+E(17)^9+E(17)^13+E(17)^15+E(17)^16, 
          E(17)^3+E(17)^5+E(17)^6+E(17)^7+E(17)^10+E(17)^11+E(17)^12+E(17)^14, 
          E(17)^3+E(17)^5+E(17)^6+E(17)^7+E(17)^10+E(17)^11+E(17)^12+E(17)^14, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 
          9, 9, 9, 9 ], [ 1, 0, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 2, 2, 2, 2, 3, 3, 
          3, 3, 4, 4, 4, 4, 5, 5, 5, 5 ], 
      [ 2, 7, 0, 3, 4, 4, 2, 3, 4, 5, 2, 2, 3, 5, 3, 4, 5, 5, 6, 7, 8, 9, 1, 6, 9, 9, 6, 8, 8, 9, 
          6, 7, 7, 8 ], [ 2, 7, 3, 0, 4, 4, 4, 5, 2, 3, 3, 5, 2, 2, 5, 5, 3, 4, 8, 9, 6, 7, 6, 1, 
          9, 9, 8, 6, 9, 8, 7, 6, 8, 7 ], 
      [ 2, 7, 4, 4, 0, 3, 3, 4, 5, 2, 5, 2, 2, 3, 5, 3, 4, 5, 9, 6, 7, 8, 9, 9, 1, 6, 8, 9, 8, 6, 
          7, 8, 7, 6 ], [ 2, 7, 4, 4, 3, 0, 5, 2, 3, 4, 2, 3, 5, 2, 4, 5, 5, 3, 7, 8, 9, 6, 9, 9, 
          6, 1, 9, 8, 6, 8, 8, 7, 6, 7 ], 
      [ 3, 6, 2, 4, 3, 5, 0, 5, 2, 5, 4, 4, 2, 5, 3, 2, 4, 3, 8, 1, 8, 7, 7, 9, 6, 8, 6, 9, 6, 7, 
          7, 9, 9, 8 ], [ 3, 6, 3, 5, 4, 2, 5, 0, 5, 2, 4, 2, 5, 4, 2, 4, 3, 3, 1, 8, 7, 8, 6, 8, 
          9, 7, 7, 6, 6, 9, 8, 9, 7, 9 ], 
      [ 3, 6, 4, 2, 5, 3, 2, 5, 0, 5, 2, 5, 4, 4, 4, 3, 3, 2, 8, 7, 8, 1, 9, 7, 8, 6, 9, 6, 7, 6, 
          9, 7, 8, 9 ], [ 3, 6, 5, 3, 2, 4, 5, 2, 5, 0, 5, 4, 4, 2, 3, 3, 2, 4, 7, 8, 1, 8, 8, 6, 
          7, 9, 6, 7, 9, 6, 9, 8, 9, 7 ], 
      [ 4, 9, 2, 3, 5, 2, 4, 4, 2, 5, 0, 3, 5, 3, 2, 3, 5, 4, 9, 9, 8, 7, 7, 6, 8, 7, 7, 8, 9, 6, 
          8, 1, 6, 6 ], [ 4, 9, 2, 5, 2, 3, 4, 2, 5, 4, 3, 0, 3, 5, 4, 2, 3, 5, 7, 9, 9, 8, 7, 8, 
          7, 6, 9, 6, 8, 7, 6, 6, 1, 8 ], 
      [ 4, 9, 3, 2, 2, 5, 2, 5, 4, 4, 5, 3, 0, 3, 5, 4, 2, 3, 8, 7, 9, 9, 6, 7, 7, 8, 8, 7, 6, 9, 
          1, 8, 6, 6 ], [ 4, 9, 5, 2, 3, 2, 5, 4, 4, 2, 3, 5, 3, 0, 3, 5, 4, 2, 9, 8, 7, 9, 8, 7, 
          6, 7, 6, 9, 7, 8, 6, 6, 8, 1 ], 
      [ 5, 8, 3, 5, 5, 4, 3, 2, 4, 3, 2, 4, 5, 3, 0, 2, 4, 2, 7, 6, 6, 9, 6, 8, 8, 9, 1, 9, 7, 7, 
          8, 7, 9, 6 ], [ 5, 8, 4, 5, 3, 5, 2, 4, 3, 3, 3, 2, 4, 5, 2, 0, 2, 4, 9, 7, 6, 6, 9, 8, 
          6, 8, 7, 7, 9, 1, 9, 6, 7, 8 ], 
      [ 5, 8, 5, 3, 4, 5, 4, 3, 3, 2, 5, 3, 2, 4, 4, 2, 0, 2, 6, 9, 7, 6, 8, 6, 9, 8, 9, 1, 7, 7, 
          7, 8, 6, 9 ], [ 5, 8, 5, 4, 5, 3, 3, 3, 2, 4, 4, 5, 3, 2, 2, 4, 2, 0, 6, 6, 9, 7, 8, 9, 
          8, 6, 7, 7, 1, 9, 6, 9, 8, 7 ], 
      [ 7, 2, 7, 9, 8, 6, 9, 1, 9, 6, 8, 6, 9, 8, 6, 8, 7, 7, 0, 4, 3, 4, 2, 4, 5, 3, 3, 2, 2, 5, 
          4, 5, 3, 5 ], [ 7, 2, 6, 8, 7, 9, 1, 9, 6, 9, 8, 8, 6, 9, 7, 6, 8, 7, 4, 0, 4, 3, 3, 5, 
          2, 4, 2, 5, 2, 3, 3, 5, 5, 4 ], 
      [ 7, 2, 9, 7, 6, 8, 9, 6, 9, 1, 9, 8, 8, 6, 7, 7, 6, 8, 3, 4, 0, 4, 4, 2, 3, 5, 2, 3, 5, 2, 
          5, 4, 5, 3 ], [ 7, 2, 8, 6, 9, 7, 6, 9, 1, 9, 6, 9, 8, 8, 8, 7, 7, 6, 4, 3, 4, 0, 5, 3, 
          4, 2, 5, 2, 3, 2, 5, 3, 4, 5 ], 
      [ 6, 3, 1, 7, 8, 8, 6, 7, 8, 9, 6, 6, 7, 9, 7, 8, 9, 9, 2, 3, 4, 5, 0, 2, 5, 5, 2, 4, 4, 5, 
          2, 3, 3, 4 ], [ 6, 3, 7, 1, 8, 8, 8, 9, 6, 7, 7, 9, 6, 6, 9, 9, 7, 8, 4, 5, 2, 3, 2, 0, 
          5, 5, 4, 2, 5, 4, 3, 2, 4, 3 ], 
      [ 6, 3, 8, 8, 1, 7, 7, 8, 9, 6, 9, 6, 6, 7, 9, 7, 8, 9, 5, 2, 3, 4, 5, 5, 0, 2, 4, 5, 4, 2, 
          3, 4, 3, 2 ], [ 6, 3, 8, 8, 7, 1, 9, 6, 7, 8, 6, 7, 9, 6, 8, 9, 9, 7, 3, 4, 5, 2, 5, 5, 
          2, 0, 5, 4, 2, 4, 4, 3, 2, 3 ], 
      [ 9, 4, 7, 9, 9, 8, 7, 6, 8, 7, 6, 8, 9, 7, 1, 6, 8, 6, 3, 2, 2, 5, 2, 4, 4, 5, 0, 5, 3, 3, 
          4, 3, 5, 2 ], [ 9, 4, 9, 7, 8, 9, 8, 7, 7, 6, 9, 7, 6, 8, 8, 6, 1, 6, 2, 5, 3, 2, 4, 2, 
          5, 4, 5, 0, 3, 3, 3, 4, 2, 5 ], 
      [ 9, 4, 9, 8, 9, 7, 7, 7, 6, 8, 8, 9, 7, 6, 6, 8, 6, 1, 2, 2, 5, 3, 4, 5, 4, 2, 3, 3, 0, 5, 
          2, 5, 4, 3 ], [ 9, 4, 8, 9, 7, 9, 6, 8, 7, 7, 7, 6, 8, 9, 6, 1, 6, 8, 5, 3, 2, 2, 5, 4, 
          2, 4, 3, 3, 5, 0, 5, 2, 3, 4 ], 
      [ 8, 5, 7, 6, 6, 9, 6, 9, 8, 8, 9, 7, 1, 7, 9, 8, 6, 7, 4, 3, 5, 5, 2, 3, 3, 4, 4, 3, 2, 5, 
          0, 4, 2, 2 ], [ 8, 5, 6, 7, 9, 6, 8, 8, 6, 9, 1, 7, 9, 7, 6, 7, 9, 8, 5, 5, 4, 3, 3, 2, 
          4, 3, 3, 4, 5, 2, 4, 0, 2, 2 ], 
      [ 8, 5, 6, 9, 6, 7, 8, 6, 9, 8, 7, 1, 7, 9, 8, 6, 7, 9, 3, 5, 5, 4, 3, 4, 3, 2, 5, 2, 4, 3, 
          2, 2, 0, 4 ], [ 8, 5, 9, 6, 7, 6, 9, 8, 8, 6, 7, 9, 7, 1, 7, 9, 8, 6, 5, 4, 3, 5, 4, 3, 
          2, 3, 2, 5, 3, 4, 2, 2, 4, 0 ] ] )