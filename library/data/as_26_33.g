rec(
  CharacterTable := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
          1, 1, 1, 1 ], 
      [ 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 
          1, -1, 1, -1, 1, -1, 1 ], 
      [ 2, 0, E(13)^6+E(13)^7, 0, E(13)+E(13)^12, 0, E(13)^5+E(13)^8, 0, 
          E(13)^2+E(13)^11, 0, E(13)^4+E(13)^9, 0, E(13)^3+E(13)^10, 0, 
          E(13)^3+E(13)^10, 0, E(13)^4+E(13)^9, 0, E(13)^2+E(13)^11, 0, 
          E(13)^5+E(13)^8, 0, E(13)+E(13)^12, 0, E(13)^6+E(13)^7, 0, 2 ], 
      [ 2, 0, E(13)^5+E(13)^8, 0, E(13)^3+E(13)^10, 0, E(13)^2+E(13)^11, 0, 
          E(13)^6+E(13)^7, 0, E(13)+E(13)^12, 0, E(13)^4+E(13)^9, 0, 
          E(13)^4+E(13)^9, 0, E(13)+E(13)^12, 0, E(13)^6+E(13)^7, 0, 
          E(13)^2+E(13)^11, 0, E(13)^3+E(13)^10, 0, E(13)^5+E(13)^8, 0, 2 ], 
      [ 2, 0, E(13)^4+E(13)^9, 0, E(13)^5+E(13)^8, 0, E(13)+E(13)^12, 0, 
          E(13)^3+E(13)^10, 0, E(13)^6+E(13)^7, 0, E(13)^2+E(13)^11, 0, 
          E(13)^2+E(13)^11, 0, E(13)^6+E(13)^7, 0, E(13)^3+E(13)^10, 0, 
          E(13)+E(13)^12, 0, E(13)^5+E(13)^8, 0, E(13)^4+E(13)^9, 0, 2 ], 
      [ 2, 0, E(13)^3+E(13)^10, 0, E(13)^6+E(13)^7, 0, E(13)^4+E(13)^9, 0, 
          E(13)+E(13)^12, 0, E(13)^2+E(13)^11, 0, E(13)^5+E(13)^8, 0, 
          E(13)^5+E(13)^8, 0, E(13)^2+E(13)^11, 0, E(13)+E(13)^12, 0, 
          E(13)^4+E(13)^9, 0, E(13)^6+E(13)^7, 0, E(13)^3+E(13)^10, 0, 2 ], 
      [ 2, 0, E(13)^2+E(13)^11, 0, E(13)^4+E(13)^9, 0, E(13)^6+E(13)^7, 0, 
          E(13)^5+E(13)^8, 0, E(13)^3+E(13)^10, 0, E(13)+E(13)^12, 0, 
          E(13)+E(13)^12, 0, E(13)^3+E(13)^10, 0, E(13)^5+E(13)^8, 0, 
          E(13)^6+E(13)^7, 0, E(13)^4+E(13)^9, 0, E(13)^2+E(13)^11, 0, 2 ], 
      [ 2, 0, E(13)+E(13)^12, 0, E(13)^2+E(13)^11, 0, E(13)^3+E(13)^10, 0, 
          E(13)^4+E(13)^9, 0, E(13)^5+E(13)^8, 0, E(13)^6+E(13)^7, 0, 
          E(13)^6+E(13)^7, 0, E(13)^5+E(13)^8, 0, E(13)^4+E(13)^9, 0, 
          E(13)^3+E(13)^10, 0, E(13)^2+E(13)^11, 0, E(13)+E(13)^12, 0, 2 ] ],
  RelationMatrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 
          20, 21, 22, 23, 24, 25 ], 
      [ 1, 0, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 
          9, 8, 7, 6, 5, 4, 3, 2 ], 
      [ 24, 25, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 
          18, 19, 20, 21, 22, 23 ], 
      [ 3, 2, 1, 0, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 
          11, 10, 9, 8, 7, 6, 5, 4 ], 
      [ 22, 23, 24, 25, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 
          16, 17, 18, 19, 20, 21 ], 
      [ 5, 4, 3, 2, 1, 0, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 
          12, 11, 10, 9, 8, 7, 6 ], 
      [ 20, 21, 22, 23, 24, 25, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
          14, 15, 16, 17, 18, 19 ], 
      [ 7, 6, 5, 4, 3, 2, 1, 0, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 
          14, 13, 12, 11, 10, 9, 8 ], 
      [ 18, 19, 20, 21, 22, 23, 24, 25, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
          12, 13, 14, 15, 16, 17 ], 
      [ 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 
          15, 14, 13, 12, 11, 10 ], 
      [ 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
          10, 11, 12, 13, 14, 15 ], 
      [ 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 25, 24, 23, 22, 21, 20, 19, 18, 
          17, 16, 15, 14, 13, 12 ], 
      [ 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 0, 1, 2, 3, 4, 5, 6, 
          7, 8, 9, 10, 11, 12, 13 ], 
      [ 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 25, 24, 23, 22, 21, 20, 
          19, 18, 17, 16, 15, 14 ], 
      [ 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 0, 1, 2, 3, 
          4, 5, 6, 7, 8, 9, 10, 11 ], 
      [ 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 25, 24, 23, 22, 
          21, 20, 19, 18, 17, 16 ], 
      [ 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 0, 1, 
          2, 3, 4, 5, 6, 7, 8, 9 ], 
      [ 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 25, 24, 
          23, 22, 21, 20, 19, 18 ], 
      [ 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
          0, 1, 2, 3, 4, 5, 6, 7 ], 
      [ 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 
          25, 24, 23, 22, 21, 20 ], 
      [ 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 
          24, 25, 0, 1, 2, 3, 4, 5 ], 
      [ 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 
          2, 1, 0, 25, 24, 23, 22 ], 
      [ 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 
          23, 24, 25, 0, 1, 2, 3 ], 
      [ 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 
          5, 4, 3, 2, 1, 0, 25, 24 ], 
      [ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
          21, 22, 23, 24, 25, 0, 1 ], 
      [ 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 
          7, 6, 5, 4, 3, 2, 1, 0 ] ],
  SmallSchemeIdentification := 33 )