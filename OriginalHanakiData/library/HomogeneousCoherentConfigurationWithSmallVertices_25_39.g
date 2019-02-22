rec(
  ct := 
   [ [ 1, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 1, -E(5)-E(5)^4, -E(5)-E(5)^4, E(5)+2*E(5)^2, 2*E(5)^3+E(5)^4, -E(5)^2-E(5)^3, 
          -E(5)^2-E(5)^3, E(5)^2+2*E(5)^4, 2*E(5)+E(5)^3, 3 ], 
      [ 1, -E(5)-E(5)^4, -E(5)-E(5)^4, 2*E(5)^3+E(5)^4, E(5)+2*E(5)^2, -E(5)^2-E(5)^3, 
          -E(5)^2-E(5)^3, 2*E(5)+E(5)^3, E(5)^2+2*E(5)^4, 3 ], 
      [ 1, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, 2*E(5)+E(5)^3, E(5)^2+2*E(5)^4, -E(5)-E(5)^4, 
          -E(5)-E(5)^4, E(5)+2*E(5)^2, 2*E(5)^3+E(5)^4, 3 ], 
      [ 1, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, E(5)^2+2*E(5)^4, 2*E(5)+E(5)^3, -E(5)-E(5)^4, 
          -E(5)-E(5)^4, 2*E(5)^3+E(5)^4, E(5)+2*E(5)^2, 3 ], 
      [ 1, E(5)+2*E(5)^2, 2*E(5)^3+E(5)^4, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, 2*E(5)+E(5)^3, 
          E(5)^2+2*E(5)^4, -E(5)-E(5)^4, -E(5)-E(5)^4, 3 ], 
      [ 1, 2*E(5)+E(5)^3, E(5)^2+2*E(5)^4, -E(5)-E(5)^4, -E(5)-E(5)^4, 2*E(5)^3+E(5)^4, 
          E(5)+2*E(5)^2, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, 3 ], 
      [ 1, 2*E(5)^3+E(5)^4, E(5)+2*E(5)^2, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, E(5)^2+2*E(5)^4, 
          2*E(5)+E(5)^3, -E(5)-E(5)^4, -E(5)-E(5)^4, 3 ], 
      [ 1, E(5)^2+2*E(5)^4, 2*E(5)+E(5)^3, -E(5)-E(5)^4, -E(5)-E(5)^4, E(5)+2*E(5)^2, 
          2*E(5)^3+E(5)^4, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, 3 ] ],
  matrix := [ [ 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8 ], 
      [ 2, 0, 3, 4, 1, 1, 5, 2, 6, 7, 2, 6, 8, 3, 4, 6, 1, 7, 8, 3, 5, 7, 4, 5, 8 ], 
      [ 2, 4, 0, 3, 1, 5, 1, 6, 7, 2, 8, 2, 6, 6, 3, 4, 8, 1, 7, 5, 7, 3, 8, 4, 5 ], 
      [ 2, 3, 4, 0, 5, 1, 1, 7, 2, 6, 6, 8, 2, 4, 6, 3, 7, 8, 1, 7, 3, 5, 5, 8, 4 ], 
      [ 1, 2, 2, 6, 0, 3, 4, 1, 7, 5, 5, 1, 8, 7, 2, 8, 4, 3, 5, 6, 3, 7, 8, 6, 4 ], 
      [ 1, 2, 6, 2, 4, 0, 3, 5, 1, 7, 1, 8, 5, 2, 8, 7, 3, 5, 4, 7, 6, 3, 6, 4, 8 ], 
      [ 1, 6, 2, 2, 3, 4, 0, 7, 5, 1, 8, 5, 1, 8, 7, 2, 5, 4, 3, 3, 7, 6, 4, 8, 6 ], 
      [ 4, 1, 5, 8, 2, 6, 8, 0, 5, 6, 3, 3, 8, 7, 1, 4, 2, 7, 4, 1, 2, 3, 5, 7, 6 ], 
      [ 4, 5, 8, 1, 8, 2, 6, 6, 0, 5, 3, 8, 3, 1, 4, 7, 7, 4, 2, 3, 1, 2, 7, 6, 5 ], 
      [ 4, 8, 1, 5, 6, 8, 2, 5, 6, 0, 8, 3, 3, 4, 7, 1, 4, 2, 7, 2, 3, 1, 6, 5, 7 ], 
      [ 3, 1, 7, 5, 6, 2, 7, 4, 4, 7, 0, 5, 6, 1, 8, 3, 2, 3, 8, 5, 8, 6, 1, 2, 4 ], 
      [ 3, 5, 1, 7, 2, 7, 6, 4, 7, 4, 6, 0, 5, 3, 1, 8, 8, 2, 3, 8, 6, 5, 4, 1, 2 ], 
      [ 3, 7, 5, 1, 7, 6, 2, 7, 4, 4, 5, 6, 0, 8, 3, 1, 3, 8, 2, 6, 5, 8, 2, 4, 1 ], 
      [ 6, 4, 5, 3, 8, 1, 7, 8, 2, 3, 2, 4, 7, 0, 8, 7, 5, 2, 5, 6, 4, 1, 3, 1, 6 ], 
      [ 6, 3, 4, 5, 1, 7, 8, 2, 3, 8, 7, 2, 4, 7, 0, 8, 5, 5, 2, 4, 1, 6, 6, 3, 1 ], 
      [ 6, 5, 3, 4, 7, 8, 1, 3, 8, 2, 4, 7, 2, 8, 7, 0, 2, 5, 5, 1, 6, 4, 1, 6, 3 ], 
      [ 5, 2, 7, 8, 3, 4, 6, 1, 8, 3, 1, 7, 4, 6, 6, 1, 0, 7, 8, 2, 4, 5, 2, 3, 5 ], 
      [ 5, 8, 2, 7, 4, 6, 3, 8, 3, 1, 4, 1, 7, 1, 6, 6, 8, 0, 7, 4, 5, 2, 5, 2, 3 ], 
      [ 5, 7, 8, 2, 6, 3, 4, 3, 1, 8, 7, 4, 1, 6, 1, 6, 7, 8, 0, 5, 2, 4, 3, 5, 2 ], 
      [ 8, 4, 6, 8, 5, 8, 4, 2, 4, 1, 6, 7, 5, 5, 3, 2, 1, 3, 6, 0, 1, 2, 3, 7, 7 ], 
      [ 8, 6, 8, 4, 4, 5, 8, 1, 2, 4, 7, 5, 6, 3, 2, 5, 3, 6, 1, 2, 0, 1, 7, 7, 3 ], 
      [ 8, 8, 4, 6, 8, 4, 5, 4, 1, 2, 5, 6, 7, 2, 5, 3, 6, 1, 3, 1, 2, 0, 7, 3, 7 ], 
      [ 7, 3, 7, 6, 7, 5, 3, 6, 8, 5, 2, 3, 1, 4, 5, 2, 1, 6, 4, 4, 8, 8, 0, 1, 2 ], 
      [ 7, 6, 3, 7, 5, 3, 7, 8, 5, 6, 1, 2, 3, 2, 4, 5, 4, 1, 6, 8, 8, 4, 2, 0, 1 ], 
      [ 7, 7, 6, 3, 3, 7, 5, 5, 6, 8, 3, 1, 2, 5, 2, 4, 6, 4, 1, 8, 4, 8, 1, 2, 0 ] ] )