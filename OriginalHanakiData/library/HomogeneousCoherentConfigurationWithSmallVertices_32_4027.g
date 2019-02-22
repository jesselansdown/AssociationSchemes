rec(
  ct := [ [ 1, 1, 2, 7, 7, 14, 1 ], [ 1, 1, -2, 7, 7, -14, 1 ], [ 1, 1, -2, -1, -1, 2, 7 ], 
      [ 1, 1, 2, -1, -1, -2, 7 ], 
      [ 1, -1, 0, E(7)+E(7)^2-E(7)^3+E(7)^4-E(7)^5-E(7)^6, -E(7)-E(7)^2+E(7)^3-E(7)^4+E(7)^5+E(7)^6
            , 0, 8 ], 
      [ 1, -1, 0, -E(7)-E(7)^2+E(7)^3-E(7)^4+E(7)^5+E(7)^6, E(7)+E(7)^2-E(7)^3+E(7)^4-E(7)^5-E(7)^6
            , 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5 ], [ 1, 0, 2, 2, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 2, 2, 0, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 3, 3, 
          3, 3, 3, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 2, 2, 1, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 
          3, 3 ], [ 4, 3, 5, 5, 0, 3, 3, 3, 4, 4, 4, 1, 3, 3, 3, 4, 4, 4, 2, 5, 5, 5, 5, 5, 5, 2, 
          5, 5, 5, 5, 5, 5 ], [ 4, 3, 5, 5, 4, 0, 3, 4, 3, 3, 4, 3, 3, 4, 4, 1, 3, 4, 5, 2, 5, 5, 
          5, 5, 5, 5, 2, 5, 5, 5, 5, 5 ], 
      [ 4, 3, 5, 5, 4, 4, 0, 3, 3, 4, 3, 3, 4, 3, 4, 3, 4, 1, 5, 5, 2, 5, 5, 5, 5, 5, 5, 2, 5, 5, 
          5, 5 ], [ 4, 3, 5, 5, 4, 3, 4, 0, 4, 3, 3, 3, 4, 4, 3, 4, 1, 3, 5, 5, 5, 2, 5, 5, 5, 5, 
          5, 5, 2, 5, 5, 5 ], [ 4, 3, 5, 5, 3, 4, 4, 3, 0, 3, 4, 4, 3, 4, 1, 3, 4, 3, 5, 5, 5, 5, 
          2, 5, 5, 5, 5, 5, 5, 2, 5, 5 ], 
      [ 4, 3, 5, 5, 3, 4, 3, 4, 4, 0, 3, 4, 4, 1, 3, 3, 3, 4, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 
          2, 5 ], [ 4, 3, 5, 5, 3, 3, 4, 4, 3, 4, 0, 4, 1, 3, 4, 4, 3, 3, 5, 5, 5, 5, 5, 5, 2, 5, 
          5, 5, 5, 5, 5, 2 ], [ 3, 4, 5, 5, 1, 4, 4, 4, 3, 3, 3, 0, 4, 4, 4, 3, 3, 3, 2, 5, 5, 5, 
          5, 5, 5, 2, 5, 5, 5, 5, 5, 5 ], 
      [ 3, 4, 5, 5, 4, 4, 3, 3, 4, 3, 1, 3, 0, 4, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 
          5, 2 ], [ 3, 4, 5, 5, 4, 3, 4, 3, 3, 1, 4, 3, 3, 0, 4, 4, 4, 3, 5, 5, 5, 5, 5, 2, 5, 5, 
          5, 5, 5, 5, 2, 5 ], [ 3, 4, 5, 5, 4, 3, 3, 4, 1, 4, 3, 3, 4, 3, 0, 4, 3, 4, 5, 5, 5, 5, 
          2, 5, 5, 5, 5, 5, 5, 2, 5, 5 ], 
      [ 3, 4, 5, 5, 3, 1, 4, 3, 4, 4, 3, 4, 4, 3, 3, 0, 4, 3, 5, 2, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 
          5, 5 ], [ 3, 4, 5, 5, 3, 4, 3, 1, 3, 4, 4, 4, 3, 3, 4, 3, 0, 4, 5, 5, 5, 2, 5, 5, 5, 5, 
          5, 5, 2, 5, 5, 5 ], [ 3, 4, 5, 5, 3, 3, 1, 4, 4, 3, 4, 4, 3, 4, 3, 4, 3, 0, 5, 5, 2, 5, 
          5, 5, 5, 5, 5, 2, 5, 5, 5, 5 ], 
      [ 5, 5, 4, 3, 2, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 0, 3, 3, 4, 4, 3, 4, 1, 4, 4, 3, 3, 
          4, 3 ], [ 5, 5, 4, 3, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 5, 5, 4, 0, 3, 4, 3, 4, 3, 3, 
          1, 4, 3, 4, 3, 4 ], [ 5, 5, 4, 3, 5, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 4, 4, 0, 3, 
          4, 3, 3, 3, 3, 1, 4, 3, 4, 4 ], 
      [ 5, 5, 4, 3, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 2, 5, 3, 3, 4, 0, 4, 4, 3, 4, 4, 3, 1, 3, 
          3, 4 ], [ 5, 5, 4, 3, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 2, 5, 5, 5, 3, 4, 3, 3, 0, 4, 4, 4, 
          3, 4, 4, 1, 3, 3 ], [ 5, 5, 4, 3, 5, 5, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 5, 4, 3, 4, 3, 
          3, 0, 4, 3, 4, 3, 4, 4, 1, 3 ], 
      [ 5, 5, 4, 3, 5, 5, 5, 5, 5, 5, 2, 5, 2, 5, 5, 5, 5, 5, 3, 4, 4, 4, 3, 3, 0, 4, 3, 3, 3, 4, 
          4, 1 ], [ 5, 5, 3, 4, 2, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 1, 4, 4, 3, 3, 4, 3, 0, 
          3, 3, 4, 4, 3, 4 ], [ 5, 5, 3, 4, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 5, 5, 3, 1, 4, 3, 
          4, 3, 4, 4, 0, 3, 4, 3, 4, 3 ], 
      [ 5, 5, 3, 4, 5, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 3, 3, 1, 4, 3, 4, 4, 4, 4, 0, 3, 4, 
          3, 3 ], [ 5, 5, 3, 4, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 2, 5, 4, 4, 3, 1, 3, 3, 4, 3, 
          3, 4, 0, 4, 4, 3 ], [ 5, 5, 3, 4, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 2, 5, 5, 5, 4, 3, 4, 4, 
          1, 3, 3, 3, 4, 3, 3, 0, 4, 4 ], 
      [ 5, 5, 3, 4, 5, 5, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 5, 3, 4, 3, 4, 4, 1, 3, 4, 3, 4, 3, 3, 
          0, 4 ], [ 5, 5, 3, 4, 5, 5, 5, 5, 5, 5, 2, 5, 2, 5, 5, 5, 5, 5, 4, 3, 3, 3, 4, 4, 1, 3, 
          4, 4, 4, 3, 3, 0 ] ] )