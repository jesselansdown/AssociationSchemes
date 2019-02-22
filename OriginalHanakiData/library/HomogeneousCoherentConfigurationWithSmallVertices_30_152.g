rec(
  ct := [ [ 1, 1, 1, 4, 4, 4, 5, 5, 5, 1 ], [ 1, 1, 1, 4, 4, 4, -5, -5, -5, 1 ], 
      [ 2, -1, -1, 8, -4, -4, 0, 0, 0, 2 ], [ 1, 1, 1, -1, -1, -1, 0, 0, 0, 8 ], 
      [ 1, E(3)^2, E(3), -1, -E(3), -E(3)^2, 0, 0, 0, 8 ], 
      [ 1, E(3), E(3)^2, -1, -E(3)^2, -E(3), 0, 0, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8 ], 
      [ 2, 0, 1, 4, 4, 4, 4, 5, 5, 5, 5, 3, 3, 3, 3, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6 ],
      [ 1, 2, 0, 5, 5, 5, 5, 3, 3, 3, 3, 4, 4, 4, 4, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7 ],
      [ 3, 5, 4, 0, 3, 3, 3, 2, 4, 4, 4, 1, 5, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8 ],
      [ 3, 5, 4, 3, 0, 3, 3, 4, 2, 4, 4, 5, 1, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8 ],
      [ 3, 5, 4, 3, 3, 0, 3, 4, 4, 2, 4, 5, 5, 1, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8 ],
      [ 3, 5, 4, 3, 3, 3, 0, 4, 4, 4, 2, 5, 5, 5, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8 ],
      [ 5, 4, 3, 1, 5, 5, 5, 0, 3, 3, 3, 2, 4, 4, 4, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7 ],
      [ 5, 4, 3, 5, 1, 5, 5, 3, 0, 3, 3, 4, 2, 4, 4, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7 ],
      [ 5, 4, 3, 5, 5, 1, 5, 3, 3, 0, 3, 4, 4, 2, 4, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7 ],
      [ 5, 4, 3, 5, 5, 5, 1, 3, 3, 3, 0, 4, 4, 4, 2, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7 ],
      [ 4, 3, 5, 2, 4, 4, 4, 1, 5, 5, 5, 0, 3, 3, 3, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6 ],
      [ 4, 3, 5, 4, 2, 4, 4, 5, 1, 5, 5, 3, 0, 3, 3, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6 ],
      [ 4, 3, 5, 4, 4, 2, 4, 5, 5, 1, 5, 3, 3, 0, 3, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6 ],
      [ 4, 3, 5, 4, 4, 4, 2, 5, 5, 5, 1, 3, 3, 3, 0, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6 ],
      [ 6, 7, 8, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 0, 3, 3, 3, 3, 1, 5, 5, 5, 5, 2, 4, 4, 4, 4 ],
      [ 6, 7, 8, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 3, 0, 3, 3, 3, 5, 1, 5, 5, 5, 4, 2, 4, 4, 4 ],
      [ 6, 7, 8, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 3, 3, 0, 3, 3, 5, 5, 1, 5, 5, 4, 4, 2, 4, 4 ],
      [ 6, 7, 8, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 3, 3, 3, 0, 3, 5, 5, 5, 1, 5, 4, 4, 4, 2, 4 ],
      [ 6, 7, 8, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 3, 3, 3, 3, 0, 5, 5, 5, 5, 1, 4, 4, 4, 4, 2 ],
      [ 7, 8, 6, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 8, 8, 2, 4, 4, 4, 4, 0, 3, 3, 3, 3, 1, 5, 5, 5, 5 ],
      [ 7, 8, 6, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 8, 8, 4, 2, 4, 4, 4, 3, 0, 3, 3, 3, 5, 1, 5, 5, 5 ],
      [ 7, 8, 6, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 8, 8, 4, 4, 2, 4, 4, 3, 3, 0, 3, 3, 5, 5, 1, 5, 5 ],
      [ 7, 8, 6, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 8, 8, 4, 4, 4, 2, 4, 3, 3, 3, 0, 3, 5, 5, 5, 1, 5 ],
      [ 7, 8, 6, 7, 7, 7, 7, 6, 6, 6, 6, 8, 8, 8, 8, 4, 4, 4, 4, 2, 3, 3, 3, 3, 0, 5, 5, 5, 5, 1 ],
      [ 8, 6, 7, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 1, 5, 5, 5, 5, 2, 4, 4, 4, 4, 0, 3, 3, 3, 3 ],
      [ 8, 6, 7, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 1, 5, 5, 5, 4, 2, 4, 4, 4, 3, 0, 3, 3, 3 ],
      [ 8, 6, 7, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 1, 5, 5, 4, 4, 2, 4, 4, 3, 3, 0, 3, 3 ],
      [ 8, 6, 7, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 1, 5, 4, 4, 4, 2, 4, 3, 3, 3, 0, 3 ],
      [ 8, 6, 7, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 1, 4, 4, 4, 4, 2, 3, 3, 3, 3, 0 ] 
     ] )