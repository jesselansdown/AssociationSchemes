rec(
  ct := [ [ 1, 1, 2, 2, 6, 6, 6, 6, 1 ], [ 1, -1, 2, -2, 6, 6, -6, -6, 1 ], 
      [ 2, 0, 4, 0, -3, -3, 0, 0, 4 ], [ 1, -1, -1, 1, 0, 0, 0, 0, 10 ], 
      [ 1, 1, -1, -1, 0, 0, 0, 0, 10 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ], 
      [ 1, 0, 3, 3, 2, 2, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ],
      [ 2, 3, 0, 2, 1, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ],
      [ 2, 3, 2, 0, 3, 1, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7 ],
      [ 3, 2, 1, 3, 0, 2, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ],
      [ 3, 2, 3, 1, 2, 0, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ],
      [ 4, 7, 4, 4, 7, 7, 0, 2, 2, 5, 5, 5, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 1, 3, 3, 6, 6, 6 ],
      [ 4, 7, 4, 4, 7, 7, 2, 0, 2, 5, 5, 5, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 3, 1, 3, 6, 6, 6 ],
      [ 4, 7, 4, 4, 7, 7, 2, 2, 0, 5, 5, 5, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 3, 3, 1, 6, 6, 6 ],
      [ 4, 7, 4, 4, 7, 7, 5, 5, 5, 0, 2, 2, 5, 5, 5, 4, 4, 4, 7, 7, 7, 6, 6, 6, 6, 6, 6, 1, 3, 3 ],
      [ 4, 7, 4, 4, 7, 7, 5, 5, 5, 2, 0, 2, 5, 5, 5, 4, 4, 4, 7, 7, 7, 6, 6, 6, 6, 6, 6, 3, 1, 3 ],
      [ 4, 7, 4, 4, 7, 7, 5, 5, 5, 2, 2, 0, 5, 5, 5, 4, 4, 4, 7, 7, 7, 6, 6, 6, 6, 6, 6, 3, 3, 1 ],
      [ 5, 6, 5, 5, 6, 6, 4, 4, 4, 5, 5, 5, 0, 2, 2, 4, 4, 4, 7, 7, 7, 1, 3, 3, 7, 7, 7, 6, 6, 6 ],
      [ 5, 6, 5, 5, 6, 6, 4, 4, 4, 5, 5, 5, 2, 0, 2, 4, 4, 4, 7, 7, 7, 3, 1, 3, 7, 7, 7, 6, 6, 6 ],
      [ 5, 6, 5, 5, 6, 6, 4, 4, 4, 5, 5, 5, 2, 2, 0, 4, 4, 4, 7, 7, 7, 3, 3, 1, 7, 7, 7, 6, 6, 6 ],
      [ 5, 6, 5, 5, 6, 6, 5, 5, 5, 4, 4, 4, 4, 4, 4, 0, 2, 2, 1, 3, 3, 7, 7, 7, 6, 6, 6, 7, 7, 7 ],
      [ 5, 6, 5, 5, 6, 6, 5, 5, 5, 4, 4, 4, 4, 4, 4, 2, 0, 2, 3, 1, 3, 7, 7, 7, 6, 6, 6, 7, 7, 7 ],
      [ 5, 6, 5, 5, 6, 6, 5, 5, 5, 4, 4, 4, 4, 4, 4, 2, 2, 0, 3, 3, 1, 7, 7, 7, 6, 6, 6, 7, 7, 7 ],
      [ 7, 4, 7, 7, 4, 4, 7, 7, 7, 6, 6, 6, 6, 6, 6, 1, 3, 3, 0, 2, 2, 5, 5, 5, 4, 4, 4, 5, 5, 5 ],
      [ 7, 4, 7, 7, 4, 4, 7, 7, 7, 6, 6, 6, 6, 6, 6, 3, 1, 3, 2, 0, 2, 5, 5, 5, 4, 4, 4, 5, 5, 5 ],
      [ 7, 4, 7, 7, 4, 4, 7, 7, 7, 6, 6, 6, 6, 6, 6, 3, 3, 1, 2, 2, 0, 5, 5, 5, 4, 4, 4, 5, 5, 5 ],
      [ 7, 4, 7, 7, 4, 4, 6, 6, 6, 7, 7, 7, 1, 3, 3, 6, 6, 6, 5, 5, 5, 0, 2, 2, 5, 5, 5, 4, 4, 4 ],
      [ 7, 4, 7, 7, 4, 4, 6, 6, 6, 7, 7, 7, 3, 1, 3, 6, 6, 6, 5, 5, 5, 2, 0, 2, 5, 5, 5, 4, 4, 4 ],
      [ 7, 4, 7, 7, 4, 4, 6, 6, 6, 7, 7, 7, 3, 3, 1, 6, 6, 6, 5, 5, 5, 2, 2, 0, 5, 5, 5, 4, 4, 4 ],
      [ 6, 5, 6, 6, 5, 5, 1, 3, 3, 7, 7, 7, 6, 6, 6, 7, 7, 7, 4, 4, 4, 5, 5, 5, 0, 2, 2, 4, 4, 4 ],
      [ 6, 5, 6, 6, 5, 5, 3, 1, 3, 7, 7, 7, 6, 6, 6, 7, 7, 7, 4, 4, 4, 5, 5, 5, 2, 0, 2, 4, 4, 4 ],
      [ 6, 5, 6, 6, 5, 5, 3, 3, 1, 7, 7, 7, 6, 6, 6, 7, 7, 7, 4, 4, 4, 5, 5, 5, 2, 2, 0, 4, 4, 4 ],
      [ 6, 5, 6, 6, 5, 5, 7, 7, 7, 1, 3, 3, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 4, 4, 0, 2, 2 ],
      [ 6, 5, 6, 6, 5, 5, 7, 7, 7, 3, 1, 3, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 4, 4, 2, 0, 2 ],
      [ 6, 5, 6, 6, 5, 5, 7, 7, 7, 3, 3, 1, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 4, 4, 2, 2, 0 ] 
     ] )