rec(
  CharacterTable := [ [ 1, 1, 8, 8, 8, 1 ], [ 1, 1, 2*E(13)^4+2*E(13)^6+2*E(13)^7+2*E(13)^9, 2*E(13)^2+2*E(13)^3+2*E(13)^10+2*E(13)^11, 2*E(13)+2*E(13)^5+2*E(13)^8+2*E(13)^12, 4 ], 
      [ 1, 1, 2*E(13)^2+2*E(13)^3+2*E(13)^10+2*E(13)^11, 2*E(13)+2*E(13)^5+2*E(13)^8+2*E(13)^12, 2*E(13)^4+2*E(13)^6+2*E(13)^7+2*E(13)^9, 4 ], 
      [ 1, 1, 2*E(13)+2*E(13)^5+2*E(13)^8+2*E(13)^12, 2*E(13)^4+2*E(13)^6+2*E(13)^7+2*E(13)^9, 2*E(13)^2+2*E(13)^3+2*E(13)^10+2*E(13)^11, 4 ], [ 1, -1, 0, 0, 0, 13 ] ],
  RelationMatrix := [ [ 0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4 ], [ 1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4 ], 
      [ 2, 2, 0, 1, 3, 3, 3, 3, 4, 4, 2, 2, 2, 2, 3, 3, 4, 4, 2, 2, 3, 3, 4, 4, 4, 4 ], [ 2, 2, 1, 0, 3, 3, 3, 3, 4, 4, 2, 2, 2, 2, 3, 3, 4, 4, 2, 2, 3, 3, 4, 4, 4, 4 ], 
      [ 2, 2, 3, 3, 0, 1, 4, 4, 3, 3, 2, 2, 3, 3, 4, 4, 2, 2, 4, 4, 2, 2, 3, 3, 4, 4 ], [ 2, 2, 3, 3, 1, 0, 4, 4, 3, 3, 2, 2, 3, 3, 4, 4, 2, 2, 4, 4, 2, 2, 3, 3, 4, 4 ], 
      [ 2, 2, 3, 3, 4, 4, 0, 1, 3, 3, 4, 4, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2 ], [ 2, 2, 3, 3, 4, 4, 1, 0, 3, 3, 4, 4, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 2, 2 ], 
      [ 2, 2, 4, 4, 3, 3, 3, 3, 0, 1, 3, 3, 4, 4, 2, 2, 2, 2, 4, 4, 4, 4, 2, 2, 3, 3 ], [ 2, 2, 4, 4, 3, 3, 3, 3, 1, 0, 3, 3, 4, 4, 2, 2, 2, 2, 4, 4, 4, 4, 2, 2, 3, 3 ], 
      [ 3, 3, 2, 2, 2, 2, 4, 4, 3, 3, 0, 1, 4, 4, 2, 2, 4, 4, 3, 3, 3, 3, 2, 2, 4, 4 ], [ 3, 3, 2, 2, 2, 2, 4, 4, 3, 3, 1, 0, 4, 4, 2, 2, 4, 4, 3, 3, 3, 3, 2, 2, 4, 4 ], 
      [ 3, 3, 2, 2, 3, 3, 2, 2, 4, 4, 4, 4, 0, 1, 4, 4, 2, 2, 3, 3, 2, 2, 4, 4, 3, 3 ], [ 3, 3, 2, 2, 3, 3, 2, 2, 4, 4, 4, 4, 1, 0, 4, 4, 2, 2, 3, 3, 2, 2, 4, 4, 3, 3 ], 
      [ 3, 3, 3, 3, 4, 4, 2, 2, 2, 2, 2, 2, 4, 4, 0, 1, 4, 4, 2, 2, 4, 4, 3, 3, 3, 3 ], [ 3, 3, 3, 3, 4, 4, 2, 2, 2, 2, 2, 2, 4, 4, 1, 0, 4, 4, 2, 2, 4, 4, 3, 3, 3, 3 ], 
      [ 3, 3, 4, 4, 2, 2, 3, 3, 2, 2, 4, 4, 2, 2, 4, 4, 0, 1, 4, 4, 3, 3, 3, 3, 2, 2 ], [ 3, 3, 4, 4, 2, 2, 3, 3, 2, 2, 4, 4, 2, 2, 4, 4, 1, 0, 4, 4, 3, 3, 3, 3, 2, 2 ], 
      [ 4, 4, 2, 2, 4, 4, 3, 3, 4, 4, 3, 3, 3, 3, 2, 2, 4, 4, 0, 1, 2, 2, 3, 3, 2, 2 ], [ 4, 4, 2, 2, 4, 4, 3, 3, 4, 4, 3, 3, 3, 3, 2, 2, 4, 4, 1, 0, 2, 2, 3, 3, 2, 2 ], 
      [ 4, 4, 3, 3, 2, 2, 4, 4, 4, 4, 3, 3, 2, 2, 4, 4, 3, 3, 2, 2, 0, 1, 2, 2, 3, 3 ], [ 4, 4, 3, 3, 2, 2, 4, 4, 4, 4, 3, 3, 2, 2, 4, 4, 3, 3, 2, 2, 1, 0, 2, 2, 3, 3 ], 
      [ 4, 4, 4, 4, 3, 3, 4, 4, 2, 2, 2, 2, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 0, 1, 2, 2 ], [ 4, 4, 4, 4, 3, 3, 4, 4, 2, 2, 2, 2, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 1, 0, 2, 2 ], 
      [ 4, 4, 4, 4, 4, 4, 2, 2, 3, 3, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 3, 3, 2, 2, 0, 1 ], [ 4, 4, 4, 4, 4, 4, 2, 2, 3, 3, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 3, 3, 2, 2, 1, 0 ] ],
  SmallSchemeIdentification := 18 )