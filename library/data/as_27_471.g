rec(
  CharacterTable := [ [ 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], [ 1, 1, 1, 3, 3, 3*E(3), 3*E(3)^2, 3*E(3), 3*E(3)^2, 3*E(3)^2, 3*E(3), 1 ], 
      [ 1, 1, 1, 3, 3, 3*E(3)^2, 3*E(3), 3*E(3)^2, 3*E(3), 3*E(3), 3*E(3)^2, 1 ], [ 1, 1, 1, 3*E(3), 3*E(3)^2, -3*E(9)^4-3*E(9)^7, -3*E(9)^2-3*E(9)^5, 3*E(9)^7, 3*E(9)^2, 3*E(9)^5, 3*E(9)^4, 1 ], 
      [ 1, 1, 1, 3*E(3), 3*E(3)^2, 3*E(9)^4, 3*E(9)^5, -3*E(9)^4-3*E(9)^7, -3*E(9)^2-3*E(9)^5, 3*E(9)^2, 3*E(9)^7, 1 ], 
      [ 1, 1, 1, 3*E(3), 3*E(3)^2, 3*E(9)^7, 3*E(9)^2, 3*E(9)^4, 3*E(9)^5, -3*E(9)^2-3*E(9)^5, -3*E(9)^4-3*E(9)^7, 1 ], 
      [ 1, 1, 1, 3*E(3)^2, 3*E(3), -3*E(9)^2-3*E(9)^5, -3*E(9)^4-3*E(9)^7, 3*E(9)^2, 3*E(9)^7, 3*E(9)^4, 3*E(9)^5, 1 ], [ 1, 1, 1, 3*E(3)^2, 3*E(3), 3*E(9)^2, 3*E(9)^7, 3*E(9)^5, 3*E(9)^4, 
          -3*E(9)^4-3*E(9)^7, -3*E(9)^2-3*E(9)^5, 1 ], [ 1, 1, 1, 3*E(3)^2, 3*E(3), 3*E(9)^5, 3*E(9)^4, -3*E(9)^2-3*E(9)^5, -3*E(9)^4-3*E(9)^7, 3*E(9)^7, 3*E(9)^2, 1 ], 
      [ 1, E(3), E(3)^2, 0, 0, 0, 0, 0, 0, 0, 0, 9 ], [ 1, E(3)^2, E(3), 0, 0, 0, 0, 0, 0, 0, 0, 9 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10 ], [ 2, 0, 1, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10 ], 
      [ 1, 2, 0, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10 ], [ 4, 4, 4, 0, 1, 2, 3, 3, 3, 7, 7, 7, 9, 9, 9, 10, 10, 10, 6, 6, 6, 8, 8, 8, 5, 5, 5 ], 
      [ 4, 4, 4, 2, 0, 1, 3, 3, 3, 7, 7, 7, 9, 9, 9, 10, 10, 10, 6, 6, 6, 8, 8, 8, 5, 5, 5 ], [ 4, 4, 4, 1, 2, 0, 3, 3, 3, 7, 7, 7, 9, 9, 9, 10, 10, 10, 6, 6, 6, 8, 8, 8, 5, 5, 5 ], 
      [ 3, 3, 3, 4, 4, 4, 0, 1, 2, 10, 10, 10, 8, 8, 8, 5, 5, 5, 9, 9, 9, 6, 6, 6, 7, 7, 7 ], [ 3, 3, 3, 4, 4, 4, 2, 0, 1, 10, 10, 10, 8, 8, 8, 5, 5, 5, 9, 9, 9, 6, 6, 6, 7, 7, 7 ], 
      [ 3, 3, 3, 4, 4, 4, 1, 2, 0, 10, 10, 10, 8, 8, 8, 5, 5, 5, 9, 9, 9, 6, 6, 6, 7, 7, 7 ], [ 6, 6, 6, 8, 8, 8, 9, 9, 9, 0, 1, 2, 7, 7, 7, 4, 4, 4, 5, 5, 5, 10, 10, 10, 3, 3, 3 ], 
      [ 6, 6, 6, 8, 8, 8, 9, 9, 9, 2, 0, 1, 7, 7, 7, 4, 4, 4, 5, 5, 5, 10, 10, 10, 3, 3, 3 ], [ 6, 6, 6, 8, 8, 8, 9, 9, 9, 1, 2, 0, 7, 7, 7, 4, 4, 4, 5, 5, 5, 10, 10, 10, 3, 3, 3 ], 
      [ 5, 5, 5, 10, 10, 10, 7, 7, 7, 8, 8, 8, 0, 1, 2, 6, 6, 6, 3, 3, 3, 4, 4, 4, 9, 9, 9 ], [ 5, 5, 5, 10, 10, 10, 7, 7, 7, 8, 8, 8, 2, 0, 1, 6, 6, 6, 3, 3, 3, 4, 4, 4, 9, 9, 9 ], 
      [ 5, 5, 5, 10, 10, 10, 7, 7, 7, 8, 8, 8, 1, 2, 0, 6, 6, 6, 3, 3, 3, 4, 4, 4, 9, 9, 9 ], [ 8, 8, 8, 9, 9, 9, 6, 6, 6, 3, 3, 3, 5, 5, 5, 0, 1, 2, 10, 10, 10, 7, 7, 7, 4, 4, 4 ], 
      [ 8, 8, 8, 9, 9, 9, 6, 6, 6, 3, 3, 3, 5, 5, 5, 2, 0, 1, 10, 10, 10, 7, 7, 7, 4, 4, 4 ], [ 8, 8, 8, 9, 9, 9, 6, 6, 6, 3, 3, 3, 5, 5, 5, 1, 2, 0, 10, 10, 10, 7, 7, 7, 4, 4, 4 ], 
      [ 7, 7, 7, 5, 5, 5, 10, 10, 10, 6, 6, 6, 4, 4, 4, 9, 9, 9, 0, 1, 2, 3, 3, 3, 8, 8, 8 ], [ 7, 7, 7, 5, 5, 5, 10, 10, 10, 6, 6, 6, 4, 4, 4, 9, 9, 9, 2, 0, 1, 3, 3, 3, 8, 8, 8 ], 
      [ 7, 7, 7, 5, 5, 5, 10, 10, 10, 6, 6, 6, 4, 4, 4, 9, 9, 9, 1, 2, 0, 3, 3, 3, 8, 8, 8 ], [ 10, 10, 10, 7, 7, 7, 5, 5, 5, 9, 9, 9, 3, 3, 3, 8, 8, 8, 4, 4, 4, 0, 1, 2, 6, 6, 6 ], 
      [ 10, 10, 10, 7, 7, 7, 5, 5, 5, 9, 9, 9, 3, 3, 3, 8, 8, 8, 4, 4, 4, 2, 0, 1, 6, 6, 6 ], [ 10, 10, 10, 7, 7, 7, 5, 5, 5, 9, 9, 9, 3, 3, 3, 8, 8, 8, 4, 4, 4, 1, 2, 0, 6, 6, 6 ], 
      [ 9, 9, 9, 6, 6, 6, 8, 8, 8, 4, 4, 4, 10, 10, 10, 3, 3, 3, 7, 7, 7, 5, 5, 5, 0, 1, 2 ], [ 9, 9, 9, 6, 6, 6, 8, 8, 8, 4, 4, 4, 10, 10, 10, 3, 3, 3, 7, 7, 7, 5, 5, 5, 2, 0, 1 ], 
      [ 9, 9, 9, 6, 6, 6, 8, 8, 8, 4, 4, 4, 10, 10, 10, 3, 3, 3, 7, 7, 7, 5, 5, 5, 1, 2, 0 ] ],
  SmallSchemeIdentification := 471 )