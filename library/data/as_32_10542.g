rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 6, 6, 6, 6, 1 ], [ 1, 1, -1, -1, 2, -2, 6, 6, -6, -6, 1 ], [ 1, 1, -1, -1, 2, -2, -2, -2, 2, 2, 3 ], 
      [ 1, 1, 1, 1, 2, 2, -2, -2, -2, -2, 3 ], [ 1, -1, -1, 1, 0, 0, E(24)+E(24)^11-E(24)^17-E(24)^19, -E(24)-E(24)^11+E(24)^17+E(24)^19, -E(24)-E(24)^11+E(24)^17+E(24)^19, 
          E(24)+E(24)^11-E(24)^17-E(24)^19, 4 ], [ 1, -1, -1, 1, 0, 0, -E(24)-E(24)^11+E(24)^17+E(24)^19, E(24)+E(24)^11-E(24)^17-E(24)^19, E(24)+E(24)^11-E(24)^17-E(24)^19, 
          -E(24)-E(24)^11+E(24)^17+E(24)^19, 4 ], [ 1, -1, 1, -1, 0, 0, E(24)+E(24)^11-E(24)^17-E(24)^19, -E(24)-E(24)^11+E(24)^17+E(24)^19, E(24)+E(24)^11-E(24)^17-E(24)^19, 
          -E(24)-E(24)^11+E(24)^17+E(24)^19, 4 ], [ 1, -1, 1, -1, 0, 0, -E(24)-E(24)^11+E(24)^17+E(24)^19, E(24)+E(24)^11-E(24)^17-E(24)^19, -E(24)-E(24)^11+E(24)^17+E(24)^19, 
          E(24)+E(24)^11-E(24)^17-E(24)^19, 4 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 4 ], [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8 ], [ 2, 3, 0, 1, 5, 5, 4, 4, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 6, 6, 6, 6, 6, 6, 
          7, 7, 7, 7, 7, 7 ], [ 3, 2, 1, 0, 5, 5, 4, 4, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 6, 6, 7, 7, 7, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 8, 8, 8, 9, 9, 9 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 7, 6, 6, 6, 7, 7, 7, 6, 6, 6, 9, 9, 9, 8, 
          8, 8, 9, 9, 9, 8, 8, 8 ], [ 5, 5, 4, 4, 2, 3, 0, 1, 8, 8, 8, 9, 9, 9, 8, 8, 8, 9, 9, 9, 6, 6, 6, 7, 7, 7, 6, 6, 6, 7, 7, 7 ], 
      [ 5, 5, 4, 4, 3, 2, 1, 0, 9, 9, 9, 8, 8, 8, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 7, 7, 7, 6, 6, 6 ], [ 7, 6, 9, 8, 7, 6, 9, 8, 0, 6, 7, 4, 6, 7, 4, 6, 7, 1, 6, 7, 2, 8, 
          9, 5, 8, 9, 5, 8, 9, 3, 8, 9 ], [ 7, 6, 9, 8, 7, 6, 9, 8, 7, 0, 6, 6, 7, 4, 7, 4, 6, 6, 7, 1, 9, 2, 8, 8, 9, 5, 9, 5, 8, 8, 9, 3 ], 
      [ 7, 6, 9, 8, 7, 6, 9, 8, 6, 7, 0, 7, 4, 6, 6, 7, 4, 7, 1, 6, 8, 9, 2, 9, 5, 8, 8, 9, 5, 9, 3, 8 ], [ 7, 6, 9, 8, 6, 7, 8, 9, 4, 7, 6, 0, 6, 7, 1, 6, 7, 4, 7, 6, 
          5, 9, 8, 2, 8, 9, 3, 8, 9, 5, 9, 8 ], [ 7, 6, 9, 8, 6, 7, 8, 9, 7, 6, 4, 7, 0, 6, 6, 7, 1, 6, 4, 7, 9, 8, 5, 9, 2, 8, 8, 9, 3, 8, 5, 9 ], 
      [ 7, 6, 9, 8, 6, 7, 8, 9, 6, 4, 7, 6, 7, 0, 7, 1, 6, 7, 6, 4, 8, 5, 9, 8, 9, 2, 9, 3, 8, 9, 8, 5 ], [ 6, 7, 8, 9, 7, 6, 9, 8, 4, 6, 7, 1, 7, 6, 0, 7, 6, 4, 
          6, 7, 5, 8, 9, 3, 9, 8, 2, 9, 8, 5, 8, 9 ], [ 6, 7, 8, 9, 7, 6, 9, 8, 7, 4, 6, 7, 6, 1, 6, 0, 7, 6, 7, 4, 9, 5, 8, 9, 8, 3, 8, 2, 9, 8, 9, 5 ], 
      [ 6, 7, 8, 9, 7, 6, 9, 8, 6, 7, 4, 6, 1, 7, 7, 6, 0, 7, 4, 6, 8, 9, 5, 8, 3, 9, 9, 8, 2, 9, 5, 8 ], [ 6, 7, 8, 9, 6, 7, 8, 9, 1, 7, 6, 4, 7, 6, 4, 7, 
          6, 0, 7, 6, 3, 9, 8, 5, 9, 8, 5, 9, 8, 2, 9, 8 ], [ 6, 7, 8, 9, 6, 7, 8, 9, 7, 6, 1, 6, 4, 7, 7, 6, 4, 6, 0, 7, 9, 8, 3, 8, 5, 9, 9, 8, 5, 8, 2, 9 ], 
      [ 6, 7, 8, 9, 6, 7, 8, 9, 6, 1, 7, 7, 6, 4, 6, 4, 7, 7, 6, 0, 8, 3, 9, 9, 8, 5, 8, 5, 9, 9, 8, 2 ], [ 9, 8, 7, 6, 9, 8, 7, 6, 2, 8, 9, 5, 8, 9, 
          5, 8, 9, 3, 8, 9, 0, 6, 7, 4, 6, 7, 4, 6, 7, 1, 6, 7 ], [ 9, 8, 7, 6, 9, 8, 7, 6, 9, 2, 8, 8, 9, 5, 9, 5, 8, 8, 9, 3, 7, 0, 6, 6, 7, 4, 7, 4, 6, 6, 7, 1 ], 
      [ 9, 8, 7, 6, 9, 8, 7, 6, 8, 9, 2, 9, 5, 8, 8, 9, 5, 9, 3, 8, 6, 7, 0, 7, 4, 6, 6, 7, 4, 7, 1, 6 ], [ 9, 8, 7, 6, 8, 9, 6, 7, 5, 9, 8, 2, 
          8, 9, 3, 8, 9, 5, 9, 8, 4, 7, 6, 0, 6, 7, 1, 6, 7, 4, 7, 6 ], [ 9, 8, 7, 6, 8, 9, 6, 7, 9, 8, 5, 9, 2, 8, 8, 9, 3, 8, 5, 9, 7, 6, 4, 7, 0, 6, 6, 7, 1, 6, 4, 7 ], 
      [ 9, 8, 7, 6, 8, 9, 6, 7, 8, 5, 9, 8, 9, 2, 9, 3, 8, 9, 8, 5, 6, 4, 7, 6, 7, 0, 7, 1, 6, 7, 6, 4 ], [ 8, 9, 6, 7, 9, 8, 7, 6, 5, 8, 
          9, 3, 9, 8, 2, 9, 8, 5, 8, 9, 4, 6, 7, 1, 7, 6, 0, 7, 6, 4, 6, 7 ], [ 8, 9, 6, 7, 9, 8, 7, 6, 9, 5, 8, 9, 8, 3, 8, 2, 9, 8, 9, 5, 7, 4, 6, 7, 6, 1, 6, 0, 7, 6, 7, 4 ], 
      [ 8, 9, 6, 7, 9, 8, 7, 6, 8, 9, 5, 8, 3, 9, 9, 8, 2, 9, 5, 8, 6, 7, 4, 6, 1, 7, 7, 6, 0, 7, 4, 6 ], [ 8, 9, 6, 7, 8, 9, 6, 7, 
          3, 9, 8, 5, 9, 8, 5, 9, 8, 2, 9, 8, 1, 7, 6, 4, 7, 6, 4, 7, 6, 0, 7, 6 ], [ 8, 9, 6, 7, 8, 9, 6, 7, 9, 8, 3, 8, 5, 9, 9, 8, 5, 8, 2, 9, 7, 6, 1, 6, 4, 7, 7, 6, 4, 6, 0, 7 ], 
      [ 8, 9, 6, 7, 8, 9, 6, 7, 8, 3, 9, 9, 8, 5, 8, 5, 9, 9, 8, 2, 6, 1, 7, 7, 6, 4, 6, 4, 7, 7, 6, 0 ] ],
  SmallSchemeIdentification := 10542 )