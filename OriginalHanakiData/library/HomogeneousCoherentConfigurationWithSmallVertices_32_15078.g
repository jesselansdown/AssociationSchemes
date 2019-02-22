rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 1, 1, 2, 2, 4, 4, -4, -4, -4, -4, 1 ],
      [ 1, 1, -1, -1, -2, 2, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 
          -2*E(8)-2*E(8)^3, 2 ], [ 1, 1, -1, -1, -2, 2, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 
          -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 2 ], [ 1, 1, -1, -1, 2, -2, -4, 4, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, 2, -2, 4, -4, 0, 0, 0, 0, 2 ], [ 1, 1, 1, 1, 2, 2, -4, -4, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, 2*E(8), -2*E(8)^3, -2*E(8), 2*E(8)^3, 4 ], 
      [ 1, -1, E(4), -E(4), 0, 0, 0, 0, -2*E(8), 2*E(8)^3, 2*E(8), -2*E(8)^3, 4 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, 2*E(8)^3, -2*E(8), -2*E(8)^3, 2*E(8), 4 ], 
      [ 1, -1, -E(4), E(4), 0, 0, 0, 0, -2*E(8)^3, 2*E(8), 2*E(8)^3, -2*E(8), 4 ], 
      [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 0, 0, 4 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 
          11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 10, 10, 10, 10, 11, 11, 
          11, 11, 8, 8, 8, 8, 9, 9, 9, 9 ], 
      [ 3, 2, 0, 1, 5, 5, 4, 4, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 
          11, 8, 8, 8, 8 ], [ 2, 3, 1, 0, 5, 5, 4, 4, 7, 7, 7, 7, 6, 6, 6, 6, 11, 11, 11, 11, 8, 
          8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 6, 6, 6, 7, 7, 7, 7, 9, 9, 11, 11, 8, 8, 10, 10, 9, 9, 11, 11, 
          8, 8, 10, 10 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 6, 6, 6, 6, 7, 7, 7, 7, 11, 11, 9, 9, 10, 10, 
          8, 8, 11, 11, 9, 9, 10, 10, 8, 8 ], 
      [ 5, 5, 4, 4, 3, 2, 0, 1, 7, 7, 7, 7, 6, 6, 6, 6, 10, 10, 8, 8, 9, 9, 11, 11, 10, 10, 8, 8, 
          9, 9, 11, 11 ], [ 5, 5, 4, 4, 2, 3, 1, 0, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 10, 10, 11, 11, 
          9, 9, 8, 8, 10, 10, 11, 11, 9, 9 ], 
      [ 6, 6, 7, 7, 6, 6, 7, 7, 0, 1, 4, 4, 2, 3, 5, 5, 8, 10, 9, 11, 8, 10, 9, 11, 9, 11, 8, 10, 
          9, 11, 8, 10 ], [ 6, 6, 7, 7, 6, 6, 7, 7, 1, 0, 4, 4, 3, 2, 5, 5, 10, 8, 11, 9, 10, 8, 
          11, 9, 11, 9, 10, 8, 11, 9, 10, 8 ], 
      [ 6, 6, 7, 7, 6, 6, 7, 7, 4, 4, 0, 1, 5, 5, 2, 3, 9, 11, 8, 10, 11, 9, 10, 8, 8, 10, 9, 11, 
          10, 8, 11, 9 ], [ 6, 6, 7, 7, 6, 6, 7, 7, 4, 4, 1, 0, 5, 5, 3, 2, 11, 9, 10, 8, 9, 11, 
          8, 10, 10, 8, 11, 9, 8, 10, 9, 11 ], 
      [ 7, 7, 6, 6, 7, 7, 6, 6, 3, 2, 5, 5, 0, 1, 4, 4, 9, 11, 10, 8, 9, 11, 10, 8, 10, 8, 9, 11, 
          10, 8, 9, 11 ], [ 7, 7, 6, 6, 7, 7, 6, 6, 2, 3, 5, 5, 1, 0, 4, 4, 11, 9, 8, 10, 11, 9, 
          8, 10, 8, 10, 11, 9, 8, 10, 11, 9 ], 
      [ 7, 7, 6, 6, 7, 7, 6, 6, 5, 5, 3, 2, 4, 4, 0, 1, 10, 8, 9, 11, 8, 10, 11, 9, 9, 11, 10, 8, 
          11, 9, 8, 10 ], [ 7, 7, 6, 6, 7, 7, 6, 6, 5, 5, 2, 3, 4, 4, 1, 0, 8, 10, 11, 9, 10, 8, 
          9, 11, 11, 9, 8, 10, 9, 11, 10, 8 ], 
      [ 9, 11, 8, 10, 8, 10, 11, 9, 9, 11, 8, 10, 8, 10, 11, 9, 0, 5, 6, 7, 6, 7, 3, 4, 7, 6, 5, 
          1, 4, 2, 7, 6 ], [ 9, 11, 8, 10, 8, 10, 11, 9, 11, 9, 10, 8, 10, 8, 9, 11, 5, 0, 7, 6, 
          7, 6, 4, 3, 6, 7, 1, 5, 2, 4, 6, 7 ], 
      [ 9, 11, 8, 10, 10, 8, 9, 11, 8, 10, 9, 11, 11, 9, 8, 10, 6, 7, 0, 5, 4, 3, 7, 6, 5, 1, 7, 
          6, 6, 7, 2, 4 ], [ 9, 11, 8, 10, 10, 8, 9, 11, 10, 8, 11, 9, 9, 11, 10, 8, 7, 6, 5, 0, 
          3, 4, 6, 7, 1, 5, 6, 7, 7, 6, 4, 2 ], 
      [ 8, 10, 11, 9, 9, 11, 8, 10, 9, 11, 10, 8, 8, 10, 9, 11, 6, 7, 4, 2, 0, 5, 7, 6, 3, 4, 7, 
          6, 6, 7, 5, 1 ], [ 8, 10, 11, 9, 9, 11, 8, 10, 11, 9, 8, 10, 10, 8, 11, 9, 7, 6, 2, 4, 
          5, 0, 6, 7, 4, 3, 6, 7, 7, 6, 1, 5 ], 
      [ 8, 10, 11, 9, 11, 9, 10, 8, 8, 10, 11, 9, 11, 9, 10, 8, 2, 4, 7, 6, 7, 6, 0, 5, 6, 7, 4, 
          3, 5, 1, 6, 7 ], [ 8, 10, 11, 9, 11, 9, 10, 8, 10, 8, 9, 11, 9, 11, 8, 10, 4, 2, 6, 7, 
          6, 7, 5, 0, 7, 6, 3, 4, 1, 5, 7, 6 ], 
      [ 11, 9, 10, 8, 8, 10, 11, 9, 8, 10, 9, 11, 11, 9, 8, 10, 7, 6, 5, 1, 2, 4, 6, 7, 0, 5, 6, 
          7, 7, 6, 4, 3 ], [ 11, 9, 10, 8, 8, 10, 11, 9, 10, 8, 11, 9, 9, 11, 10, 8, 6, 7, 1, 5, 
          4, 2, 7, 6, 5, 0, 7, 6, 6, 7, 3, 4 ], 
      [ 11, 9, 10, 8, 10, 8, 9, 11, 9, 11, 8, 10, 8, 10, 11, 9, 5, 1, 7, 6, 7, 6, 4, 2, 6, 7, 0, 
          5, 3, 4, 6, 7 ], [ 11, 9, 10, 8, 10, 8, 9, 11, 11, 9, 10, 8, 10, 8, 9, 11, 1, 5, 6, 7, 
          6, 7, 2, 4, 7, 6, 5, 0, 4, 3, 7, 6 ], 
      [ 10, 8, 9, 11, 9, 11, 8, 10, 8, 10, 11, 9, 11, 9, 10, 8, 4, 3, 6, 7, 6, 7, 5, 1, 7, 6, 2, 
          4, 0, 5, 7, 6 ], [ 10, 8, 9, 11, 9, 11, 8, 10, 10, 8, 9, 11, 9, 11, 8, 10, 3, 4, 7, 6, 
          7, 6, 1, 5, 6, 7, 4, 2, 5, 0, 6, 7 ], 
      [ 10, 8, 9, 11, 11, 9, 10, 8, 9, 11, 10, 8, 8, 10, 9, 11, 7, 6, 3, 4, 5, 1, 6, 7, 4, 2, 6, 
          7, 7, 6, 0, 5 ], [ 10, 8, 9, 11, 11, 9, 10, 8, 11, 9, 8, 10, 10, 8, 11, 9, 6, 7, 4, 3, 
          1, 5, 7, 6, 2, 4, 7, 6, 6, 7, 5, 0 ] ] )