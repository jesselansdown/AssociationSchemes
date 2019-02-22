rec(
  ct := [ [ 1, 1, 2, 2, 2, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, 2, 2, 2, 4, 4, -4, -4, -4, -4, 1 ], 
      [ 1, 1, -2, 0, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 2*E(16)+2*E(16)^7, -2*E(16)-2*E(16)^7, 
          -2*E(16)^3-2*E(16)^5, 2*E(16)^3+2*E(16)^5, 2 ], 
      [ 1, 1, -2, 0, 0, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, -2*E(16)-2*E(16)^7, 2*E(16)+2*E(16)^7, 
          2*E(16)^3+2*E(16)^5, -2*E(16)^3-2*E(16)^5, 2 ], 
      [ 1, 1, -2, 0, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 2*E(16)^3+2*E(16)^5, 
          -2*E(16)^3-2*E(16)^5, 2*E(16)+2*E(16)^7, -2*E(16)-2*E(16)^7, 2 ], 
      [ 1, 1, -2, 0, 0, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, -2*E(16)^3-2*E(16)^5, 
          2*E(16)^3+2*E(16)^5, -2*E(16)-2*E(16)^7, 2*E(16)+2*E(16)^7, 2 ], 
      [ 1, 1, 2, -2, -2, 0, 0, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 
          2*E(8)-2*E(8)^3, 2 ], 
      [ 1, 1, 2, -2, -2, 0, 0, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, 
          -2*E(8)+2*E(8)^3, 2 ], [ 1, 1, 2, 2, 2, -4, -4, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 0, E(8)+E(8)^3, -E(8)-E(8)^3, 0, 0, 0, 0, 0, 0, 8 ], 
      [ 1, -1, 0, -E(8)-E(8)^3, E(8)+E(8)^3, 0, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 
          10, 10 ], [ 1, 0, 2, 2, 4, 4, 3, 3, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 
          9, 9, 9, 10, 10, 10, 10 ], 
      [ 2, 2, 0, 1, 3, 4, 3, 4, 6, 6, 6, 6, 5, 5, 5, 5, 8, 8, 8, 8, 7, 7, 7, 7, 10, 10, 10, 10, 9, 
          9, 9, 9 ], [ 2, 2, 1, 0, 4, 3, 4, 3, 6, 6, 6, 6, 5, 5, 5, 5, 8, 8, 8, 8, 7, 7, 7, 7, 10, 
          10, 10, 10, 9, 9, 9, 9 ], 
      [ 4, 3, 4, 3, 0, 2, 2, 1, 5, 5, 6, 6, 5, 5, 6, 6, 9, 9, 10, 10, 9, 9, 10, 10, 7, 7, 8, 8, 7, 
          7, 8, 8 ], [ 4, 3, 3, 4, 2, 0, 1, 2, 6, 6, 5, 5, 6, 6, 5, 5, 10, 10, 9, 9, 10, 10, 9, 9, 
          8, 8, 7, 7, 8, 8, 7, 7 ], 
      [ 3, 4, 4, 3, 2, 1, 0, 2, 6, 6, 5, 5, 6, 6, 5, 5, 10, 10, 9, 9, 10, 10, 9, 9, 8, 8, 7, 7, 8, 
          8, 7, 7 ], [ 3, 4, 3, 4, 1, 2, 2, 0, 5, 5, 6, 6, 5, 5, 6, 6, 9, 9, 10, 10, 9, 9, 10, 10, 
          7, 7, 8, 8, 7, 7, 8, 8 ], 
      [ 5, 5, 6, 6, 5, 6, 6, 5, 0, 1, 3, 4, 3, 4, 2, 2, 7, 7, 9, 9, 10, 10, 8, 8, 7, 7, 10, 10, 9, 
          9, 8, 8 ], [ 5, 5, 6, 6, 5, 6, 6, 5, 1, 0, 4, 3, 4, 3, 2, 2, 7, 7, 9, 9, 10, 10, 8, 8, 
          7, 7, 10, 10, 9, 9, 8, 8 ], 
      [ 5, 5, 6, 6, 6, 5, 5, 6, 4, 3, 0, 1, 2, 2, 3, 4, 9, 9, 7, 7, 8, 8, 10, 10, 10, 10, 7, 7, 8, 
          8, 9, 9 ], [ 5, 5, 6, 6, 6, 5, 5, 6, 3, 4, 1, 0, 2, 2, 4, 3, 9, 9, 7, 7, 8, 8, 10, 10, 
          10, 10, 7, 7, 8, 8, 9, 9 ], 
      [ 6, 6, 5, 5, 5, 6, 6, 5, 4, 3, 2, 2, 0, 1, 4, 3, 10, 10, 8, 8, 7, 7, 9, 9, 9, 9, 8, 8, 7, 
          7, 10, 10 ], [ 6, 6, 5, 5, 5, 6, 6, 5, 3, 4, 2, 2, 1, 0, 3, 4, 10, 10, 8, 8, 7, 7, 9, 9, 
          9, 9, 8, 8, 7, 7, 10, 10 ], 
      [ 6, 6, 5, 5, 6, 5, 5, 6, 2, 2, 4, 3, 3, 4, 0, 1, 8, 8, 10, 10, 9, 9, 7, 7, 8, 8, 9, 9, 10, 
          10, 7, 7 ], [ 6, 6, 5, 5, 6, 5, 5, 6, 2, 2, 3, 4, 4, 3, 1, 0, 8, 8, 10, 10, 9, 9, 7, 7, 
          8, 8, 9, 9, 10, 10, 7, 7 ], 
      [ 8, 8, 7, 7, 10, 9, 9, 10, 8, 8, 10, 10, 9, 9, 7, 7, 0, 1, 5, 5, 6, 6, 2, 2, 5, 5, 3, 4, 3, 
          4, 6, 6 ], [ 8, 8, 7, 7, 10, 9, 9, 10, 8, 8, 10, 10, 9, 9, 7, 7, 1, 0, 5, 5, 6, 6, 2, 2, 
          5, 5, 4, 3, 4, 3, 6, 6 ], 
      [ 8, 8, 7, 7, 9, 10, 10, 9, 10, 10, 8, 8, 7, 7, 9, 9, 5, 5, 0, 1, 2, 2, 6, 6, 3, 4, 5, 5, 6, 
          6, 3, 4 ], [ 8, 8, 7, 7, 9, 10, 10, 9, 10, 10, 8, 8, 7, 7, 9, 9, 5, 5, 1, 0, 2, 2, 6, 6, 
          4, 3, 5, 5, 6, 6, 4, 3 ], 
      [ 7, 7, 8, 8, 10, 9, 9, 10, 9, 9, 7, 7, 8, 8, 10, 10, 6, 6, 2, 2, 0, 1, 5, 5, 3, 4, 6, 6, 5, 
          5, 4, 3 ], [ 7, 7, 8, 8, 10, 9, 9, 10, 9, 9, 7, 7, 8, 8, 10, 10, 6, 6, 2, 2, 1, 0, 5, 5, 
          4, 3, 6, 6, 5, 5, 3, 4 ], 
      [ 7, 7, 8, 8, 9, 10, 10, 9, 7, 7, 9, 9, 10, 10, 8, 8, 2, 2, 6, 6, 5, 5, 0, 1, 6, 6, 3, 4, 4, 
          3, 5, 5 ], [ 7, 7, 8, 8, 9, 10, 10, 9, 7, 7, 9, 9, 10, 10, 8, 8, 2, 2, 6, 6, 5, 5, 1, 0, 
          6, 6, 4, 3, 3, 4, 5, 5 ], 
      [ 10, 10, 9, 9, 8, 7, 7, 8, 8, 8, 9, 9, 10, 10, 7, 7, 5, 5, 4, 3, 4, 3, 6, 6, 0, 1, 6, 6, 5, 
          5, 2, 2 ], [ 10, 10, 9, 9, 8, 7, 7, 8, 8, 8, 9, 9, 10, 10, 7, 7, 5, 5, 3, 4, 3, 4, 6, 6, 
          1, 0, 6, 6, 5, 5, 2, 2 ], 
      [ 10, 10, 9, 9, 7, 8, 8, 7, 9, 9, 8, 8, 7, 7, 10, 10, 4, 3, 5, 5, 6, 6, 4, 3, 6, 6, 0, 1, 2, 
          2, 5, 5 ], [ 10, 10, 9, 9, 7, 8, 8, 7, 9, 9, 8, 8, 7, 7, 10, 10, 3, 4, 5, 5, 6, 6, 3, 4, 
          6, 6, 1, 0, 2, 2, 5, 5 ], 
      [ 9, 9, 10, 10, 8, 7, 7, 8, 10, 10, 7, 7, 8, 8, 9, 9, 4, 3, 6, 6, 5, 5, 3, 4, 5, 5, 2, 2, 0, 
          1, 6, 6 ], [ 9, 9, 10, 10, 8, 7, 7, 8, 10, 10, 7, 7, 8, 8, 9, 9, 3, 4, 6, 6, 5, 5, 4, 3, 
          5, 5, 2, 2, 1, 0, 6, 6 ], 
      [ 9, 9, 10, 10, 7, 8, 8, 7, 7, 7, 10, 10, 9, 9, 8, 8, 6, 6, 4, 3, 3, 4, 5, 5, 2, 2, 5, 5, 6, 
          6, 0, 1 ], [ 9, 9, 10, 10, 7, 8, 8, 7, 7, 7, 10, 10, 9, 9, 8, 8, 6, 6, 3, 4, 4, 3, 5, 5, 
          2, 2, 5, 5, 6, 6, 1, 0 ] ] )