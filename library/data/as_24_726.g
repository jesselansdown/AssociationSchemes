rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -2, 2, 2, 2, -2, -2, 1 ], 
      [ 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 2, -2, -2, -2, 2, 2, 1 ], [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -4, 0, 0, 0, 2, 2, 2 ], [ 2, 2, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, 4, 0, 0, 0, -2, -2, 2 ], 
      [ 1, -1, -1, 1, -1, 1, -1, 1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 2 ], [ 1, -1, 1, -1, 1, -1, 1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 2 ], [ 2, -2, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 4 
         ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ], [ 1, 0, 3, 2, 5, 4, 7, 6, 10, 11, 8, 9, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17 ],
      [ 2, 3, 0, 1, 8, 10, 9, 11, 4, 6, 5, 7, 13, 13, 12, 12, 16, 16, 17, 17, 14, 14, 15, 15 ], [ 3, 2, 1, 0, 10, 8, 11, 9, 5, 7, 4, 6, 13, 13, 12, 12, 16, 16, 17, 17, 14, 14, 15, 15 ], 
      [ 4, 5, 9, 11, 0, 1, 8, 10, 6, 2, 7, 3, 14, 14, 17, 17, 12, 12, 16, 16, 15, 15, 13, 13 ], [ 5, 4, 11, 9, 1, 0, 10, 8, 7, 3, 6, 2, 14, 14, 17, 17, 12, 12, 16, 16, 15, 15, 13, 13 ], 
      [ 6, 7, 8, 10, 9, 11, 0, 1, 2, 4, 3, 5, 15, 15, 16, 16, 17, 17, 12, 12, 13, 13, 14, 14 ], [ 7, 6, 10, 8, 11, 9, 1, 0, 3, 5, 2, 4, 15, 15, 16, 16, 17, 17, 12, 12, 13, 13, 14, 14 ], 
      [ 9, 11, 4, 5, 6, 7, 2, 3, 0, 8, 1, 10, 17, 17, 14, 14, 15, 15, 13, 13, 12, 12, 16, 16 ], [ 8, 10, 6, 7, 2, 3, 4, 5, 9, 0, 11, 1, 16, 16, 15, 15, 13, 13, 14, 14, 17, 17, 12, 12 ], 
      [ 11, 9, 5, 4, 7, 6, 3, 2, 1, 10, 0, 8, 17, 17, 14, 14, 15, 15, 13, 13, 12, 12, 16, 16 ], [ 10, 8, 7, 6, 3, 2, 5, 4, 11, 1, 9, 0, 16, 16, 15, 15, 13, 13, 14, 14, 17, 17, 12, 12 ], 
      [ 12, 12, 13, 13, 14, 14, 15, 15, 16, 17, 16, 17, 0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 9, 11 ], [ 12, 12, 13, 13, 14, 14, 15, 15, 16, 17, 16, 17, 1, 0, 3, 2, 5, 4, 7, 6, 10, 8, 11, 9 ], 
      [ 13, 13, 12, 12, 16, 16, 17, 17, 14, 15, 14, 15, 2, 3, 0, 1, 8, 10, 9, 11, 4, 5, 6, 7 ], [ 13, 13, 12, 12, 16, 16, 17, 17, 14, 15, 14, 15, 3, 2, 1, 0, 10, 8, 11, 9, 5, 4, 7, 6 ], 
      [ 14, 14, 17, 17, 12, 12, 16, 16, 15, 13, 15, 13, 4, 5, 9, 11, 0, 1, 8, 10, 6, 7, 2, 3 ], [ 14, 14, 17, 17, 12, 12, 16, 16, 15, 13, 15, 13, 5, 4, 11, 9, 1, 0, 10, 8, 7, 6, 3, 2 ], 
      [ 15, 15, 16, 16, 17, 17, 12, 12, 13, 14, 13, 14, 6, 7, 8, 10, 9, 11, 0, 1, 2, 3, 4, 5 ], [ 15, 15, 16, 16, 17, 17, 12, 12, 13, 14, 13, 14, 7, 6, 10, 8, 11, 9, 1, 0, 3, 2, 5, 4 ], 
      [ 17, 17, 14, 14, 15, 15, 13, 13, 12, 16, 12, 16, 9, 11, 4, 5, 6, 7, 2, 3, 0, 1, 8, 10 ], [ 17, 17, 14, 14, 15, 15, 13, 13, 12, 16, 12, 16, 11, 9, 5, 4, 7, 6, 3, 2, 1, 0, 10, 8 ], 
      [ 16, 16, 15, 15, 13, 13, 14, 14, 17, 12, 17, 12, 8, 10, 6, 7, 2, 3, 4, 5, 9, 11, 0, 1 ], [ 16, 16, 15, 15, 13, 13, 14, 14, 17, 12, 17, 12, 10, 8, 7, 6, 3, 2, 5, 4, 11, 9, 1, 0 ] ],
  SmallSchemeIdentification := 726 )