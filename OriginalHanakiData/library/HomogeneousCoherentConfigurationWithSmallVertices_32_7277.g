rec(
  ct := [ [ 1, 1, 2, 4, 4, 4, 8, 8, 1 ], [ 1, 1, 2, 4, 4, 4, -8, -8, 1 ], 
      [ 1, 1, 2, -4, 4*E(4), -4*E(4), 0, 0, 2 ], [ 1, 1, 2, -4, -4*E(4), 4*E(4), 0, 0, 2 ], 
      [ 1, 1, 2, 4, -4, -4, 0, 0, 2 ], [ 1, -1, 0, 0, 0, 0, 2*E(8)+2*E(8)^3, -2*E(8)-2*E(8)^3, 8 ],
      [ 1, -1, 0, 0, 0, 0, -2*E(8)-2*E(8)^3, 2*E(8)+2*E(8)^3, 8 ], [ 1, 1, -2, 0, 0, 0, 0, 0, 8 ] ]
   ,
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
          7, 7 ], [ 1, 0, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 2, 2, 0, 1, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 
          7, 7, 6, 6, 6, 6, 7, 7, 7, 7 ], 
      [ 2, 2, 1, 0, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 7, 7, 7, 7, 6, 6, 6, 6, 7, 7, 7, 7, 6, 6, 
          6, 6 ], [ 3, 3, 3, 3, 0, 1, 2, 2, 5, 5, 5, 5, 4, 4, 4, 4, 6, 6, 7, 7, 6, 6, 7, 7, 6, 6, 
          7, 7, 6, 6, 7, 7 ], [ 3, 3, 3, 3, 1, 0, 2, 2, 5, 5, 5, 5, 4, 4, 4, 4, 7, 7, 6, 6, 7, 7, 
          6, 6, 7, 7, 6, 6, 7, 7, 6, 6 ], 
      [ 3, 3, 3, 3, 2, 2, 0, 1, 5, 5, 5, 5, 4, 4, 4, 4, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 
          6, 7 ], [ 3, 3, 3, 3, 2, 2, 1, 0, 5, 5, 5, 5, 4, 4, 4, 4, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 
          7, 6, 7, 6, 7, 6 ], [ 5, 5, 5, 5, 4, 4, 4, 4, 0, 1, 2, 2, 3, 3, 3, 3, 6, 6, 7, 7, 7, 7, 
          6, 6, 7, 7, 6, 6, 6, 6, 7, 7 ], 
      [ 5, 5, 5, 5, 4, 4, 4, 4, 1, 0, 2, 2, 3, 3, 3, 3, 7, 7, 6, 6, 6, 6, 7, 7, 6, 6, 7, 7, 7, 7, 
          6, 6 ], [ 5, 5, 5, 5, 4, 4, 4, 4, 2, 2, 0, 1, 3, 3, 3, 3, 6, 7, 7, 6, 6, 7, 7, 6, 7, 6, 
          6, 7, 7, 6, 6, 7 ], [ 5, 5, 5, 5, 4, 4, 4, 4, 2, 2, 1, 0, 3, 3, 3, 3, 7, 6, 6, 7, 7, 6, 
          6, 7, 6, 7, 7, 6, 6, 7, 7, 6 ], 
      [ 4, 4, 4, 4, 5, 5, 5, 5, 3, 3, 3, 3, 0, 1, 2, 2, 6, 7, 6, 7, 7, 6, 7, 6, 7, 6, 7, 6, 6, 7, 
          6, 7 ], [ 4, 4, 4, 4, 5, 5, 5, 5, 3, 3, 3, 3, 1, 0, 2, 2, 7, 6, 7, 6, 6, 7, 6, 7, 6, 7, 
          6, 7, 7, 6, 7, 6 ], [ 4, 4, 4, 4, 5, 5, 5, 5, 3, 3, 3, 3, 2, 2, 0, 1, 6, 7, 7, 6, 7, 6, 
          6, 7, 6, 7, 7, 6, 7, 6, 6, 7 ], 
      [ 4, 4, 4, 4, 5, 5, 5, 5, 3, 3, 3, 3, 2, 2, 1, 0, 7, 6, 6, 7, 6, 7, 7, 6, 7, 6, 6, 7, 6, 7, 
          7, 6 ], [ 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 0, 2, 3, 4, 3, 5, 4, 5, 5, 4, 
          5, 3, 4, 3, 2, 1 ], [ 7, 6, 7, 6, 7, 6, 6, 7, 7, 6, 6, 7, 6, 7, 6, 7, 2, 0, 3, 4, 3, 5, 
          4, 5, 5, 4, 5, 3, 4, 3, 1, 2 ], 
      [ 7, 6, 7, 6, 6, 7, 7, 6, 6, 7, 6, 7, 7, 6, 6, 7, 3, 3, 0, 5, 2, 4, 5, 4, 4, 5, 4, 2, 5, 1, 
          3, 3 ], [ 7, 6, 7, 6, 6, 7, 6, 7, 6, 7, 7, 6, 6, 7, 7, 6, 5, 5, 4, 0, 4, 3, 2, 3, 3, 2, 
          3, 4, 1, 4, 5, 5 ], [ 7, 6, 6, 7, 7, 6, 7, 6, 6, 7, 7, 6, 6, 7, 6, 7, 3, 3, 2, 5, 0, 4, 
          5, 4, 4, 5, 4, 1, 5, 2, 3, 3 ], 
      [ 7, 6, 6, 7, 7, 6, 6, 7, 6, 7, 6, 7, 7, 6, 7, 6, 4, 4, 5, 3, 5, 0, 3, 2, 2, 3, 1, 5, 3, 5, 
          4, 4 ], [ 7, 6, 6, 7, 6, 7, 7, 6, 7, 6, 6, 7, 6, 7, 7, 6, 5, 5, 4, 2, 4, 3, 0, 3, 3, 1, 
          3, 4, 2, 4, 5, 5 ], [ 7, 6, 6, 7, 6, 7, 6, 7, 7, 6, 7, 6, 7, 6, 6, 7, 4, 4, 5, 3, 5, 2, 
          3, 0, 1, 3, 2, 5, 3, 5, 4, 4 ], 
      [ 6, 7, 7, 6, 7, 6, 7, 6, 6, 7, 6, 7, 6, 7, 7, 6, 4, 4, 5, 3, 5, 2, 3, 1, 0, 3, 2, 5, 3, 5, 
          4, 4 ], [ 6, 7, 7, 6, 7, 6, 6, 7, 6, 7, 7, 6, 7, 6, 6, 7, 5, 5, 4, 2, 4, 3, 1, 3, 3, 0, 
          3, 4, 2, 4, 5, 5 ], [ 6, 7, 7, 6, 6, 7, 7, 6, 7, 6, 7, 6, 6, 7, 6, 7, 4, 4, 5, 3, 5, 1, 
          3, 2, 2, 3, 0, 5, 3, 5, 4, 4 ], 
      [ 6, 7, 7, 6, 6, 7, 6, 7, 7, 6, 6, 7, 7, 6, 7, 6, 3, 3, 2, 5, 1, 4, 5, 4, 4, 5, 4, 0, 5, 2, 
          3, 3 ], [ 6, 7, 6, 7, 7, 6, 7, 6, 7, 6, 6, 7, 7, 6, 6, 7, 5, 5, 4, 1, 4, 3, 2, 3, 3, 2, 
          3, 4, 0, 4, 5, 5 ], [ 6, 7, 6, 7, 7, 6, 6, 7, 7, 6, 7, 6, 6, 7, 7, 6, 3, 3, 1, 5, 2, 4, 
          5, 4, 4, 5, 4, 2, 5, 0, 3, 3 ], 
      [ 6, 7, 6, 7, 6, 7, 7, 6, 6, 7, 7, 6, 7, 6, 7, 6, 2, 1, 3, 4, 3, 5, 4, 5, 5, 4, 5, 3, 4, 3, 
          0, 2 ], [ 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 1, 2, 3, 4, 3, 5, 4, 5, 5, 4, 
          5, 3, 4, 3, 2, 0 ] ] )