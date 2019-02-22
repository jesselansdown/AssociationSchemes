rec(
  ct := [ [ 1, 1, 1, 3, 12, 12, 1 ], [ 1, 1, 1, 3, 6*E(5)^2+6*E(5)^3, 6*E(5)+6*E(5)^4, 2 ], 
      [ 1, 1, 1, 3, 6*E(5)+6*E(5)^4, 6*E(5)^2+6*E(5)^3, 2 ], [ 1, 1, 1, -3, 0, 0, 5 ], 
      [ 1, E(3), E(3)^2, 0, 0, 0, 10 ], [ 1, E(3)^2, E(3), 0, 0, 0, 10 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 2, 0, 1, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
      [ 1, 2, 0, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
      [ 3, 3, 3, 0, 1, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
      [ 3, 3, 3, 2, 0, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
      [ 3, 3, 3, 1, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
      [ 4, 4, 4, 4, 4, 4, 0, 1, 2, 3, 3, 3, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ],
      [ 4, 4, 4, 4, 4, 4, 2, 0, 1, 3, 3, 3, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ],
      [ 4, 4, 4, 4, 4, 4, 1, 2, 0, 3, 3, 3, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ],
      [ 4, 4, 4, 4, 4, 4, 3, 3, 3, 0, 1, 2, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ],
      [ 4, 4, 4, 4, 4, 4, 3, 3, 3, 2, 0, 1, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ],
      [ 4, 4, 4, 4, 4, 4, 3, 3, 3, 1, 2, 0, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ],
      [ 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 0, 1, 2, 3, 3, 3, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 2, 0, 1, 3, 3, 3, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 1, 2, 0, 3, 3, 3, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 3, 3, 3, 0, 1, 2, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 3, 3, 3, 2, 0, 1, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4 ],
      [ 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 3, 3, 3, 1, 2, 0, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4 ],
      [ 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 0, 1, 2, 3, 3, 3, 4, 4, 4, 4, 4, 4 ],
      [ 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 2, 0, 1, 3, 3, 3, 4, 4, 4, 4, 4, 4 ],
      [ 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 1, 2, 0, 3, 3, 3, 4, 4, 4, 4, 4, 4 ],
      [ 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 3, 3, 3, 0, 1, 2, 4, 4, 4, 4, 4, 4 ],
      [ 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 3, 3, 3, 2, 0, 1, 4, 4, 4, 4, 4, 4 ],
      [ 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 3, 3, 3, 1, 2, 0, 4, 4, 4, 4, 4, 4 ],
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 1, 2, 3, 3, 3 ],
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 0, 1, 3, 3, 3 ],
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 1, 2, 0, 3, 3, 3 ],
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 0, 1, 2 ],
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 2, 0, 1 ],
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 1, 2, 0 ] 
     ] )