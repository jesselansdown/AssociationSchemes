rec(
  ct := [ [ 1, 1, 1, 1, 1, 1, 24, 1 ], [ 1, 1, 1, 1, 1, 1, -6, 4 ], [ 1, -1, -1, -1, 1, 1, 0, 5 ], 
      [ 2, 0, 0, 0, -1, -1, 0, 10 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 2, 5, 0, 4, 3, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 3, 4, 5, 0, 1, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 5, 2, 3, 1, 0, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 4, 3, 1, 2, 5, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 2, 5, 0, 4, 3, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 3, 4, 5, 0, 1, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 5, 2, 3, 1, 0, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 4, 3, 1, 2, 5, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 5, 0, 4, 3, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 4, 5, 0, 1, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 2, 3, 1, 0, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 3, 1, 2, 5, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 5, 0, 4, 3, 1, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 4, 5, 0, 1, 2, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 2, 3, 1, 0, 4, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 3, 1, 2, 5, 0, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 1, 2, 3, 4, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 4, 5, 2, 3 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 5, 0, 4, 3, 1 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 4, 5, 0, 1, 2 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 2, 3, 1, 0, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 3, 1, 2, 5, 0 ] 
     ] )