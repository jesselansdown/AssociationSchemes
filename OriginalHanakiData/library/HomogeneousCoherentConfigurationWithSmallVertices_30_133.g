rec(
  ct := [ [ 1, 1, 2, 2, 2, 2, 10, 10, 1 ], [ 1, 1, 2, 2, 2, 2, 10*E(3)^2, 10*E(3), 1 ], 
      [ 1, 1, 2, 2, 2, 2, 10*E(3), 10*E(3)^2, 1 ], [ 1, -1, 2, 2, -2, -2, 0, 0, 3 ], 
      [ 2, 0, -1, -1, 0, 0, 0, 0, 12 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ], 
      [ 1, 0, 4, 4, 5, 5, 2, 2, 3, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 2, 5, 0, 3, 2, 3, 4, 5, 1, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 2, 5, 3, 0, 3, 2, 5, 4, 4, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 3, 4, 2, 3, 0, 2, 5, 1, 5, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 3, 4, 3, 2, 2, 0, 1, 5, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 5, 2, 5, 4, 4, 1, 0, 3, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 5, 2, 4, 5, 1, 4, 3, 0, 3, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 4, 3, 1, 5, 4, 5, 2, 3, 0, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 4, 3, 5, 1, 5, 4, 3, 2, 2, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 0, 4, 4, 5, 5, 2, 2, 3, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 2, 5, 0, 3, 2, 3, 4, 5, 1, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 2, 5, 3, 0, 3, 2, 5, 4, 4, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 4, 2, 3, 0, 2, 5, 1, 5, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 4, 3, 2, 2, 0, 1, 5, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 2, 5, 4, 4, 1, 0, 3, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 2, 4, 5, 1, 4, 3, 0, 3, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 4, 3, 1, 5, 4, 5, 2, 3, 0, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 4, 3, 5, 1, 5, 4, 3, 2, 2, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 1, 2, 2, 3, 3, 4, 4, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 0, 4, 4, 5, 5, 2, 2, 3, 3 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 2, 5, 0, 3, 2, 3, 4, 5, 1, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 2, 5, 3, 0, 3, 2, 5, 4, 4, 1 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 4, 2, 3, 0, 2, 5, 1, 5, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 4, 3, 2, 2, 0, 1, 5, 4, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 2, 5, 4, 4, 1, 0, 3, 2, 3 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 2, 4, 5, 1, 4, 3, 0, 3, 2 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 4, 3, 1, 5, 4, 5, 2, 3, 0, 2 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 4, 3, 5, 1, 5, 4, 3, 2, 2, 0 ] 
     ] )