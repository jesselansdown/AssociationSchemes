rec(
  CharacterTable := [ [ 1, 15, 15, 1 ], [ 1, E(31)+E(31)^2+E(31)^4+E(31)^5+E(31)^7+E(31)^8+E(31)^9+E(31)^10+E(31)^14+E(31)^16+E(31)^18+E(31)^19+E(31)^20+E(31)^25+E(31)^28, 
          E(31)^3+E(31)^6+E(31)^11+E(31)^12+E(31)^13+E(31)^15+E(31)^17+E(31)^21+E(31)^22+E(31)^23+E(31)^24+E(31)^26+E(31)^27+E(31)^29+E(31)^30, 15 ], 
      [ 1, E(31)^3+E(31)^6+E(31)^11+E(31)^12+E(31)^13+E(31)^15+E(31)^17+E(31)^21+E(31)^22+E(31)^23+E(31)^24+E(31)^26+E(31)^27+E(31)^29+E(31)^30, E(31)+E(31)^2+E(31)^4+E(31)^5+E(31)^7+E(31)^8+E(31)^9
             +E(31)^10+E(31)^14+E(31)^16+E(31)^18+E(31)^19+E(31)^20+E(31)^25+E(31)^28, 15 ] ],
  RelationMatrix := [ [ 0, 1, 1, 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2, 1, 1, 2, 2, 1, 2, 2, 1, 1, 1, 1 ], [ 
          2, 0, 1, 2, 2, 2, 1, 2, 2, 2, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 2, 1, 2, 2, 1, 2, 2, 1 ], [ 2, 2, 0, 1, 2, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1 ],
      [ 1, 1, 2, 0, 1, 2, 1, 2, 2, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 2, 2, 1, 1 ], [ 2, 1, 1, 2, 0, 1, 2, 1, 2, 2, 1, 1, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2, 2, 1, 2, 1, 1, 1, 2, 2, 2 ], 
      [ 1, 1, 2, 1, 2, 0, 2, 2, 1, 2, 2, 1, 1, 1, 1, 2, 2, 1, 2, 2, 1, 2, 1, 2, 2, 1, 2, 1, 1, 2, 1 ], [ 2, 2, 2, 2, 1, 1, 0, 1, 2, 1, 1, 2, 2, 2, 1, 2, 2, 1, 2, 2, 2, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1 ], 
      [ 1, 1, 2, 1, 2, 1, 2, 0, 1, 2, 1, 2, 1, 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 1, 1, 2, 1, 1 ], [ 1, 1, 2, 1, 1, 2, 1, 2, 0, 2, 1, 2, 2, 1, 2, 2, 1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 1, 2, 1, 2, 2 ], 
      [ 2, 1, 1, 1, 1, 1, 2, 1, 1, 0, 2, 1, 2, 2, 1, 1, 1, 1, 2, 2, 2, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2 ], [ 1, 2, 1, 1, 2, 1, 2, 2, 2, 1, 0, 1, 2, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 2, 1, 1, 1, 2, 2, 2, 2 ], 
      [ 2, 2, 1, 2, 2, 2, 1, 1, 1, 2, 2, 0, 1, 1, 2, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1 ], [ 1, 2, 1, 1, 1, 2, 1, 2, 1, 1, 1, 2, 0, 2, 1, 1, 2, 2, 2, 2, 1, 2, 2, 1, 1, 1, 2, 1, 2, 2, 2 ], 
      [ 2, 1, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 0, 2, 2, 1, 1, 2, 1, 1, 1, 2, 2, 1, 1, 1, 1, 2, 2, 2 ], [ 1, 2, 2, 2, 1, 2, 2, 1, 1, 2, 2, 1, 2, 1, 0, 1, 1, 2, 2, 1, 1, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2 ], 
      [ 1, 2, 1, 2, 2, 1, 1, 2, 1, 2, 1, 2, 2, 1, 2, 0, 1, 1, 2, 1, 2, 1, 2, 2, 2, 1, 2, 1, 1, 1, 2 ], [ 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 2, 0, 2, 2, 1, 1, 2, 2, 2, 2, 2, 1, 2, 1, 2, 1 ], 
      [ 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1, 1, 1, 2, 1, 2, 1, 0, 1, 2, 1, 1, 2, 1, 1, 1, 2, 2, 1, 1, 2 ], [ 2, 2, 2, 1, 2, 1, 1, 2, 2, 1, 2, 1, 1, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 1, 2, 2, 1, 1, 1, 1, 2 ], 
      [ 1, 2, 2, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 1, 1, 0, 2, 1, 1, 1, 2, 2, 2, 1, 2, 2, 2 ], [ 2, 1, 2, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 2, 2, 1, 2, 2, 1, 1, 0, 2, 1, 2, 2, 1, 2, 2, 1, 1, 2 ], 
      [ 2, 1, 1, 2, 1, 1, 1, 2, 1, 2, 2, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 0, 1, 2, 2, 1, 1, 2, 2, 1, 2 ], [ 1, 2, 1, 1, 1, 2, 2, 1, 2, 1, 2, 2, 1, 1, 2, 1, 1, 1, 1, 2, 2, 2, 0, 2, 2, 1, 2, 2, 2, 1, 1 ], 
      [ 1, 1, 2, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2, 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 0, 2, 2, 2, 2, 2, 2, 1 ], [ 2, 2, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 1, 1, 1, 1, 1, 1, 0, 1, 2, 1, 1, 2, 1 ], 
      [ 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 2, 1, 2, 1, 2, 1, 1, 2, 2, 2, 1, 2, 0, 1, 1, 1, 2, 1 ], [ 1, 1, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 1, 2, 1, 1, 2, 1, 1, 1, 2, 0, 2, 1, 1, 2 ], 
      [ 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 1, 1, 2, 2, 1, 0, 2, 1, 1 ], [ 2, 1, 1, 1, 1, 2, 2, 1, 2, 2, 1, 2, 1, 1, 1, 2, 2, 2, 2, 1, 2, 1, 1, 1, 2, 2, 2, 1, 0, 1, 2 ], 
      [ 2, 1, 2, 2, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 2, 2, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2, 0, 1 ], [ 2, 2, 2, 2, 1, 2, 2, 2, 1, 1, 1, 2, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 2, 2, 1, 2, 1, 2, 0 ] ],
  SmallSchemeIdentification := 66937 )