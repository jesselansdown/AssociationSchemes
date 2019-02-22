rec(
  ct := [ [ 1, 2, 2, 5, 20, 1 ], [ 1, 2, 2, 5, -10, 2 ], [ 1, 2, 2, -5, 0, 3 ], 
      [ 1, E(5)^2+E(5)^3, E(5)+E(5)^4, 0, 0, 12 ], [ 1, E(5)+E(5)^4, E(5)^2+E(5)^3, 0, 0, 12 ] ],
  matrix := 
   [ [ 0, 1, 1, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 1, 0, 2, 1, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 1, 2, 0, 2, 1, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 2, 1, 2, 0, 1, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 2, 2, 1, 1, 0, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 3, 3, 3, 3, 3, 0, 1, 1, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 3, 3, 3, 3, 3, 1, 0, 2, 1, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 3, 3, 3, 3, 3, 1, 2, 0, 2, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 3, 3, 3, 3, 3, 2, 1, 2, 0, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 3, 3, 3, 3, 3, 2, 2, 1, 1, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 1, 1, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 1, 0, 2, 1, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 1, 2, 0, 2, 1, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 1, 2, 0, 1, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 1, 1, 0, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 0, 1, 1, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 1, 0, 2, 1, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 1, 2, 0, 2, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 1, 2, 0, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 1, 1, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 1, 1, 2, 2, 3, 3, 3, 3, 3 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 1, 0, 2, 1, 2, 3, 3, 3, 3, 3 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 1, 2, 0, 2, 1, 3, 3, 3, 3, 3 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 1, 2, 0, 1, 3, 3, 3, 3, 3 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 1, 1, 0, 3, 3, 3, 3, 3 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 0, 1, 1, 2, 2 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 1, 0, 2, 1, 2 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 1, 2, 0, 2, 1 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 1, 2, 0, 1 ],
      [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 1, 1, 0 ] 
     ] )