rec(
  ct := 
   [ [ 1, 1, 12, 12, 12, 1 ], 
      [ 1, 1, 2*E(19)^4+2*E(19)^6+2*E(19)^9+2*E(19)^10+2*E(19)^13+2*E(19)^15, 
          2*E(19)^2+2*E(19)^3+2*E(19)^5+2*E(19)^14+2*E(19)^16+2*E(19)^17, 
          2*E(19)+2*E(19)^7+2*E(19)^8+2*E(19)^11+2*E(19)^12+2*E(19)^18, 6 ], 
      [ 1, 1, 2*E(19)^2+2*E(19)^3+2*E(19)^5+2*E(19)^14+2*E(19)^16+2*E(19)^17, 
          2*E(19)+2*E(19)^7+2*E(19)^8+2*E(19)^11+2*E(19)^12+2*E(19)^18, 
          2*E(19)^4+2*E(19)^6+2*E(19)^9+2*E(19)^10+2*E(19)^13+2*E(19)^15, 6 ], 
      [ 1, 1, 2*E(19)+2*E(19)^7+2*E(19)^8+2*E(19)^11+2*E(19)^12+2*E(19)^18, 
          2*E(19)^4+2*E(19)^6+2*E(19)^9+2*E(19)^10+2*E(19)^13+2*E(19)^15, 
          2*E(19)^2+2*E(19)^3+2*E(19)^5+2*E(19)^14+2*E(19)^16+2*E(19)^17, 6 ], 
      [ 1, -1, 0, 0, 0, 19 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 
          4, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 
          4, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 2, 2, 0, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 2, 2, 2, 2, 3, 3, 4, 4, 4, 4, 4, 4, 2, 2, 3, 3, 
          3, 3, 3, 3, 4, 4, 4, 4 ], 
      [ 2, 2, 1, 0, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 2, 2, 2, 2, 3, 3, 4, 4, 4, 4, 4, 4, 2, 2, 3, 3, 
          3, 3, 3, 3, 4, 4, 4, 4 ], 
      [ 2, 2, 2, 2, 0, 1, 3, 3, 2, 2, 4, 4, 3, 3, 2, 2, 4, 4, 4, 4, 2, 2, 3, 3, 4, 4, 3, 3, 2, 2, 
          3, 3, 4, 4, 3, 3, 4, 4 ], 
      [ 2, 2, 2, 2, 1, 0, 3, 3, 2, 2, 4, 4, 3, 3, 2, 2, 4, 4, 4, 4, 2, 2, 3, 3, 4, 4, 3, 3, 2, 2, 
          3, 3, 4, 4, 3, 3, 4, 4 ], 
      [ 2, 2, 2, 2, 3, 3, 0, 1, 4, 4, 2, 2, 3, 3, 4, 4, 2, 2, 4, 4, 3, 3, 4, 4, 2, 2, 3, 3, 4, 4, 
          2, 2, 3, 3, 4, 4, 3, 3 ], 
      [ 2, 2, 2, 2, 3, 3, 1, 0, 4, 4, 2, 2, 3, 3, 4, 4, 2, 2, 4, 4, 3, 3, 4, 4, 2, 2, 3, 3, 4, 4, 
          2, 2, 3, 3, 4, 4, 3, 3 ], 
      [ 2, 2, 3, 3, 2, 2, 4, 4, 0, 1, 3, 3, 2, 2, 4, 4, 4, 4, 2, 2, 2, 2, 4, 4, 3, 3, 3, 3, 3, 3, 
          4, 4, 4, 4, 2, 2, 3, 3 ], 
      [ 2, 2, 3, 3, 2, 2, 4, 4, 1, 0, 3, 3, 2, 2, 4, 4, 4, 4, 2, 2, 2, 2, 4, 4, 3, 3, 3, 3, 3, 3, 
          4, 4, 4, 4, 2, 2, 3, 3 ], 
      [ 2, 2, 3, 3, 4, 4, 2, 2, 3, 3, 0, 1, 2, 2, 3, 3, 4, 4, 4, 4, 4, 4, 2, 2, 2, 2, 4, 4, 4, 4, 
          3, 3, 2, 2, 3, 3, 3, 3 ], 
      [ 2, 2, 3, 3, 4, 4, 2, 2, 3, 3, 1, 0, 2, 2, 3, 3, 4, 4, 4, 4, 4, 4, 2, 2, 2, 2, 4, 4, 4, 4, 
          3, 3, 2, 2, 3, 3, 3, 3 ], 
      [ 2, 2, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 0, 1, 4, 4, 3, 3, 2, 2, 4, 4, 2, 2, 4, 4, 4, 4, 3, 3, 
          4, 4, 3, 3, 3, 3, 2, 2 ], 
      [ 2, 2, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 1, 0, 4, 4, 3, 3, 2, 2, 4, 4, 2, 2, 4, 4, 4, 4, 3, 3, 
          4, 4, 3, 3, 3, 3, 2, 2 ], 
      [ 3, 3, 2, 2, 2, 2, 4, 4, 4, 4, 3, 3, 4, 4, 0, 1, 3, 3, 4, 4, 3, 3, 2, 2, 4, 4, 2, 2, 2, 2, 
          4, 4, 2, 2, 3, 3, 3, 3 ], 
      [ 3, 3, 2, 2, 2, 2, 4, 4, 4, 4, 3, 3, 4, 4, 1, 0, 3, 3, 4, 4, 3, 3, 2, 2, 4, 4, 2, 2, 2, 2, 
          4, 4, 2, 2, 3, 3, 3, 3 ], 
      [ 3, 3, 2, 2, 4, 4, 2, 2, 4, 4, 4, 4, 3, 3, 3, 3, 0, 1, 2, 2, 4, 4, 4, 4, 3, 3, 2, 2, 3, 3, 
          2, 2, 4, 4, 3, 3, 2, 2 ], 
      [ 3, 3, 2, 2, 4, 4, 2, 2, 4, 4, 4, 4, 3, 3, 3, 3, 1, 0, 2, 2, 4, 4, 4, 4, 3, 3, 2, 2, 3, 3, 
          2, 2, 4, 4, 3, 3, 2, 2 ], 
      [ 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 4, 4, 2, 2, 4, 4, 2, 2, 0, 1, 3, 3, 3, 3, 4, 4, 2, 2, 4, 4, 
          3, 3, 3, 3, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 4, 4, 2, 2, 4, 4, 2, 2, 1, 0, 3, 3, 3, 3, 4, 4, 2, 2, 4, 4, 
          3, 3, 3, 3, 2, 2, 2, 2 ], 
      [ 3, 3, 4, 4, 2, 2, 3, 3, 2, 2, 4, 4, 4, 4, 3, 3, 4, 4, 3, 3, 0, 1, 4, 4, 2, 2, 4, 4, 2, 2, 
          2, 2, 3, 3, 2, 2, 3, 3 ], 
      [ 3, 3, 4, 4, 2, 2, 3, 3, 2, 2, 4, 4, 4, 4, 3, 3, 4, 4, 3, 3, 1, 0, 4, 4, 2, 2, 4, 4, 2, 2, 
          2, 2, 3, 3, 2, 2, 3, 3 ], 
      [ 3, 3, 4, 4, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 2, 2, 4, 4, 3, 3, 4, 4, 0, 1, 3, 3, 3, 3, 2, 2, 
          3, 3, 2, 2, 4, 4, 2, 2 ], 
      [ 3, 3, 4, 4, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 2, 2, 4, 4, 3, 3, 4, 4, 1, 0, 3, 3, 3, 3, 2, 2, 
          3, 3, 2, 2, 4, 4, 2, 2 ], 
      [ 3, 3, 4, 4, 4, 4, 2, 2, 3, 3, 2, 2, 4, 4, 4, 4, 3, 3, 4, 4, 2, 2, 3, 3, 0, 1, 3, 3, 3, 3, 
          2, 2, 2, 2, 2, 2, 4, 4 ], 
      [ 3, 3, 4, 4, 4, 4, 2, 2, 3, 3, 2, 2, 4, 4, 4, 4, 3, 3, 4, 4, 2, 2, 3, 3, 1, 0, 3, 3, 3, 3, 
          2, 2, 2, 2, 2, 2, 4, 4 ], 
      [ 4, 4, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 2, 2, 4, 4, 3, 3, 3, 3, 0, 1, 4, 4, 
          4, 4, 2, 2, 2, 2, 3, 3 ], 
      [ 4, 4, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2, 2, 2, 2, 2, 4, 4, 3, 3, 3, 3, 1, 0, 4, 4, 
          4, 4, 2, 2, 2, 2, 3, 3 ], 
      [ 4, 4, 3, 3, 2, 2, 4, 4, 3, 3, 4, 4, 3, 3, 2, 2, 3, 3, 4, 4, 2, 2, 2, 2, 3, 3, 4, 4, 0, 1, 
          2, 2, 3, 3, 4, 4, 2, 2 ], 
      [ 4, 4, 3, 3, 2, 2, 4, 4, 3, 3, 4, 4, 3, 3, 2, 2, 3, 3, 4, 4, 2, 2, 2, 2, 3, 3, 4, 4, 1, 0, 
          2, 2, 3, 3, 4, 4, 2, 2 ], 
      [ 4, 4, 3, 3, 3, 3, 2, 2, 4, 4, 3, 3, 4, 4, 4, 4, 2, 2, 3, 3, 2, 2, 3, 3, 2, 2, 4, 4, 2, 2, 
          0, 1, 4, 4, 3, 3, 2, 2 ], 
      [ 4, 4, 3, 3, 3, 3, 2, 2, 4, 4, 3, 3, 4, 4, 4, 4, 2, 2, 3, 3, 2, 2, 3, 3, 2, 2, 4, 4, 2, 2, 
          1, 0, 4, 4, 3, 3, 2, 2 ], 
      [ 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 2, 2, 3, 3, 2, 2, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 3, 3, 
          4, 4, 0, 1, 2, 2, 4, 4 ], 
      [ 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 2, 2, 3, 3, 2, 2, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 3, 3, 
          4, 4, 1, 0, 2, 2, 4, 4 ], 
      [ 4, 4, 4, 4, 3, 3, 4, 4, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 
          3, 3, 2, 2, 0, 1, 4, 4 ], 
      [ 4, 4, 4, 4, 3, 3, 4, 4, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 
          3, 3, 2, 2, 1, 0, 4, 4 ], 
      [ 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 3, 3, 2, 2, 2, 2, 3, 3, 2, 2, 4, 4, 3, 3, 2, 2, 
          2, 2, 4, 4, 4, 4, 0, 1 ], 
      [ 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 3, 3, 2, 2, 2, 2, 3, 3, 2, 2, 4, 4, 3, 3, 2, 2, 
          2, 2, 4, 4, 4, 4, 1, 0 ] ] )