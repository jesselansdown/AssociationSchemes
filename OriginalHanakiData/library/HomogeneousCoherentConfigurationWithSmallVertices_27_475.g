rec(
  ct := 
   [ [ 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 1, 1, 1, 3, 3, 3*E(3), 3*E(3)^2, 3*E(3), 3*E(3)^2, 3*E(3)^2, 3*E(3), 1 ], 
      [ 1, 1, 1, 3, 3, 3*E(3)^2, 3*E(3), 3*E(3)^2, 3*E(3), 3*E(3), 3*E(3)^2, 1 ], 
      [ 1, 1, 1, 3*E(3), 3*E(3)^2, 0, 0, 0, 0, 0, 0, 3 ], 
      [ 1, 1, 1, 3*E(3)^2, 3*E(3), 0, 0, 0, 0, 0, 0, 3 ], 
      [ 1, E(3), E(3)^2, 0, 0, -2*E(9)^2-E(9)^5, -E(9)^4-2*E(9)^7, E(9)^2+2*E(9)^5, 
          2*E(9)^4+E(9)^7, -E(9)^4+E(9)^7, E(9)^2-E(9)^5, 3 ], 
      [ 1, E(3), E(3)^2, 0, 0, E(9)^2-E(9)^5, -E(9)^4+E(9)^7, -2*E(9)^2-E(9)^5, -E(9)^4-2*E(9)^7, 
          2*E(9)^4+E(9)^7, E(9)^2+2*E(9)^5, 3 ], 
      [ 1, E(3), E(3)^2, 0, 0, E(9)^2+2*E(9)^5, 2*E(9)^4+E(9)^7, E(9)^2-E(9)^5, -E(9)^4+E(9)^7, 
          -E(9)^4-2*E(9)^7, -2*E(9)^2-E(9)^5, 3 ], 
      [ 1, E(3)^2, E(3), 0, 0, -E(9)^4-2*E(9)^7, -2*E(9)^2-E(9)^5, 2*E(9)^4+E(9)^7, 
          E(9)^2+2*E(9)^5, E(9)^2-E(9)^5, -E(9)^4+E(9)^7, 3 ], 
      [ 1, E(3)^2, E(3), 0, 0, -E(9)^4+E(9)^7, E(9)^2-E(9)^5, -E(9)^4-2*E(9)^7, -2*E(9)^2-E(9)^5, 
          E(9)^2+2*E(9)^5, 2*E(9)^4+E(9)^7, 3 ], 
      [ 1, E(3)^2, E(3), 0, 0, 2*E(9)^4+E(9)^7, E(9)^2+2*E(9)^5, -E(9)^4+E(9)^7, E(9)^2-E(9)^5, 
          -2*E(9)^2-E(9)^5, -E(9)^4-2*E(9)^7, 3 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10 ], 
      [ 2, 0, 1, 3, 3, 3, 4, 4, 4, 7, 7, 7, 9, 9, 9, 10, 10, 10, 6, 6, 6, 8, 8, 8, 5, 5, 5 ], 
      [ 1, 2, 0, 3, 3, 3, 4, 4, 4, 10, 10, 10, 8, 8, 8, 5, 5, 5, 9, 9, 9, 6, 6, 6, 7, 7, 7 ], 
      [ 4, 4, 4, 0, 1, 2, 3, 3, 3, 5, 7, 10, 6, 8, 9, 5, 7, 10, 6, 8, 9, 6, 8, 9, 5, 7, 10 ], 
      [ 4, 4, 4, 2, 0, 1, 3, 3, 3, 7, 10, 5, 9, 6, 8, 7, 10, 5, 9, 6, 8, 9, 6, 8, 7, 10, 5 ], 
      [ 4, 4, 4, 1, 2, 0, 3, 3, 3, 10, 5, 7, 8, 9, 6, 10, 5, 7, 8, 9, 6, 8, 9, 6, 10, 5, 7 ], 
      [ 3, 3, 3, 4, 4, 4, 0, 1, 2, 5, 10, 7, 8, 6, 9, 10, 7, 5, 6, 9, 8, 9, 8, 6, 7, 5, 10 ], 
      [ 3, 3, 3, 4, 4, 4, 2, 0, 1, 7, 5, 10, 6, 9, 8, 5, 10, 7, 9, 8, 6, 8, 6, 9, 10, 7, 5 ], 
      [ 3, 3, 3, 4, 4, 4, 1, 2, 0, 10, 7, 5, 9, 8, 6, 7, 5, 10, 8, 6, 9, 6, 9, 8, 5, 10, 7 ], 
      [ 6, 8, 9, 6, 8, 9, 6, 8, 9, 0, 3, 4, 7, 7, 10, 4, 2, 3, 7, 5, 5, 10, 5, 10, 3, 4, 1 ], 
      [ 6, 8, 9, 8, 9, 6, 9, 6, 8, 4, 0, 3, 7, 10, 7, 3, 4, 2, 5, 5, 7, 5, 10, 10, 1, 3, 4 ], 
      [ 6, 8, 9, 9, 6, 8, 8, 9, 6, 3, 4, 0, 10, 7, 7, 2, 3, 4, 5, 7, 5, 10, 10, 5, 4, 1, 3 ], 
      [ 5, 10, 7, 5, 10, 7, 7, 5, 10, 8, 8, 9, 0, 4, 3, 8, 6, 6, 3, 1, 4, 4, 3, 2, 9, 6, 9 ], 
      [ 5, 10, 7, 7, 5, 10, 5, 10, 7, 8, 9, 8, 3, 0, 4, 6, 6, 8, 4, 3, 1, 2, 4, 3, 6, 9, 9 ], 
      [ 5, 10, 7, 10, 7, 5, 10, 7, 5, 9, 8, 8, 4, 3, 0, 6, 8, 6, 1, 4, 3, 3, 2, 4, 9, 9, 6 ], 
      [ 8, 9, 6, 6, 8, 9, 9, 6, 8, 3, 4, 1, 7, 5, 5, 0, 3, 4, 10, 5, 10, 7, 7, 10, 4, 2, 3 ], 
      [ 8, 9, 6, 8, 9, 6, 8, 9, 6, 1, 3, 4, 5, 5, 7, 4, 0, 3, 5, 10, 10, 7, 10, 7, 3, 4, 2 ], 
      [ 8, 9, 6, 9, 6, 8, 6, 8, 9, 4, 1, 3, 5, 7, 5, 3, 4, 0, 10, 10, 5, 10, 7, 7, 2, 3, 4 ], 
      [ 7, 5, 10, 5, 10, 7, 5, 10, 7, 8, 6, 6, 4, 3, 2, 9, 6, 9, 0, 4, 3, 3, 1, 4, 8, 8, 9 ], 
      [ 7, 5, 10, 7, 5, 10, 10, 7, 5, 6, 6, 8, 2, 4, 3, 6, 9, 9, 3, 0, 4, 4, 3, 1, 8, 9, 8 ], 
      [ 7, 5, 10, 10, 7, 5, 7, 5, 10, 6, 8, 6, 3, 2, 4, 9, 9, 6, 4, 3, 0, 1, 4, 3, 9, 8, 8 ], 
      [ 10, 7, 5, 5, 10, 7, 10, 7, 5, 9, 6, 9, 3, 1, 4, 8, 8, 9, 4, 3, 2, 0, 4, 3, 8, 6, 6 ], 
      [ 10, 7, 5, 7, 5, 10, 7, 5, 10, 6, 9, 9, 4, 3, 1, 8, 9, 8, 2, 4, 3, 3, 0, 4, 6, 6, 8 ], 
      [ 10, 7, 5, 10, 7, 5, 5, 10, 7, 9, 9, 6, 1, 4, 3, 9, 8, 8, 3, 2, 4, 4, 3, 0, 6, 8, 6 ], 
      [ 9, 6, 8, 6, 8, 9, 8, 9, 6, 4, 2, 3, 10, 5, 10, 3, 4, 1, 7, 7, 10, 7, 5, 5, 0, 3, 4 ], 
      [ 9, 6, 8, 8, 9, 6, 6, 8, 9, 3, 4, 2, 5, 10, 10, 1, 3, 4, 7, 10, 7, 5, 5, 7, 4, 0, 3 ], 
      [ 9, 6, 8, 9, 6, 8, 9, 6, 8, 2, 3, 4, 10, 10, 5, 4, 1, 3, 10, 7, 7, 5, 7, 5, 3, 4, 0 ] ] )