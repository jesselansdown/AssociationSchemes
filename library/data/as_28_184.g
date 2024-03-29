rec(
  CharacterTable := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
          1, 1, 1, 1, 1, 1 ], 
      [ 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 
          1, -1, -1, 1, 1, -1, -1, 1, 1 ], 
      [ 1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 
          -1, -1, 1, 1, -1, -1, 1, -1, 1 ], 
      [ 1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, 
          -1, 1, -1, 1, -1, 1, -1, -1, 1 ], 
      [ 2, 0, -2, E(7)^3+E(7)^4, 0, 0, -E(7)^3-E(7)^4, E(7)+E(7)^6, 0, 0, 
          -E(7)-E(7)^6, E(7)^2+E(7)^5, 0, 0, -E(7)^2-E(7)^5, E(7)^2+E(7)^5, 
          0, 0, -E(7)^2-E(7)^5, E(7)+E(7)^6, 0, 0, -E(7)-E(7)^6, 
          E(7)^3+E(7)^4, 0, 0, -E(7)^3-E(7)^4, 0, 2 ], 
      [ 2, 0, -2, E(7)^2+E(7)^5, 0, 0, -E(7)^2-E(7)^5, E(7)^3+E(7)^4, 0, 0, 
          -E(7)^3-E(7)^4, E(7)+E(7)^6, 0, 0, -E(7)-E(7)^6, E(7)+E(7)^6, 0, 0, 
          -E(7)-E(7)^6, E(7)^3+E(7)^4, 0, 0, -E(7)^3-E(7)^4, E(7)^2+E(7)^5, 
          0, 0, -E(7)^2-E(7)^5, 0, 2 ], 
      [ 2, 0, -2, E(7)+E(7)^6, 0, 0, -E(7)-E(7)^6, E(7)^2+E(7)^5, 0, 0, 
          -E(7)^2-E(7)^5, E(7)^3+E(7)^4, 0, 0, -E(7)^3-E(7)^4, E(7)^3+E(7)^4, 
          0, 0, -E(7)^3-E(7)^4, E(7)^2+E(7)^5, 0, 0, -E(7)^2-E(7)^5, 
          E(7)+E(7)^6, 0, 0, -E(7)-E(7)^6, 0, 2 ], 
      [ 2, 0, 2, E(7)^3+E(7)^4, 0, 0, E(7)^3+E(7)^4, E(7)+E(7)^6, 0, 0, 
          E(7)+E(7)^6, E(7)^2+E(7)^5, 0, 0, E(7)^2+E(7)^5, E(7)^2+E(7)^5, 0, 
          0, E(7)^2+E(7)^5, E(7)+E(7)^6, 0, 0, E(7)+E(7)^6, E(7)^3+E(7)^4, 0, 
          0, E(7)^3+E(7)^4, 0, 2 ], 
      [ 2, 0, 2, E(7)^2+E(7)^5, 0, 0, E(7)^2+E(7)^5, E(7)^3+E(7)^4, 0, 0, 
          E(7)^3+E(7)^4, E(7)+E(7)^6, 0, 0, E(7)+E(7)^6, E(7)+E(7)^6, 0, 0, 
          E(7)+E(7)^6, E(7)^3+E(7)^4, 0, 0, E(7)^3+E(7)^4, E(7)^2+E(7)^5, 0, 
          0, E(7)^2+E(7)^5, 0, 2 ], 
      [ 2, 0, 2, E(7)+E(7)^6, 0, 0, E(7)+E(7)^6, E(7)^2+E(7)^5, 0, 0, 
          E(7)^2+E(7)^5, E(7)^3+E(7)^4, 0, 0, E(7)^3+E(7)^4, E(7)^3+E(7)^4, 
          0, 0, E(7)^3+E(7)^4, E(7)^2+E(7)^5, 0, 0, E(7)^2+E(7)^5, 
          E(7)+E(7)^6, 0, 0, E(7)+E(7)^6, 0, 2 ] ],
  RelationMatrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 
          20, 21, 22, 23, 24, 25, 26, 27 ], 
      [ 1, 0, 4, 25, 2, 23, 27, 21, 26, 19, 24, 17, 22, 15, 20, 13, 18, 11, 
          16, 9, 14, 7, 12, 5, 10, 3, 8, 6 ], 
      [ 2, 4, 0, 6, 1, 8, 3, 10, 5, 12, 7, 14, 9, 16, 11, 18, 13, 20, 15, 22, 
          17, 24, 19, 26, 21, 27, 23, 25 ], 
      [ 23, 25, 26, 0, 27, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 
          16, 17, 18, 19, 20, 21, 22, 24 ], 
      [ 4, 2, 1, 27, 0, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 
          13, 12, 11, 10, 9, 8, 7, 6, 5, 3 ], 
      [ 5, 3, 8, 1, 6, 0, 4, 25, 2, 23, 27, 21, 26, 19, 24, 17, 22, 15, 20, 
          13, 18, 11, 16, 9, 14, 7, 12, 10 ], 
      [ 26, 27, 23, 2, 25, 4, 0, 6, 1, 8, 3, 10, 5, 12, 7, 14, 9, 16, 11, 18, 
          13, 20, 15, 22, 17, 24, 19, 21 ], 
      [ 19, 21, 22, 23, 24, 25, 26, 0, 27, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
          12, 13, 14, 15, 16, 17, 18, 20 ], 
      [ 8, 6, 5, 4, 3, 2, 1, 27, 0, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 
          16, 15, 14, 13, 12, 11, 10, 9, 7 ], 
      [ 9, 7, 12, 5, 10, 3, 8, 1, 6, 0, 4, 25, 2, 23, 27, 21, 26, 19, 24, 17, 
          22, 15, 20, 13, 18, 11, 16, 14 ], 
      [ 22, 24, 19, 26, 21, 27, 23, 2, 25, 4, 0, 6, 1, 8, 3, 10, 5, 12, 7, 
          14, 9, 16, 11, 18, 13, 20, 15, 17 ], 
      [ 15, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 0, 27, 1, 2, 3, 4, 5, 6, 
          7, 8, 9, 10, 11, 12, 13, 14, 16 ], 
      [ 12, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 27, 0, 26, 25, 24, 23, 22, 21, 20, 
          19, 18, 17, 16, 15, 14, 13, 11 ], 
      [ 13, 11, 16, 9, 14, 7, 12, 5, 10, 3, 8, 1, 6, 0, 4, 25, 2, 23, 27, 21, 
          26, 19, 24, 17, 22, 15, 20, 18 ], 
      [ 18, 20, 15, 22, 17, 24, 19, 26, 21, 27, 23, 2, 25, 4, 0, 6, 1, 8, 3, 
          10, 5, 12, 7, 14, 9, 16, 11, 13 ], 
      [ 11, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 0, 27, 1, 
          2, 3, 4, 5, 6, 7, 8, 9, 10, 12 ], 
      [ 16, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 27, 0, 26, 25, 24, 
          23, 22, 21, 20, 19, 18, 17, 15 ], 
      [ 17, 15, 20, 13, 18, 11, 16, 9, 14, 7, 12, 5, 10, 3, 8, 1, 6, 0, 4, 
          25, 2, 23, 27, 21, 26, 19, 24, 22 ], 
      [ 14, 16, 11, 18, 13, 20, 15, 22, 17, 24, 19, 26, 21, 27, 23, 2, 25, 4, 
          0, 6, 1, 8, 3, 10, 5, 12, 7, 9 ], 
      [ 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
          26, 0, 27, 1, 2, 3, 4, 5, 6, 8 ], 
      [ 20, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 
          27, 0, 26, 25, 24, 23, 22, 21, 19 ], 
      [ 21, 19, 24, 17, 22, 15, 20, 13, 18, 11, 16, 9, 14, 7, 12, 5, 10, 3, 
          8, 1, 6, 0, 4, 25, 2, 23, 27, 26 ], 
      [ 10, 12, 7, 14, 9, 16, 11, 18, 13, 20, 15, 22, 17, 24, 19, 26, 21, 27, 
          23, 2, 25, 4, 0, 6, 1, 8, 3, 5 ], 
      [ 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 
          23, 24, 25, 26, 0, 27, 1, 2, 4 ], 
      [ 24, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 
          5, 4, 3, 2, 1, 27, 0, 26, 25, 23 ], 
      [ 25, 23, 27, 21, 26, 19, 24, 17, 22, 15, 20, 13, 18, 11, 16, 9, 14, 7, 
          12, 5, 10, 3, 8, 1, 6, 0, 4, 2 ], 
      [ 6, 8, 3, 10, 5, 12, 7, 14, 9, 16, 11, 18, 13, 20, 15, 22, 17, 24, 19, 
          26, 21, 27, 23, 2, 25, 4, 0, 1 ], 
      [ 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 
          10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 ] ],
  SmallSchemeIdentification := 184 )