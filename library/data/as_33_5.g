rec(
  CharacterTable := [ [ 1, 2, 10, 20, 1 ], [ 1, -1, 10, -10, 2 ], [ 1, 2, -1, -2, 10 ], [ 1, -1, -1, 1, 20 ] ],
  RelationMatrix := [ [ 0, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 1, 0, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 1, 1, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 
          2, 2, 2, 2, 2, 2, 2, 2, 2 ], [ 2, 3, 3, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 3, 3, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 2, 3, 3, 2, 2, 0, 2, 2, 2, 2, 2, 2, 2, 3, 3, 1, 3, 3, 3, 
          3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3 ], [ 2, 3, 3, 2, 2, 2, 0, 2, 2, 2, 2, 2, 2, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3 ], 
      [ 2, 3, 3, 2, 2, 2, 2, 0, 2, 2, 2, 2, 2, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3 ], [ 2, 3, 3, 2, 2, 2, 2, 2, 0, 2, 2, 2, 2, 3, 
          3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3 ], [ 2, 3, 3, 2, 2, 2, 2, 2, 2, 0, 2, 2, 2, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3 ], 
      [ 2, 3, 3, 2, 2, 2, 2, 2, 2, 2, 0, 2, 2, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3 ], [ 2, 3, 3, 2, 2, 2, 2, 2, 2, 
          2, 2, 0, 2, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3 ], [ 2, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 3, 2, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 3, 2, 3, 3, 
          1, 3, 3, 3, 3, 3, 3, 3, 3, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3 ], [ 3, 2, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 2, 2, 0, 2, 2, 2, 2, 2, 2, 2, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3 ],
      [ 3, 2, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 2, 2, 2, 0, 2, 2, 2, 2, 2, 2, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3 ], [ 3, 
          2, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 2, 2, 2, 2, 0, 2, 2, 2, 2, 2, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3 ], [ 3, 2, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 2, 2, 2, 2, 2, 0, 2, 2, 2, 2, 3, 3, 3, 3, 3, 1, 3, 
          3, 3, 3 ], [ 3, 2, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 2, 2, 2, 2, 2, 2, 0, 2, 2, 2, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3 ], 
      [ 3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 2, 2, 2, 2, 2, 2, 2, 0, 2, 2, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3 ], [ 3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 2, 2, 2, 2, 2, 2, 2, 2, 0, 2, 3, 3, 
          3, 3, 3, 3, 3, 3, 1, 3 ], [ 3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 3, 3, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], [ 3, 3, 2, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 
          3, 3, 3, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2 ], [ 3, 3, 2, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 2, 2, 0, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 3, 3, 2, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 2, 2, 2, 0, 2, 2, 2, 2, 2, 2 ], [ 3, 3, 2, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 
          3, 3, 1, 3, 3, 3, 3, 3, 2, 2, 2, 2, 0, 2, 2, 2, 2, 2 ], [ 3, 3, 2, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 2, 2, 2, 2, 2, 0, 2, 2, 2, 2 ], 
      [ 3, 3, 2, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 2, 2, 2, 2, 2, 2, 0, 2, 2, 2 ], [ 3, 3, 2, 3, 3, 3, 3, 3, 3, 3, 
          1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 2, 2, 2, 2, 2, 2, 2, 0, 2, 2 ], [ 3, 3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 2, 2, 2, 2, 2, 2, 2, 2, 0, 2 ], 
      [ 3, 3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0 ] ],
  SmallSchemeIdentification := 5 )