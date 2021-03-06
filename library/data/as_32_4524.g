rec(
  CharacterTable := [ [ 1, 1, 2, 4, 6, 6, 12, 1 ], [ 1, 1, 2, -4, -6, -6, 12, 1 ], [ 1, 1, 2, -4, 2, 2, -4, 3 ], [ 1, 1, 2, 4, -2, -2, -4, 3 ], 
      [ 1, -1, 0, 0, E(24)+E(24)^11-E(24)^17-E(24)^19, -E(24)-E(24)^11+E(24)^17+E(24)^19, 0, 8 ], [ 1, -1, 0, 0, -E(24)-E(24)^11+E(24)^17+E(24)^19, E(24)+E(24)^11-E(24)^17-E(24)^19, 0, 8 ], 
      [ 1, 1, -2, 0, 0, 0, 0, 8 ] ],
  RelationMatrix := [ [ 0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 1, 0, 2, 2, 3, 3, 3, 3, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ], [ 2, 2, 0, 1, 3, 3, 3, 3, 4, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 
          6, 6, 6, 6, 6, 6 ], [ 2, 2, 1, 0, 3, 3, 3, 3, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 ], 
      [ 3, 3, 3, 3, 0, 1, 2, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 ], [ 3, 3, 3, 3, 1, 0, 2, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 
          5, 5, 4, 4, 4, 4, 4, 4 ], [ 3, 3, 3, 3, 2, 2, 0, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 5 ], 
      [ 3, 3, 3, 3, 2, 2, 1, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4 ], [ 5, 4, 5, 4, 6, 6, 6, 6, 0, 6, 6, 2, 6, 6, 2, 6, 6, 1, 6, 6, 3, 4, 
          5, 3, 4, 5, 3, 4, 5, 3, 4, 5 ], [ 5, 4, 5, 4, 6, 6, 6, 6, 6, 0, 6, 6, 2, 6, 6, 2, 6, 6, 1, 6, 4, 5, 3, 4, 5, 3, 5, 3, 4, 5, 3, 4 ], 
      [ 5, 4, 5, 4, 6, 6, 6, 6, 6, 6, 0, 6, 6, 2, 6, 6, 2, 6, 6, 1, 5, 3, 4, 5, 3, 4, 4, 5, 3, 4, 5, 3 ], [ 5, 4, 4, 5, 6, 6, 6, 6, 2, 6, 6, 0, 6, 6, 1, 6, 6, 2, 6, 6, 
          3, 4, 5, 3, 5, 4, 3, 5, 4, 3, 4, 5 ], [ 5, 4, 4, 5, 6, 6, 6, 6, 6, 2, 6, 6, 0, 6, 6, 1, 6, 6, 2, 6, 4, 5, 3, 5, 4, 3, 4, 3, 5, 5, 3, 4 ], 
      [ 5, 4, 4, 5, 6, 6, 6, 6, 6, 6, 2, 6, 6, 0, 6, 6, 1, 6, 6, 2, 5, 3, 4, 4, 3, 5, 5, 4, 3, 4, 5, 3 ], [ 4, 5, 5, 4, 6, 6, 6, 6, 2, 6, 6, 1, 6, 6, 0, 6, 6, 2, 
          6, 6, 3, 5, 4, 3, 4, 5, 3, 4, 5, 3, 5, 4 ], [ 4, 5, 5, 4, 6, 6, 6, 6, 6, 2, 6, 6, 1, 6, 6, 0, 6, 6, 2, 6, 5, 4, 3, 4, 5, 3, 5, 3, 4, 4, 3, 5 ], 
      [ 4, 5, 5, 4, 6, 6, 6, 6, 6, 6, 2, 6, 6, 1, 6, 6, 0, 6, 6, 2, 4, 3, 5, 5, 3, 4, 4, 5, 3, 5, 4, 3 ], [ 4, 5, 4, 5, 6, 6, 6, 6, 1, 6, 6, 2, 6, 6, 2, 6, 
          6, 0, 6, 6, 3, 5, 4, 3, 5, 4, 3, 5, 4, 3, 5, 4 ], [ 4, 5, 4, 5, 6, 6, 6, 6, 6, 1, 6, 6, 2, 6, 6, 2, 6, 6, 0, 6, 5, 4, 3, 5, 4, 3, 4, 3, 5, 4, 3, 5 ], 
      [ 4, 5, 4, 5, 6, 6, 6, 6, 6, 6, 1, 6, 6, 2, 6, 6, 2, 6, 6, 0, 4, 3, 5, 4, 3, 5, 5, 4, 3, 5, 4, 3 ], [ 6, 6, 6, 6, 5, 4, 5, 4, 3, 5, 4, 3, 5, 4, 
          3, 4, 5, 3, 4, 5, 0, 6, 6, 2, 6, 6, 2, 6, 6, 1, 6, 6 ], [ 6, 6, 6, 6, 5, 4, 5, 4, 5, 4, 3, 5, 4, 3, 4, 5, 3, 4, 5, 3, 6, 0, 6, 6, 2, 6, 6, 6, 2, 6, 6, 1 ], 
      [ 6, 6, 6, 6, 5, 4, 5, 4, 4, 3, 5, 4, 3, 5, 5, 3, 4, 5, 3, 4, 6, 6, 0, 6, 6, 2, 6, 2, 6, 6, 1, 6 ], [ 6, 6, 6, 6, 5, 4, 4, 5, 3, 5, 4, 3, 
          4, 5, 3, 5, 4, 3, 4, 5, 2, 6, 6, 0, 6, 6, 1, 6, 6, 2, 6, 6 ], [ 6, 6, 6, 6, 5, 4, 4, 5, 5, 4, 3, 4, 5, 3, 5, 4, 3, 4, 5, 3, 6, 2, 6, 6, 0, 6, 6, 6, 1, 6, 6, 2 ], 
      [ 6, 6, 6, 6, 5, 4, 4, 5, 4, 3, 5, 5, 3, 4, 4, 3, 5, 5, 3, 4, 6, 6, 2, 6, 6, 0, 6, 1, 6, 6, 2, 6 ], [ 6, 6, 6, 6, 4, 5, 5, 4, 3, 4, 
          5, 3, 5, 4, 3, 4, 5, 3, 5, 4, 2, 6, 6, 1, 6, 6, 0, 6, 6, 2, 6, 6 ], [ 6, 6, 6, 6, 4, 5, 5, 4, 5, 3, 4, 4, 3, 5, 5, 3, 4, 4, 3, 5, 6, 6, 2, 6, 6, 1, 6, 0, 6, 6, 2, 6 ], 
      [ 6, 6, 6, 6, 4, 5, 5, 4, 4, 5, 3, 5, 4, 3, 4, 5, 3, 5, 4, 3, 6, 2, 6, 6, 1, 6, 6, 6, 0, 6, 6, 2 ], [ 6, 6, 6, 6, 4, 5, 4, 5, 
          3, 4, 5, 3, 4, 5, 3, 5, 4, 3, 5, 4, 1, 6, 6, 2, 6, 6, 2, 6, 6, 0, 6, 6 ], [ 6, 6, 6, 6, 4, 5, 4, 5, 5, 3, 4, 5, 3, 4, 4, 3, 5, 4, 3, 5, 6, 6, 1, 6, 6, 2, 6, 2, 6, 6, 0, 6 ], 
      [ 6, 6, 6, 6, 4, 5, 4, 5, 4, 5, 3, 4, 5, 3, 5, 4, 3, 5, 4, 3, 6, 1, 6, 6, 2, 6, 6, 6, 2, 6, 6, 0 ] ],
  SmallSchemeIdentification := 4524 )