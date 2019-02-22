rec(
  ct := [ [ 1, 1, 1, 1, 3, 3, 3, 3, 4, 12, 1 ], [ 1, 1, 1, 1, 3, 3, 3, 3, -4, -12, 1 ], 
      [ 1, 1, -1, -1, -3, -3, 3, 3, 0, 0, 2 ], [ 1, 1, 1, 1, -1, -1, -1, -1, -4, 4, 3 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 4, -4, 3 ], 
      [ 1, -1, E(4), -E(4), -E(12)^7+E(12)^11, E(12)^7-E(12)^11, -E(3)+E(3)^2, E(3)-E(3)^2, 0, 0, 
          4 ], [ 1, -1, E(4), -E(4), E(12)^7-E(12)^11, -E(12)^7+E(12)^11, E(3)-E(3)^2, 
          -E(3)+E(3)^2, 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), -E(12)^7+E(12)^11, E(12)^7-E(12)^11, E(3)-E(3)^2, -E(3)+E(3)^2, 0, 0, 
          4 ], [ 1, -1, -E(4), E(4), E(12)^7-E(12)^11, -E(12)^7+E(12)^11, -E(3)+E(3)^2, 
          E(3)-E(3)^2, 0, 0, 4 ], [ 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 6 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 1, 0, 3, 2, 5, 5, 5, 4, 4, 4, 7, 7, 7, 6, 6, 6, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 3, 2, 0, 1, 6, 6, 6, 7, 7, 7, 5, 5, 5, 4, 4, 4, 8, 8, 8, 8, 9, 9, 
          9, 9, 9, 9, 9, 9, 9, 9, 9, 9 ], 
      [ 2, 3, 1, 0, 7, 7, 7, 6, 6, 6, 4, 4, 4, 5, 5, 5, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 
          9, 9 ], [ 4, 5, 7, 6, 0, 6, 7, 1, 6, 7, 3, 4, 5, 2, 4, 5, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 4, 5, 7, 6, 7, 0, 6, 6, 7, 1, 4, 5, 3, 5, 2, 4, 9, 9, 9, 9, 9, 9, 
          9, 9, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 4, 5, 7, 6, 6, 7, 0, 7, 1, 6, 5, 3, 4, 4, 5, 2, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 
          8, 8 ], [ 5, 4, 6, 7, 1, 7, 6, 0, 7, 6, 2, 5, 4, 3, 5, 4, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 5, 4, 6, 7, 7, 6, 1, 6, 0, 7, 4, 2, 5, 5, 4, 3, 9, 9, 9, 9, 9, 9, 
          9, 9, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 5, 4, 6, 7, 6, 1, 7, 7, 6, 0, 5, 4, 2, 4, 3, 5, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 
          9, 9 ], [ 7, 6, 5, 4, 2, 4, 5, 3, 4, 5, 0, 7, 6, 1, 7, 6, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 7, 6, 5, 4, 4, 5, 2, 5, 3, 4, 6, 0, 7, 7, 6, 1, 9, 9, 9, 9, 9, 9, 
          9, 9, 9, 9, 9, 9, 8, 8, 8, 8 ], 
      [ 7, 6, 5, 4, 5, 2, 4, 4, 5, 3, 7, 6, 0, 6, 1, 7, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 
          9, 9 ], [ 6, 7, 4, 5, 3, 5, 4, 2, 5, 4, 1, 6, 7, 0, 6, 7, 9, 9, 9, 9, 8, 8, 8, 8, 9, 9, 
          9, 9, 9, 9, 9, 9 ], [ 6, 7, 4, 5, 4, 3, 5, 5, 4, 2, 6, 7, 1, 7, 0, 6, 9, 9, 9, 9, 9, 9, 
          9, 9, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 6, 7, 4, 5, 5, 4, 3, 4, 2, 5, 7, 1, 6, 6, 7, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 
          8, 8 ], [ 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, 1, 2, 3, 4, 5, 6, 7, 4, 5, 
          6, 7, 4, 5, 6, 7 ], [ 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, 0, 3, 2, 5, 4, 
          7, 6, 5, 4, 7, 6, 5, 4, 7, 6 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 3, 2, 0, 1, 6, 7, 5, 4, 6, 7, 5, 4, 6, 7, 
          5, 4 ], [ 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 2, 3, 1, 0, 7, 6, 4, 5, 7, 6, 
          4, 5, 7, 6, 4, 5 ], [ 9, 9, 9, 9, 8, 9, 9, 8, 9, 9, 8, 9, 9, 8, 9, 9, 4, 5, 7, 6, 0, 1, 
          3, 2, 7, 6, 4, 5, 6, 7, 5, 4 ], 
      [ 9, 9, 9, 9, 8, 9, 9, 8, 9, 9, 8, 9, 9, 8, 9, 9, 5, 4, 6, 7, 1, 0, 2, 3, 6, 7, 5, 4, 7, 6, 
          4, 5 ], [ 9, 9, 9, 9, 8, 9, 9, 8, 9, 9, 8, 9, 9, 8, 9, 9, 7, 6, 5, 4, 2, 3, 0, 1, 5, 4, 
          7, 6, 4, 5, 6, 7 ], [ 9, 9, 9, 9, 8, 9, 9, 8, 9, 9, 8, 9, 9, 8, 9, 9, 6, 7, 4, 5, 3, 2, 
          1, 0, 4, 5, 6, 7, 5, 4, 7, 6 ], 
      [ 9, 9, 9, 9, 9, 8, 9, 9, 9, 8, 9, 9, 8, 9, 8, 9, 4, 5, 7, 6, 6, 7, 5, 4, 0, 1, 3, 2, 7, 6, 
          4, 5 ], [ 9, 9, 9, 9, 9, 8, 9, 9, 9, 8, 9, 9, 8, 9, 8, 9, 5, 4, 6, 7, 7, 6, 4, 5, 1, 0, 
          2, 3, 6, 7, 5, 4 ], [ 9, 9, 9, 9, 9, 8, 9, 9, 9, 8, 9, 9, 8, 9, 8, 9, 7, 6, 5, 4, 4, 5, 
          6, 7, 2, 3, 0, 1, 5, 4, 7, 6 ], 
      [ 9, 9, 9, 9, 9, 8, 9, 9, 9, 8, 9, 9, 8, 9, 8, 9, 6, 7, 4, 5, 5, 4, 7, 6, 3, 2, 1, 0, 4, 5, 
          6, 7 ], [ 9, 9, 9, 9, 9, 9, 8, 9, 8, 9, 9, 8, 9, 9, 9, 8, 4, 5, 7, 6, 7, 6, 4, 5, 6, 7, 
          5, 4, 0, 1, 3, 2 ], [ 9, 9, 9, 9, 9, 9, 8, 9, 8, 9, 9, 8, 9, 9, 9, 8, 5, 4, 6, 7, 6, 7, 
          5, 4, 7, 6, 4, 5, 1, 0, 2, 3 ], 
      [ 9, 9, 9, 9, 9, 9, 8, 9, 8, 9, 9, 8, 9, 9, 9, 8, 7, 6, 5, 4, 5, 4, 7, 6, 4, 5, 6, 7, 2, 3, 
          0, 1 ], [ 9, 9, 9, 9, 9, 9, 8, 9, 8, 9, 9, 8, 9, 9, 9, 8, 6, 7, 4, 5, 4, 5, 6, 7, 5, 4, 
          7, 6, 3, 2, 1, 0 ] ] )