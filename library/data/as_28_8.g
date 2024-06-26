rec(
  CharacterTable := [ [ 1, 12, 15, 1 ], [ 1, 4, -5, 7 ], [ 1, -2, 1, 20 ] ],
  Description := [ "One of the Chang graphs (drg)" ],
  RelationMatrix := [ [ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], [ 1, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], 
      [ 1, 1, 0, 1, 1, 1, 1, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2 ], [ 1, 1, 1, 0, 1, 1, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 2, 2 ], 
      [ 1, 1, 1, 1, 0, 2, 1, 2, 1, 2, 1, 2, 2, 2, 1, 1, 2, 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 2 ], [ 1, 1, 1, 1, 2, 0, 2, 1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 2, 2 ], 
      [ 1, 1, 1, 2, 1, 2, 0, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2 ], [ 1, 1, 2, 1, 2, 1, 2, 0, 2, 1, 2, 1, 1, 2, 1, 2, 1, 1, 2, 2, 2, 2, 2, 1, 2, 2, 2, 1 ], 
      [ 1, 2, 1, 2, 1, 2, 1, 2, 0, 2, 1, 1, 1, 2, 2, 2, 2, 2, 1, 2, 1, 1, 2, 2, 1, 2, 2, 1 ], [ 1, 2, 2, 1, 2, 1, 2, 1, 2, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1, 1, 2, 1, 1, 2 ], 
      [ 1, 2, 2, 2, 1, 2, 1, 2, 1, 1, 0, 1, 1, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1, 2, 1, 1, 1, 2 ], [ 1, 2, 2, 2, 2, 1, 2, 1, 1, 1, 1, 0, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 1, 2, 1 ], 
      [ 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 0, 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 1, 1 ], [ 2, 1, 1, 2, 2, 1, 1, 2, 2, 2, 2, 2, 2, 0, 2, 1, 1, 1, 2, 1, 1, 1, 2, 2, 2, 1, 1, 2 ], 
      [ 2, 1, 2, 1, 1, 2, 2, 1, 2, 2, 2, 2, 2, 2, 0, 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 1 ], [ 2, 1, 2, 2, 1, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 0, 1, 1, 2, 2, 2, 2, 1, 2, 1, 1, 1, 2 ], 
      [ 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 2, 1, 2, 1, 1, 1, 0, 1, 2, 2, 1, 2, 2, 2, 1, 1, 2, 1 ], [ 2, 1, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 0, 2, 2, 2, 1, 2, 1, 2, 2, 1, 1 ], 
      [ 2, 2, 1, 1, 1, 2, 2, 2, 1, 2, 2, 2, 2, 2, 1, 2, 2, 2, 0, 1, 1, 1, 1, 1, 1, 2, 2, 1 ], [ 2, 2, 1, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 1, 0, 1, 1, 1, 1, 2, 1, 1, 2 ], 
      [ 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 1, 2, 2, 1, 2, 1, 1, 0, 1, 2, 2, 1, 1, 2, 1 ], [ 2, 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 2, 1, 1, 2, 2, 2, 1, 1, 1, 1, 0, 2, 1, 2, 2, 1, 1 ], 
      [ 2, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 2, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 0, 1, 1, 1, 1, 2 ], [ 2, 2, 2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 2, 1, 1, 1, 2, 1, 1, 0, 2, 2, 1, 1 ], 
      [ 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 1, 1, 2, 2, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 0, 1, 2, 1 ], [ 2, 2, 2, 2, 2, 1, 2, 2, 2, 1, 1, 1, 2, 1, 2, 1, 1, 2, 2, 1, 1, 2, 1, 2, 1, 0, 1, 2 ], 
      [ 2, 2, 2, 2, 2, 2, 1, 2, 2, 1, 1, 2, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 1, 2, 1, 0, 2 ], [ 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 2, 1, 2, 1, 1, 1, 2, 1, 1, 2, 1, 1, 2, 2, 0 ] ],
  SmallSchemeIdentification := 8 )
