rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 3, 3, 3, 3, 6, 6, 1 ], [ 1, 1, 1, 1, -2, -2, 3, 3, 3, 3, -6, -6, 1 ],
      [ 1, -1, 1, -1, 0, 0, 3, 3, -3, -3, 0, 0, 2 ], 
      [ 1, 1, -1, -1, -2, 2, E(3)-E(3)^2, -E(3)+E(3)^2, E(3)-E(3)^2, -E(3)+E(3)^2, 
          -2*E(3)+2*E(3)^2, 2*E(3)-2*E(3)^2, 2 ], 
      [ 1, 1, -1, -1, -2, 2, -E(3)+E(3)^2, E(3)-E(3)^2, -E(3)+E(3)^2, E(3)-E(3)^2, 2*E(3)-2*E(3)^2,
          -2*E(3)+2*E(3)^2, 2 ], 
      [ 1, 1, -1, -1, 2, -2, E(3)-E(3)^2, -E(3)+E(3)^2, E(3)-E(3)^2, -E(3)+E(3)^2, 2*E(3)-2*E(3)^2,
          -2*E(3)+2*E(3)^2, 2 ], [ 1, 1, -1, -1, 2, -2, -E(3)+E(3)^2, E(3)-E(3)^2, -E(3)+E(3)^2, 
          E(3)-E(3)^2, -2*E(3)+2*E(3)^2, 2*E(3)-2*E(3)^2, 2 ], 
      [ 1, 1, 1, 1, -2, -2, -1, -1, -1, -1, 2, 2, 3 ], 
      [ 1, 1, 1, 1, 2, 2, -1, -1, -1, -1, -2, -2, 3 ], 
      [ 1, -1, -1, 1, 0, 0, E(3)-E(3)^2, -E(3)+E(3)^2, -E(3)+E(3)^2, E(3)-E(3)^2, 0, 0, 4 ], 
      [ 1, -1, -1, 1, 0, 0, -E(3)+E(3)^2, E(3)-E(3)^2, E(3)-E(3)^2, -E(3)+E(3)^2, 0, 0, 4 ], 
      [ 1, -1, 1, -1, 0, 0, -1, -1, 1, 1, 0, 0, 6 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 10, 10, 10, 11, 11, 
          11, 11, 11, 11 ], [ 1, 0, 3, 2, 4, 4, 5, 5, 8, 8, 8, 9, 9, 9, 6, 6, 6, 7, 7, 7, 10, 10, 
          10, 10, 10, 10, 11, 11, 11, 11, 11, 11 ], 
      [ 2, 3, 0, 1, 5, 5, 4, 4, 7, 7, 7, 6, 6, 6, 9, 9, 9, 8, 8, 8, 11, 11, 11, 11, 11, 11, 10, 
          10, 10, 10, 10, 10 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 11, 
          11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 10, 10, 10, 11, 11, 11, 10, 10, 10, 11, 11, 11, 6, 6, 6, 8, 8, 8, 
          7, 7, 7, 9, 9, 9 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 10, 10, 10, 11, 11, 11, 10, 10, 10, 11, 
          11, 11, 8, 8, 8, 6, 6, 6, 9, 9, 9, 7, 7, 7 ], 
      [ 5, 5, 4, 4, 2, 3, 0, 1, 11, 11, 11, 10, 10, 10, 11, 11, 11, 10, 10, 10, 7, 7, 7, 9, 9, 9, 
          6, 6, 6, 8, 8, 8 ], [ 5, 5, 4, 4, 3, 2, 1, 0, 11, 11, 11, 10, 10, 10, 11, 11, 11, 10, 
          10, 10, 9, 9, 9, 7, 7, 7, 8, 8, 8, 6, 6, 6 ], 
      [ 7, 9, 6, 8, 11, 11, 10, 10, 0, 6, 7, 2, 6, 7, 1, 8, 9, 3, 8, 9, 4, 10, 11, 4, 10, 11, 5, 
          10, 11, 5, 10, 11 ], [ 7, 9, 6, 8, 11, 11, 10, 10, 7, 0, 6, 6, 7, 2, 9, 1, 8, 8, 9, 3, 
          11, 4, 10, 11, 4, 10, 10, 11, 5, 10, 11, 5 ], 
      [ 7, 9, 6, 8, 11, 11, 10, 10, 6, 7, 0, 7, 2, 6, 8, 9, 1, 9, 3, 8, 10, 11, 4, 10, 11, 4, 11, 
          5, 10, 11, 5, 10 ], [ 6, 8, 7, 9, 10, 10, 11, 11, 2, 7, 6, 0, 7, 6, 3, 9, 8, 1, 9, 8, 5, 
          11, 10, 5, 11, 10, 4, 11, 10, 4, 11, 10 ], 
      [ 6, 8, 7, 9, 10, 10, 11, 11, 7, 6, 2, 6, 0, 7, 9, 8, 3, 8, 1, 9, 11, 10, 5, 11, 10, 5, 10, 
          4, 11, 10, 4, 11 ], [ 6, 8, 7, 9, 10, 10, 11, 11, 6, 2, 7, 7, 6, 0, 8, 3, 9, 9, 8, 1, 
          10, 5, 11, 10, 5, 11, 11, 10, 4, 11, 10, 4 ], 
      [ 9, 7, 8, 6, 11, 11, 10, 10, 1, 8, 9, 3, 8, 9, 0, 6, 7, 2, 6, 7, 4, 10, 11, 4, 10, 11, 5, 
          10, 11, 5, 10, 11 ], [ 9, 7, 8, 6, 11, 11, 10, 10, 9, 1, 8, 8, 9, 3, 7, 0, 6, 6, 7, 2, 
          11, 4, 10, 11, 4, 10, 10, 11, 5, 10, 11, 5 ], 
      [ 9, 7, 8, 6, 11, 11, 10, 10, 8, 9, 1, 9, 3, 8, 6, 7, 0, 7, 2, 6, 10, 11, 4, 10, 11, 4, 11, 
          5, 10, 11, 5, 10 ], [ 8, 6, 9, 7, 10, 10, 11, 11, 3, 9, 8, 1, 9, 8, 2, 7, 6, 0, 7, 6, 5, 
          11, 10, 5, 11, 10, 4, 11, 10, 4, 11, 10 ], 
      [ 8, 6, 9, 7, 10, 10, 11, 11, 9, 8, 3, 8, 1, 9, 7, 6, 2, 6, 0, 7, 11, 10, 5, 11, 10, 5, 10, 
          4, 11, 10, 4, 11 ], [ 8, 6, 9, 7, 10, 10, 11, 11, 8, 3, 9, 9, 8, 1, 6, 2, 7, 7, 6, 0, 
          10, 5, 11, 10, 5, 11, 11, 10, 4, 11, 10, 4 ], 
      [ 11, 11, 10, 10, 7, 9, 6, 8, 4, 10, 11, 5, 10, 11, 4, 10, 11, 5, 10, 11, 0, 6, 7, 1, 8, 9, 
          2, 6, 7, 3, 8, 9 ], [ 11, 11, 10, 10, 7, 9, 6, 8, 11, 4, 10, 10, 11, 5, 11, 4, 10, 10, 
          11, 5, 7, 0, 6, 9, 1, 8, 6, 7, 2, 8, 9, 3 ], 
      [ 11, 11, 10, 10, 7, 9, 6, 8, 10, 11, 4, 11, 5, 10, 10, 11, 4, 11, 5, 10, 6, 7, 0, 8, 9, 1, 
          7, 2, 6, 9, 3, 8 ], [ 11, 11, 10, 10, 9, 7, 8, 6, 4, 10, 11, 5, 10, 11, 4, 10, 11, 5, 
          10, 11, 1, 8, 9, 0, 6, 7, 3, 8, 9, 2, 6, 7 ], 
      [ 11, 11, 10, 10, 9, 7, 8, 6, 11, 4, 10, 10, 11, 5, 11, 4, 10, 10, 11, 5, 9, 1, 8, 7, 0, 6, 
          8, 9, 3, 6, 7, 2 ], [ 11, 11, 10, 10, 9, 7, 8, 6, 10, 11, 4, 11, 5, 10, 10, 11, 4, 11, 
          5, 10, 8, 9, 1, 6, 7, 0, 9, 3, 8, 7, 2, 6 ], 
      [ 10, 10, 11, 11, 6, 8, 7, 9, 5, 11, 10, 4, 11, 10, 5, 11, 10, 4, 11, 10, 2, 7, 6, 3, 9, 8, 
          0, 7, 6, 1, 9, 8 ], [ 10, 10, 11, 11, 6, 8, 7, 9, 11, 10, 5, 10, 4, 11, 11, 10, 5, 10, 
          4, 11, 7, 6, 2, 9, 8, 3, 6, 0, 7, 8, 1, 9 ], 
      [ 10, 10, 11, 11, 6, 8, 7, 9, 10, 5, 11, 11, 10, 4, 10, 5, 11, 11, 10, 4, 6, 2, 7, 8, 3, 9, 
          7, 6, 0, 9, 8, 1 ], [ 10, 10, 11, 11, 8, 6, 9, 7, 5, 11, 10, 4, 11, 10, 5, 11, 10, 4, 
          11, 10, 3, 9, 8, 2, 7, 6, 1, 9, 8, 0, 7, 6 ], 
      [ 10, 10, 11, 11, 8, 6, 9, 7, 11, 10, 5, 10, 4, 11, 11, 10, 5, 10, 4, 11, 9, 8, 3, 7, 6, 2, 
          8, 1, 9, 6, 0, 7 ], [ 10, 10, 11, 11, 8, 6, 9, 7, 10, 5, 11, 11, 10, 4, 10, 5, 11, 11, 
          10, 4, 8, 3, 9, 6, 2, 7, 9, 8, 1, 7, 6, 0 ] ] )