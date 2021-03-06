rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)+E(7)^6, E(7)+E(7)^6, E(7)+E(7)^6, E(7)+E(7)^6, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^2+E(7)^5, 0, 0, 0, 0, 0, 
          0, 0, 2 ], [ 2, 2, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)+E(7)^6, E(7)+E(7)^6, E(7)+E(7)^6, 
          E(7)+E(7)^6, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 2, 2, E(7)+E(7)^6, E(7)+E(7)^6, E(7)+E(7)^6, E(7)+E(7)^6, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^3+E(7)^4, 
          E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)^3+E(7)^4, 0, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(7)^6, E(7), -E(7)^6, -E(7), E(7)^2, E(7)^5, -E(7)^2, -E(7)^5, E(7)^3, E(7)^4, -E(7)^3, -E(7)^4, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(7)^5, E(7)^2, -E(7)^5, -E(7)^2, E(7)^4, E(7)^3, -E(7)^4, -E(7)^3, E(7)^6, E(7), -E(7)^6, -E(7), 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(7)^4, E(7)^3, -E(7)^4, -E(7)^3, E(7)^6, E(7), -E(7)^6, -E(7), E(7)^2, E(7)^5, -E(7)^2, -E(7)^5, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(7)^3, E(7)^4, -E(7)^3, -E(7)^4, E(7), E(7)^6, -E(7), -E(7)^6, E(7)^5, E(7)^2, -E(7)^5, -E(7)^2, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(7)^2, E(7)^5, -E(7)^2, -E(7)^5, E(7)^3, E(7)^4, -E(7)^3, -E(7)^4, E(7), E(7)^6, -E(7), -E(7)^6, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 1, -1, E(7), E(7)^6, -E(7), -E(7)^6, E(7)^5, E(7)^2, -E(7)^5, -E(7)^2, E(7)^4, E(7)^3, -E(7)^4, -E(7)^3, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20 ], [ 1, 0, 4, 
          5, 2, 3, 8, 9, 6, 7, 12, 13, 10, 11, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20 ], [ 3, 5, 0, 6, 1, 8, 10, 2, 12, 4, 11, 7, 13, 9, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 
          20, 14, 14 ], [ 2, 4, 7, 0, 9, 1, 3, 11, 5, 13, 6, 10, 8, 12, 20, 20, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19 ], [ 5, 3, 
          1, 8, 0, 6, 12, 4, 10, 2, 13, 9, 11, 7, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 14, 14 ], [ 4, 2, 9, 1, 7, 0, 5, 13, 3, 11, 8, 12, 6, 10, 20, 20, 14, 14, 15, 15, 16, 16, 17, 17, 
          18, 18, 19, 19 ], [ 7, 9, 11, 2, 13, 4, 0, 10, 1, 12, 3, 6, 5, 8, 19, 19, 20, 20, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18 ], [ 6, 
          8, 3, 10, 5, 12, 11, 0, 13, 1, 7, 2, 9, 4, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 14, 14, 15, 15 ], [ 9, 7, 13, 4, 11, 2, 1, 12, 0, 10, 5, 8, 3, 6, 19, 19, 20, 20, 14, 14, 15, 15, 16, 
          16, 17, 17, 18, 18 ], [ 8, 6, 5, 12, 3, 10, 13, 1, 11, 0, 9, 4, 7, 2, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 14, 14, 15, 15 ], 
      [ 11, 13, 10, 7, 12, 9, 2, 6, 4, 8, 0, 3, 1, 5, 18, 18, 19, 19, 20, 20, 14, 14, 15, 15, 16, 16, 17, 17 ], [ 10, 12, 6, 11, 8, 13, 7, 3, 9, 5, 2, 0, 4, 1, 17, 17, 18, 18, 19, 19, 20, 20, 
          14, 14, 15, 15, 16, 16 ], [ 13, 11, 12, 9, 10, 7, 4, 8, 2, 6, 1, 5, 0, 3, 18, 18, 19, 19, 20, 20, 14, 14, 15, 15, 16, 16, 17, 17 ], 
      [ 12, 10, 8, 13, 6, 11, 9, 5, 7, 3, 4, 1, 2, 0, 17, 17, 18, 18, 19, 19, 20, 20, 14, 14, 15, 15, 16, 16 ], [ 14, 14, 15, 20, 15, 20, 19, 16, 19, 16, 18, 17, 18, 17, 0, 1, 2, 4, 7, 9, 11, 
          13, 10, 12, 6, 8, 3, 5 ], [ 14, 14, 15, 20, 15, 20, 19, 16, 19, 16, 18, 17, 18, 17, 1, 0, 4, 2, 9, 7, 13, 11, 12, 10, 8, 6, 5, 3 ], 
      [ 15, 15, 16, 14, 16, 14, 20, 17, 20, 17, 19, 18, 19, 18, 3, 5, 0, 1, 2, 4, 7, 9, 11, 13, 10, 12, 6, 8 ], [ 15, 15, 16, 14, 16, 14, 20, 17, 20, 17, 19, 18, 19, 18, 5, 3, 1, 0, 4, 
          2, 9, 7, 13, 11, 12, 10, 8, 6 ], [ 16, 16, 17, 15, 17, 15, 14, 18, 14, 18, 20, 19, 20, 19, 6, 8, 3, 5, 0, 1, 2, 4, 7, 9, 11, 13, 10, 12 ], 
      [ 16, 16, 17, 15, 17, 15, 14, 18, 14, 18, 20, 19, 20, 19, 8, 6, 5, 3, 1, 0, 4, 2, 9, 7, 13, 11, 12, 10 ], [ 17, 17, 18, 16, 18, 16, 15, 19, 15, 19, 14, 20, 14, 20, 10, 12, 6, 
          8, 3, 5, 0, 1, 2, 4, 7, 9, 11, 13 ], [ 17, 17, 18, 16, 18, 16, 15, 19, 15, 19, 14, 20, 14, 20, 12, 10, 8, 6, 5, 3, 1, 0, 4, 2, 9, 7, 13, 11 ], 
      [ 18, 18, 19, 17, 19, 17, 16, 20, 16, 20, 15, 14, 15, 14, 11, 13, 10, 12, 6, 8, 3, 5, 0, 1, 2, 4, 7, 9 ], [ 18, 18, 19, 17, 19, 17, 16, 20, 16, 20, 15, 14, 15, 14, 13, 11, 
          12, 10, 8, 6, 5, 3, 1, 0, 4, 2, 9, 7 ], [ 19, 19, 20, 18, 20, 18, 17, 14, 17, 14, 16, 15, 16, 15, 7, 9, 11, 13, 10, 12, 6, 8, 3, 5, 0, 1, 2, 4 ], 
      [ 19, 19, 20, 18, 20, 18, 17, 14, 17, 14, 16, 15, 16, 15, 9, 7, 13, 11, 12, 10, 8, 6, 5, 3, 1, 0, 4, 2 ], 
      [ 20, 20, 14, 19, 14, 19, 18, 15, 18, 15, 17, 16, 17, 16, 2, 4, 7, 9, 11, 13, 10, 12, 6, 8, 3, 5, 0, 1 ], 
      [ 20, 20, 14, 19, 14, 19, 18, 15, 18, 15, 17, 16, 17, 16, 4, 2, 9, 7, 13, 11, 12, 10, 8, 6, 5, 3, 1, 0 ] ],
  SmallSchemeIdentification := 180 )