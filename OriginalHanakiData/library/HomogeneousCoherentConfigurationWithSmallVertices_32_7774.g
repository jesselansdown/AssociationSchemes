rec(
  ct := [ [ 1, 1, 1, 1, 4, 6, 6, 6, 6, 1 ], [ 1, 1, 1, 1, -4, -6, -6, 6, 6, 1 ], 
      [ 1, 1, 1, 1, -4, 2, 2, -2, -2, 3 ], [ 1, 1, 1, 1, 4, -2, -2, -2, -2, 3 ], 
      [ 1, -1, 1, -1, 0, 0, 0, 2*E(3)-2*E(3)^2, -2*E(3)+2*E(3)^2, 4 ], 
      [ 1, -1, 1, -1, 0, 0, 0, -2*E(3)+2*E(3)^2, 2*E(3)-2*E(3)^2, 4 ], 
      [ 1, 1, -1, -1, 0, -2*E(12)^7+2*E(12)^11, 2*E(12)^7-2*E(12)^11, 0, 0, 4 ], 
      [ 1, 1, -1, -1, 0, 2*E(12)^7-2*E(12)^11, -2*E(12)^7+2*E(12)^11, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 
          8, 8 ], [ 1, 0, 3, 2, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 8, 8, 8, 8, 8, 8, 
          7, 7, 7, 7, 7, 7 ], [ 2, 3, 0, 1, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 7, 7, 
          7, 7, 7, 7, 8, 8, 8, 8, 8, 8 ], 
      [ 3, 2, 1, 0, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 
          7, 7 ], [ 4, 4, 4, 4, 0, 1, 2, 3, 7, 7, 7, 8, 8, 8, 7, 7, 7, 8, 8, 8, 5, 5, 5, 6, 6, 6, 
          5, 5, 5, 6, 6, 6 ], [ 4, 4, 4, 4, 1, 0, 3, 2, 8, 8, 8, 7, 7, 7, 8, 8, 8, 7, 7, 7, 5, 5, 
          5, 6, 6, 6, 5, 5, 5, 6, 6, 6 ], 
      [ 4, 4, 4, 4, 2, 3, 0, 1, 7, 7, 7, 8, 8, 8, 7, 7, 7, 8, 8, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 5, 
          5, 5 ], [ 4, 4, 4, 4, 3, 2, 1, 0, 8, 8, 8, 7, 7, 7, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 
          6, 6, 6, 5, 5, 5 ], [ 5, 5, 6, 6, 8, 7, 8, 7, 0, 7, 8, 1, 7, 8, 2, 7, 8, 3, 7, 8, 4, 5, 
          6, 4, 5, 6, 4, 5, 6, 4, 5, 6 ], 
      [ 5, 5, 6, 6, 8, 7, 8, 7, 8, 0, 7, 7, 8, 1, 8, 2, 7, 7, 8, 3, 5, 6, 4, 6, 4, 5, 5, 6, 4, 6, 
          4, 5 ], [ 5, 5, 6, 6, 8, 7, 8, 7, 7, 8, 0, 8, 1, 7, 7, 8, 2, 8, 3, 7, 6, 4, 5, 5, 6, 4, 
          6, 4, 5, 5, 6, 4 ], [ 5, 5, 6, 6, 7, 8, 7, 8, 1, 8, 7, 0, 8, 7, 3, 8, 7, 2, 8, 7, 4, 5, 
          6, 4, 5, 6, 4, 5, 6, 4, 5, 6 ], 
      [ 5, 5, 6, 6, 7, 8, 7, 8, 8, 7, 1, 7, 0, 8, 8, 7, 3, 7, 2, 8, 6, 4, 5, 5, 6, 4, 6, 4, 5, 5, 
          6, 4 ], [ 5, 5, 6, 6, 7, 8, 7, 8, 7, 1, 8, 8, 7, 0, 7, 3, 8, 8, 7, 2, 5, 6, 4, 6, 4, 5, 
          5, 6, 4, 6, 4, 5 ], [ 6, 6, 5, 5, 8, 7, 8, 7, 2, 7, 8, 3, 7, 8, 0, 7, 8, 1, 7, 8, 4, 6, 
          5, 4, 6, 5, 4, 6, 5, 4, 6, 5 ], 
      [ 6, 6, 5, 5, 8, 7, 8, 7, 8, 2, 7, 7, 8, 3, 8, 0, 7, 7, 8, 1, 6, 5, 4, 5, 4, 6, 6, 5, 4, 5, 
          4, 6 ], [ 6, 6, 5, 5, 8, 7, 8, 7, 7, 8, 2, 8, 3, 7, 7, 8, 0, 8, 1, 7, 5, 4, 6, 6, 5, 4, 
          5, 4, 6, 6, 5, 4 ], [ 6, 6, 5, 5, 7, 8, 7, 8, 3, 8, 7, 2, 8, 7, 1, 8, 7, 0, 8, 7, 4, 6, 
          5, 4, 6, 5, 4, 6, 5, 4, 6, 5 ], 
      [ 6, 6, 5, 5, 7, 8, 7, 8, 8, 7, 3, 7, 2, 8, 8, 7, 1, 7, 0, 8, 5, 4, 6, 6, 5, 4, 5, 4, 6, 6, 
          5, 4 ], [ 6, 6, 5, 5, 7, 8, 7, 8, 7, 3, 8, 8, 7, 2, 7, 1, 8, 8, 7, 0, 6, 5, 4, 5, 4, 6, 
          6, 5, 4, 5, 4, 6 ], [ 8, 7, 8, 7, 5, 5, 6, 6, 4, 5, 6, 4, 6, 5, 4, 6, 5, 4, 5, 6, 0, 7, 
          8, 2, 8, 7, 1, 8, 7, 3, 7, 8 ], 
      [ 8, 7, 8, 7, 5, 5, 6, 6, 5, 6, 4, 5, 4, 6, 6, 5, 4, 6, 4, 5, 8, 0, 7, 8, 7, 2, 7, 1, 8, 7, 
          8, 3 ], [ 8, 7, 8, 7, 5, 5, 6, 6, 6, 4, 5, 6, 5, 4, 5, 4, 6, 5, 6, 4, 7, 8, 0, 7, 2, 8, 
          8, 7, 1, 8, 3, 7 ], [ 8, 7, 8, 7, 6, 6, 5, 5, 4, 6, 5, 4, 5, 6, 4, 5, 6, 4, 6, 5, 2, 7, 
          8, 0, 8, 7, 3, 8, 7, 1, 7, 8 ], 
      [ 8, 7, 8, 7, 6, 6, 5, 5, 5, 4, 6, 5, 6, 4, 6, 4, 5, 6, 5, 4, 7, 8, 2, 7, 0, 8, 8, 7, 3, 8, 
          1, 7 ], [ 8, 7, 8, 7, 6, 6, 5, 5, 6, 5, 4, 6, 4, 5, 5, 6, 4, 5, 4, 6, 8, 2, 7, 8, 7, 0, 
          7, 3, 8, 7, 8, 1 ], [ 7, 8, 7, 8, 5, 5, 6, 6, 4, 5, 6, 4, 6, 5, 4, 6, 5, 4, 5, 6, 1, 8, 
          7, 3, 7, 8, 0, 7, 8, 2, 8, 7 ], 
      [ 7, 8, 7, 8, 5, 5, 6, 6, 5, 6, 4, 5, 4, 6, 6, 5, 4, 6, 4, 5, 7, 1, 8, 7, 8, 3, 8, 0, 7, 8, 
          7, 2 ], [ 7, 8, 7, 8, 5, 5, 6, 6, 6, 4, 5, 6, 5, 4, 5, 4, 6, 5, 6, 4, 8, 7, 1, 8, 3, 7, 
          7, 8, 0, 7, 2, 8 ], [ 7, 8, 7, 8, 6, 6, 5, 5, 4, 6, 5, 4, 5, 6, 4, 5, 6, 4, 6, 5, 3, 8, 
          7, 1, 7, 8, 2, 7, 8, 0, 8, 7 ], 
      [ 7, 8, 7, 8, 6, 6, 5, 5, 5, 4, 6, 5, 6, 4, 6, 4, 5, 6, 5, 4, 8, 7, 3, 8, 1, 7, 7, 8, 2, 7, 
          0, 8 ], [ 7, 8, 7, 8, 6, 6, 5, 5, 6, 5, 4, 6, 4, 5, 5, 6, 4, 5, 4, 6, 7, 3, 8, 7, 8, 1, 
          8, 2, 7, 8, 7, 0 ] ] )