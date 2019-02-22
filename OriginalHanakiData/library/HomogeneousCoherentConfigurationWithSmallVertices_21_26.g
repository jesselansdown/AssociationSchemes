rec(
  ct := 
   [ [ 1, 1, 1, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 1, E(3), E(3)^2, 3, 3, 3*E(3)^2, 3*E(3), 3*E(3)^2, 3*E(3), 1 ], 
      [ 1, E(3)^2, E(3), 3, 3, 3*E(3), 3*E(3)^2, 3*E(3), 3*E(3)^2, 1 ], 
      [ 1, 1, 1, E(7)+E(7)^2+E(7)^4, E(7)^3+E(7)^5+E(7)^6, E(7)+E(7)^2+E(7)^4, 
          E(7)^3+E(7)^5+E(7)^6, E(7)^3+E(7)^5+E(7)^6, E(7)+E(7)^2+E(7)^4, 3 ], 
      [ 1, 1, 1, E(7)^3+E(7)^5+E(7)^6, E(7)+E(7)^2+E(7)^4, E(7)^3+E(7)^5+E(7)^6, 
          E(7)+E(7)^2+E(7)^4, E(7)+E(7)^2+E(7)^4, E(7)^3+E(7)^5+E(7)^6, 3 ], 
      [ 1, E(3), E(3)^2, E(7)+E(7)^2+E(7)^4, E(7)^3+E(7)^5+E(7)^6, E(21)^5+E(21)^17+E(21)^20, 
          E(21)+E(21)^4+E(21)^16, E(21)^2+E(21)^8+E(21)^11, E(21)^10+E(21)^13+E(21)^19, 3 ], 
      [ 1, E(3), E(3)^2, E(7)^3+E(7)^5+E(7)^6, E(7)+E(7)^2+E(7)^4, E(21)^2+E(21)^8+E(21)^11, 
          E(21)^10+E(21)^13+E(21)^19, E(21)^5+E(21)^17+E(21)^20, E(21)+E(21)^4+E(21)^16, 3 ], 
      [ 1, E(3)^2, E(3), E(7)+E(7)^2+E(7)^4, E(7)^3+E(7)^5+E(7)^6, E(21)^10+E(21)^13+E(21)^19, 
          E(21)^2+E(21)^8+E(21)^11, E(21)+E(21)^4+E(21)^16, E(21)^5+E(21)^17+E(21)^20, 3 ], 
      [ 1, E(3)^2, E(3), E(7)^3+E(7)^5+E(7)^6, E(7)+E(7)^2+E(7)^4, E(21)+E(21)^4+E(21)^16, 
          E(21)^5+E(21)^17+E(21)^20, E(21)^10+E(21)^13+E(21)^19, E(21)^2+E(21)^8+E(21)^11, 3 ] ],
  matrix := [ [ 0, 1, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8 ], 
      [ 2, 0, 1, 5, 5, 5, 7, 7, 7, 8, 8, 8, 4, 4, 4, 6, 6, 6, 3, 3, 3 ], 
      [ 1, 2, 0, 8, 8, 8, 6, 6, 6, 3, 3, 3, 7, 7, 7, 4, 4, 4, 5, 5, 5 ], 
      [ 4, 6, 7, 0, 3, 4, 3, 3, 4, 2, 5, 7, 6, 8, 8, 5, 5, 7, 1, 6, 8 ], 
      [ 4, 6, 7, 4, 0, 3, 3, 4, 3, 7, 2, 5, 8, 6, 8, 5, 7, 5, 6, 8, 1 ], 
      [ 4, 6, 7, 3, 4, 0, 4, 3, 3, 5, 7, 2, 8, 8, 6, 7, 5, 5, 8, 1, 6 ], 
      [ 3, 8, 5, 4, 4, 3, 0, 3, 4, 7, 7, 5, 6, 8, 1, 2, 5, 7, 6, 8, 6 ], 
      [ 3, 8, 5, 4, 3, 4, 4, 0, 3, 7, 5, 7, 8, 1, 6, 7, 2, 5, 6, 6, 8 ], 
      [ 3, 8, 5, 3, 4, 4, 3, 4, 0, 5, 7, 7, 1, 6, 8, 5, 7, 2, 8, 6, 6 ], 
      [ 6, 7, 4, 1, 8, 6, 8, 8, 6, 0, 3, 4, 7, 5, 5, 3, 3, 4, 2, 7, 5 ], 
      [ 6, 7, 4, 6, 1, 8, 8, 6, 8, 4, 0, 3, 5, 7, 5, 3, 4, 3, 7, 5, 2 ], 
      [ 6, 7, 4, 8, 6, 1, 6, 8, 8, 3, 4, 0, 5, 5, 7, 4, 3, 3, 5, 2, 7 ], 
      [ 5, 3, 8, 5, 7, 7, 5, 7, 2, 8, 6, 6, 0, 4, 3, 8, 6, 1, 3, 4, 4 ], 
      [ 5, 3, 8, 7, 5, 7, 7, 2, 5, 6, 8, 6, 3, 0, 4, 6, 1, 8, 4, 4, 3 ], 
      [ 5, 3, 8, 7, 7, 5, 2, 5, 7, 6, 6, 8, 4, 3, 0, 1, 8, 6, 4, 3, 4 ], 
      [ 8, 5, 3, 6, 6, 8, 1, 8, 6, 4, 4, 3, 7, 5, 2, 0, 3, 4, 7, 5, 7 ], 
      [ 8, 5, 3, 6, 8, 6, 6, 1, 8, 4, 3, 4, 5, 2, 7, 4, 0, 3, 7, 7, 5 ], 
      [ 8, 5, 3, 8, 6, 6, 8, 6, 1, 3, 4, 4, 2, 7, 5, 3, 4, 0, 5, 7, 7 ], 
      [ 7, 4, 6, 2, 5, 7, 5, 5, 7, 1, 8, 6, 4, 3, 3, 8, 8, 6, 0, 4, 3 ], 
      [ 7, 4, 6, 5, 7, 2, 7, 5, 5, 8, 6, 1, 3, 3, 4, 6, 8, 8, 3, 0, 4 ], 
      [ 7, 4, 6, 7, 2, 5, 5, 7, 5, 6, 1, 8, 3, 4, 3, 8, 6, 8, 4, 3, 0 ] ] )