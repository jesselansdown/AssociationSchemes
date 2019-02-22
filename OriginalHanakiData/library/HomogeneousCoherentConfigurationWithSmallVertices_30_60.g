rec(
  ct := [ [ 1, 1, 1, 9, 9, 9, 1 ], [ 1, E(3), E(3)^2, 9, 9*E(3)^2, 9*E(3), 1 ], 
      [ 1, E(3)^2, E(3), 9, 9*E(3), 9*E(3)^2, 1 ], [ 1, 1, 1, -1, -1, -1, 9 ], 
      [ 1, E(3), E(3)^2, -1, -E(3)^2, -E(3), 9 ], [ 1, E(3)^2, E(3), -1, -E(3), -E(3)^2, 9 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 2, 0, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 3, 3, 3, 3, 3, 3, 3 ],
      [ 1, 2, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 3, 5, 4, 0, 3, 3, 3, 3, 3, 3, 3, 3, 2, 4, 4, 4, 4, 4, 4, 4, 4, 1, 5, 5, 5, 5, 5, 5, 5, 5 ],
      [ 3, 5, 4, 3, 0, 3, 3, 3, 3, 3, 3, 3, 4, 2, 4, 4, 4, 4, 4, 4, 4, 5, 1, 5, 5, 5, 5, 5, 5, 5 ],
      [ 3, 5, 4, 3, 3, 0, 3, 3, 3, 3, 3, 3, 4, 4, 2, 4, 4, 4, 4, 4, 4, 5, 5, 1, 5, 5, 5, 5, 5, 5 ],
      [ 3, 5, 4, 3, 3, 3, 0, 3, 3, 3, 3, 3, 4, 4, 4, 2, 4, 4, 4, 4, 4, 5, 5, 5, 1, 5, 5, 5, 5, 5 ],
      [ 3, 5, 4, 3, 3, 3, 3, 0, 3, 3, 3, 3, 4, 4, 4, 4, 2, 4, 4, 4, 4, 5, 5, 5, 5, 1, 5, 5, 5, 5 ],
      [ 3, 5, 4, 3, 3, 3, 3, 3, 0, 3, 3, 3, 4, 4, 4, 4, 4, 2, 4, 4, 4, 5, 5, 5, 5, 5, 1, 5, 5, 5 ],
      [ 3, 5, 4, 3, 3, 3, 3, 3, 3, 0, 3, 3, 4, 4, 4, 4, 4, 4, 2, 4, 4, 5, 5, 5, 5, 5, 5, 1, 5, 5 ],
      [ 3, 5, 4, 3, 3, 3, 3, 3, 3, 3, 0, 3, 4, 4, 4, 4, 4, 4, 4, 2, 4, 5, 5, 5, 5, 5, 5, 5, 1, 5 ],
      [ 3, 5, 4, 3, 3, 3, 3, 3, 3, 3, 3, 0, 4, 4, 4, 4, 4, 4, 4, 4, 2, 5, 5, 5, 5, 5, 5, 5, 5, 1 ],
      [ 5, 4, 3, 1, 5, 5, 5, 5, 5, 5, 5, 5, 0, 3, 3, 3, 3, 3, 3, 3, 3, 2, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 5, 4, 3, 5, 1, 5, 5, 5, 5, 5, 5, 5, 3, 0, 3, 3, 3, 3, 3, 3, 3, 4, 2, 4, 4, 4, 4, 4, 4, 4 ],
      [ 5, 4, 3, 5, 5, 1, 5, 5, 5, 5, 5, 5, 3, 3, 0, 3, 3, 3, 3, 3, 3, 4, 4, 2, 4, 4, 4, 4, 4, 4 ],
      [ 5, 4, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 3, 3, 3, 0, 3, 3, 3, 3, 3, 4, 4, 4, 2, 4, 4, 4, 4, 4 ],
      [ 5, 4, 3, 5, 5, 5, 5, 1, 5, 5, 5, 5, 3, 3, 3, 3, 0, 3, 3, 3, 3, 4, 4, 4, 4, 2, 4, 4, 4, 4 ],
      [ 5, 4, 3, 5, 5, 5, 5, 5, 1, 5, 5, 5, 3, 3, 3, 3, 3, 0, 3, 3, 3, 4, 4, 4, 4, 4, 2, 4, 4, 4 ],
      [ 5, 4, 3, 5, 5, 5, 5, 5, 5, 1, 5, 5, 3, 3, 3, 3, 3, 3, 0, 3, 3, 4, 4, 4, 4, 4, 4, 2, 4, 4 ],
      [ 5, 4, 3, 5, 5, 5, 5, 5, 5, 5, 1, 5, 3, 3, 3, 3, 3, 3, 3, 0, 3, 4, 4, 4, 4, 4, 4, 4, 2, 4 ],
      [ 5, 4, 3, 5, 5, 5, 5, 5, 5, 5, 5, 1, 3, 3, 3, 3, 3, 3, 3, 3, 0, 4, 4, 4, 4, 4, 4, 4, 4, 2 ],
      [ 4, 3, 5, 2, 4, 4, 4, 4, 4, 4, 4, 4, 1, 5, 5, 5, 5, 5, 5, 5, 5, 0, 3, 3, 3, 3, 3, 3, 3, 3 ],
      [ 4, 3, 5, 4, 2, 4, 4, 4, 4, 4, 4, 4, 5, 1, 5, 5, 5, 5, 5, 5, 5, 3, 0, 3, 3, 3, 3, 3, 3, 3 ],
      [ 4, 3, 5, 4, 4, 2, 4, 4, 4, 4, 4, 4, 5, 5, 1, 5, 5, 5, 5, 5, 5, 3, 3, 0, 3, 3, 3, 3, 3, 3 ],
      [ 4, 3, 5, 4, 4, 4, 2, 4, 4, 4, 4, 4, 5, 5, 5, 1, 5, 5, 5, 5, 5, 3, 3, 3, 0, 3, 3, 3, 3, 3 ],
      [ 4, 3, 5, 4, 4, 4, 4, 2, 4, 4, 4, 4, 5, 5, 5, 5, 1, 5, 5, 5, 5, 3, 3, 3, 3, 0, 3, 3, 3, 3 ],
      [ 4, 3, 5, 4, 4, 4, 4, 4, 2, 4, 4, 4, 5, 5, 5, 5, 5, 1, 5, 5, 5, 3, 3, 3, 3, 3, 0, 3, 3, 3 ],
      [ 4, 3, 5, 4, 4, 4, 4, 4, 4, 2, 4, 4, 5, 5, 5, 5, 5, 5, 1, 5, 5, 3, 3, 3, 3, 3, 3, 0, 3, 3 ],
      [ 4, 3, 5, 4, 4, 4, 4, 4, 4, 4, 2, 4, 5, 5, 5, 5, 5, 5, 5, 1, 5, 3, 3, 3, 3, 3, 3, 3, 0, 3 ],
      [ 4, 3, 5, 4, 4, 4, 4, 4, 4, 4, 4, 2, 5, 5, 5, 5, 5, 5, 5, 5, 1, 3, 3, 3, 3, 3, 3, 3, 3, 0 ] 
     ] )