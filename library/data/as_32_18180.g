rec(
  CharacterTable := 
   [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
          1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ], 
      [ 1, -1, 1, -1, 1, 1, -1, 1, -1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 
          1, -1, -1, -1, 1, -1, 1, 1, -1, 1, -1, 1, 1 ], 
      [ 1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, -1, -1, 1, 1, 1, -1, -1, -1, 1, 
          1, 1, -1, -1, -1, 1, -1, -1, -1, 1, -1, -1, 1 ], 
      [ 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1, -1, -1, -1, -1, 1, 1, -1, -1, 
          -1, -1, 1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1 ], 
      [ 1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 
          -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, -1, 1 ], 
      [ 1, -E(4), E(4), 1, -1, -1, 1, -E(4), E(4), E(4), E(4), -E(4), -E(4), 
          -1, -1, 1, 1, -1, -1, E(4), E(4), -E(4), -E(4), -E(4), E(4), 1, -1, 
          -1, 1, -E(4), E(4), 1, 1 ], 
      [ 1, E(4), -E(4), -1, -1, -1, 1, -E(4), -E(4), -E(4), E(4), E(4), E(4), 
          1, 1, 1, -1, -1, -1, E(4), E(4), E(4), -E(4), -E(4), -E(4), -1, 1, 
          1, 1, -E(4), E(4), -1, 1 ], 
      [ 1, E(4), -E(4), 1, -1, -1, 1, E(4), -E(4), -E(4), -E(4), E(4), E(4), 
          -1, -1, 1, 1, -1, -1, -E(4), -E(4), E(4), E(4), E(4), -E(4), 1, -1, 
          -1, 1, E(4), -E(4), 1, 1 ], 
      [ 1, -E(4), E(4), -1, -1, -1, 1, E(4), E(4), E(4), -E(4), -E(4), -E(4), 
          1, 1, 1, -1, -1, -1, -E(4), -E(4), -E(4), E(4), E(4), E(4), -1, 1, 
          1, 1, E(4), -E(4), -1, 1 ], 
      [ 1, 1, 1, -1, 1, 1, 1, -1, 1, 1, -1, 1, 1, -1, -1, 1, -1, 1, 1, -1, 
          -1, 1, -1, -1, 1, -1, -1, -1, 1, -1, -1, -1, 1 ], 
      [ 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, -1, 
          -1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, 1 ], 
      [ 1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, -1, -1, -1, -1, 1, -1, 1, 1, 1, 
          1, -1, 1, 1, -1, -1, -1, -1, 1, 1, 1, -1, 1 ], 
      [ 1, E(4), E(4), 1, -1, -1, -1, E(4), -E(4), -E(4), E(4), -E(4), -E(4), 
          -1, -1, 1, -1, 1, 1, -E(4), -E(4), E(4), -E(4), -E(4), E(4), 1, 1, 
          1, -1, E(4), E(4), -1, 1 ], 
      [ 1, -E(4), -E(4), -1, -1, -1, -1, E(4), E(4), E(4), E(4), E(4), E(4), 
          1, 1, 1, 1, 1, 1, -E(4), -E(4), -E(4), -E(4), -E(4), -E(4), -1, -1, 
          -1, -1, E(4), E(4), 1, 1 ], 
      [ 1, -E(4), -E(4), 1, -1, -1, -1, -E(4), E(4), E(4), -E(4), E(4), E(4), 
          -1, -1, 1, -1, 1, 1, E(4), E(4), -E(4), E(4), E(4), -E(4), 1, 1, 1, 
          -1, -E(4), -E(4), -1, 1 ], 
      [ 1, E(4), E(4), -1, -1, -1, -1, -E(4), -E(4), -E(4), -E(4), -E(4), 
          -E(4), 1, 1, 1, 1, 1, 1, E(4), E(4), E(4), E(4), E(4), E(4), -1, 
          -1, -1, -1, -E(4), -E(4), 1, 1 ], 
      [ 1, -E(4), -1, 1, -1, 1, E(4), -E(4), E(4), -E(4), -1, 1, -1, -1, 1, 
          -1, E(4), -E(4), E(4), E(4), -E(4), E(4), 1, -1, 1, -1, -E(4), 
          E(4), -E(4), E(4), 1, -E(4), 1 ], 
      [ 1, E(4), 1, -1, -1, 1, E(4), -E(4), -E(4), E(4), -1, -1, 1, 1, -1, 
          -1, -E(4), -E(4), E(4), E(4), -E(4), -E(4), 1, -1, -1, 1, E(4), 
          -E(4), -E(4), E(4), 1, E(4), 1 ], 
      [ 1, E(4), 1, 1, -1, 1, E(4), E(4), -E(4), E(4), 1, -1, 1, -1, 1, -1, 
          E(4), -E(4), E(4), -E(4), E(4), -E(4), -1, 1, -1, -1, -E(4), E(4), 
          -E(4), -E(4), -1, -E(4), 1 ], 
      [ 1, -E(4), -1, -1, -1, 1, E(4), E(4), E(4), -E(4), 1, 1, -1, 1, -1, 
          -1, -E(4), -E(4), E(4), -E(4), E(4), E(4), -1, 1, 1, 1, E(4), 
          -E(4), -E(4), -E(4), -1, E(4), 1 ], 
      [ 1, 1, -E(4), -1, 1, -1, -E(4), -1, 1, -1, E(4), -E(4), E(4), -1, 1, 
          -1, E(4), -E(4), E(4), -1, 1, -1, E(4), -E(4), E(4), 1, E(4), 
          -E(4), E(4), 1, -E(4), -E(4), 1 ], 
      [ 1, -1, E(4), 1, 1, -1, -E(4), -1, -1, 1, E(4), E(4), -E(4), 1, -1, 
          -1, -E(4), -E(4), E(4), -1, 1, 1, E(4), -E(4), -E(4), -1, -E(4), 
          E(4), E(4), 1, -E(4), E(4), 1 ], 
      [ 1, -1, E(4), -1, 1, -1, -E(4), 1, -1, 1, -E(4), E(4), -E(4), -1, 1, 
          -1, E(4), -E(4), E(4), 1, -1, 1, -E(4), E(4), -E(4), 1, E(4), 
          -E(4), E(4), -1, E(4), -E(4), 1 ], 
      [ 1, 1, -E(4), 1, 1, -1, -E(4), 1, 1, -1, -E(4), -E(4), E(4), 1, -1, 
          -1, -E(4), -E(4), E(4), 1, -1, -1, -E(4), E(4), E(4), -1, -E(4), 
          E(4), E(4), -1, E(4), E(4), 1 ], 
      [ 1, E(4), -1, 1, -1, 1, -E(4), E(4), -E(4), E(4), -1, 1, -1, -1, 1, 
          -1, -E(4), E(4), -E(4), -E(4), E(4), -E(4), 1, -1, 1, -1, E(4), 
          -E(4), E(4), -E(4), 1, E(4), 1 ], 
      [ 1, -E(4), 1, -1, -1, 1, -E(4), E(4), E(4), -E(4), -1, -1, 1, 1, -1, 
          -1, E(4), E(4), -E(4), -E(4), E(4), E(4), 1, -1, -1, 1, -E(4), 
          E(4), E(4), -E(4), 1, -E(4), 1 ], 
      [ 1, -E(4), 1, 1, -1, 1, -E(4), -E(4), E(4), -E(4), 1, -1, 1, -1, 1, 
          -1, -E(4), E(4), -E(4), E(4), -E(4), E(4), -1, 1, -1, -1, E(4), 
          -E(4), E(4), E(4), -1, E(4), 1 ], 
      [ 1, E(4), -1, -1, -1, 1, -E(4), -E(4), -E(4), E(4), 1, 1, -1, 1, -1, 
          -1, E(4), E(4), -E(4), E(4), -E(4), -E(4), -1, 1, 1, 1, -E(4), 
          E(4), E(4), E(4), -1, -E(4), 1 ], 
      [ 1, -1, -E(4), -1, 1, -1, E(4), 1, -1, 1, E(4), -E(4), E(4), -1, 1, 
          -1, -E(4), E(4), -E(4), 1, -1, 1, E(4), -E(4), E(4), 1, -E(4), 
          E(4), -E(4), -1, -E(4), E(4), 1 ], 
      [ 1, 1, E(4), 1, 1, -1, E(4), 1, 1, -1, E(4), E(4), -E(4), 1, -1, -1, 
          E(4), E(4), -E(4), 1, -1, -1, E(4), -E(4), -E(4), -1, E(4), -E(4), 
          -E(4), -1, -E(4), -E(4), 1 ], 
      [ 1, 1, E(4), -1, 1, -1, E(4), -1, 1, -1, -E(4), E(4), -E(4), -1, 1, 
          -1, -E(4), E(4), -E(4), -1, 1, -1, -E(4), E(4), -E(4), 1, -E(4), 
          E(4), -E(4), 1, E(4), E(4), 1 ], 
      [ 1, -1, -E(4), 1, 1, -1, E(4), -1, -1, 1, -E(4), -E(4), E(4), 1, -1, 
          -1, E(4), E(4), -E(4), -1, 1, 1, -E(4), E(4), E(4), -1, E(4), 
          -E(4), -E(4), 1, E(4), -E(4), 1 ] ],
  RelationMatrix := 
   [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 
          20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 ], 
      [ 8, 0, 17, 19, 1, 21, 2, 3, 4, 5, 26, 6, 28, 7, 29, 9, 10, 11, 12, 13, 
          14, 15, 16, 31, 18, 20, 22, 23, 24, 25, 27, 30 ], 
      [ 12, 18, 0, 23, 24, 2, 1, 27, 28, 6, 3, 4, 5, 30, 10, 11, 7, 8, 9, 31, 
          16, 17, 13, 14, 15, 22, 19, 20, 21, 26, 25, 29 ], 
      [ 3, 7, 10, 0, 13, 14, 16, 1, 19, 20, 2, 22, 23, 4, 5, 25, 6, 26, 27, 
          8, 9, 29, 11, 12, 30, 15, 17, 18, 31, 21, 24, 28 ], 
      [ 4, 8, 11, 13, 0, 15, 17, 19, 1, 21, 22, 2, 24, 3, 25, 5, 26, 6, 28, 
          7, 29, 9, 10, 30, 12, 14, 16, 31, 18, 20, 23, 27 ], 
      [ 5, 9, 12, 14, 15, 0, 18, 20, 21, 1, 23, 24, 2, 25, 3, 4, 27, 28, 6, 
          29, 7, 8, 30, 10, 11, 13, 31, 16, 17, 19, 22, 26 ], 
      [ 28, 12, 8, 31, 18, 17, 0, 23, 24, 2, 19, 1, 21, 27, 26, 6, 3, 4, 5, 
          30, 10, 11, 7, 29, 9, 16, 13, 14, 15, 22, 20, 25 ], 
      [ 19, 3, 26, 8, 7, 29, 10, 0, 13, 14, 17, 16, 31, 1, 21, 20, 2, 22, 23, 
          4, 5, 25, 6, 28, 27, 9, 11, 12, 30, 15, 18, 24 ], 
      [ 1, 4, 6, 7, 8, 9, 11, 13, 0, 15, 16, 17, 18, 19, 20, 21, 22, 2, 24, 
          3, 25, 5, 26, 27, 28, 29, 10, 30, 12, 14, 31, 23 ], 
      [ 21, 5, 28, 29, 9, 8, 12, 14, 15, 0, 31, 18, 17, 20, 19, 1, 23, 24, 2, 
          25, 3, 4, 27, 26, 6, 7, 30, 10, 11, 13, 16, 22 ], 
      [ 23, 27, 3, 12, 30, 10, 7, 18, 31, 16, 0, 13, 14, 24, 2, 22, 1, 19, 
          20, 28, 6, 26, 4, 5, 25, 11, 8, 9, 29, 17, 15, 21 ], 
      [ 24, 28, 4, 30, 12, 11, 8, 31, 18, 17, 13, 0, 15, 23, 22, 2, 19, 1, 
          21, 27, 26, 6, 3, 25, 5, 10, 7, 29, 9, 16, 14, 20 ], 
      [ 2, 6, 5, 10, 11, 12, 9, 16, 17, 18, 14, 15, 0, 22, 23, 24, 20, 21, 1, 
          26, 27, 28, 25, 3, 4, 30, 29, 7, 8, 31, 13, 19 ], 
      [ 13, 19, 22, 4, 3, 25, 26, 8, 7, 29, 11, 10, 30, 0, 15, 14, 17, 16, 
          31, 1, 21, 20, 2, 24, 23, 5, 6, 28, 27, 9, 12, 18 ], 
      [ 14, 20, 23, 5, 25, 3, 27, 9, 29, 7, 12, 30, 10, 15, 0, 13, 18, 31, 
          16, 21, 1, 19, 24, 2, 22, 4, 28, 6, 26, 8, 11, 17 ], 
      [ 15, 21, 24, 25, 5, 4, 28, 29, 9, 8, 30, 12, 11, 14, 13, 0, 31, 18, 
          17, 20, 19, 1, 23, 22, 2, 3, 27, 26, 6, 7, 10, 16 ], 
      [ 31, 23, 19, 28, 27, 26, 3, 12, 30, 10, 8, 7, 29, 18, 17, 16, 0, 13, 
          14, 24, 2, 22, 1, 21, 20, 6, 4, 5, 25, 11, 9, 15 ], 
      [ 18, 24, 1, 27, 28, 6, 4, 30, 12, 11, 7, 8, 9, 31, 16, 17, 13, 0, 15, 
          23, 22, 2, 19, 20, 21, 26, 3, 25, 5, 10, 29, 14 ], 
      [ 17, 2, 21, 26, 6, 28, 5, 10, 11, 12, 29, 9, 8, 16, 31, 18, 14, 15, 0, 
          22, 23, 24, 20, 19, 1, 27, 25, 3, 4, 30, 7, 13 ], 
      [ 7, 13, 16, 1, 19, 20, 22, 4, 3, 25, 6, 26, 27, 8, 9, 29, 11, 10, 30, 
          0, 15, 14, 17, 18, 31, 21, 2, 24, 23, 5, 28, 12 ], 
      [ 29, 14, 31, 21, 20, 19, 23, 5, 25, 3, 28, 27, 26, 9, 8, 7, 12, 30, 
          10, 15, 0, 13, 18, 17, 16, 1, 24, 2, 22, 4, 6, 11 ], 
      [ 9, 15, 18, 20, 21, 1, 24, 25, 5, 4, 27, 28, 6, 29, 7, 8, 30, 12, 11, 
          14, 13, 0, 31, 16, 17, 19, 23, 22, 2, 3, 26, 10 ], 
      [ 30, 31, 13, 24, 23, 22, 19, 28, 27, 26, 4, 3, 25, 12, 11, 10, 8, 7, 
          29, 18, 17, 16, 0, 15, 14, 2, 1, 21, 20, 6, 5, 9 ], 
      [ 10, 16, 14, 2, 22, 23, 20, 6, 26, 27, 5, 25, 3, 11, 12, 30, 9, 29, 7, 
          17, 18, 31, 15, 0, 13, 24, 21, 1, 19, 28, 4, 8 ], 
      [ 11, 17, 15, 22, 2, 24, 21, 26, 6, 28, 25, 5, 4, 10, 30, 12, 29, 9, 8, 
          16, 31, 18, 14, 13, 0, 23, 20, 19, 1, 27, 3, 7 ], 
      [ 25, 29, 30, 15, 14, 13, 31, 21, 20, 19, 24, 23, 22, 5, 4, 3, 28, 27, 
          26, 9, 8, 7, 12, 11, 10, 0, 18, 17, 16, 1, 2, 6 ], 
      [ 27, 30, 7, 18, 31, 16, 13, 24, 23, 22, 1, 19, 20, 28, 6, 26, 4, 3, 
          25, 12, 11, 10, 8, 9, 29, 17, 0, 15, 14, 2, 21, 5 ], 
      [ 26, 10, 29, 17, 16, 31, 14, 2, 22, 23, 21, 20, 19, 6, 28, 27, 5, 25, 
          3, 11, 12, 30, 9, 8, 7, 18, 15, 0, 13, 24, 1, 4 ], 
      [ 6, 11, 9, 16, 17, 18, 15, 22, 2, 24, 20, 21, 1, 26, 27, 28, 25, 5, 4, 
          10, 30, 12, 29, 7, 8, 31, 14, 13, 0, 23, 19, 3 ], 
      [ 20, 25, 27, 9, 29, 7, 30, 15, 14, 13, 18, 31, 16, 21, 1, 19, 24, 23, 
          22, 5, 4, 3, 28, 6, 26, 8, 12, 11, 10, 0, 17, 2 ], 
      [ 22, 26, 25, 11, 10, 30, 29, 17, 16, 31, 15, 14, 13, 2, 24, 23, 21, 
          20, 19, 6, 28, 27, 5, 4, 3, 12, 9, 8, 7, 18, 0, 1 ], 
      [ 16, 22, 20, 6, 26, 27, 25, 11, 10, 30, 9, 29, 7, 17, 18, 31, 15, 14, 
          13, 2, 24, 23, 21, 1, 19, 28, 5, 4, 3, 12, 8, 0 ] ],
  SmallSchemeIdentification := 18180 )