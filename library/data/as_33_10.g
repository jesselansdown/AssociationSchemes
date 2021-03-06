rec(
  CharacterTable := [ [ 1, 2, 10, 10, 10, 1 ], [ 1, -1, 10, -5, -5, 2 ], [ 1, -1, -1, E(33)^5+E(33)^7+E(33)^10+E(33)^13+E(33)^14+E(33)^19+E(33)^20+E(33)^23+E(33)^26+E(33)^28, 
          E(33)+E(33)^2+E(33)^4+E(33)^8+E(33)^16+E(33)^17+E(33)^25+E(33)^29+E(33)^31+E(33)^32, 10 ], [ 1, -1, -1, E(33)+E(33)^2+E(33)^4+E(33)^8+E(33)^16+E(33)^17+E(33)^25+E(33)^29+E(33)^31+E(33)^32, 
          E(33)^5+E(33)^7+E(33)^10+E(33)^13+E(33)^14+E(33)^19+E(33)^20+E(33)^23+E(33)^26+E(33)^28, 10 ], [ 1, 2, -1, -1, -1, 10 ] ],
  RelationMatrix := [ [ 0, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 1, 0, 1, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3 ], [ 1, 1, 0, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 2, 2, 2, 2, 2, 3, 
          3, 3, 3, 3, 2, 2, 2, 2, 2 ], [ 2, 3, 4, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 4, 4, 4, 1, 3, 3, 4, 4, 1, 3, 3, 4, 4, 3, 3, 3, 4, 4 ], 
      [ 2, 3, 4, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 3, 4, 3, 4, 4, 3, 4, 4, 1, 3, 4, 1, 4, 3, 3, 3, 3, 4, 3, 4 ], [ 2, 3, 4, 2, 2, 0, 2, 2, 2, 2, 2, 2, 2, 4, 3, 4, 3, 4, 4, 
          1, 4, 3, 3, 3, 4, 4, 1, 3, 3, 4, 3, 4, 3 ], [ 2, 3, 4, 2, 2, 2, 0, 2, 2, 2, 2, 2, 2, 4, 4, 3, 4, 3, 4, 3, 1, 3, 4, 3, 4, 3, 4, 1, 4, 3, 4, 3, 3 ], 
      [ 2, 3, 4, 2, 2, 2, 2, 0, 2, 2, 2, 2, 2, 4, 4, 4, 3, 3, 3, 4, 3, 4, 1, 4, 3, 1, 3, 4, 4, 4, 3, 3, 3 ], [ 2, 4, 3, 2, 2, 2, 2, 2, 0, 2, 2, 2, 2, 1, 
          3, 4, 4, 3, 3, 4, 4, 3, 4, 4, 4, 3, 3, 3, 4, 3, 3, 4, 1 ], [ 2, 4, 3, 2, 2, 2, 2, 2, 2, 0, 2, 2, 2, 3, 4, 1, 3, 4, 4, 4, 3, 3, 4, 3, 4, 3, 3, 4, 3, 4, 1, 3, 4 ], 
      [ 2, 4, 3, 2, 2, 2, 2, 2, 2, 2, 0, 2, 2, 3, 4, 4, 1, 3, 4, 3, 4, 4, 3, 3, 3, 4, 4, 3, 4, 1, 3, 3, 4 ], [ 2, 4, 3, 2, 2, 2, 2, 2, 2, 
          2, 2, 0, 2, 4, 1, 3, 3, 4, 3, 3, 4, 4, 4, 4, 3, 3, 4, 3, 3, 4, 4, 1, 3 ], [ 2, 4, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 3, 3, 4, 1, 4, 4, 3, 4, 3, 3, 3, 4, 3, 4, 1, 3, 4, 4, 3 ], 
      [ 3, 2, 4, 3, 3, 4, 4, 4, 1, 3, 3, 4, 4, 0, 2, 2, 2, 2, 4, 3, 3, 4, 3, 2, 2, 2, 2, 2, 3, 4, 4, 3, 1 ], [ 3, 2, 4, 3, 
          4, 3, 4, 4, 3, 4, 4, 1, 3, 2, 0, 2, 2, 2, 4, 4, 3, 3, 3, 2, 2, 2, 2, 2, 4, 3, 3, 1, 4 ], [ 3, 2, 4, 4, 3, 4, 3, 4, 4, 1, 4, 3, 3, 2, 2, 0, 2, 2, 3, 3, 4, 4, 3, 2, 2, 2, 2, 2, 4, 3, 1, 4, 3 ],
      [ 3, 2, 4, 4, 4, 3, 4, 3, 4, 3, 1, 3, 4, 2, 2, 2, 0, 2, 3, 4, 3, 3, 4, 2, 2, 2, 2, 2, 3, 1, 4, 4, 3 ], [ 3, 
          2, 4, 4, 4, 4, 3, 3, 3, 4, 3, 4, 1, 2, 2, 2, 2, 0, 3, 3, 4, 3, 4, 2, 2, 2, 2, 2, 1, 4, 3, 3, 4 ], [ 3, 4, 2, 1, 3, 4, 4, 3, 3, 4, 4, 3, 4, 4, 4, 3, 3, 3, 0, 2, 2, 2, 2, 1, 4, 4, 3, 3, 2, 2, 
          2, 2, 2 ], [ 3, 4, 2, 3, 4, 1, 3, 4, 4, 4, 3, 3, 4, 3, 4, 3, 4, 3, 2, 0, 2, 2, 2, 4, 3, 3, 1, 4, 2, 2, 2, 2, 2 ], 
      [ 3, 4, 2, 3, 4, 4, 1, 3, 4, 3, 4, 4, 3, 3, 3, 4, 3, 4, 2, 2, 0, 2, 2, 4, 3, 4, 3, 1, 2, 2, 2, 2, 2 ], [ 3, 4, 2, 4, 1, 3, 3, 4, 3, 3, 4, 4, 4, 4, 3, 4, 3, 3, 2, 2, 2, 0, 2, 3, 1, 
          3, 4, 4, 2, 2, 2, 2, 2 ], [ 3, 4, 2, 4, 3, 3, 4, 1, 4, 4, 3, 4, 3, 3, 3, 3, 4, 4, 2, 2, 2, 2, 0, 3, 4, 1, 4, 3, 2, 2, 2, 2, 2 ], 
      [ 4, 2, 3, 1, 4, 3, 3, 4, 4, 3, 3, 4, 3, 2, 2, 2, 2, 2, 1, 4, 4, 3, 3, 0, 2, 2, 2, 2, 4, 4, 4, 3, 3 ], [ 4, 2, 3, 3, 1, 4, 4, 3, 4, 4, 3, 3, 3, 2, 2, 2, 2, 2, 4, 3, 
          3, 1, 4, 2, 0, 2, 2, 2, 4, 4, 3, 4, 3 ], [ 4, 2, 3, 3, 4, 4, 3, 1, 3, 3, 4, 3, 4, 2, 2, 2, 2, 2, 4, 3, 4, 3, 1, 2, 2, 0, 2, 2, 3, 3, 4, 4, 4 ], 
      [ 4, 2, 3, 4, 3, 1, 4, 3, 3, 3, 4, 4, 3, 2, 2, 2, 2, 2, 3, 1, 3, 4, 4, 2, 2, 2, 0, 2, 4, 3, 4, 3, 4 ], [ 4, 2, 3, 4, 3, 3, 1, 4, 3, 4, 3, 3, 4, 2, 2, 
          2, 2, 2, 3, 4, 1, 4, 3, 2, 2, 2, 2, 0, 3, 4, 3, 4, 4 ], [ 4, 3, 2, 3, 3, 3, 4, 4, 4, 3, 4, 3, 1, 3, 4, 4, 3, 1, 2, 2, 2, 2, 2, 4, 4, 3, 4, 3, 0, 2, 2, 2, 2 ], 
      [ 4, 3, 2, 3, 3, 4, 3, 4, 3, 4, 1, 4, 3, 4, 3, 3, 1, 4, 2, 2, 2, 2, 2, 4, 4, 3, 3, 4, 2, 0, 2, 2, 2 ], [ 4, 3, 2, 3, 4, 3, 4, 3, 3, 1, 
          3, 4, 4, 4, 3, 1, 4, 3, 2, 2, 2, 2, 2, 4, 3, 4, 4, 3, 2, 2, 0, 2, 2 ], [ 4, 3, 2, 4, 3, 4, 3, 3, 4, 3, 3, 1, 4, 3, 1, 4, 4, 3, 2, 2, 2, 2, 2, 3, 4, 4, 3, 4, 2, 2, 2, 0, 2 ], 
      [ 4, 3, 2, 4, 4, 3, 3, 3, 1, 4, 4, 3, 3, 1, 4, 3, 3, 4, 2, 2, 2, 2, 2, 3, 3, 4, 4, 4, 2, 2, 2, 2, 0 ] ],
  SmallSchemeIdentification := 10 )