rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 24, 1 ], [ 1, 1, 1, 1, 1, 1, -6, 4 ], [ 1, -1, 1, 1, -1, -1, 0, 5 ], 
      [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 0, 5 ], [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 0, 5 ],
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 0, 5 ], [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 0, 5 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 3, 5, 0, 2, 1, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 2, 4, 3, 0, 5, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 5, 3, 1, 4, 0, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 4, 2, 5, 1, 3, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 3, 5, 0, 2, 1, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 2, 4, 3, 0, 5, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 5, 3, 1, 4, 0, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 4, 2, 5, 1, 3, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 5, 0, 2, 1, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 4, 3, 0, 5, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 3, 1, 4, 0, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 2, 5, 1, 3, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 5, 0, 2, 1, 4, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 4, 3, 0, 5, 1, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 3, 1, 4, 0, 2, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 2, 5, 1, 3, 0, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 5, 0, 2, 1, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 4, 3, 0, 5, 1 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 3, 1, 4, 0, 2 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 2, 5, 1, 3, 0 ] 
     ] )