rec(
  CharacterTable := [ [ 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], [ 1, 1, -2, -2, -2, -2, -2, -2, -2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 2*E(7)^3+2*E(7)^4, 2*E(7)^3+2*E(7)^4, 2*E(7)+2*E(7)^6, 2*E(7)+2*E(7)^6, 2*E(7)^2+2*E(7)^5, 2*E(7)^2+2*E(7)^5, 2 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 2*E(7)^2+2*E(7)^5, 2*E(7)^2+2*E(7)^5, 2*E(7)^3+2*E(7)^4, 2*E(7)^3+2*E(7)^4, 2*E(7)+2*E(7)^6, 2*E(7)+2*E(7)^6, 2 ], 
      [ 2, 2, 0, 0, 0, 0, 0, 0, 0, 2*E(7)+2*E(7)^6, 2*E(7)+2*E(7)^6, 2*E(7)^2+2*E(7)^5, 2*E(7)^2+2*E(7)^5, 2*E(7)^3+2*E(7)^4, 2*E(7)^3+2*E(7)^4, 2 ], [ 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14 
         ] ],
  RelationMatrix := [ [ 0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14 ], [ 1, 0, 2, 
          2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14 ], [ 2, 2, 0, 1, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8 ], 
      [ 2, 2, 1, 0, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8 ], [ 3, 3, 10, 10, 0, 1, 11, 11, 13, 13, 9, 9, 14, 14, 12, 12, 6, 6, 2, 2, 4, 4, 8, 8, 5, 5, 7, 7 ],
      [ 3, 3, 10, 10, 1, 0, 11, 11, 13, 13, 9, 9, 14, 14, 12, 12, 6, 6, 2, 2, 4, 4, 8, 8, 5, 5, 7, 7 ], [ 4, 4, 9, 9, 12, 12, 0, 1, 10, 10, 14, 14, 11, 11, 13, 13, 2, 2, 5, 5, 7, 7, 3, 3, 8, 8, 6, 6 ],
      [ 4, 4, 9, 9, 12, 12, 1, 0, 10, 10, 14, 14, 11, 11, 13, 13, 2, 2, 5, 5, 7, 7, 3, 3, 8, 8, 6, 6 ], [ 5, 5, 12, 12, 14, 14, 9, 9, 0, 1, 13, 13, 10, 10, 11, 11, 4, 4, 7, 7, 8, 8, 2, 2, 6, 6, 3, 3 ],
      [ 5, 5, 12, 12, 14, 14, 9, 9, 1, 0, 13, 13, 10, 10, 11, 11, 4, 4, 7, 7, 8, 8, 2, 2, 6, 6, 3, 3 ], [ 6, 6, 11, 11, 10, 10, 13, 13, 14, 14, 0, 1, 12, 12, 9, 9, 8, 8, 3, 3, 2, 2, 7, 7, 4, 4, 5, 5 ],
      [ 6, 6, 11, 11, 10, 10, 13, 13, 14, 14, 1, 0, 12, 12, 9, 9, 8, 8, 3, 3, 2, 2, 7, 7, 4, 4, 5, 5 ], [ 7, 7, 14, 14, 13, 13, 12, 12, 9, 9, 11, 11, 0, 1, 10, 10, 5, 5, 8, 8, 6, 6, 4, 4, 3, 3, 2, 2 ],
      [ 7, 7, 14, 14, 13, 13, 12, 12, 9, 9, 11, 11, 1, 0, 10, 10, 5, 5, 8, 8, 6, 6, 4, 4, 3, 3, 2, 2 ], [ 8, 8, 13, 13, 11, 11, 14, 14, 12, 12, 10, 10, 9, 9, 0, 1, 7, 7, 6, 6, 3, 3, 5, 5, 2, 2, 4, 4 ],
      [ 8, 8, 13, 13, 11, 11, 14, 14, 12, 12, 10, 10, 9, 9, 1, 0, 7, 7, 6, 6, 3, 3, 5, 5, 2, 2, 4, 4 ], [ 10, 10, 3, 3, 6, 6, 2, 2, 4, 4, 8, 8, 5, 5, 7, 7, 0, 1, 11, 11, 13, 13, 9, 9, 14, 14, 12, 12 ],
      [ 10, 10, 3, 3, 6, 6, 2, 2, 4, 4, 8, 8, 5, 5, 7, 7, 1, 0, 11, 11, 13, 13, 9, 9, 14, 14, 12, 12 ], [ 9, 9, 4, 4, 2, 2, 5, 5, 7, 7, 3, 3, 8, 8, 6, 6, 12, 12, 0, 1, 10, 10, 14, 14, 11, 11, 13, 13 ],
      [ 9, 9, 4, 4, 2, 2, 5, 5, 7, 7, 3, 3, 8, 8, 6, 6, 12, 12, 1, 0, 10, 10, 14, 14, 11, 11, 13, 13 ], [ 12, 12, 5, 5, 4, 4, 7, 7, 8, 8, 2, 2, 6, 6, 3, 3, 14, 14, 9, 9, 0, 1, 13, 13, 10, 10, 11, 11 ],
      [ 12, 12, 5, 5, 4, 4, 7, 7, 8, 8, 2, 2, 6, 6, 3, 3, 14, 14, 9, 9, 1, 0, 13, 13, 10, 10, 11, 11 ], [ 11, 11, 6, 6, 8, 8, 3, 3, 2, 2, 7, 7, 4, 4, 5, 5, 10, 10, 13, 13, 14, 14, 0, 1, 12, 12, 9, 9 ],
      [ 11, 11, 6, 6, 8, 8, 3, 3, 2, 2, 7, 7, 4, 4, 5, 5, 10, 10, 13, 13, 14, 14, 1, 0, 12, 12, 9, 9 ], [ 14, 14, 7, 7, 5, 5, 8, 8, 6, 6, 4, 4, 3, 3, 2, 2, 13, 13, 12, 12, 9, 9, 11, 11, 0, 1, 10, 10 ],
      [ 14, 14, 7, 7, 5, 5, 8, 8, 6, 6, 4, 4, 3, 3, 2, 2, 13, 13, 12, 12, 9, 9, 11, 11, 1, 0, 10, 10 ], [ 13, 13, 8, 8, 7, 7, 6, 6, 3, 3, 5, 5, 2, 2, 4, 4, 11, 11, 14, 14, 12, 12, 10, 10, 9, 9, 0, 1 ],
      [ 13, 13, 8, 8, 7, 7, 6, 6, 3, 3, 5, 5, 2, 2, 4, 4, 11, 11, 14, 14, 12, 12, 10, 10, 9, 9, 1, 0 ] ],
  SmallSchemeIdentification := 165 )