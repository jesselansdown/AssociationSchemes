rec(
  ct := [ [ 1, 2, 3, 3, 3, 3, 15, 1 ], [ 1, 2, 3, 3, 3, 3, -15, 1 ], 
      [ 1, 2, 3*E(5), 3*E(5)^4, 3*E(5)^3, 3*E(5)^2, 0, 2 ], 
      [ 1, 2, 3*E(5)^2, 3*E(5)^3, 3*E(5), 3*E(5)^4, 0, 2 ], 
      [ 1, 2, 3*E(5)^3, 3*E(5)^2, 3*E(5)^4, 3*E(5), 0, 2 ], 
      [ 1, 2, 3*E(5)^4, 3*E(5), 3*E(5)^2, 3*E(5)^3, 0, 2 ], [ 1, -1, 0, 0, 0, 0, 0, 20 ] ],
  matrix := 
   [ [ 0, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 1, 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 1, 1, 0, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 3, 3, 3, 0, 1, 1, 4, 4, 4, 5, 5, 5, 2, 2, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 3, 3, 3, 1, 0, 1, 4, 4, 4, 5, 5, 5, 2, 2, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 3, 3, 3, 1, 1, 0, 4, 4, 4, 5, 5, 5, 2, 2, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 2, 2, 2, 5, 5, 5, 0, 1, 1, 3, 3, 3, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 2, 2, 2, 5, 5, 5, 1, 0, 1, 3, 3, 3, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 2, 2, 2, 5, 5, 5, 1, 1, 0, 3, 3, 3, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 5, 5, 5, 4, 4, 4, 2, 2, 2, 0, 1, 1, 3, 3, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 5, 5, 5, 4, 4, 4, 2, 2, 2, 1, 0, 1, 3, 3, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 5, 5, 5, 4, 4, 4, 2, 2, 2, 1, 1, 0, 3, 3, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 4, 4, 4, 3, 3, 3, 5, 5, 5, 2, 2, 2, 0, 1, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 4, 4, 4, 3, 3, 3, 5, 5, 5, 2, 2, 2, 1, 0, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 4, 4, 4, 3, 3, 3, 5, 5, 5, 2, 2, 2, 1, 1, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 1, 0, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 3, 3, 0, 1, 1, 4, 4, 4, 5, 5, 5, 2, 2, 2 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 3, 3, 1, 0, 1, 4, 4, 4, 5, 5, 5, 2, 2, 2 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 3, 3, 1, 1, 0, 4, 4, 4, 5, 5, 5, 2, 2, 2 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 2, 2, 5, 5, 5, 0, 1, 1, 3, 3, 3, 4, 4, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 2, 2, 5, 5, 5, 1, 0, 1, 3, 3, 3, 4, 4, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 2, 2, 5, 5, 5, 1, 1, 0, 3, 3, 3, 4, 4, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 2, 2, 2, 0, 1, 1, 3, 3, 3 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 2, 2, 2, 1, 0, 1, 3, 3, 3 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 2, 2, 2, 1, 1, 0, 3, 3, 3 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 3, 3, 3, 5, 5, 5, 2, 2, 2, 0, 1, 1 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 3, 3, 3, 5, 5, 5, 2, 2, 2, 1, 0, 1 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 3, 3, 3, 5, 5, 5, 2, 2, 2, 1, 1, 0 ] 
     ] )