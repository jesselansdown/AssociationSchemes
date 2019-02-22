rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, -1, -1, 2, 2, -2, -2, 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, 2, 2, -2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 2*E(4), 1 ], 
      [ 1, 1, 1, 1, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, E(3)-E(3)^2, -E(3)+E(3)^2, -E(3)+E(3)^2, E(3)-E(3)^2, 2 ]
        , [ 1, -1, -1, 1, -1, 1, 1, -1, 0, 0, -E(3)+E(3)^2, E(3)-E(3)^2, E(3)-E(3)^2, 
          -E(3)+E(3)^2, 2 ], [ 1, -1, -1, 1, 2, -2, -2, 2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, -E(12)^7+E(12)^11, -E(12)^7+E(12)^11, E(12)^7-E(12)^11, 
          E(12)^7-E(12)^11, 2 ], 
      [ 1, -1, 1, -1, -1, 1, -1, 1, 0, 0, E(12)^7-E(12)^11, E(12)^7-E(12)^11, -E(12)^7+E(12)^11, 
          -E(12)^7+E(12)^11, 2 ], [ 1, -1, 1, -1, 2, -2, 2, -2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, 2*E(4), -2*E(4), -E(4), E(4), -E(4), E(4), 2 ], 
      [ 1, 1, -1, -1, -1, -1, 1, 1, -2*E(4), 2*E(4), E(4), -E(4), E(4), -E(4), 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, -2, -2, 1, 1, 1, 1, 2 ], 
      [ 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, -1, -1, -1, -1, 2 ] ],
  matrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13 ], 
      [ 1, 0, 3, 2, 5, 5, 4, 4, 7, 7, 6, 6, 8, 8, 9, 9, 12, 12, 13, 13, 10, 10, 11, 11 ], 
      [ 2, 3, 0, 1, 6, 6, 7, 7, 4, 4, 5, 5, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12 ], 
      [ 3, 2, 1, 0, 7, 7, 6, 6, 5, 5, 4, 4, 9, 9, 8, 8, 13, 13, 12, 12, 11, 11, 10, 10 ], 
      [ 4, 5, 6, 7, 0, 4, 1, 5, 2, 6, 3, 7, 10, 12, 11, 13, 8, 12, 9, 13, 8, 10, 9, 11 ], 
      [ 4, 5, 6, 7, 4, 0, 5, 1, 6, 2, 7, 3, 12, 10, 13, 11, 12, 8, 13, 9, 10, 8, 11, 9 ], 
      [ 5, 4, 7, 6, 1, 5, 0, 4, 3, 7, 2, 6, 12, 10, 13, 11, 8, 10, 9, 11, 8, 12, 9, 13 ], 
      [ 5, 4, 7, 6, 5, 1, 4, 0, 7, 3, 6, 2, 10, 12, 11, 13, 10, 8, 11, 9, 12, 8, 13, 9 ], 
      [ 6, 7, 4, 5, 2, 6, 3, 7, 0, 4, 1, 5, 11, 13, 10, 12, 9, 13, 8, 12, 9, 11, 8, 10 ], 
      [ 6, 7, 4, 5, 6, 2, 7, 3, 4, 0, 5, 1, 13, 11, 12, 10, 13, 9, 12, 8, 11, 9, 10, 8 ], 
      [ 7, 6, 5, 4, 3, 7, 2, 6, 1, 5, 0, 4, 13, 11, 12, 10, 9, 11, 8, 10, 9, 13, 8, 12 ], 
      [ 7, 6, 5, 4, 7, 3, 6, 2, 5, 1, 4, 0, 11, 13, 10, 12, 11, 9, 10, 8, 13, 9, 12, 8 ], 
      [ 9, 9, 8, 8, 11, 13, 13, 11, 10, 12, 12, 10, 0, 1, 2, 3, 5, 4, 7, 6, 4, 5, 6, 7 ], 
      [ 9, 9, 8, 8, 13, 11, 11, 13, 12, 10, 10, 12, 1, 0, 3, 2, 4, 5, 6, 7, 5, 4, 7, 6 ], 
      [ 8, 8, 9, 9, 10, 12, 12, 10, 11, 13, 13, 11, 2, 3, 0, 1, 7, 6, 5, 4, 6, 7, 4, 5 ], 
      [ 8, 8, 9, 9, 12, 10, 10, 12, 13, 11, 11, 13, 3, 2, 1, 0, 6, 7, 4, 5, 7, 6, 5, 4 ], 
      [ 11, 13, 10, 12, 9, 13, 9, 11, 8, 12, 8, 10, 5, 4, 7, 6, 0, 5, 2, 7, 1, 4, 3, 6 ], 
      [ 11, 13, 10, 12, 13, 9, 11, 9, 12, 8, 10, 8, 4, 5, 6, 7, 5, 0, 7, 2, 4, 1, 6, 3 ], 
      [ 10, 12, 11, 13, 8, 12, 8, 10, 9, 13, 9, 11, 7, 6, 5, 4, 2, 7, 0, 5, 3, 6, 1, 4 ], 
      [ 10, 12, 11, 13, 12, 8, 10, 8, 13, 9, 11, 9, 6, 7, 4, 5, 7, 2, 5, 0, 6, 3, 4, 1 ], 
      [ 13, 11, 12, 10, 9, 11, 9, 13, 8, 10, 8, 12, 4, 5, 6, 7, 1, 4, 3, 6, 0, 5, 2, 7 ], 
      [ 13, 11, 12, 10, 11, 9, 13, 9, 10, 8, 12, 8, 5, 4, 7, 6, 4, 1, 6, 3, 5, 0, 7, 2 ], 
      [ 12, 10, 13, 11, 8, 10, 8, 12, 9, 11, 9, 13, 6, 7, 4, 5, 3, 6, 1, 4, 2, 7, 0, 5 ], 
      [ 12, 10, 13, 11, 10, 8, 12, 8, 11, 9, 13, 9, 7, 6, 5, 4, 6, 3, 4, 1, 7, 2, 5, 0 ] ] )