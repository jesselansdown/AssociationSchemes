rec(
  ct := [ [ 1, 1, 2, 4, 12, 12, 1 ], [ 1, 1, 2, 4, -4, -4, 3 ], [ 1, 1, 2, -4, 0, 0, 4 ], 
      [ 1, -1, 0, 0, -2*E(12)^7+2*E(12)^11, 2*E(12)^7-2*E(12)^11, 8 ], 
      [ 1, -1, 0, 0, 2*E(12)^7-2*E(12)^11, -2*E(12)^7+2*E(12)^11, 8 ], [ 1, 1, -2, 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 1, 0, 2, 2, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 
          4, 4, 4, 4, 4, 4 ], [ 2, 2, 0, 1, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 4, 
          4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ], 
      [ 2, 2, 1, 0, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 
          4, 4 ], [ 3, 3, 3, 3, 0, 1, 2, 2, 4, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 5, 
          4, 4, 4, 5, 5, 5 ], [ 3, 3, 3, 3, 1, 0, 2, 2, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 
          5, 4, 4, 4, 5, 5, 5, 4, 4, 4 ], 
      [ 3, 3, 3, 3, 2, 2, 0, 1, 4, 4, 5, 4, 5, 5, 4, 5, 5, 4, 4, 5, 4, 5, 5, 4, 4, 5, 4, 4, 5, 4, 
          5, 5 ], [ 3, 3, 3, 3, 2, 2, 1, 0, 5, 5, 4, 5, 4, 4, 5, 4, 4, 5, 5, 4, 5, 4, 4, 5, 5, 4, 
          5, 5, 4, 5, 4, 4 ], [ 4, 5, 4, 5, 4, 5, 4, 5, 0, 2, 4, 4, 5, 5, 5, 3, 3, 4, 5, 4, 5, 4, 
          5, 3, 3, 4, 4, 4, 5, 5, 1, 2 ], 
      [ 4, 5, 4, 5, 4, 5, 4, 5, 2, 0, 5, 5, 4, 4, 4, 3, 3, 4, 5, 5, 4, 4, 5, 3, 3, 5, 5, 5, 4, 4, 
          2, 1 ], [ 4, 5, 4, 5, 4, 5, 5, 4, 4, 5, 0, 3, 4, 5, 2, 4, 5, 5, 4, 3, 3, 5, 4, 4, 5, 2, 
          4, 5, 3, 1, 5, 4 ], [ 4, 5, 4, 5, 5, 4, 4, 5, 4, 5, 3, 0, 5, 4, 3, 5, 4, 5, 4, 2, 2, 5, 
          4, 5, 4, 3, 5, 4, 1, 3, 5, 4 ], 
      [ 4, 5, 4, 5, 5, 4, 5, 4, 5, 4, 4, 5, 0, 3, 4, 5, 5, 3, 2, 4, 5, 2, 3, 4, 4, 5, 3, 1, 4, 5, 
          4, 5 ], [ 4, 5, 4, 5, 5, 4, 5, 4, 5, 4, 5, 4, 3, 0, 5, 4, 4, 2, 3, 5, 4, 3, 2, 5, 5, 4, 
          1, 3, 5, 4, 4, 5 ], [ 4, 5, 5, 4, 4, 5, 4, 5, 5, 4, 2, 3, 4, 5, 0, 5, 4, 5, 4, 3, 3, 5, 
          4, 5, 4, 1, 4, 5, 3, 2, 4, 5 ], 
      [ 4, 5, 5, 4, 4, 5, 5, 4, 3, 3, 4, 5, 5, 4, 5, 0, 2, 4, 4, 5, 4, 5, 5, 2, 1, 4, 5, 4, 4, 5, 
          3, 3 ], [ 4, 5, 5, 4, 4, 5, 5, 4, 3, 3, 5, 4, 5, 4, 4, 2, 0, 5, 5, 4, 5, 4, 4, 1, 2, 5, 
          5, 4, 5, 4, 3, 3 ], [ 4, 5, 5, 4, 5, 4, 4, 5, 4, 4, 5, 5, 3, 2, 5, 4, 5, 0, 3, 4, 5, 3, 
          1, 4, 5, 4, 2, 3, 4, 4, 5, 5 ], 
      [ 4, 5, 5, 4, 5, 4, 4, 5, 5, 5, 4, 4, 2, 3, 4, 4, 5, 3, 0, 5, 4, 1, 3, 4, 5, 5, 3, 2, 5, 5, 
          4, 4 ], [ 4, 5, 5, 4, 5, 4, 5, 4, 4, 5, 3, 2, 4, 5, 3, 5, 4, 4, 5, 0, 1, 4, 5, 5, 4, 3, 
          4, 5, 2, 3, 5, 4 ], [ 5, 4, 4, 5, 4, 5, 4, 5, 5, 4, 3, 2, 5, 4, 3, 4, 5, 5, 4, 1, 0, 5, 
          4, 4, 5, 3, 5, 4, 2, 3, 4, 5 ], 
      [ 5, 4, 4, 5, 4, 5, 5, 4, 4, 4, 5, 5, 2, 3, 5, 5, 4, 3, 1, 4, 5, 0, 3, 5, 4, 4, 3, 2, 4, 4, 
          5, 5 ], [ 5, 4, 4, 5, 4, 5, 5, 4, 5, 5, 4, 4, 3, 2, 4, 5, 4, 1, 3, 5, 4, 3, 0, 5, 4, 5, 
          2, 3, 5, 5, 4, 4 ], [ 5, 4, 4, 5, 5, 4, 4, 5, 3, 3, 4, 5, 4, 5, 5, 2, 1, 4, 4, 5, 4, 5, 
          5, 0, 2, 4, 4, 5, 4, 5, 3, 3 ], 
      [ 5, 4, 4, 5, 5, 4, 4, 5, 3, 3, 5, 4, 4, 5, 4, 1, 2, 5, 5, 4, 5, 4, 4, 2, 0, 5, 4, 5, 5, 4, 
          3, 3 ], [ 5, 4, 4, 5, 5, 4, 5, 4, 4, 5, 2, 3, 5, 4, 1, 4, 5, 4, 5, 3, 3, 4, 5, 4, 5, 0, 
          5, 4, 3, 2, 5, 4 ], [ 5, 4, 5, 4, 4, 5, 4, 5, 4, 5, 4, 5, 3, 1, 4, 5, 5, 2, 3, 4, 5, 3, 
          2, 4, 4, 5, 0, 3, 4, 5, 5, 4 ], 
      [ 5, 4, 5, 4, 4, 5, 4, 5, 4, 5, 5, 4, 1, 3, 5, 4, 4, 3, 2, 5, 4, 2, 3, 5, 5, 4, 3, 0, 5, 4, 
          5, 4 ], [ 5, 4, 5, 4, 4, 5, 5, 4, 5, 4, 3, 1, 4, 5, 3, 4, 5, 4, 5, 2, 2, 4, 5, 4, 5, 3, 
          4, 5, 0, 3, 4, 5 ], [ 5, 4, 5, 4, 5, 4, 4, 5, 5, 4, 1, 3, 5, 4, 2, 5, 4, 4, 5, 3, 3, 4, 
          5, 5, 4, 2, 5, 4, 3, 0, 4, 5 ], 
      [ 5, 4, 5, 4, 5, 4, 5, 4, 1, 2, 5, 5, 4, 4, 4, 3, 3, 5, 4, 5, 4, 5, 4, 3, 3, 5, 5, 5, 4, 4, 
          0, 2 ], [ 5, 4, 5, 4, 5, 4, 5, 4, 2, 1, 4, 4, 5, 5, 5, 3, 3, 5, 4, 4, 5, 5, 4, 3, 3, 4, 
          4, 4, 5, 5, 2, 0 ] ] )