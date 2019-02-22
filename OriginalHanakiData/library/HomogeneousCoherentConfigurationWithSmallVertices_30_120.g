rec(
  ct := [ [ 1, 1, 1, 1, 1, 5, 10, 10, 1 ], [ 1, 1, 1, 1, 1, 5, 10*E(3), 10*E(3)^2, 1 ], 
      [ 1, 1, 1, 1, 1, 5, 10*E(3)^2, 10*E(3), 1 ], [ 1, 1, 1, 1, 1, -5, 0, 0, 3 ], 
      [ 1, E(5), E(5)^4, E(5)^3, E(5)^2, 0, 0, 0, 6 ], 
      [ 1, E(5)^2, E(5)^3, E(5), E(5)^4, 0, 0, 0, 6 ], 
      [ 1, E(5)^3, E(5)^2, E(5)^4, E(5), 0, 0, 0, 6 ], 
      [ 1, E(5)^4, E(5), E(5)^2, E(5)^3, 0, 0, 0, 6 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 2, 0, 3, 4, 1, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 1, 4, 0, 2, 3, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 4, 3, 1, 0, 2, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 3, 2, 4, 1, 0, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 5, 5, 5, 5, 5, 0, 1, 2, 3, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 5, 5, 5, 5, 5, 2, 0, 3, 4, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 5, 5, 5, 5, 5, 1, 4, 0, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 5, 5, 5, 5, 5, 4, 3, 1, 0, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 5, 5, 5, 5, 5, 3, 2, 4, 1, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 1, 2, 3, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 2, 0, 3, 4, 1, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 4, 0, 2, 3, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 4, 3, 1, 0, 2, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 2, 4, 1, 0, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 0, 1, 2, 3, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 2, 0, 3, 4, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 1, 4, 0, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 4, 3, 1, 0, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 3, 2, 4, 1, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 1, 2, 3, 4, 5, 5, 5, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 2, 0, 3, 4, 1, 5, 5, 5, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 4, 0, 2, 3, 5, 5, 5, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 4, 3, 1, 0, 2, 5, 5, 5, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 2, 4, 1, 0, 5, 5, 5, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 0, 1, 2, 3, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 2, 0, 3, 4, 1 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 1, 4, 0, 2, 3 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 4, 3, 1, 0, 2 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 3, 2, 4, 1, 0 ] 
     ] )