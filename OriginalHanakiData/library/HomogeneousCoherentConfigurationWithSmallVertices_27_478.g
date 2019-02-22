rec(
  ct := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1 ], 
      [ 1, 1, 1, E(3), E(3)^2, E(3), E(3)^2, E(3)^2, E(3), 6, 6*E(3)^2, 6*E(3), 1 ], 
      [ 1, 1, 1, E(3)^2, E(3), E(3)^2, E(3), E(3), E(3)^2, 6, 6*E(3), 6*E(3)^2, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, -3, -3, -3, 2 ], 
      [ 1, 1, 1, E(3), E(3)^2, E(3), E(3)^2, E(3)^2, E(3), -3, -3*E(3)^2, -3*E(3), 2 ], 
      [ 1, 1, 1, E(3)^2, E(3), E(3)^2, E(3), E(3), E(3)^2, -3, -3*E(3), -3*E(3)^2, 2 ], 
      [ 1, E(3), E(3)^2, 1, 1, E(3)^2, E(3), E(3)^2, E(3), 0, 0, 0, 3 ], 
      [ 1, E(3), E(3)^2, E(3), E(3)^2, 1, 1, E(3), E(3)^2, 0, 0, 0, 3 ], 
      [ 1, E(3), E(3)^2, E(3)^2, E(3), E(3), E(3)^2, 1, 1, 0, 0, 0, 3 ], 
      [ 1, E(3)^2, E(3), 1, 1, E(3), E(3)^2, E(3), E(3)^2, 0, 0, 0, 3 ], 
      [ 1, E(3)^2, E(3), E(3), E(3)^2, E(3)^2, E(3), 1, 1, 0, 0, 0, 3 ], 
      [ 1, E(3)^2, E(3), E(3)^2, E(3), 1, 1, E(3)^2, E(3), 0, 0, 0, 3 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11 
         ], [ 2, 0, 1, 5, 7, 8, 4, 6, 3, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 
          11, 11 ], [ 1, 2, 0, 8, 6, 3, 7, 4, 5, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11 ], [ 4, 6, 7, 0, 3, 2, 8, 5, 1, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 
          11, 11, 9, 9, 9, 9, 9, 9 ], 
      [ 3, 8, 5, 4, 0, 7, 1, 2, 6, 11, 11, 11, 11, 11, 11, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 
          10 ], [ 6, 7, 4, 1, 8, 0, 5, 3, 2, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 9, 9, 
          9, 9, 9, 9 ], [ 5, 3, 8, 7, 2, 6, 0, 1, 4, 11, 11, 11, 11, 11, 11, 9, 9, 9, 9, 9, 9, 10, 
          10, 10, 10, 10, 10 ], [ 8, 5, 3, 6, 1, 4, 2, 0, 7, 11, 11, 11, 11, 11, 11, 9, 9, 9, 9, 
          9, 9, 10, 10, 10, 10, 10, 10 ], 
      [ 7, 4, 6, 2, 5, 1, 3, 8, 0, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 9, 9, 9, 9, 9, 
          9 ], [ 9, 9, 9, 11, 10, 11, 10, 10, 11, 0, 1, 2, 9, 9, 9, 4, 6, 7, 10, 10, 10, 3, 5, 8, 
          11, 11, 11 ], [ 9, 9, 9, 11, 10, 11, 10, 10, 11, 2, 0, 1, 9, 9, 9, 7, 4, 6, 10, 10, 10, 
          5, 8, 3, 11, 11, 11 ], [ 9, 9, 9, 11, 10, 11, 10, 10, 11, 1, 2, 0, 9, 9, 9, 6, 7, 4, 10, 
          10, 10, 8, 3, 5, 11, 11, 11 ], 
      [ 9, 9, 9, 11, 10, 11, 10, 10, 11, 9, 9, 9, 0, 1, 2, 10, 10, 10, 4, 6, 7, 11, 11, 11, 3, 5, 
          8 ], [ 9, 9, 9, 11, 10, 11, 10, 10, 11, 9, 9, 9, 2, 0, 1, 10, 10, 10, 7, 4, 6, 11, 11, 
          11, 5, 8, 3 ], [ 9, 9, 9, 11, 10, 11, 10, 10, 11, 9, 9, 9, 1, 2, 0, 10, 10, 10, 6, 7, 4, 
          11, 11, 11, 8, 3, 5 ], [ 11, 11, 11, 10, 9, 10, 9, 9, 10, 3, 8, 5, 11, 11, 11, 0, 1, 2, 
          9, 9, 9, 4, 7, 6, 10, 10, 10 ], 
      [ 11, 11, 11, 10, 9, 10, 9, 9, 10, 5, 3, 8, 11, 11, 11, 2, 0, 1, 9, 9, 9, 7, 6, 4, 10, 10, 
          10 ], [ 11, 11, 11, 10, 9, 10, 9, 9, 10, 8, 5, 3, 11, 11, 11, 1, 2, 0, 9, 9, 9, 6, 4, 7, 
          10, 10, 10 ], [ 11, 11, 11, 10, 9, 10, 9, 9, 10, 11, 11, 11, 3, 8, 5, 9, 9, 9, 0, 1, 2, 
          10, 10, 10, 4, 7, 6 ], [ 11, 11, 11, 10, 9, 10, 9, 9, 10, 11, 11, 11, 5, 3, 8, 9, 9, 9, 
          2, 0, 1, 10, 10, 10, 7, 6, 4 ], 
      [ 11, 11, 11, 10, 9, 10, 9, 9, 10, 11, 11, 11, 8, 5, 3, 9, 9, 9, 1, 2, 0, 10, 10, 10, 6, 4, 
          7 ], [ 10, 10, 10, 9, 11, 9, 11, 11, 9, 4, 6, 7, 10, 10, 10, 3, 8, 5, 11, 11, 11, 0, 2, 
          1, 9, 9, 9 ], [ 10, 10, 10, 9, 11, 9, 11, 11, 9, 6, 7, 4, 10, 10, 10, 8, 5, 3, 11, 11, 
          11, 1, 0, 2, 9, 9, 9 ], [ 10, 10, 10, 9, 11, 9, 11, 11, 9, 7, 4, 6, 10, 10, 10, 5, 3, 8, 
          11, 11, 11, 2, 1, 0, 9, 9, 9 ], 
      [ 10, 10, 10, 9, 11, 9, 11, 11, 9, 10, 10, 10, 4, 6, 7, 11, 11, 11, 3, 8, 5, 9, 9, 9, 0, 2, 
          1 ], [ 10, 10, 10, 9, 11, 9, 11, 11, 9, 10, 10, 10, 6, 7, 4, 11, 11, 11, 8, 5, 3, 9, 9, 
          9, 1, 0, 2 ], [ 10, 10, 10, 9, 11, 9, 11, 11, 9, 10, 10, 10, 7, 4, 6, 11, 11, 11, 5, 3, 
          8, 9, 9, 9, 2, 1, 0 ] ] )