rec(
  CharacterTable := [ [ 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 1 ], [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 4, 4, 4*E(3)^2, 4*E(3), 4*E(3)^2, 4*E(3), 1 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 4, 4, 4*E(3), 4*E(3)^2, 4*E(3), 4*E(3)^2, 1 ], [ 1, 1, 1, 1, 1, 1, 2*E(5)^2+2*E(5)^3, 2*E(5)+2*E(5)^4, 2*E(5)^2+2*E(5)^3, 2*E(5)^2+2*E(5)^3, 2*E(5)+2*E(5)^4, 
          2*E(5)+2*E(5)^4, 2 ], [ 1, 1, 1, 1, 1, 1, 2*E(5)+2*E(5)^4, 2*E(5)^2+2*E(5)^3, 2*E(5)+2*E(5)^4, 2*E(5)+2*E(5)^4, 2*E(5)^2+2*E(5)^3, 2*E(5)^2+2*E(5)^3, 2 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 2*E(5)^2+2*E(5)^3, 2*E(5)+2*E(5)^4, 2*E(15)+2*E(15)^4, 2*E(15)^11+2*E(15)^14, 2*E(15)^7+2*E(15)^13, 2*E(15)^2+2*E(15)^8, 2 ], 
      [ 1, 1, E(3), E(3)^2, E(3), E(3)^2, 2*E(5)+2*E(5)^4, 2*E(5)^2+2*E(5)^3, 2*E(15)^7+2*E(15)^13, 2*E(15)^2+2*E(15)^8, 2*E(15)+2*E(15)^4, 2*E(15)^11+2*E(15)^14, 2 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 2*E(5)^2+2*E(5)^3, 2*E(5)+2*E(5)^4, 2*E(15)^11+2*E(15)^14, 2*E(15)+2*E(15)^4, 2*E(15)^2+2*E(15)^8, 2*E(15)^7+2*E(15)^13, 2 ], 
      [ 1, 1, E(3)^2, E(3), E(3)^2, E(3), 2*E(5)+2*E(5)^4, 2*E(5)^2+2*E(5)^3, 2*E(15)^2+2*E(15)^8, 2*E(15)^7+2*E(15)^13, 2*E(15)^11+2*E(15)^14, 2*E(15)+2*E(15)^4, 2 ], 
      [ 1, -1, 1, 1, -1, -1, 0, 0, 0, 0, 0, 0, 5 ], [ 1, -1, E(3), E(3)^2, -E(3), -E(3)^2, 0, 0, 0, 0, 0, 0, 5 ], [ 1, -1, E(3)^2, E(3), -E(3)^2, -E(3), 0, 0, 0, 0, 0, 0, 5 ] ],
  RelationMatrix := [ [ 0, 1, 2, 3, 4, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 1, 
          0, 4, 5, 2, 3, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11 ], [ 3, 5, 0, 2, 1, 4, 8, 8, 8, 8, 10, 10, 10, 10, 9, 9, 9, 9, 6, 6, 6, 6, 11, 11, 11, 11, 7, 
          7, 7, 7 ], [ 2, 4, 3, 0, 5, 1, 9, 9, 9, 9, 11, 11, 11, 11, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 10, 10, 10, 10 ], 
      [ 5, 3, 1, 4, 0, 2, 8, 8, 8, 8, 10, 10, 10, 10, 9, 9, 9, 9, 6, 6, 6, 6, 11, 11, 11, 11, 7, 7, 7, 7 ], [ 4, 2, 5, 1, 3, 0, 9, 9, 9, 9, 11, 11, 11, 11, 6, 6, 6, 6, 8, 8, 8, 8, 7, 7, 7, 7, 
          10, 10, 10, 10 ], [ 6, 6, 9, 8, 9, 8, 0, 1, 7, 7, 6, 6, 7, 7, 3, 5, 10, 10, 2, 4, 11, 11, 8, 8, 10, 10, 9, 9, 11, 11 ], 
      [ 6, 6, 9, 8, 9, 8, 1, 0, 7, 7, 6, 6, 7, 7, 5, 3, 10, 10, 4, 2, 11, 11, 8, 8, 10, 10, 9, 9, 11, 11 ], [ 6, 6, 9, 8, 9, 8, 7, 7, 0, 1, 7, 7, 6, 6, 10, 10, 3, 5, 11, 11, 2, 4, 10, 10, 
          8, 8, 11, 11, 9, 9 ], [ 6, 6, 9, 8, 9, 8, 7, 7, 1, 0, 7, 7, 6, 6, 10, 10, 5, 3, 11, 11, 4, 2, 10, 10, 8, 8, 11, 11, 9, 9 ], 
      [ 7, 7, 11, 10, 11, 10, 6, 6, 7, 7, 0, 1, 6, 6, 8, 8, 10, 10, 9, 9, 11, 11, 3, 5, 8, 8, 2, 4, 9, 9 ], [ 7, 7, 11, 10, 11, 10, 6, 6, 7, 7, 1, 0, 6, 6, 8, 8, 10, 10, 9, 9, 11, 11, 
          5, 3, 8, 8, 4, 2, 9, 9 ], [ 7, 7, 11, 10, 11, 10, 7, 7, 6, 6, 6, 6, 0, 1, 10, 10, 8, 8, 11, 11, 9, 9, 8, 8, 3, 5, 9, 9, 2, 4 ], 
      [ 7, 7, 11, 10, 11, 10, 7, 7, 6, 6, 6, 6, 1, 0, 10, 10, 8, 8, 11, 11, 9, 9, 8, 8, 5, 3, 9, 9, 4, 2 ], [ 9, 9, 8, 6, 8, 6, 2, 4, 11, 11, 9, 9, 11, 11, 0, 1, 7, 7, 3, 5, 10, 
          10, 6, 6, 7, 7, 8, 8, 10, 10 ], [ 9, 9, 8, 6, 8, 6, 4, 2, 11, 11, 9, 9, 11, 11, 1, 0, 7, 7, 5, 3, 10, 10, 6, 6, 7, 7, 8, 8, 10, 10 ], 
      [ 9, 9, 8, 6, 8, 6, 11, 11, 2, 4, 11, 11, 9, 9, 7, 7, 0, 1, 10, 10, 3, 5, 7, 7, 6, 6, 10, 10, 8, 8 ], [ 9, 9, 8, 6, 8, 6, 11, 11, 4, 2, 11, 11, 9, 9, 7, 7, 1, 0, 10, 10, 
          5, 3, 7, 7, 6, 6, 10, 10, 8, 8 ], [ 8, 8, 6, 9, 6, 9, 3, 5, 10, 10, 8, 8, 10, 10, 2, 4, 11, 11, 0, 1, 7, 7, 9, 9, 11, 11, 6, 6, 7, 7 ], 
      [ 8, 8, 6, 9, 6, 9, 5, 3, 10, 10, 8, 8, 10, 10, 4, 2, 11, 11, 1, 0, 7, 7, 9, 9, 11, 11, 6, 6, 7, 7 ], [ 8, 8, 6, 9, 6, 9, 10, 10, 3, 5, 10, 10, 8, 8, 11, 11, 2, 4, 7, 
          7, 0, 1, 11, 11, 9, 9, 7, 7, 6, 6 ], [ 8, 8, 6, 9, 6, 9, 10, 10, 5, 3, 10, 10, 8, 8, 11, 11, 4, 2, 7, 7, 1, 0, 11, 11, 9, 9, 7, 7, 6, 6 ], 
      [ 11, 11, 10, 7, 10, 7, 9, 9, 11, 11, 2, 4, 9, 9, 6, 6, 7, 7, 8, 8, 10, 10, 0, 1, 6, 6, 3, 5, 8, 8 ], [ 11, 11, 10, 7, 10, 7, 9, 9, 11, 11, 4, 2, 9, 9, 6, 6, 7, 
          7, 8, 8, 10, 10, 1, 0, 6, 6, 5, 3, 8, 8 ], [ 11, 11, 10, 7, 10, 7, 11, 11, 9, 9, 9, 9, 2, 4, 7, 7, 6, 6, 10, 10, 8, 8, 6, 6, 0, 1, 8, 8, 3, 5 ], 
      [ 11, 11, 10, 7, 10, 7, 11, 11, 9, 9, 9, 9, 4, 2, 7, 7, 6, 6, 10, 10, 8, 8, 6, 6, 1, 0, 8, 8, 5, 3 ], [ 10, 10, 7, 11, 7, 11, 8, 8, 10, 10, 3, 5, 8, 8, 9, 
          9, 11, 11, 6, 6, 7, 7, 2, 4, 9, 9, 0, 1, 6, 6 ], [ 10, 10, 7, 11, 7, 11, 8, 8, 10, 10, 5, 3, 8, 8, 9, 9, 11, 11, 6, 6, 7, 7, 4, 2, 9, 9, 1, 0, 6, 6 ], 
      [ 10, 10, 7, 11, 7, 11, 10, 10, 8, 8, 8, 8, 3, 5, 11, 11, 9, 9, 7, 7, 6, 6, 9, 9, 2, 4, 6, 6, 0, 1 ], [ 10, 10, 7, 11, 7, 11, 10, 10, 8, 8, 8, 8, 5, 
          3, 11, 11, 9, 9, 7, 7, 6, 6, 9, 9, 4, 2, 6, 6, 1, 0 ] ],
  SmallSchemeIdentification := 197 )