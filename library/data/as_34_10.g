rec(
  CharacterTable := [ [ 1, 4, 4, 4, 4, 17, 1 ], [ 1, 4, 4, 4, 4, -17, 1 ], [ 1, E(17)^6+E(17)^7+E(17)^10+E(17)^11, E(17)+E(17)^4+E(17)^13+E(17)^16, E(17)^3+E(17)^5+E(17)^12+E(17)^14, 
          E(17)^2+E(17)^8+E(17)^9+E(17)^15, 0, 8 ], [ 1, E(17)^3+E(17)^5+E(17)^12+E(17)^14, E(17)^2+E(17)^8+E(17)^9+E(17)^15, E(17)^6+E(17)^7+E(17)^10+E(17)^11, E(17)+E(17)^4+E(17)^13+E(17)^16, 0, 8 ],
      [ 1, E(17)^2+E(17)^8+E(17)^9+E(17)^15, E(17)^6+E(17)^7+E(17)^10+E(17)^11, E(17)+E(17)^4+E(17)^13+E(17)^16, E(17)^3+E(17)^5+E(17)^12+E(17)^14, 0, 8 ], 
      [ 1, E(17)+E(17)^4+E(17)^13+E(17)^16, E(17)^3+E(17)^5+E(17)^12+E(17)^14, E(17)^2+E(17)^8+E(17)^9+E(17)^15, E(17)^6+E(17)^7+E(17)^10+E(17)^11, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 1, 0, 2, 2, 3, 1, 1, 3, 4, 1, 2, 3, 4, 2, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], [ 1, 2, 0, 3, 2, 1, 3, 4, 1, 4, 3, 1, 2, 4, 2, 3, 4, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], [ 1, 2, 3, 0, 2, 4, 1, 1, 3, 3, 4, 2, 1, 3, 4, 4, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 1, 3, 2, 2, 0, 3, 4, 1, 1, 2, 1, 4, 3, 4, 4, 2, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], [ 2, 1, 1, 4, 3, 0, 3, 4, 3, 2, 1, 2, 4, 3, 
          1, 2, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], [ 2, 1, 3, 1, 4, 3, 0, 3, 4, 2, 4, 1, 2, 1, 2, 4, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 2, 3, 4, 1, 1, 4, 3, 0, 3, 1, 2, 4, 2, 2, 4, 3, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], [ 2, 4, 1, 3, 1, 3, 
          4, 3, 0, 4, 2, 2, 1, 4, 3, 1, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], [ 3, 1, 4, 3, 2, 2, 2, 1, 4, 0, 1, 4, 4, 1, 3, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
      [ 3, 2, 3, 4, 1, 1, 4, 2, 2, 1, 0, 4, 4, 3, 2, 1, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 3, 3, 1, 2, 4, 2, 1, 4, 2, 4, 4, 0, 1, 2, 1, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], [ 3, 4, 2, 1, 3, 4, 2, 2, 1, 4, 4, 1, 0, 3, 3, 2, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5 ], [ 4, 2, 4, 3, 4, 3, 1, 2, 4, 1, 3, 2, 3, 0, 1, 2, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 4, 3, 2, 4, 4, 1, 2, 4, 3, 3, 2, 1, 3, 1, 0, 1, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], [ 4, 4, 3, 4, 2, 2, 4, 3, 1, 3, 1, 3, 2, 2, 1, 0, 1, 5, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], [ 4, 4, 4, 2, 3, 4, 3, 1, 2, 2, 3, 3, 1, 1, 2, 1, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 1, 0, 2, 2, 3, 1, 1, 3, 4, 1, 2, 3, 4, 2, 3, 4, 4 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 2, 0, 3, 2, 1, 3, 4, 1, 4, 3, 1, 2, 4, 2, 3, 4 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 2, 3, 0, 2, 4, 1, 1, 3, 3, 4, 2, 1, 3, 4, 4, 2 ], [ 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 3, 2, 2, 0, 3, 4, 1, 1, 2, 1, 4, 3, 4, 4, 2, 3 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 1, 1, 4, 3, 0, 3, 4, 3, 2, 1, 
          2, 4, 3, 1, 2, 4 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 1, 3, 1, 4, 3, 0, 3, 4, 2, 4, 1, 2, 1, 2, 4, 3 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 3, 4, 1, 1, 4, 3, 0, 3, 1, 2, 4, 2, 2, 4, 3, 1 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 4, 1, 
          3, 1, 3, 4, 3, 0, 4, 2, 2, 1, 4, 3, 1, 2 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 1, 4, 3, 2, 2, 2, 1, 4, 0, 1, 4, 4, 1, 3, 3, 2 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 2, 3, 4, 1, 1, 4, 2, 2, 1, 0, 4, 4, 3, 2, 1, 3 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 3, 3, 1, 2, 4, 2, 1, 4, 2, 4, 4, 0, 1, 2, 1, 3, 3 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 4, 2, 1, 3, 4, 2, 2, 1, 4, 4, 1, 0, 3, 3, 2, 1 ], 
      [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 2, 4, 3, 4, 3, 1, 2, 4, 1, 3, 2, 3, 0, 1, 2, 1 ], [ 5, 5, 5, 5, 
          5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 3, 2, 4, 4, 1, 2, 4, 3, 3, 2, 1, 3, 1, 0, 1, 2 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 4, 2, 2, 4, 3, 1, 3, 1, 
          3, 2, 2, 1, 0, 1 ], [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 2, 3, 4, 3, 1, 2, 2, 3, 3, 1, 1, 2, 1, 0 ] ],
  SmallSchemeIdentification := 10 )