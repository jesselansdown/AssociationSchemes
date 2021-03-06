rec(
  CharacterTable := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, -1, 2, -2, 2, -2, 2, -2, 2, 2, 2, 2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, -1, 1, 2, -2, 2, -2, -1, -1, -1, -1, 1, 1, 1, 1, 2 ], [ 1, -1, 2, -2, E(5)^2+E(5)^3, -E(5)^2-E(5)^3, E(5)+E(5)^4, -E(5)-E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, 
          -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, -E(5)-E(5)^4, -E(5)-E(5)^4, 2 ], [ 1, -1, 2, -2, E(5)+E(5)^4, -E(5)-E(5)^4, E(5)^2+E(5)^3, -E(5)^2-E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, 
          E(5)^2+E(5)^3, -E(5)-E(5)^4, -E(5)-E(5)^4, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, 2 ], [ 1, 1, -1, -1, 2, 2, 2, 2, -1, -1, -1, -1, -1, -1, -1, -1, 2 ], 
      [ 1, 1, 2, 2, E(5)^2+E(5)^3, E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, 2 ], 
      [ 1, 1, 2, 2, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, 2 ], 
      [ 2, 0, -2, 0, 2*E(5)^2+2*E(5)^3, 0, 2*E(5)+2*E(5)^4, 0, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, -E(5)-E(5)^4, -E(5)-E(5)^4, 0, 0, 0, 0, 4 ], 
      [ 2, 0, -2, 0, 2*E(5)+2*E(5)^4, 0, 2*E(5)^2+2*E(5)^3, 0, -E(5)-E(5)^4, -E(5)-E(5)^4, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15 ], [ 1, 
          0, 3, 3, 2, 2, 5, 5, 4, 4, 7, 7, 6, 6, 12, 12, 13, 13, 14, 14, 15, 15, 8, 8, 9, 9, 10, 10, 11, 11 ], [ 2, 3, 0, 2, 1, 3, 8, 9, 12, 13, 10, 11, 14, 15, 4, 9, 4, 8, 6, 11, 6, 10, 5, 13, 
          5, 12, 7, 15, 7, 14 ], [ 2, 3, 2, 0, 3, 1, 9, 8, 13, 12, 11, 10, 15, 14, 9, 4, 8, 4, 11, 6, 10, 6, 13, 5, 12, 5, 15, 7, 14, 7 ], 
      [ 3, 2, 1, 3, 0, 2, 12, 13, 8, 9, 14, 15, 10, 11, 5, 13, 5, 12, 7, 15, 7, 14, 4, 9, 4, 8, 6, 11, 6, 10 ], [ 3, 2, 3, 1, 2, 0, 13, 12, 9, 8, 15, 14, 11, 10, 13, 5, 12, 5, 15, 7, 
          14, 7, 9, 4, 8, 4, 11, 6, 10, 6 ], [ 4, 5, 8, 9, 13, 12, 0, 6, 7, 1, 4, 6, 7, 5, 10, 2, 2, 11, 11, 8, 9, 10, 3, 14, 15, 3, 12, 15, 14, 13 ], 
      [ 4, 5, 9, 8, 12, 13, 6, 0, 1, 7, 6, 4, 5, 7, 2, 10, 11, 2, 8, 11, 10, 9, 14, 3, 3, 15, 15, 12, 13, 14 ], [ 5, 4, 13, 12, 8, 9, 7, 1, 0, 6, 7, 5, 4, 6, 3, 14, 15, 3, 
          12, 15, 14, 13, 10, 2, 2, 11, 11, 8, 9, 10 ], [ 5, 4, 12, 13, 9, 8, 1, 7, 6, 0, 5, 7, 6, 4, 14, 3, 3, 15, 15, 12, 13, 14, 2, 10, 11, 2, 8, 11, 10, 9 ], 
      [ 6, 7, 10, 11, 15, 14, 4, 6, 7, 5, 0, 4, 5, 1, 11, 9, 8, 10, 9, 2, 2, 8, 13, 15, 14, 12, 3, 13, 12, 3 ], [ 6, 7, 11, 10, 14, 15, 6, 4, 5, 7, 4, 0, 1, 5, 
          9, 11, 10, 8, 2, 9, 8, 2, 15, 13, 12, 14, 13, 3, 3, 12 ], [ 7, 6, 15, 14, 10, 11, 7, 5, 4, 6, 5, 1, 0, 4, 13, 15, 14, 12, 3, 13, 12, 3, 11, 9, 8, 10, 9, 2, 2, 8 ], 
      [ 7, 6, 14, 15, 11, 10, 5, 7, 6, 4, 1, 5, 4, 0, 15, 13, 12, 14, 13, 3, 3, 12, 9, 11, 10, 8, 2, 9, 8, 2 ], [ 8, 13, 4, 9, 5, 12, 10, 2, 3, 15, 
          11, 9, 12, 14, 0, 11, 6, 2, 4, 10, 6, 8, 7, 3, 1, 14, 7, 13, 5, 15 ], [ 8, 13, 9, 4, 12, 5, 2, 10, 15, 3, 9, 11, 14, 12, 11, 0, 2, 6, 10, 4, 8, 6, 3, 7, 14, 1, 13, 7, 15, 5 ], 
      [ 9, 12, 4, 8, 5, 13, 2, 11, 14, 3, 8, 10, 15, 13, 6, 2, 0, 10, 6, 9, 4, 11, 1, 15, 7, 3, 5, 14, 7, 12 ], [ 9, 12, 8, 4, 13, 5, 11, 
          2, 3, 14, 10, 8, 13, 15, 2, 6, 10, 0, 9, 6, 11, 4, 15, 1, 3, 7, 14, 5, 12, 7 ], [ 10, 15, 6, 11, 7, 14, 11, 8, 13, 14, 9, 2, 3, 12, 4, 10, 6, 9, 0, 8, 4, 2, 7, 12, 5, 15, 5, 3, 1, 13 ], 
      [ 10, 15, 11, 6, 14, 7, 8, 11, 14, 13, 2, 9, 12, 3, 10, 4, 9, 6, 8, 0, 2, 4, 12, 7, 15, 5, 3, 5, 13, 1 ], [ 11, 14, 6, 
          10, 7, 15, 9, 10, 15, 12, 2, 8, 13, 3, 6, 8, 4, 11, 4, 2, 0, 9, 5, 14, 7, 13, 1, 12, 5, 3 ], [ 11, 14, 10, 6, 15, 7, 10, 9, 12, 15, 8, 2, 3, 13, 8, 6, 11, 4, 2, 4, 9, 0, 14, 5, 13, 7, 12, 1, 
          3, 5 ], [ 13, 8, 5, 12, 4, 9, 3, 15, 10, 2, 12, 14, 11, 9, 7, 3, 1, 14, 7, 13, 5, 15, 0, 11, 6, 2, 4, 10, 6, 8 ], 
      [ 13, 8, 12, 5, 9, 4, 15, 3, 2, 10, 14, 12, 9, 11, 3, 7, 14, 1, 13, 7, 15, 5, 11, 0, 2, 6, 10, 4, 8, 6 ], [ 12, 9, 5, 13, 4, 8, 14, 3, 2, 11, 15, 13, 8, 10, 1, 15, 7, 3, 5, 14, 7, 12, 6, 2, 
          0, 10, 6, 9, 4, 11 ], [ 12, 9, 13, 5, 8, 4, 3, 14, 11, 2, 13, 15, 10, 8, 15, 1, 3, 7, 14, 5, 12, 7, 2, 6, 10, 0, 9, 6, 11, 4 ], 
      [ 15, 10, 7, 14, 6, 11, 13, 14, 11, 8, 3, 12, 9, 2, 7, 12, 5, 15, 5, 3, 1, 13, 4, 10, 6, 9, 0, 8, 4, 2 ], [ 15, 10, 14, 7, 11, 6, 14, 13, 8, 11, 12, 3, 2, 9, 12, 7, 15, 5, 3, 5, 
          13, 1, 10, 4, 9, 6, 8, 0, 2, 4 ], [ 14, 11, 7, 15, 6, 10, 15, 12, 9, 10, 13, 3, 2, 8, 5, 14, 7, 13, 1, 12, 5, 3, 6, 8, 4, 11, 4, 2, 0, 9 ], 
      [ 14, 11, 15, 7, 10, 6, 12, 15, 10, 9, 3, 13, 8, 2, 14, 5, 13, 7, 12, 1, 3, 5, 8, 6, 11, 4, 2, 4, 9, 0 ] ],
  SmallSchemeIdentification := 225 )