rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, 1, 1, E(3), E(3)^2, E(3), E(3)^2, E(3)^2, E(3), 2, 2, 2, 2*E(3)^2, 2*E(3), 2*E(3)^2, 
          2*E(3), 2*E(3), 2*E(3)^2, 1 ], 
      [ 1, 1, 1, E(3)^2, E(3), E(3)^2, E(3), E(3), E(3)^2, 2, 2, 2, 2*E(3), 2*E(3)^2, 2*E(3), 
          2*E(3)^2, 2*E(3)^2, 2*E(3), 1 ], 
      [ 1, E(3), E(3)^2, -E(9)^4-E(9)^7, -E(9)^2-E(9)^5, E(9)^7, E(9)^2, E(9)^5, E(9)^4, 2, 
          2*E(3)^2, 2*E(3), -2*E(9)^2-2*E(9)^5, -2*E(9)^4-2*E(9)^7, 2*E(9)^5, 2*E(9)^4, 2*E(9)^7, 
          2*E(9)^2, 1 ], [ 1, E(3), E(3)^2, E(9)^4, E(9)^5, -E(9)^4-E(9)^7, -E(9)^2-E(9)^5, 
          E(9)^2, E(9)^7, 2, 2*E(3)^2, 2*E(3), 2*E(9)^5, 2*E(9)^4, 2*E(9)^2, 2*E(9)^7, 
          -2*E(9)^4-2*E(9)^7, -2*E(9)^2-2*E(9)^5, 1 ], 
      [ 1, E(3), E(3)^2, E(9)^7, E(9)^2, E(9)^4, E(9)^5, -E(9)^2-E(9)^5, -E(9)^4-E(9)^7, 2, 
          2*E(3)^2, 2*E(3), 2*E(9)^2, 2*E(9)^7, -2*E(9)^2-2*E(9)^5, -2*E(9)^4-2*E(9)^7, 2*E(9)^4, 
          2*E(9)^5, 1 ], [ 1, E(3)^2, E(3), -E(9)^2-E(9)^5, -E(9)^4-E(9)^7, E(9)^2, E(9)^7, 
          E(9)^4, E(9)^5, 2, 2*E(3), 2*E(3)^2, -2*E(9)^4-2*E(9)^7, -2*E(9)^2-2*E(9)^5, 2*E(9)^4, 
          2*E(9)^5, 2*E(9)^2, 2*E(9)^7, 1 ], 
      [ 1, E(3)^2, E(3), E(9)^2, E(9)^7, E(9)^5, E(9)^4, -E(9)^4-E(9)^7, -E(9)^2-E(9)^5, 2, 
          2*E(3), 2*E(3)^2, 2*E(9)^7, 2*E(9)^2, -2*E(9)^4-2*E(9)^7, -2*E(9)^2-2*E(9)^5, 2*E(9)^5, 
          2*E(9)^4, 1 ], [ 1, E(3)^2, E(3), E(9)^5, E(9)^4, -E(9)^2-E(9)^5, -E(9)^4-E(9)^7, 
          E(9)^7, E(9)^2, 2, 2*E(3), 2*E(3)^2, 2*E(9)^4, 2*E(9)^5, 2*E(9)^7, 2*E(9)^2, 
          -2*E(9)^2-2*E(9)^5, -2*E(9)^4-2*E(9)^7, 1 ], 
      [ 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2 ], 
      [ 1, 1, 1, E(3), E(3)^2, E(3), E(3)^2, E(3)^2, E(3), -1, -1, -1, -E(3)^2, -E(3), -E(3)^2, 
          -E(3), -E(3), -E(3)^2, 2 ], 
      [ 1, 1, 1, E(3)^2, E(3), E(3)^2, E(3), E(3), E(3)^2, -1, -1, -1, -E(3), -E(3)^2, -E(3), 
          -E(3)^2, -E(3)^2, -E(3), 2 ], 
      [ 1, E(3), E(3)^2, -E(9)^4-E(9)^7, -E(9)^2-E(9)^5, E(9)^7, E(9)^2, E(9)^5, E(9)^4, -1, 
          -E(3)^2, -E(3), E(9)^2+E(9)^5, E(9)^4+E(9)^7, -E(9)^5, -E(9)^4, -E(9)^7, -E(9)^2, 2 ], 
      [ 1, E(3), E(3)^2, E(9)^4, E(9)^5, -E(9)^4-E(9)^7, -E(9)^2-E(9)^5, E(9)^2, E(9)^7, -1, 
          -E(3)^2, -E(3), -E(9)^5, -E(9)^4, -E(9)^2, -E(9)^7, E(9)^4+E(9)^7, E(9)^2+E(9)^5, 2 ], 
      [ 1, E(3), E(3)^2, E(9)^7, E(9)^2, E(9)^4, E(9)^5, -E(9)^2-E(9)^5, -E(9)^4-E(9)^7, -1, 
          -E(3)^2, -E(3), -E(9)^2, -E(9)^7, E(9)^2+E(9)^5, E(9)^4+E(9)^7, -E(9)^4, -E(9)^5, 2 ], 
      [ 1, E(3)^2, E(3), -E(9)^2-E(9)^5, -E(9)^4-E(9)^7, E(9)^2, E(9)^7, E(9)^4, E(9)^5, -1, 
          -E(3), -E(3)^2, E(9)^4+E(9)^7, E(9)^2+E(9)^5, -E(9)^4, -E(9)^5, -E(9)^2, -E(9)^7, 2 ], 
      [ 1, E(3)^2, E(3), E(9)^2, E(9)^7, E(9)^5, E(9)^4, -E(9)^4-E(9)^7, -E(9)^2-E(9)^5, -1, 
          -E(3), -E(3)^2, -E(9)^7, -E(9)^2, E(9)^4+E(9)^7, E(9)^2+E(9)^5, -E(9)^5, -E(9)^4, 2 ], 
      [ 1, E(3)^2, E(3), E(9)^5, E(9)^4, -E(9)^2-E(9)^5, -E(9)^4-E(9)^7, E(9)^7, E(9)^2, -1, 
          -E(3), -E(3)^2, -E(9)^4, -E(9)^5, -E(9)^7, -E(9)^2, E(9)^2+E(9)^5, E(9)^4+E(9)^7, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 
          17, 17 ], [ 2, 0, 1, 5, 7, 8, 4, 6, 3, 10, 10, 11, 11, 9, 9, 14, 14, 16, 16, 17, 17, 13, 
          13, 15, 15, 12, 12 ], [ 1, 2, 0, 8, 6, 3, 7, 4, 5, 11, 11, 9, 9, 10, 10, 17, 17, 15, 15, 
          12, 12, 16, 16, 13, 13, 14, 14 ], 
      [ 4, 6, 7, 0, 5, 2, 3, 8, 1, 12, 12, 14, 14, 17, 17, 16, 16, 9, 9, 15, 15, 11, 11, 10, 10, 
          13, 13 ], [ 3, 8, 5, 6, 0, 4, 1, 2, 7, 13, 13, 16, 16, 15, 15, 9, 9, 17, 17, 10, 10, 14, 
          14, 12, 12, 11, 11 ], [ 6, 7, 4, 1, 3, 0, 8, 5, 2, 17, 17, 12, 12, 14, 14, 13, 13, 11, 
          11, 16, 16, 10, 10, 9, 9, 15, 15 ], 
      [ 5, 3, 8, 4, 2, 7, 0, 1, 6, 16, 16, 15, 15, 13, 13, 10, 10, 12, 12, 11, 11, 17, 17, 14, 14, 
          9, 9 ], [ 8, 5, 3, 7, 1, 6, 2, 0, 4, 15, 15, 13, 13, 16, 16, 11, 11, 14, 14, 9, 9, 12, 
          12, 17, 17, 10, 10 ], [ 7, 4, 6, 2, 8, 1, 5, 3, 0, 14, 14, 17, 17, 12, 12, 15, 15, 10, 
          10, 13, 13, 9, 9, 11, 11, 16, 16 ], 
      [ 9, 11, 10, 13, 12, 16, 17, 14, 15, 0, 9, 2, 10, 1, 11, 4, 12, 3, 13, 7, 14, 8, 15, 5, 16, 
          6, 17 ], [ 9, 11, 10, 13, 12, 16, 17, 14, 15, 9, 0, 10, 2, 11, 1, 12, 4, 13, 3, 14, 7, 
          15, 8, 16, 5, 17, 6 ], [ 11, 10, 9, 15, 17, 13, 14, 12, 16, 1, 11, 0, 9, 2, 10, 6, 17, 
          8, 15, 4, 12, 5, 16, 3, 13, 7, 14 ], 
      [ 11, 10, 9, 15, 17, 13, 14, 12, 16, 11, 1, 9, 0, 10, 2, 17, 6, 15, 8, 12, 4, 16, 5, 13, 3, 
          14, 7 ], [ 10, 9, 11, 16, 14, 15, 12, 17, 13, 2, 10, 1, 11, 0, 9, 7, 14, 5, 16, 6, 17, 
          3, 13, 8, 15, 4, 12 ], [ 10, 9, 11, 16, 14, 15, 12, 17, 13, 10, 2, 11, 1, 9, 0, 14, 7, 
          16, 5, 17, 6, 13, 3, 15, 8, 12, 4 ], 
      [ 13, 15, 16, 17, 9, 12, 11, 10, 14, 3, 13, 5, 16, 8, 15, 0, 9, 6, 17, 2, 10, 7, 14, 4, 12, 
          1, 11 ], [ 13, 15, 16, 17, 9, 12, 11, 10, 14, 13, 3, 16, 5, 15, 8, 9, 0, 17, 6, 10, 2, 
          14, 7, 12, 4, 11, 1 ], [ 12, 17, 14, 9, 16, 10, 13, 15, 11, 4, 12, 7, 14, 6, 17, 5, 16, 
          0, 9, 8, 15, 1, 11, 2, 10, 3, 13 ], 
      [ 12, 17, 14, 9, 16, 10, 13, 15, 11, 12, 4, 14, 7, 17, 6, 16, 5, 9, 0, 15, 8, 11, 1, 10, 2, 
          13, 3 ], [ 15, 16, 13, 14, 11, 17, 10, 9, 12, 8, 15, 3, 13, 5, 16, 1, 11, 7, 14, 0, 9, 
          4, 12, 6, 17, 2, 10 ], [ 15, 16, 13, 14, 11, 17, 10, 9, 12, 15, 8, 13, 3, 16, 5, 11, 1, 
          14, 7, 9, 0, 12, 4, 17, 6, 10, 2 ], 
      [ 14, 12, 17, 10, 15, 11, 16, 13, 9, 7, 14, 6, 17, 4, 12, 8, 15, 2, 10, 3, 13, 0, 9, 1, 11, 
          5, 16 ], [ 14, 12, 17, 10, 15, 11, 16, 13, 9, 14, 7, 17, 6, 12, 4, 15, 8, 10, 2, 13, 3, 
          9, 0, 11, 1, 16, 5 ], [ 17, 14, 12, 11, 13, 9, 15, 16, 10, 6, 17, 4, 12, 7, 14, 3, 13, 
          1, 11, 5, 16, 2, 10, 0, 9, 8, 15 ], 
      [ 17, 14, 12, 11, 13, 9, 15, 16, 10, 17, 6, 12, 4, 14, 7, 13, 3, 11, 1, 16, 5, 10, 2, 9, 0, 
          15, 8 ], [ 16, 13, 15, 12, 10, 14, 9, 11, 17, 5, 16, 8, 15, 3, 13, 2, 10, 4, 12, 1, 11, 
          6, 17, 7, 14, 0, 9 ], [ 16, 13, 15, 12, 10, 14, 9, 11, 17, 16, 5, 15, 8, 13, 3, 10, 2, 
          12, 4, 11, 1, 17, 6, 14, 7, 9, 0 ] ] )