rec(
  ct := 
   [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 4, 4, 8, 1 ], [ 1, 1, 2, 2, 2, -2, -2, -2, -2, -4, -4, 8, 1 ], 
      [ 1, 1, 2, 2, 2, -2, -2, -2, -2, 4, 4, -8, 1 ], [ 1, 1, 2, 2, 2, 2, 2, 2, 2, -4, -4, -8, 1 ],
      [ 1, 1, 2, -2, -2, 0, 0, 0, 0, -4, 4, 0, 2 ], [ 1, 1, 2, -2, -2, 0, 0, 0, 0, 4, -4, 0, 2 ], 
      [ 1, -1, 0, -E(8)+E(8)^3, E(8)-E(8)^3, -E(16)^3+E(16)^5, E(16)^3-E(16)^5, E(16)-E(16)^7, 
          -E(16)+E(16)^7, 0, 0, 0, 4 ], 
      [ 1, -1, 0, -E(8)+E(8)^3, E(8)-E(8)^3, E(16)^3-E(16)^5, -E(16)^3+E(16)^5, -E(16)+E(16)^7, 
          E(16)-E(16)^7, 0, 0, 0, 4 ], 
      [ 1, -1, 0, E(8)-E(8)^3, -E(8)+E(8)^3, -E(16)+E(16)^7, E(16)-E(16)^7, -E(16)^3+E(16)^5, 
          E(16)^3-E(16)^5, 0, 0, 0, 4 ], 
      [ 1, -1, 0, E(8)-E(8)^3, -E(8)+E(8)^3, E(16)-E(16)^7, -E(16)+E(16)^7, E(16)^3-E(16)^5, 
          -E(16)^3+E(16)^5, 0, 0, 0, 4 ], 
      [ 1, 1, -2, 0, 0, -E(8)+E(8)^3, -E(8)+E(8)^3, E(8)-E(8)^3, E(8)-E(8)^3, 0, 0, 0, 4 ], 
      [ 1, 1, -2, 0, 0, E(8)-E(8)^3, E(8)-E(8)^3, -E(8)+E(8)^3, -E(8)+E(8)^3, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 
          11, 11, 11, 11 ], [ 1, 0, 2, 2, 4, 4, 3, 3, 6, 6, 5, 5, 8, 8, 7, 7, 9, 9, 9, 9, 10, 10, 
          10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 2, 2, 0, 1, 3, 4, 3, 4, 7, 8, 7, 8, 5, 6, 5, 6, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 2, 2, 1, 0, 4, 3, 4, 3, 8, 7, 8, 7, 6, 5, 6, 5, 9, 9, 9, 9, 10, 
          10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 3, 4, 3, 4, 0, 2, 2, 1, 5, 7, 8, 6, 5, 8, 7, 6, 10, 10, 10, 10, 9, 9, 9, 9, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 3, 4, 4, 3, 2, 0, 1, 2, 7, 5, 6, 8, 8, 5, 6, 7, 10, 10, 10, 10, 
          9, 9, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 4, 3, 3, 4, 2, 1, 0, 2, 8, 6, 5, 7, 7, 6, 5, 8, 10, 10, 10, 10, 9, 9, 9, 9, 11, 11, 11, 
          11, 11, 11, 11, 11 ], [ 4, 3, 4, 3, 1, 2, 2, 0, 6, 8, 7, 5, 6, 7, 8, 5, 10, 10, 10, 10, 
          9, 9, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11 ], 
      [ 5, 6, 7, 8, 5, 7, 8, 6, 0, 3, 4, 1, 3, 2, 2, 4, 11, 11, 11, 11, 11, 11, 11, 11, 9, 9, 9, 
          9, 10, 10, 10, 10 ], [ 5, 6, 8, 7, 7, 5, 6, 8, 3, 0, 1, 4, 2, 3, 4, 2, 11, 11, 11, 11, 
          11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 6, 5, 7, 8, 8, 6, 5, 7, 4, 1, 0, 3, 2, 4, 3, 2, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 9, 9, 9, 9 ], [ 6, 5, 8, 7, 6, 8, 7, 5, 1, 4, 3, 0, 4, 2, 2, 3, 11, 11, 11, 11, 
          11, 11, 11, 11, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 7, 8, 5, 6, 5, 8, 7, 6, 3, 2, 2, 4, 0, 4, 3, 1, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 
          10, 10, 9, 9, 9, 9 ], [ 7, 8, 6, 5, 8, 5, 6, 7, 2, 3, 4, 2, 4, 0, 1, 3, 11, 11, 11, 11, 
          11, 11, 11, 11, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 8, 7, 5, 6, 7, 6, 5, 8, 2, 4, 3, 2, 3, 1, 0, 4, 11, 11, 11, 11, 11, 11, 11, 11, 9, 9, 9, 
          9, 10, 10, 10, 10 ], [ 8, 7, 6, 5, 6, 7, 8, 5, 4, 2, 2, 3, 1, 3, 4, 0, 11, 11, 11, 11, 
          11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 0, 1, 2, 2, 3, 3, 4, 4, 5, 6, 
          7, 8, 5, 6, 7, 8 ], [ 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 1, 0, 
          2, 2, 4, 4, 3, 3, 6, 5, 8, 7, 6, 5, 8, 7 ], 
      [ 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 2, 2, 0, 1, 3, 4, 3, 4, 7, 8, 
          6, 5, 8, 7, 5, 6 ], [ 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 2, 2, 
          1, 0, 4, 3, 4, 3, 8, 7, 5, 6, 7, 8, 6, 5 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11, 3, 4, 3, 4, 0, 2, 2, 1, 5, 6, 
          8, 7, 7, 8, 5, 6 ], [ 10, 10, 10, 10, 9, 9, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11, 3, 4, 
          4, 3, 2, 0, 1, 2, 7, 8, 5, 6, 5, 6, 8, 7 ], 
      [ 10, 10, 10, 10, 9, 9, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11, 4, 3, 3, 4, 2, 1, 0, 2, 8, 7, 
          6, 5, 6, 5, 7, 8 ], [ 10, 10, 10, 10, 9, 9, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11, 4, 3, 
          4, 3, 1, 2, 2, 0, 6, 5, 7, 8, 8, 7, 6, 5 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 10, 9, 10, 9, 9, 10, 5, 6, 7, 8, 5, 7, 8, 6, 0, 1, 
          2, 2, 3, 4, 3, 4 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 10, 9, 10, 9, 9, 10, 6, 5, 
          8, 7, 6, 8, 7, 5, 1, 0, 2, 2, 4, 3, 4, 3 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 10, 9, 10, 9, 9, 10, 7, 8, 6, 5, 8, 5, 6, 7, 2, 2, 
          0, 1, 3, 4, 4, 3 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 9, 10, 10, 9, 10, 9, 9, 10, 8, 7, 
          5, 6, 7, 6, 5, 8, 2, 2, 1, 0, 4, 3, 3, 4 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 9, 10, 9, 10, 10, 9, 5, 6, 8, 7, 7, 5, 6, 8, 3, 4, 
          3, 4, 0, 1, 2, 2 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 9, 10, 9, 10, 10, 9, 6, 5, 
          7, 8, 8, 6, 5, 7, 4, 3, 4, 3, 1, 0, 2, 2 ], 
      [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 9, 10, 9, 10, 10, 9, 7, 8, 5, 6, 5, 8, 7, 6, 3, 4, 
          4, 3, 2, 2, 0, 1 ], [ 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 9, 10, 9, 10, 10, 9, 8, 7, 
          6, 5, 6, 7, 8, 5, 4, 3, 3, 4, 2, 2, 1, 0 ] ] )