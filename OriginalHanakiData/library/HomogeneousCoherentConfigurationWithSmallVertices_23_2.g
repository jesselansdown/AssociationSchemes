rec(
  ct := 
   [ [ 1, 11, 11, 1 ], 
      [ 1, E(23)+E(23)^2+E(23)^3+E(23)^4+E(23)^6+E(23)^8+E(23)^9+E(23)^12+E(23)^13+E(23)^16
             +E(23)^18, E(23)^5+E(23)^7+E(23)^10+E(23)^11+E(23)^14+E(23)^15+E(23)^17+E(23)^19
             +E(23)^20+E(23)^21+E(23)^22, 11 ], 
      [ 1, E(23)^5+E(23)^7+E(23)^10+E(23)^11+E(23)^14+E(23)^15+E(23)^17+E(23)^19+E(23)^20+E(23)^21
             +E(23)^22, E(23)+E(23)^2+E(23)^3+E(23)^4+E(23)^6+E(23)^8+E(23)^9+E(23)^12+E(23)^13
             +E(23)^16+E(23)^18, 11 ] ],
  matrix := [ [ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 2, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 ], 
      [ 2, 2, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1 ], 
      [ 2, 2, 2, 0, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2 ], 
      [ 2, 2, 2, 2, 0, 1, 1, 2, 1, 1, 2, 1, 2, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1 ], 
      [ 2, 2, 2, 2, 2, 0, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 2, 2, 1, 2, 1, 2 ], 
      [ 2, 2, 2, 1, 2, 2, 0, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 2, 2, 1, 2, 1 ], 
      [ 2, 1, 2, 1, 1, 2, 2, 0, 1, 2, 1, 2, 2, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1 ], 
      [ 2, 1, 1, 2, 2, 2, 1, 2, 0, 1, 1, 2, 1, 2, 2, 1, 2, 1, 1, 1, 2, 2, 1 ], 
      [ 2, 1, 1, 2, 2, 1, 2, 1, 2, 0, 2, 1, 2, 1, 2, 1, 1, 2, 2, 1, 1, 2, 1 ], 
      [ 2, 1, 1, 2, 1, 2, 2, 2, 2, 1, 0, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 2 ], 
      [ 2, 1, 1, 1, 2, 2, 2, 1, 1, 2, 2, 0, 2, 1, 1, 2, 2, 1, 1, 1, 2, 1, 2 ], 
      [ 1, 2, 2, 1, 1, 2, 2, 1, 2, 1, 2, 1, 0, 2, 2, 1, 1, 1, 1, 1, 2, 2, 2 ], 
      [ 1, 2, 1, 2, 2, 1, 2, 1, 1, 2, 1, 2, 1, 0, 2, 2, 1, 1, 1, 2, 1, 2, 2 ], 
      [ 1, 2, 1, 2, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 0, 1, 2, 2, 2, 2, 2, 1, 1 ], 
      [ 1, 2, 1, 2, 1, 2, 1, 2, 2, 2, 1, 1, 2, 1, 2, 0, 2, 1, 2, 1, 1, 1, 2 ], 
      [ 1, 2, 1, 1, 2, 2, 1, 2, 1, 2, 2, 1, 2, 2, 1, 1, 0, 2, 1, 2, 1, 2, 1 ], 
      [ 1, 2, 1, 1, 2, 1, 2, 2, 2, 1, 1, 2, 2, 2, 1, 2, 1, 0, 2, 1, 2, 1, 1 ], 
      [ 1, 1, 2, 2, 2, 1, 1, 1, 2, 1, 2, 2, 2, 2, 1, 1, 2, 1, 0, 2, 1, 1, 2 ], 
      [ 1, 1, 2, 2, 1, 2, 1, 1, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 1, 0, 2, 2, 1 ], 
      [ 1, 1, 2, 2, 1, 1, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 1, 0, 2, 1 ], 
      [ 1, 1, 2, 1, 2, 2, 1, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 2, 2, 1, 1, 0, 2 ], 
      [ 1, 1, 2, 1, 2, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 1, 2, 2, 1, 2, 2, 1, 0 ] ] )