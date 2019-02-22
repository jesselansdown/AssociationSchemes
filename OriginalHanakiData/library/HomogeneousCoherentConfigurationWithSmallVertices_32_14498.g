rec(
  ct := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 8, 8, 1 ], [ 1, 1, 1, 1, -1, -1, -1, -1, 4, -4, -8, 8, 1 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 4, -4, 8, -8, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, -8, -8, 1 ],
      [ 1, 1, 1, 1, -1, -1, -1, -1, -4, 4, 0, 0, 2 ], [ 1, 1, 1, 1, 1, 1, 1, 1, -4, -4, 0, 0, 2 ], 
      [ 1, -1, E(4), -E(4), E(8), -E(8)^3, -E(8), E(8)^3, 0, 0, 0, 0, 4 ], 
      [ 1, -1, E(4), -E(4), -E(8), E(8)^3, E(8), -E(8)^3, 0, 0, 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), E(8)^3, -E(8), -E(8)^3, E(8), 0, 0, 0, 0, 4 ], 
      [ 1, -1, -E(4), E(4), -E(8)^3, E(8), E(8)^3, -E(8), 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, E(4), -E(4), E(4), -E(4), 0, 0, 0, 0, 4 ], 
      [ 1, 1, -1, -1, -E(4), E(4), -E(4), E(4), 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 1, 0, 3, 2, 6, 7, 4, 5, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 3, 2, 0, 1, 5, 6, 7, 4, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 2, 3, 1, 0, 7, 4, 5, 6, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 5, 7, 4, 6, 0, 3, 1, 2, 9, 9, 9, 9, 8, 8, 8, 8, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 4, 6, 7, 5, 2, 0, 3, 1, 9, 9, 9, 9, 8, 8, 8, 8, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 7, 5, 6, 4, 1, 2, 0, 3, 9, 9, 9, 9, 8, 8, 8, 8, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 6, 4, 5, 7, 3, 1, 2, 0, 9, 9, 9, 9, 8, 8, 8, 8, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 0, 1, 2, 3, 4, 5, 6, 7, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 1, 0, 3, 2, 6, 7, 4, 5, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 3, 2, 0, 1, 5, 6, 7, 4, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 8, 8, 8, 8, 9, 9, 9, 9, 2, 3, 1, 0, 7, 4, 5, 6, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11, 11, 11 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 5, 7, 4, 6, 0, 3, 1, 2, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 4, 6, 7, 5, 2, 0, 3, 1, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 7, 5, 6, 4, 1, 2, 0, 3, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 9, 9, 9, 9, 8, 8, 8, 8, 6, 4, 5, 7, 3, 1, 2, 0, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 10, 10, 10, 10 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 0, 1, 2, 3, 8, 8, 8, 8, 4, 
          5, 6, 7, 9, 9, 9, 9 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 
          1, 0, 3, 2, 8, 8, 8, 8, 6, 7, 4, 5, 9, 9, 9, 9 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 3, 2, 0, 1, 8, 8, 8, 8, 5, 
          6, 7, 4, 9, 9, 9, 9 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 
          2, 3, 1, 0, 8, 8, 8, 8, 7, 4, 5, 6, 9, 9, 9, 9 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 8, 8, 8, 8, 0, 1, 2, 3, 9, 
          9, 9, 9, 4, 5, 6, 7 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 
          8, 8, 8, 8, 1, 0, 3, 2, 9, 9, 9, 9, 6, 7, 4, 5 ], 
      [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 8, 8, 8, 8, 3, 2, 0, 1, 9, 
          9, 9, 9, 5, 6, 7, 4 ], [ 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 
          8, 8, 8, 8, 2, 3, 1, 0, 9, 9, 9, 9, 7, 4, 5, 6 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 5, 7, 4, 6, 9, 9, 9, 9, 0, 
          3, 1, 2, 8, 8, 8, 8 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 
          4, 6, 7, 5, 9, 9, 9, 9, 2, 0, 3, 1, 8, 8, 8, 8 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 7, 5, 6, 4, 9, 9, 9, 9, 1, 
          2, 0, 3, 8, 8, 8, 8 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 
          6, 4, 5, 7, 9, 9, 9, 9, 3, 1, 2, 0, 8, 8, 8, 8 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9, 5, 7, 4, 6, 8, 
          8, 8, 8, 0, 3, 1, 2 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 
          9, 9, 9, 9, 4, 6, 7, 5, 8, 8, 8, 8, 2, 0, 3, 1 ], 
      [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9, 7, 5, 6, 4, 8, 
          8, 8, 8, 1, 2, 0, 3 ], [ 11, 11, 11, 11, 10, 10, 10, 10, 11, 11, 11, 11, 10, 10, 10, 10, 
          9, 9, 9, 9, 6, 4, 5, 7, 8, 8, 8, 8, 3, 1, 2, 0 ] ] )