rec(
  ct := [ [ 1, 2, 2, 2, 4, 4, 15, 1 ], [ 1, 2, 2, 2, 4, 4, -15, 1 ], [ 1, -1, 2, 2, -2, -2, 0, 4 ],
      [ 1, 2, E(5)^2+E(5)^3, E(5)+E(5)^4, 2*E(5)^2+2*E(5)^3, 2*E(5)+2*E(5)^4, 0, 4 ], 
      [ 1, 2, E(5)+E(5)^4, E(5)^2+E(5)^3, 2*E(5)+2*E(5)^4, 2*E(5)^2+2*E(5)^3, 0, 4 ], 
      [ 1, -1, E(5)^2+E(5)^3, E(5)+E(5)^4, -E(5)^2-E(5)^3, -E(5)-E(5)^4, 0, 8 ], 
      [ 1, -1, E(5)+E(5)^4, E(5)^2+E(5)^3, -E(5)-E(5)^4, -E(5)^2-E(5)^3, 0, 8 ] ],
  matrix := 
   [ [ 0, 1, 1, 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 1, 0, 1, 4, 4, 5, 5, 2, 2, 4, 4, 3, 3, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 1, 1, 0, 4, 4, 5, 5, 4, 4, 2, 2, 5, 5, 3, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 2, 4, 4, 0, 3, 2, 3, 1, 5, 1, 5, 4, 5, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 2, 4, 4, 3, 0, 3, 2, 5, 1, 5, 1, 5, 4, 5, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 3, 5, 5, 2, 3, 0, 2, 4, 5, 4, 5, 1, 4, 1, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 3, 5, 5, 3, 2, 2, 0, 5, 4, 5, 4, 4, 1, 4, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 4, 2, 4, 1, 5, 4, 5, 0, 3, 1, 5, 2, 3, 4, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 4, 2, 4, 5, 1, 5, 4, 3, 0, 5, 1, 3, 2, 5, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 4, 4, 2, 1, 5, 4, 5, 1, 5, 0, 3, 4, 5, 2, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 4, 4, 2, 5, 1, 5, 4, 5, 1, 3, 0, 5, 4, 3, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 5, 3, 5, 4, 5, 1, 4, 2, 3, 4, 5, 0, 2, 1, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 5, 3, 5, 5, 4, 4, 1, 3, 2, 5, 4, 2, 0, 4, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 5, 5, 3, 4, 5, 1, 4, 4, 5, 2, 3, 1, 4, 0, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 5, 5, 3, 5, 4, 4, 1, 5, 4, 3, 2, 4, 1, 2, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 1, 1, 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 0, 1, 4, 4, 5, 5, 2, 2, 4, 4, 3, 3, 5, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 1, 0, 4, 4, 5, 5, 4, 4, 2, 2, 5, 5, 3, 3 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 4, 4, 0, 3, 2, 3, 1, 5, 1, 5, 4, 5, 4, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 4, 4, 3, 0, 3, 2, 5, 1, 5, 1, 5, 4, 5, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 5, 5, 2, 3, 0, 2, 4, 5, 4, 5, 1, 4, 1, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 3, 5, 5, 3, 2, 2, 0, 5, 4, 5, 4, 4, 1, 4, 1 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 2, 4, 1, 5, 4, 5, 0, 3, 1, 5, 2, 3, 4, 5 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 2, 4, 5, 1, 5, 4, 3, 0, 5, 1, 3, 2, 5, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 2, 1, 5, 4, 5, 1, 5, 0, 3, 4, 5, 2, 3 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 2, 5, 1, 5, 4, 5, 1, 3, 0, 5, 4, 3, 2 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 3, 5, 4, 5, 1, 4, 2, 3, 4, 5, 0, 2, 1, 4 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 3, 5, 5, 4, 4, 1, 3, 2, 5, 4, 2, 0, 4, 1 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 3, 4, 5, 1, 4, 4, 5, 2, 3, 1, 4, 0, 2 ],
      [ 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 3, 5, 4, 4, 1, 5, 4, 3, 2, 4, 1, 2, 0 ] 
     ] )