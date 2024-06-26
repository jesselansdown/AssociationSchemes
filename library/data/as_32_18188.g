rec(
  CharacterTable := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
          1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ], 
      [ 1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, -1, -1, -1, -1, 1, -1, 1, 1, 1, 
          1, -1, 1, 1, -1, -1, -1, -1, 1, 1, 1, -1, 1 ], 
      [ 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, 
          -1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, 1 ], 
      [ 1, -1, 1, -1, 1, 1, -1, 1, -1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 
          1, -1, -1, -1, 1, -1, 1, 1, -1, 1, -1, 1, 1 ], 
      [ 1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 
          -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, -1, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 
          -1, -1, 1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1 ], 
      [ 1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, -1, -1, 1, 1, 1, -1, -1, -1, 1, 
          1, 1, -1, -1, -1, 1, -1, -1, -1, 1, -1, -1, 1 ], 
      [ 1, 1, 1, -1, 1, 1, 1, -1, 1, 1, -1, 1, 1, -1, -1, 1, -1, 1, 1, -1, 
          -1, 1, -1, -1, 1, -1, -1, -1, 1, -1, -1, -1, 1 ], 
      [ 2, 0, -2, 0, 2, -2, 0, 0, 0, 0, 0, -2, 2, 0, 0, -2, 0, 0, 0, 0, 0, 0, 
          0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 0, 0, -2, -2, 2, 0, 0, 0, 0, 0, 0, 0, 2, -2, -2, 0, 0, 0, 0, 0, 0, 
          0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 0, 0, 0, -2, -2, 0, 0, 0, 0, -2*E(4), 0, 0, 0, 0, 2, 0, 0, 0, 0, 
          0, 0, 2*E(4), 2*E(4), 0, 0, 0, 0, 0, 0, -2*E(4), 0, 2 ], 
      [ 2, 0, 0, 0, -2, -2, 0, 0, 0, 0, 2*E(4), 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 
          0, -2*E(4), -2*E(4), 0, 0, 0, 0, 0, 0, 2*E(4), 0, 2 ], 
      [ 2, 0, 0, 2, -2, 2, 0, 0, 0, 0, 0, 0, 0, -2, 2, -2, 0, 0, 0, 0, 0, 0, 
          0, 0, 0, -2, 0, 0, 0, 0, 0, 0, 2 ], 
      [ 2, 0, 2, 0, 2, -2, 0, 0, 0, 0, 0, 2, -2, 0, 0, -2, 0, 0, 0, 0, 0, 0, 
          0, 0, -2, 0, 0, 0, 0, 0, 0, 0, 2 ] ],
  RelationMatrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 
          20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 ], 
      [ 8, 0, 6, 29, 1, 21, 11, 14, 4, 5, 27, 17, 18, 20, 19, 9, 30, 2, 24, 
          25, 3, 15, 31, 16, 28, 7, 23, 22, 12, 13, 26, 10 ], 
      [ 11, 17, 0, 22, 2, 24, 1, 26, 6, 28, 3, 4, 5, 10, 30, 12, 7, 8, 9, 16, 
          31, 18, 13, 14, 15, 23, 19, 20, 21, 27, 25, 29 ], 
      [ 3, 7, 10, 0, 13, 14, 16, 1, 19, 20, 2, 22, 23, 4, 5, 25, 6, 26, 27, 
          8, 9, 29, 11, 12, 30, 15, 17, 18, 31, 21, 24, 28 ], 
      [ 4, 8, 11, 13, 0, 15, 17, 19, 1, 21, 22, 2, 24, 3, 25, 5, 26, 6, 28, 
          7, 29, 9, 10, 30, 12, 14, 16, 31, 18, 20, 23, 27 ], 
      [ 5, 9, 12, 14, 15, 0, 18, 20, 21, 1, 23, 24, 2, 25, 3, 4, 27, 28, 6, 
          29, 7, 8, 30, 10, 11, 13, 31, 16, 17, 19, 22, 26 ], 
      [ 17, 2, 8, 31, 6, 28, 0, 23, 11, 12, 29, 1, 21, 27, 26, 18, 14, 4, 5, 
          30, 10, 24, 20, 19, 9, 16, 25, 3, 15, 22, 7, 13 ], 
      [ 29, 14, 27, 8, 20, 19, 30, 0, 25, 3, 6, 31, 16, 1, 21, 7, 11, 23, 22, 
          4, 5, 13, 17, 18, 26, 9, 2, 24, 10, 15, 28, 12 ], 
      [ 1, 4, 17, 20, 8, 9, 2, 25, 0, 15, 31, 6, 28, 29, 7, 21, 23, 11, 12, 
          14, 13, 5, 27, 26, 18, 19, 30, 10, 24, 3, 16, 22 ], 
      [ 21, 5, 18, 19, 9, 8, 24, 3, 15, 0, 16, 28, 6, 7, 29, 1, 22, 12, 11, 
          13, 14, 4, 26, 27, 17, 20, 10, 30, 2, 25, 31, 23 ], 
      [ 22, 26, 3, 11, 10, 30, 7, 17, 16, 31, 0, 13, 14, 2, 24, 23, 1, 19, 
          20, 6, 28, 27, 4, 5, 25, 12, 8, 9, 29, 18, 15, 21 ], 
      [ 2, 6, 4, 10, 11, 12, 8, 16, 17, 18, 13, 0, 15, 22, 23, 24, 19, 1, 21, 
          26, 27, 28, 3, 25, 5, 30, 7, 29, 9, 31, 14, 20 ], 
      [ 24, 28, 5, 30, 12, 11, 9, 31, 18, 17, 14, 15, 0, 23, 22, 2, 20, 21, 
          1, 27, 26, 6, 25, 3, 4, 10, 29, 7, 8, 16, 13, 19 ], 
      [ 13, 19, 22, 4, 3, 25, 26, 8, 7, 29, 11, 10, 30, 0, 15, 14, 17, 16, 
          31, 1, 21, 20, 2, 24, 23, 5, 6, 28, 27, 9, 12, 18 ], 
      [ 14, 20, 23, 5, 25, 3, 27, 9, 29, 7, 12, 30, 10, 15, 0, 13, 18, 31, 
          16, 21, 1, 19, 24, 2, 22, 4, 28, 6, 26, 8, 11, 17 ], 
      [ 15, 21, 24, 25, 5, 4, 28, 29, 9, 8, 30, 12, 11, 14, 13, 0, 31, 18, 
          17, 20, 19, 1, 23, 22, 2, 3, 27, 26, 6, 7, 10, 16 ], 
      [ 31, 23, 29, 17, 27, 26, 14, 2, 30, 10, 8, 20, 19, 6, 28, 16, 0, 25, 
          3, 11, 12, 22, 1, 21, 7, 18, 4, 5, 13, 24, 9, 15 ], 
      [ 6, 11, 1, 27, 17, 18, 4, 30, 2, 24, 20, 8, 9, 31, 16, 28, 25, 0, 15, 
          23, 22, 12, 29, 7, 21, 26, 14, 13, 5, 10, 19, 3 ], 
      [ 28, 12, 21, 26, 18, 17, 5, 10, 24, 2, 19, 9, 8, 16, 31, 6, 3, 15, 0, 
          22, 23, 11, 7, 29, 1, 27, 13, 14, 4, 30, 20, 25 ], 
      [ 20, 25, 31, 1, 29, 7, 23, 4, 14, 13, 17, 27, 26, 8, 9, 19, 2, 30, 10, 
          0, 15, 3, 6, 28, 16, 21, 11, 12, 22, 5, 18, 24 ], 
      [ 19, 3, 16, 21, 7, 29, 22, 5, 13, 14, 18, 26, 27, 9, 8, 20, 24, 10, 
          30, 15, 0, 25, 28, 6, 31, 1, 12, 11, 23, 4, 17, 2 ], 
      [ 9, 15, 28, 7, 21, 1, 12, 13, 5, 4, 26, 18, 17, 19, 20, 8, 10, 24, 2, 
          3, 25, 0, 16, 31, 6, 29, 22, 23, 11, 14, 27, 30 ], 
      [ 10, 16, 13, 2, 22, 23, 19, 6, 26, 27, 4, 3, 25, 11, 12, 30, 8, 7, 29, 
          17, 18, 31, 0, 15, 14, 24, 1, 21, 20, 28, 5, 9 ], 
      [ 30, 31, 14, 24, 23, 22, 20, 28, 27, 26, 5, 25, 3, 12, 11, 10, 9, 29, 
          7, 18, 17, 16, 15, 0, 13, 2, 21, 1, 19, 6, 4, 8 ], 
      [ 12, 18, 15, 23, 24, 2, 21, 27, 28, 6, 25, 5, 4, 30, 10, 11, 29, 9, 8, 
          31, 16, 17, 14, 13, 0, 22, 20, 19, 1, 26, 3, 7 ], 
      [ 25, 29, 30, 15, 14, 13, 31, 21, 20, 19, 24, 23, 22, 5, 4, 3, 28, 27, 
          26, 9, 8, 7, 12, 11, 10, 0, 18, 17, 16, 1, 2, 6 ], 
      [ 27, 30, 20, 6, 31, 16, 25, 11, 23, 22, 1, 29, 7, 17, 18, 26, 4, 14, 
          13, 2, 24, 10, 8, 9, 19, 28, 0, 15, 3, 12, 21, 5 ], 
      [ 26, 10, 19, 28, 16, 31, 3, 12, 22, 23, 21, 7, 29, 18, 17, 27, 5, 13, 
          14, 24, 2, 30, 9, 8, 20, 6, 15, 0, 25, 11, 1, 4 ], 
      [ 18, 24, 9, 16, 28, 6, 15, 22, 12, 11, 7, 21, 1, 26, 27, 17, 13, 5, 4, 
          10, 30, 2, 19, 20, 8, 31, 3, 25, 0, 23, 29, 14 ], 
      [ 7, 13, 26, 9, 19, 20, 10, 15, 3, 25, 28, 16, 31, 21, 1, 29, 12, 22, 
          23, 5, 4, 14, 18, 17, 27, 8, 24, 2, 30, 0, 6, 11 ], 
      [ 23, 27, 25, 12, 30, 10, 29, 18, 31, 16, 15, 14, 13, 24, 2, 22, 21, 
          20, 19, 28, 6, 26, 5, 4, 3, 11, 9, 8, 7, 17, 0, 1 ], 
      [ 16, 22, 7, 18, 26, 27, 13, 24, 10, 30, 9, 19, 20, 28, 6, 31, 15, 3, 
          25, 12, 11, 23, 21, 1, 29, 17, 5, 4, 14, 2, 8, 0 ] ],
  SmallSchemeIdentification := 18188 )