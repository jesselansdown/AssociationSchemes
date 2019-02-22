rec(
  ct := [ [ 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 5, 10, 1 ], [ 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, -5, -10, 1 ],
      [ 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -5, 5, 2 ], 
      [ 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 5, -5, 2 ], 
      [ 1, E(5), E(5)^4, E(5)^3, E(5)^2, 2, 2*E(5)^4, 2*E(5), 2*E(5)^3, 2*E(5)^2, 0, 0, 2 ], 
      [ 1, E(5)^2, E(5)^3, E(5), E(5)^4, 2, 2*E(5)^3, 2*E(5)^2, 2*E(5), 2*E(5)^4, 0, 0, 2 ], 
      [ 1, E(5)^3, E(5)^2, E(5)^4, E(5), 2, 2*E(5)^2, 2*E(5)^3, 2*E(5)^4, 2*E(5), 0, 0, 2 ], 
      [ 1, E(5)^4, E(5), E(5)^2, E(5)^3, 2, 2*E(5), 2*E(5)^4, 2*E(5)^2, 2*E(5)^3, 0, 0, 2 ], 
      [ 1, E(5), E(5)^4, E(5)^3, E(5)^2, -1, -E(5)^4, -E(5), -E(5)^3, -E(5)^2, 0, 0, 4 ], 
      [ 1, E(5)^2, E(5)^3, E(5), E(5)^4, -1, -E(5)^3, -E(5)^2, -E(5), -E(5)^4, 0, 0, 4 ], 
      [ 1, E(5)^3, E(5)^2, E(5)^4, E(5), -1, -E(5)^2, -E(5)^3, -E(5)^4, -E(5), 0, 0, 4 ], 
      [ 1, E(5)^4, E(5), E(5)^2, E(5)^3, -1, -E(5), -E(5)^4, -E(5)^2, -E(5)^3, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 
          11, 11, 11, 11 ], [ 2, 0, 3, 4, 1, 6, 6, 8, 8, 5, 5, 9, 9, 7, 7, 10, 10, 10, 10, 10, 11, 
          11, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 1, 4, 0, 2, 3, 7, 7, 5, 5, 9, 9, 6, 6, 8, 8, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 
          11, 11, 11, 11 ], [ 4, 3, 1, 0, 2, 9, 9, 7, 7, 8, 8, 5, 5, 6, 6, 10, 10, 10, 10, 10, 11, 
          11, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 3, 2, 4, 1, 0, 8, 8, 9, 9, 6, 6, 7, 7, 5, 5, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 
          11, 11, 11, 11 ], [ 5, 7, 6, 8, 9, 0, 5, 2, 6, 1, 7, 3, 8, 4, 9, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11 ], 
      [ 5, 7, 6, 8, 9, 5, 0, 6, 2, 7, 1, 8, 3, 9, 4, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10 ], [ 7, 9, 5, 6, 8, 1, 7, 0, 5, 4, 9, 2, 6, 3, 8, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11 ], 
      [ 7, 9, 5, 6, 8, 7, 1, 5, 0, 9, 4, 6, 2, 8, 3, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10 ], [ 6, 5, 8, 9, 7, 2, 6, 3, 8, 0, 5, 4, 9, 1, 7, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11 ], 
      [ 6, 5, 8, 9, 7, 6, 2, 8, 3, 5, 0, 9, 4, 7, 1, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10 ], [ 9, 8, 7, 5, 6, 4, 9, 1, 7, 3, 8, 0, 5, 2, 6, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11 ], 
      [ 9, 8, 7, 5, 6, 9, 4, 7, 1, 8, 3, 5, 0, 6, 2, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10 ], [ 8, 6, 9, 7, 5, 3, 8, 4, 9, 2, 6, 1, 7, 0, 5, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11 ], 
      [ 8, 6, 9, 7, 5, 8, 3, 9, 4, 6, 2, 7, 1, 5, 0, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10 ], [ 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 0, 1, 2, 
          3, 4, 5, 6, 7, 8, 9, 5, 6, 7, 8, 9 ], 
      [ 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 2, 0, 3, 4, 1, 6, 8, 5, 9, 7, 
          6, 8, 5, 9, 7 ], [ 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 1, 4, 0, 
          2, 3, 7, 5, 9, 6, 8, 7, 5, 9, 6, 8 ], 
      [ 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 4, 3, 1, 0, 2, 9, 7, 8, 5, 6, 
          9, 7, 8, 5, 6 ], [ 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 3, 2, 4, 
          1, 0, 8, 9, 6, 7, 5, 8, 9, 6, 7, 5 ], 
      [ 11, 11, 11, 11, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 5, 7, 6, 8, 9, 0, 2, 1, 3, 4, 
          5, 6, 7, 8, 9 ], [ 11, 11, 11, 11, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 7, 9, 5, 
          6, 8, 1, 0, 4, 2, 3, 7, 5, 9, 6, 8 ], 
      [ 11, 11, 11, 11, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 6, 5, 8, 9, 7, 2, 3, 0, 4, 1, 
          6, 8, 5, 9, 7 ], [ 11, 11, 11, 11, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 9, 8, 7, 
          5, 6, 4, 1, 3, 0, 2, 9, 7, 8, 5, 6 ], 
      [ 11, 11, 11, 11, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 11, 8, 6, 9, 7, 5, 3, 4, 2, 1, 0, 
          8, 9, 6, 7, 5 ], [ 11, 11, 11, 11, 11, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 5, 7, 6, 
          8, 9, 5, 6, 7, 8, 9, 0, 2, 1, 3, 4 ], 
      [ 11, 11, 11, 11, 11, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 7, 9, 5, 6, 8, 7, 5, 9, 6, 8, 
          1, 0, 4, 2, 3 ], [ 11, 11, 11, 11, 11, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 6, 5, 8, 
          9, 7, 6, 8, 5, 9, 7, 2, 3, 0, 4, 1 ], 
      [ 11, 11, 11, 11, 11, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 9, 8, 7, 5, 6, 9, 7, 8, 5, 6, 
          4, 1, 3, 0, 2 ], [ 11, 11, 11, 11, 11, 11, 10, 11, 10, 11, 10, 11, 10, 11, 10, 8, 6, 9, 
          7, 5, 8, 9, 6, 7, 5, 3, 4, 2, 1, 0 ] ] )