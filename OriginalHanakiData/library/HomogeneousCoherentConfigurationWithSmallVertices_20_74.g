rec(
  ct := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 2*E(5)^2+2*E(5)^3, 2*E(5)^2+2*E(5)^3, 2*E(5)+2*E(5)^4, 
          2*E(5)+2*E(5)^4, 2 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 2*E(5)+2*E(5)^4, 2*E(5)+2*E(5)^4, 2*E(5)^2+2*E(5)^3, 
          2*E(5)^2+2*E(5)^3, 2 ], [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10 ] ],
  matrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10 ], 
      [ 1, 0, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10 ], 
      [ 2, 2, 0, 1, 7, 7, 8, 8, 9, 9, 10, 10, 3, 3, 4, 4, 5, 5, 6, 6 ], 
      [ 2, 2, 1, 0, 7, 7, 8, 8, 9, 9, 10, 10, 3, 3, 4, 4, 5, 5, 6, 6 ], 
      [ 3, 3, 8, 8, 0, 1, 9, 9, 10, 10, 7, 7, 6, 6, 2, 2, 4, 4, 5, 5 ], 
      [ 3, 3, 8, 8, 1, 0, 9, 9, 10, 10, 7, 7, 6, 6, 2, 2, 4, 4, 5, 5 ], 
      [ 4, 4, 7, 7, 10, 10, 0, 1, 8, 8, 9, 9, 2, 2, 5, 5, 6, 6, 3, 3 ], 
      [ 4, 4, 7, 7, 10, 10, 1, 0, 8, 8, 9, 9, 2, 2, 5, 5, 6, 6, 3, 3 ], 
      [ 5, 5, 10, 10, 9, 9, 7, 7, 0, 1, 8, 8, 4, 4, 6, 6, 3, 3, 2, 2 ], 
      [ 5, 5, 10, 10, 9, 9, 7, 7, 1, 0, 8, 8, 4, 4, 6, 6, 3, 3, 2, 2 ], 
      [ 6, 6, 9, 9, 8, 8, 10, 10, 7, 7, 0, 1, 5, 5, 3, 3, 2, 2, 4, 4 ], 
      [ 6, 6, 9, 9, 8, 8, 10, 10, 7, 7, 1, 0, 5, 5, 3, 3, 2, 2, 4, 4 ], 
      [ 8, 8, 3, 3, 6, 6, 2, 2, 4, 4, 5, 5, 0, 1, 9, 9, 10, 10, 7, 7 ], 
      [ 8, 8, 3, 3, 6, 6, 2, 2, 4, 4, 5, 5, 1, 0, 9, 9, 10, 10, 7, 7 ], 
      [ 7, 7, 4, 4, 2, 2, 5, 5, 6, 6, 3, 3, 10, 10, 0, 1, 8, 8, 9, 9 ], 
      [ 7, 7, 4, 4, 2, 2, 5, 5, 6, 6, 3, 3, 10, 10, 1, 0, 8, 8, 9, 9 ], 
      [ 10, 10, 5, 5, 4, 4, 6, 6, 3, 3, 2, 2, 9, 9, 7, 7, 0, 1, 8, 8 ], 
      [ 10, 10, 5, 5, 4, 4, 6, 6, 3, 3, 2, 2, 9, 9, 7, 7, 1, 0, 8, 8 ], 
      [ 9, 9, 6, 6, 5, 5, 3, 3, 2, 2, 4, 4, 8, 8, 10, 10, 7, 7, 0, 1 ], 
      [ 9, 9, 6, 6, 5, 5, 3, 3, 2, 2, 4, 4, 8, 8, 10, 10, 7, 7, 1, 0 ] ] )