rec(
  CharacterTable := [ [ 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], [ 1, 2, 3, 3, 3*E(3), 3*E(3)^2, 3*E(3), 3*E(3)^2, 3*E(3)^2, 3*E(3), 1 ], [ 1, 
          2, 3, 3, 3*E(3)^2, 3*E(3), 3*E(3)^2, 3*E(3), 3*E(3), 3*E(3)^2, 1 ], [ 1, 2, 3*E(3), 3*E(3)^2, -3*E(9)^4-3*E(9)^7, -3*E(9)^2-3*E(9)^5, 3*E(9)^7, 3*E(9)^2, 3*E(9)^5, 3*E(9)^4, 1 ], 
      [ 1, 2, 3*E(3), 3*E(3)^2, 3*E(9)^4, 3*E(9)^5, -3*E(9)^4-3*E(9)^7, -3*E(9)^2-3*E(9)^5, 3*E(9)^2, 3*E(9)^7, 1 ], 
      [ 1, 2, 3*E(3), 3*E(3)^2, 3*E(9)^7, 3*E(9)^2, 3*E(9)^4, 3*E(9)^5, -3*E(9)^2-3*E(9)^5, -3*E(9)^4-3*E(9)^7, 1 ], 
      [ 1, 2, 3*E(3)^2, 3*E(3), -3*E(9)^2-3*E(9)^5, -3*E(9)^4-3*E(9)^7, 3*E(9)^2, 3*E(9)^7, 3*E(9)^4, 3*E(9)^5, 1 ], [ 1, 2, 3*E(3)^2, 3*E(3), 3*E(9)^2, 3*E(9)^7, 3*E(9)^5, 3*E(9)^4, 
          -3*E(9)^4-3*E(9)^7, -3*E(9)^2-3*E(9)^5, 1 ], [ 1, 2, 3*E(3)^2, 3*E(3), 3*E(9)^5, 3*E(9)^4, -3*E(9)^2-3*E(9)^5, -3*E(9)^4-3*E(9)^7, 3*E(9)^7, 3*E(9)^2, 1 ], 
      [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 18 ] ],
  RelationMatrix := [ [ 0, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9 ], [ 1, 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9 ], 
      [ 1, 1, 0, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9 ], [ 3, 3, 3, 0, 1, 1, 2, 2, 2, 6, 6, 6, 8, 8, 8, 9, 9, 9, 5, 5, 5, 7, 7, 7, 4, 4, 4 ], 
      [ 3, 3, 3, 1, 0, 1, 2, 2, 2, 6, 6, 6, 8, 8, 8, 9, 9, 9, 5, 5, 5, 7, 7, 7, 4, 4, 4 ], [ 3, 3, 3, 1, 1, 0, 2, 2, 2, 6, 6, 6, 8, 8, 8, 9, 9, 9, 5, 5, 5, 7, 7, 7, 4, 4, 4 ], 
      [ 2, 2, 2, 3, 3, 3, 0, 1, 1, 9, 9, 9, 7, 7, 7, 4, 4, 4, 8, 8, 8, 5, 5, 5, 6, 6, 6 ], [ 2, 2, 2, 3, 3, 3, 1, 0, 1, 9, 9, 9, 7, 7, 7, 4, 4, 4, 8, 8, 8, 5, 5, 5, 6, 6, 6 ], 
      [ 2, 2, 2, 3, 3, 3, 1, 1, 0, 9, 9, 9, 7, 7, 7, 4, 4, 4, 8, 8, 8, 5, 5, 5, 6, 6, 6 ], [ 5, 5, 5, 7, 7, 7, 8, 8, 8, 0, 1, 1, 6, 6, 6, 3, 3, 3, 4, 4, 4, 9, 9, 9, 2, 2, 2 ], 
      [ 5, 5, 5, 7, 7, 7, 8, 8, 8, 1, 0, 1, 6, 6, 6, 3, 3, 3, 4, 4, 4, 9, 9, 9, 2, 2, 2 ], [ 5, 5, 5, 7, 7, 7, 8, 8, 8, 1, 1, 0, 6, 6, 6, 3, 3, 3, 4, 4, 4, 9, 9, 9, 2, 2, 2 ], 
      [ 4, 4, 4, 9, 9, 9, 6, 6, 6, 7, 7, 7, 0, 1, 1, 5, 5, 5, 2, 2, 2, 3, 3, 3, 8, 8, 8 ], [ 4, 4, 4, 9, 9, 9, 6, 6, 6, 7, 7, 7, 1, 0, 1, 5, 5, 5, 2, 2, 2, 3, 3, 3, 8, 8, 8 ], 
      [ 4, 4, 4, 9, 9, 9, 6, 6, 6, 7, 7, 7, 1, 1, 0, 5, 5, 5, 2, 2, 2, 3, 3, 3, 8, 8, 8 ], [ 7, 7, 7, 8, 8, 8, 5, 5, 5, 2, 2, 2, 4, 4, 4, 0, 1, 1, 9, 9, 9, 6, 6, 6, 3, 3, 3 ], 
      [ 7, 7, 7, 8, 8, 8, 5, 5, 5, 2, 2, 2, 4, 4, 4, 1, 0, 1, 9, 9, 9, 6, 6, 6, 3, 3, 3 ], [ 7, 7, 7, 8, 8, 8, 5, 5, 5, 2, 2, 2, 4, 4, 4, 1, 1, 0, 9, 9, 9, 6, 6, 6, 3, 3, 3 ], 
      [ 6, 6, 6, 4, 4, 4, 9, 9, 9, 5, 5, 5, 3, 3, 3, 8, 8, 8, 0, 1, 1, 2, 2, 2, 7, 7, 7 ], [ 6, 6, 6, 4, 4, 4, 9, 9, 9, 5, 5, 5, 3, 3, 3, 8, 8, 8, 1, 0, 1, 2, 2, 2, 7, 7, 7 ], 
      [ 6, 6, 6, 4, 4, 4, 9, 9, 9, 5, 5, 5, 3, 3, 3, 8, 8, 8, 1, 1, 0, 2, 2, 2, 7, 7, 7 ], [ 9, 9, 9, 6, 6, 6, 4, 4, 4, 8, 8, 8, 2, 2, 2, 7, 7, 7, 3, 3, 3, 0, 1, 1, 5, 5, 5 ], 
      [ 9, 9, 9, 6, 6, 6, 4, 4, 4, 8, 8, 8, 2, 2, 2, 7, 7, 7, 3, 3, 3, 1, 0, 1, 5, 5, 5 ], [ 9, 9, 9, 6, 6, 6, 4, 4, 4, 8, 8, 8, 2, 2, 2, 7, 7, 7, 3, 3, 3, 1, 1, 0, 5, 5, 5 ], 
      [ 8, 8, 8, 5, 5, 5, 7, 7, 7, 3, 3, 3, 9, 9, 9, 2, 2, 2, 6, 6, 6, 4, 4, 4, 0, 1, 1 ], [ 8, 8, 8, 5, 5, 5, 7, 7, 7, 3, 3, 3, 9, 9, 9, 2, 2, 2, 6, 6, 6, 4, 4, 4, 1, 0, 1 ], 
      [ 8, 8, 8, 5, 5, 5, 7, 7, 7, 3, 3, 3, 9, 9, 9, 2, 2, 2, 6, 6, 6, 4, 4, 4, 1, 1, 0 ] ],
  SmallSchemeIdentification := 467 )