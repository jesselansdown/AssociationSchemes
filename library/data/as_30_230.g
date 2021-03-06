rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, -1, -1, -1, 1, 1, 2, -2, 2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 1 ], 
      [ 2, 0, 0, 0, -1, -1, 4, 0, 4, 0, 0, 0, 0, 0, -2, -2, -2, -2, 2 ], [ 1, -1, -1, -1, 1, 1, E(5)^2+E(5)^3, -E(5)^2-E(5)^3, E(5)+E(5)^4, -E(5)-E(5)^4, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, -E(5)-E(5)^4, 
          -E(5)-E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, 2 ], [ 1, -1, -1, -1, 1, 1, E(5)+E(5)^4, -E(5)-E(5)^4, E(5)^2+E(5)^3, -E(5)^2-E(5)^3, -E(5)-E(5)^4, -E(5)-E(5)^4, 
          -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, 2 ], [ 1, 1, 1, 1, 1, 1, E(5)^2+E(5)^3, E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, 
          E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, 2 ], [ 1, 1, 1, 1, 1, 1, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, 
          E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, E(5)+E(5)^4, E(5)+E(5)^4, E(5)^2+E(5)^3, E(5)^2+E(5)^3, 2 ], 
      [ 2, 0, 0, 0, -1, -1, 2*E(5)^2+2*E(5)^3, 0, 2*E(5)+2*E(5)^4, 0, 0, 0, 0, 0, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, -E(5)-E(5)^4, -E(5)-E(5)^4, 4 ], 
      [ 2, 0, 0, 0, -1, -1, 2*E(5)+2*E(5)^4, 0, 2*E(5)^2+2*E(5)^3, 0, 0, 0, 0, 0, -E(5)-E(5)^4, -E(5)-E(5)^4, -E(5)^2-E(5)^3, -E(5)^2-E(5)^3, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], [ 1, 
          0, 4, 5, 2, 3, 7, 7, 6, 6, 9, 9, 8, 8, 14, 14, 15, 15, 16, 16, 17, 17, 10, 10, 11, 11, 12, 12, 13, 13 ], [ 2, 5, 0, 4, 3, 1, 10, 10, 15, 15, 12, 12, 17, 17, 6, 6, 14, 14, 8, 8, 16, 16, 11, 
          11, 7, 7, 13, 13, 9, 9 ], [ 3, 4, 5, 0, 1, 2, 11, 11, 14, 14, 13, 13, 16, 16, 15, 15, 6, 6, 17, 17, 8, 8, 7, 7, 10, 10, 9, 9, 12, 12 ], 
      [ 5, 2, 3, 1, 0, 4, 15, 15, 10, 10, 17, 17, 12, 12, 11, 11, 7, 7, 13, 13, 9, 9, 6, 6, 14, 14, 8, 8, 16, 16 ], 
      [ 4, 3, 1, 2, 5, 0, 14, 14, 11, 11, 16, 16, 13, 13, 7, 7, 10, 10, 9, 9, 12, 12, 15, 15, 6, 6, 17, 17, 8, 8 ], 
      [ 6, 7, 10, 11, 14, 15, 0, 8, 1, 9, 6, 8, 7, 9, 2, 12, 3, 13, 10, 12, 11, 13, 4, 16, 5, 17, 14, 16, 15, 17 ], [ 6, 7, 10, 11, 14, 15, 8, 0, 9, 1, 8, 6, 9, 7, 12, 2, 13, 3, 12, 10, 13, 11, 16, 4, 
          17, 5, 16, 14, 17, 15 ], [ 7, 6, 14, 15, 10, 11, 1, 9, 0, 8, 7, 9, 6, 8, 4, 16, 5, 17, 14, 16, 15, 17, 2, 12, 3, 13, 10, 12, 11, 13 ], 
      [ 7, 6, 14, 15, 10, 11, 9, 1, 8, 0, 9, 7, 8, 6, 16, 4, 17, 5, 16, 14, 17, 15, 12, 2, 13, 3, 12, 10, 13, 11 ], [ 8, 9, 12, 13, 16, 17, 6, 8, 7, 9, 0, 6, 1, 7, 10, 12, 11, 13, 2, 
          10, 3, 11, 14, 16, 15, 17, 4, 14, 5, 15 ], [ 8, 9, 12, 13, 16, 17, 8, 6, 9, 7, 6, 0, 7, 1, 12, 10, 13, 11, 10, 2, 11, 3, 16, 14, 17, 15, 14, 4, 15, 5 ], 
      [ 9, 8, 16, 17, 12, 13, 7, 9, 6, 8, 1, 7, 0, 6, 14, 16, 15, 17, 4, 14, 5, 15, 10, 12, 11, 13, 2, 10, 3, 11 ], [ 9, 8, 16, 17, 12, 13, 9, 7, 8, 6, 7, 1, 6, 
          0, 16, 14, 17, 15, 14, 4, 15, 5, 12, 10, 13, 11, 10, 2, 11, 3 ], [ 10, 15, 6, 14, 11, 7, 2, 12, 5, 17, 10, 12, 15, 17, 0, 8, 4, 16, 6, 8, 14, 16, 3, 13, 1, 9, 11, 13, 7, 9 ], 
      [ 10, 15, 6, 14, 11, 7, 12, 2, 17, 5, 12, 10, 17, 15, 8, 0, 16, 4, 8, 6, 16, 14, 13, 3, 9, 1, 13, 11, 9, 7 ], [ 11, 14, 15, 6, 7, 10, 
          3, 13, 4, 16, 11, 13, 14, 16, 5, 17, 0, 8, 15, 17, 6, 8, 1, 9, 2, 12, 7, 9, 10, 12 ], [ 11, 14, 15, 6, 7, 10, 13, 3, 16, 4, 13, 11, 16, 14, 17, 5, 8, 0, 17, 15, 8, 6, 9, 1, 12, 2, 
          9, 7, 12, 10 ], [ 12, 17, 8, 16, 13, 9, 10, 12, 15, 17, 2, 10, 5, 15, 6, 8, 14, 16, 0, 6, 4, 14, 11, 13, 7, 9, 3, 11, 1, 7 ], [ 12, 
          17, 8, 16, 13, 9, 12, 10, 17, 15, 10, 2, 15, 5, 8, 6, 16, 14, 6, 0, 14, 4, 13, 11, 9, 7, 11, 3, 7, 1 ], [ 13, 16, 17, 8, 9, 12, 11, 13, 14, 16, 3, 11, 4, 14, 15, 17, 6, 8, 5, 15, 
          0, 6, 7, 9, 10, 12, 1, 7, 2, 10 ], [ 13, 16, 17, 8, 9, 12, 13, 11, 16, 14, 11, 3, 14, 4, 17, 15, 8, 6, 15, 5, 6, 0, 9, 7, 12, 10, 7, 1, 10, 2 ], 
      [ 15, 10, 11, 7, 6, 14, 5, 17, 2, 12, 15, 17, 10, 12, 3, 13, 1, 9, 11, 13, 7, 9, 0, 8, 4, 16, 6, 8, 14, 16 ], 
      [ 15, 10, 11, 7, 6, 14, 17, 5, 12, 2, 17, 15, 12, 10, 13, 3, 9, 1, 13, 11, 9, 7, 8, 0, 16, 4, 8, 6, 16, 14 ], 
      [ 14, 11, 7, 10, 15, 6, 4, 16, 3, 13, 14, 16, 11, 13, 1, 9, 2, 12, 7, 9, 10, 12, 5, 17, 0, 8, 15, 17, 6, 8 ], [ 14, 11, 7, 10, 15, 6, 16, 4, 13, 3, 16, 14, 13, 11, 9, 1, 12, 2, 9, 7, 12, 10, 17, 
          5, 8, 0, 17, 15, 8, 6 ], [ 17, 12, 13, 9, 8, 16, 15, 17, 10, 12, 5, 15, 2, 10, 11, 13, 7, 9, 3, 11, 1, 7, 6, 8, 14, 16, 0, 6, 4, 14 ], 
      [ 17, 12, 13, 9, 8, 16, 17, 15, 12, 10, 15, 5, 10, 2, 13, 11, 9, 7, 11, 3, 7, 1, 8, 6, 16, 14, 6, 0, 14, 4 ], [ 16, 13, 9, 12, 17, 8, 14, 16, 11, 13, 4, 14, 3, 11, 7, 9, 10, 
          12, 1, 7, 2, 10, 15, 17, 6, 8, 5, 15, 0, 6 ], [ 16, 13, 9, 12, 17, 8, 16, 14, 13, 11, 14, 4, 11, 3, 9, 7, 12, 10, 7, 1, 10, 2, 17, 15, 8, 6, 15, 5, 6, 0 ] ],
  SmallSchemeIdentification := 230 )