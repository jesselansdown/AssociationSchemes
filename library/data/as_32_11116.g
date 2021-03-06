rec(
  CharacterTable := [ [ 1, 1, 1, 1, 2, 2, 4, 4, 4, 4, 8, 1 ], [ 1, 1, 1, 1, 2, 2, -4, -4, -4, -4, 8, 1 ], [ 1, 1, -1, -1, 2, -2, 
          -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, 0, 2 ], [ 1, 1, -1, -1, 2, -2, 2*E(8)-2*E(8)^3, 2*E(8)-2*E(8)^3, -2*E(8)+2*E(8)^3, -2*E(8)+2*E(8)^3, 0, 2 ], 
      [ 1, 1, 1, 1, 2, 2, 0, 0, 0, 0, -8, 2 ], [ 1, -1, E(4), -E(4), 0, 0, -2, 2, 2*E(4), -2*E(4), 0, 4 ], [ 1, -1, E(4), -E(4), 0, 0, 2, -2, -2*E(4), 2*E(4), 0, 4 ], 
      [ 1, -1, -E(4), E(4), 0, 0, -2, 2, -2*E(4), 2*E(4), 0, 4 ], [ 1, -1, -E(4), E(4), 0, 0, 2, -2, 2*E(4), -2*E(4), 0, 4 ], [ 1, 1, -1, -1, -2, 2, 0, 0, 0, 0, 0, 4 ], 
      [ 1, 1, 1, 1, -2, -2, 0, 0, 0, 0, 0, 4 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 1, 0, 3, 2, 4, 4, 5, 5, 7, 7, 7, 7, 6, 6, 6, 6, 9, 9, 9, 9, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10 ], [ 3, 2, 0, 1, 5, 5, 4, 4, 8, 8, 8, 8, 9, 9, 9, 9, 7, 7, 7, 7, 6, 6, 6, 6, 
          10, 10, 10, 10, 10, 10, 10, 10 ], [ 2, 3, 1, 0, 5, 5, 4, 4, 9, 9, 9, 9, 8, 8, 8, 8, 6, 6, 6, 6, 7, 7, 7, 7, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 4, 4, 5, 5, 0, 1, 2, 3, 6, 6, 7, 7, 6, 6, 7, 7, 8, 8, 9, 9, 8, 8, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10 ], [ 4, 4, 5, 5, 1, 0, 3, 2, 7, 7, 6, 6, 7, 7, 6, 6, 
          9, 9, 8, 8, 9, 9, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10 ], [ 5, 5, 4, 4, 3, 2, 0, 1, 8, 8, 9, 9, 8, 8, 9, 9, 7, 7, 6, 6, 7, 7, 6, 6, 10, 10, 10, 10, 10, 10, 10, 10 ], 
      [ 5, 5, 4, 4, 2, 3, 1, 0, 9, 9, 8, 8, 9, 9, 8, 8, 6, 6, 7, 7, 6, 6, 7, 7, 10, 10, 10, 10, 10, 10, 10, 10 ], [ 6, 7, 9, 8, 6, 7, 9, 8, 
          0, 4, 10, 10, 10, 10, 1, 4, 3, 5, 10, 10, 10, 10, 2, 5, 6, 6, 7, 7, 8, 8, 9, 9 ], [ 6, 7, 9, 8, 6, 7, 9, 8, 4, 0, 10, 10, 10, 10, 4, 1, 5, 3, 10, 10, 10, 10, 5, 2, 7, 7, 6, 6, 9, 9, 8, 8 ], 
      [ 6, 7, 9, 8, 7, 6, 8, 9, 10, 10, 0, 4, 1, 4, 10, 10, 10, 10, 3, 5, 2, 5, 10, 10, 8, 9, 8, 9, 6, 7, 6, 7 ], [ 6, 7, 
          9, 8, 7, 6, 8, 9, 10, 10, 4, 0, 4, 1, 10, 10, 10, 10, 5, 3, 5, 2, 10, 10, 9, 8, 9, 8, 7, 6, 7, 6 ], [ 7, 6, 8, 9, 6, 7, 9, 8, 10, 10, 1, 4, 0, 4, 10, 10, 10, 10, 2, 5, 3, 5, 10, 10, 9, 8, 
          9, 8, 7, 6, 7, 6 ], [ 7, 6, 8, 9, 6, 7, 9, 8, 10, 10, 4, 1, 4, 0, 10, 10, 10, 10, 5, 2, 5, 3, 10, 10, 8, 9, 8, 9, 6, 7, 6, 7 ], 
      [ 7, 6, 8, 9, 7, 6, 8, 9, 1, 4, 10, 10, 10, 10, 0, 4, 2, 5, 10, 10, 10, 10, 3, 5, 7, 7, 6, 6, 9, 9, 8, 8 ], [ 7, 6, 8, 9, 7, 6, 8, 9, 4, 1, 10, 10, 10, 10, 4, 0, 5, 2, 10, 
          10, 10, 10, 5, 3, 6, 6, 7, 7, 8, 8, 9, 9 ], [ 9, 8, 7, 6, 9, 8, 7, 6, 2, 5, 10, 10, 10, 10, 3, 5, 0, 4, 10, 10, 10, 10, 1, 4, 9, 9, 8, 8, 6, 6, 7, 7 ], 
      [ 9, 8, 7, 6, 9, 8, 7, 6, 5, 2, 10, 10, 10, 10, 5, 3, 4, 0, 10, 10, 10, 10, 4, 1, 8, 8, 9, 9, 7, 7, 6, 6 ], [ 9, 8, 7, 6, 8, 9, 6, 7, 10, 10, 2, 5, 
          3, 5, 10, 10, 10, 10, 0, 4, 1, 4, 10, 10, 6, 7, 6, 7, 9, 8, 9, 8 ], [ 9, 8, 7, 6, 8, 9, 6, 7, 10, 10, 5, 2, 5, 3, 10, 10, 10, 10, 4, 0, 4, 1, 10, 10, 7, 6, 7, 6, 8, 9, 8, 9 ], 
      [ 8, 9, 6, 7, 9, 8, 7, 6, 10, 10, 3, 5, 2, 5, 10, 10, 10, 10, 1, 4, 0, 4, 10, 10, 7, 6, 7, 6, 8, 9, 8, 9 ], [ 8, 9, 6, 7, 9, 
          8, 7, 6, 10, 10, 5, 3, 5, 2, 10, 10, 10, 10, 4, 1, 4, 0, 10, 10, 6, 7, 6, 7, 9, 8, 9, 8 ], [ 8, 9, 6, 7, 8, 9, 6, 7, 3, 5, 10, 10, 10, 10, 2, 5, 1, 4, 10, 10, 10, 10, 0, 4, 8, 8, 
          9, 9, 7, 7, 6, 6 ], [ 8, 9, 6, 7, 8, 9, 6, 7, 5, 3, 10, 10, 10, 10, 5, 2, 4, 1, 10, 10, 10, 10, 4, 0, 9, 9, 8, 8, 6, 6, 7, 7 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 6, 7, 9, 8, 8, 9, 7, 6, 8, 9, 6, 7, 7, 6, 9, 8, 0, 4, 4, 1, 5, 3, 2, 5 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 6, 7, 8, 9, 9, 8, 7, 6, 8, 9, 
          7, 6, 6, 7, 9, 8, 4, 0, 1, 4, 3, 5, 5, 2 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 7, 6, 9, 8, 8, 9, 6, 7, 9, 8, 6, 7, 7, 6, 8, 9, 4, 1, 0, 4, 2, 5, 5, 3 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 7, 6, 8, 9, 9, 8, 6, 7, 9, 8, 7, 6, 6, 7, 8, 9, 1, 4, 4, 0, 5, 2, 3, 5 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 9, 8, 
          6, 7, 7, 6, 8, 9, 6, 7, 8, 9, 9, 8, 7, 6, 5, 2, 3, 5, 0, 4, 4, 1 ], [ 10, 10, 10, 10, 10, 10, 10, 10, 9, 8, 7, 6, 6, 7, 8, 9, 6, 7, 9, 8, 8, 9, 7, 6, 2, 5, 5, 3, 4, 0, 1, 4 ], 
      [ 10, 10, 10, 10, 10, 10, 10, 10, 8, 9, 6, 7, 7, 6, 9, 8, 7, 6, 8, 9, 9, 8, 6, 7, 3, 5, 5, 2, 4, 1, 0, 4 ], [ 10, 10, 10, 10, 
          10, 10, 10, 10, 8, 9, 7, 6, 6, 7, 9, 8, 7, 6, 9, 8, 8, 9, 6, 7, 5, 3, 2, 5, 1, 4, 4, 0 ] ],
  SmallSchemeIdentification := 11116 )