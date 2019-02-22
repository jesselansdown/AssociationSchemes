rec(
  ct := [ [ 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, E(3), E(3)^2, 2, 2, 2, 2, 2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3), 
          2*E(3)^2, 2*E(3), 1 ], 
      [ 1, E(3)^2, E(3), 2, 2, 2, 2, 2*E(3), 2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3), 2*E(3)^2, 2*E(3), 
          2*E(3)^2, 1 ], 
      [ 1, 1, 1, -1, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, E(9)^2+E(9)^7, E(9)^4+E(9)^5, -1, -1, 
          -E(9)^2-E(9)^4-E(9)^5-E(9)^7, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, E(9)^2+E(9)^7, 
          E(9)^2+E(9)^7, E(9)^4+E(9)^5, E(9)^4+E(9)^5, 2 ], 
      [ 1, 1, 1, -1, E(9)^4+E(9)^5, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, E(9)^2+E(9)^7, -1, -1, 
          E(9)^4+E(9)^5, E(9)^4+E(9)^5, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, -E(9)^2-E(9)^4-E(9)^5-E(9)^7,
          E(9)^2+E(9)^7, E(9)^2+E(9)^7, 2 ], 
      [ 1, 1, 1, -1, E(9)^2+E(9)^7, E(9)^4+E(9)^5, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, -1, -1, 
          E(9)^2+E(9)^7, E(9)^2+E(9)^7, E(9)^4+E(9)^5, E(9)^4+E(9)^5, -E(9)^2-E(9)^4-E(9)^5-E(9)^7,
          -E(9)^2-E(9)^4-E(9)^5-E(9)^7, 2 ], 
      [ 1, 1, 1, 2, -1, -1, -1, 2, 2, -1, -1, -1, -1, -1, -1, 2 ], 
      [ 1, E(3), E(3)^2, -1, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, E(9)^2+E(9)^7, E(9)^4+E(9)^5, -E(3)^2, 
          -E(3), E(9)^5+E(9)^7, E(9)^2+E(9)^4, -E(9)^2+E(9)^4-E(9)^5, -E(9)^4+E(9)^5-E(9)^7, 
          E(9)^2-E(9)^4-E(9)^7, -E(9)^2-E(9)^5+E(9)^7, 2 ], 
      [ 1, E(3), E(3)^2, -1, E(9)^4+E(9)^5, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, E(9)^2+E(9)^7, -E(3)^2, 
          -E(3), E(9)^2-E(9)^4-E(9)^7, -E(9)^2-E(9)^5+E(9)^7, E(9)^5+E(9)^7, E(9)^2+E(9)^4, 
          -E(9)^2+E(9)^4-E(9)^5, -E(9)^4+E(9)^5-E(9)^7, 2 ], 
      [ 1, E(3), E(3)^2, -1, E(9)^2+E(9)^7, E(9)^4+E(9)^5, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, -E(3)^2, 
          -E(3), -E(9)^2+E(9)^4-E(9)^5, -E(9)^4+E(9)^5-E(9)^7, E(9)^2-E(9)^4-E(9)^7, 
          -E(9)^2-E(9)^5+E(9)^7, E(9)^5+E(9)^7, E(9)^2+E(9)^4, 2 ], 
      [ 1, E(3), E(3)^2, 2, -1, -1, -1, 2*E(3)^2, 2*E(3), -E(3)^2, -E(3), -E(3)^2, -E(3), -E(3)^2, 
          -E(3), 2 ], [ 1, E(3)^2, E(3), -1, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, E(9)^2+E(9)^7, 
          E(9)^4+E(9)^5, -E(3), -E(3)^2, E(9)^2+E(9)^4, E(9)^5+E(9)^7, -E(9)^4+E(9)^5-E(9)^7, 
          -E(9)^2+E(9)^4-E(9)^5, -E(9)^2-E(9)^5+E(9)^7, E(9)^2-E(9)^4-E(9)^7, 2 ], 
      [ 1, E(3)^2, E(3), -1, E(9)^4+E(9)^5, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, E(9)^2+E(9)^7, -E(3), 
          -E(3)^2, -E(9)^2-E(9)^5+E(9)^7, E(9)^2-E(9)^4-E(9)^7, E(9)^2+E(9)^4, E(9)^5+E(9)^7, 
          -E(9)^4+E(9)^5-E(9)^7, -E(9)^2+E(9)^4-E(9)^5, 2 ], 
      [ 1, E(3)^2, E(3), -1, E(9)^2+E(9)^7, E(9)^4+E(9)^5, -E(9)^2-E(9)^4-E(9)^5-E(9)^7, -E(3), 
          -E(3)^2, -E(9)^4+E(9)^5-E(9)^7, -E(9)^2+E(9)^4-E(9)^5, -E(9)^2-E(9)^5+E(9)^7, 
          E(9)^2-E(9)^4-E(9)^7, E(9)^2+E(9)^4, E(9)^5+E(9)^7, 2 ], 
      [ 1, E(3)^2, E(3), 2, -1, -1, -1, 2*E(3), 2*E(3)^2, -E(3), -E(3)^2, -E(3), -E(3)^2, -E(3), 
          -E(3)^2, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14 ],
      [ 2, 0, 1, 7, 7, 9, 9, 11, 11, 13, 13, 8, 8, 3, 3, 10, 10, 4, 4, 12, 12, 5, 5, 14, 14, 6, 6 ]
        , [ 1, 2, 0, 8, 8, 10, 10, 12, 12, 14, 14, 3, 3, 7, 7, 4, 4, 9, 9, 5, 5, 11, 11, 6, 6, 13, 
          13 ], [ 3, 8, 7, 0, 3, 5, 6, 4, 6, 4, 5, 2, 7, 1, 8, 11, 13, 12, 14, 9, 13, 10, 14, 9, 
          11, 10, 12 ], [ 3, 8, 7, 3, 0, 6, 5, 6, 4, 5, 4, 7, 2, 8, 1, 13, 11, 14, 12, 13, 9, 14, 
          10, 11, 9, 12, 10 ], [ 4, 10, 9, 5, 6, 0, 5, 4, 3, 3, 6, 11, 13, 12, 14, 2, 11, 1, 12, 
          9, 7, 10, 8, 7, 13, 8, 14 ], 
      [ 4, 10, 9, 6, 5, 5, 0, 3, 4, 6, 3, 13, 11, 14, 12, 11, 2, 12, 1, 7, 9, 8, 10, 13, 7, 14, 8 ]
        , [ 5, 12, 11, 4, 6, 4, 3, 0, 6, 5, 3, 9, 13, 10, 14, 9, 7, 10, 8, 2, 13, 1, 14, 11, 7, 
          12, 8 ], [ 5, 12, 11, 6, 4, 3, 4, 6, 0, 3, 5, 13, 9, 14, 10, 7, 9, 8, 10, 13, 2, 14, 1, 
          7, 11, 8, 12 ], [ 6, 14, 13, 4, 5, 3, 6, 5, 3, 0, 4, 9, 11, 10, 12, 7, 13, 8, 14, 11, 7, 
          12, 8, 2, 9, 1, 10 ], [ 6, 14, 13, 5, 4, 6, 3, 3, 5, 4, 0, 11, 9, 12, 10, 13, 7, 14, 8, 
          7, 11, 8, 12, 9, 2, 10, 1 ], 
      [ 8, 7, 3, 1, 8, 12, 14, 10, 14, 10, 12, 0, 3, 2, 7, 5, 6, 11, 13, 4, 6, 9, 13, 4, 5, 9, 11 ]
        , [ 8, 7, 3, 8, 1, 14, 12, 14, 10, 12, 10, 3, 0, 7, 2, 6, 5, 13, 11, 6, 4, 13, 9, 5, 4, 
          11, 9 ], [ 7, 3, 8, 2, 7, 11, 13, 9, 13, 9, 11, 1, 8, 0, 3, 12, 14, 5, 6, 10, 14, 4, 6, 
          10, 12, 4, 5 ], [ 7, 3, 8, 7, 2, 13, 11, 13, 9, 11, 9, 8, 1, 3, 0, 14, 12, 6, 5, 14, 10, 
          6, 4, 12, 10, 5, 4 ], [ 10, 9, 4, 12, 14, 1, 12, 10, 8, 8, 14, 5, 6, 11, 13, 0, 5, 2, 
          11, 4, 3, 9, 7, 3, 6, 7, 13 ], 
      [ 10, 9, 4, 14, 12, 12, 1, 8, 10, 14, 8, 6, 5, 13, 11, 5, 0, 11, 2, 3, 4, 7, 9, 6, 3, 13, 7 ]
        , [ 9, 4, 10, 11, 13, 2, 11, 9, 7, 7, 13, 12, 14, 5, 6, 1, 12, 0, 5, 10, 8, 4, 3, 8, 14, 
          3, 6 ], [ 9, 4, 10, 13, 11, 11, 2, 7, 9, 13, 7, 14, 12, 6, 5, 12, 1, 5, 0, 8, 10, 3, 4, 
          14, 8, 6, 3 ], [ 12, 11, 5, 10, 14, 10, 8, 1, 14, 12, 8, 4, 6, 9, 13, 4, 3, 9, 7, 0, 6, 
          2, 13, 5, 3, 11, 7 ], [ 12, 11, 5, 14, 10, 8, 10, 14, 1, 8, 12, 6, 4, 13, 9, 3, 4, 7, 9, 
          6, 0, 13, 2, 3, 5, 7, 11 ], 
      [ 11, 5, 12, 9, 13, 9, 7, 2, 13, 11, 7, 10, 14, 4, 6, 10, 8, 4, 3, 1, 14, 0, 6, 12, 8, 5, 3 ]
        , [ 11, 5, 12, 13, 9, 7, 9, 13, 2, 7, 11, 14, 10, 6, 4, 8, 10, 3, 4, 14, 1, 6, 0, 8, 12, 
          3, 5 ], [ 14, 13, 6, 10, 12, 8, 14, 12, 8, 1, 10, 4, 5, 9, 11, 3, 6, 7, 13, 5, 3, 11, 7, 
          0, 4, 2, 9 ], [ 14, 13, 6, 12, 10, 14, 8, 8, 12, 10, 1, 5, 4, 11, 9, 6, 3, 13, 7, 3, 5, 
          7, 11, 4, 0, 9, 2 ], [ 13, 6, 14, 9, 11, 7, 13, 11, 7, 2, 9, 10, 12, 4, 5, 8, 14, 3, 6, 
          12, 8, 5, 3, 1, 10, 0, 4 ], 
      [ 13, 6, 14, 11, 9, 13, 7, 7, 11, 9, 2, 12, 10, 5, 4, 14, 8, 6, 3, 8, 12, 3, 5, 10, 1, 4, 0 
         ] ] )