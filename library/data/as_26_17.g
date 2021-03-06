rec(
  CharacterTable := [ [ 1, 6, 6, 13, 1 ], [ 1, 6, 6, -13, 1 ], [ 1, E(13)^2+E(13)^5+E(13)^6+E(13)^7+E(13)^8+E(13)^11, E(13)+E(13)^3+E(13)^4+E(13)^9+E(13)^10+E(13)^12, 0, 12 ], 
      [ 1, E(13)+E(13)^3+E(13)^4+E(13)^9+E(13)^10+E(13)^12, E(13)^2+E(13)^5+E(13)^6+E(13)^7+E(13)^8+E(13)^11, 0, 12 ] ],
  RelationMatrix := [ [ 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 1, 0, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 1, 0, 2, 1, 2, 2, 1, 2, 2, 1, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 1, 1, 2, 0, 2, 1, 2, 2, 1, 2, 1, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 2, 1, 2, 0, 2, 1, 2, 1, 2, 2, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 1, 2, 2, 1, 2, 0, 1, 2, 2, 1, 1, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 2, 2, 2, 1, 1, 0, 1, 2, 1, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 2, 1, 1, 2, 2, 2, 1, 0, 2, 1, 1, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 1, 2, 1, 1, 2, 2, 2, 0, 1, 2, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 2, 1, 2, 2, 2, 1, 1, 1, 1, 0, 2, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 2, 1, 1, 2, 1, 2, 1, 2, 2, 0, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 2, 2, 1, 2, 1, 1, 2, 2, 1, 1, 1, 0, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 2, 2, 1, 1, 2, 1, 1, 1, 2, 1, 2, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 0, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2 ], [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 0, 2, 1, 2, 2, 1, 2, 2, 1, 1, 2 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 0, 2, 1, 2, 2, 1, 2, 1, 2, 1 ], [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 1, 2, 0, 2, 1, 2, 1, 2, 2, 1, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 1, 2, 0, 1, 2, 2, 1, 1, 1, 2 ], [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 2, 1, 1, 0, 1, 2, 1, 2, 2, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 1, 2, 2, 2, 1, 0, 2, 1, 1, 2, 1 ], [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 2, 1, 1, 2, 2, 2, 0, 1, 2, 1, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 2, 2, 2, 1, 1, 1, 1, 0, 2, 1, 2 ], [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 1, 1, 2, 1, 2, 1, 2, 2, 0, 1, 1 ], 
      [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 1, 2, 1, 1, 2, 2, 1, 1, 1, 0, 2 ], [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 1, 1, 2, 1, 1, 1, 2, 1, 2, 0 ] ],
  SmallSchemeIdentification := 17 )