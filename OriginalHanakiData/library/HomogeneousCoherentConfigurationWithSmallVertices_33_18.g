rec(
  ct := 
   [ [ 1, 1, 1, 5, 5, 5, 5, 5, 5, 1 ], 
      [ 1, E(3), E(3)^2, 5, 5, 5*E(3)^2, 5*E(3), 5*E(3)^2, 5*E(3), 1 ], 
      [ 1, E(3)^2, E(3), 5, 5, 5*E(3), 5*E(3)^2, 5*E(3), 5*E(3)^2, 1 ], 
      [ 1, 1, 1, E(11)+E(11)^3+E(11)^4+E(11)^5+E(11)^9, E(11)^2+E(11)^6+E(11)^7+E(11)^8+E(11)^10, 
          E(11)+E(11)^3+E(11)^4+E(11)^5+E(11)^9, E(11)^2+E(11)^6+E(11)^7+E(11)^8+E(11)^10, 
          E(11)^2+E(11)^6+E(11)^7+E(11)^8+E(11)^10, E(11)+E(11)^3+E(11)^4+E(11)^5+E(11)^9, 5 ], 
      [ 1, 1, 1, E(11)^2+E(11)^6+E(11)^7+E(11)^8+E(11)^10, E(11)+E(11)^3+E(11)^4+E(11)^5+E(11)^9, 
          E(11)^2+E(11)^6+E(11)^7+E(11)^8+E(11)^10, E(11)+E(11)^3+E(11)^4+E(11)^5+E(11)^9, 
          E(11)+E(11)^3+E(11)^4+E(11)^5+E(11)^9, E(11)^2+E(11)^6+E(11)^7+E(11)^8+E(11)^10, 5 ], 
      [ 1, E(3), E(3)^2, E(11)+E(11)^3+E(11)^4+E(11)^5+E(11)^9, 
          E(11)^2+E(11)^6+E(11)^7+E(11)^8+E(11)^10, E(33)+E(33)^4+E(33)^16+E(33)^25+E(33)^31, 
          E(33)^2+E(33)^8+E(33)^17+E(33)^29+E(33)^32, E(33)^7+E(33)^10+E(33)^13+E(33)^19+E(33)^28, 
          E(33)^5+E(33)^14+E(33)^20+E(33)^23+E(33)^26, 5 ], 
      [ 1, E(3), E(3)^2, E(11)^2+E(11)^6+E(11)^7+E(11)^8+E(11)^10, 
          E(11)+E(11)^3+E(11)^4+E(11)^5+E(11)^9, E(33)^7+E(33)^10+E(33)^13+E(33)^19+E(33)^28, 
          E(33)^5+E(33)^14+E(33)^20+E(33)^23+E(33)^26, E(33)+E(33)^4+E(33)^16+E(33)^25+E(33)^31, 
          E(33)^2+E(33)^8+E(33)^17+E(33)^29+E(33)^32, 5 ], 
      [ 1, E(3)^2, E(3), E(11)+E(11)^3+E(11)^4+E(11)^5+E(11)^9, 
          E(11)^2+E(11)^6+E(11)^7+E(11)^8+E(11)^10, E(33)^5+E(33)^14+E(33)^20+E(33)^23+E(33)^26, 
          E(33)^7+E(33)^10+E(33)^13+E(33)^19+E(33)^28, E(33)^2+E(33)^8+E(33)^17+E(33)^29+E(33)^32, 
          E(33)+E(33)^4+E(33)^16+E(33)^25+E(33)^31, 5 ], 
      [ 1, E(3)^2, E(3), E(11)^2+E(11)^6+E(11)^7+E(11)^8+E(11)^10, 
          E(11)+E(11)^3+E(11)^4+E(11)^5+E(11)^9, E(33)^2+E(33)^8+E(33)^17+E(33)^29+E(33)^32, 
          E(33)+E(33)^4+E(33)^16+E(33)^25+E(33)^31, E(33)^5+E(33)^14+E(33)^20+E(33)^23+E(33)^26, 
          E(33)^7+E(33)^10+E(33)^13+E(33)^19+E(33)^28, 5 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 
          8, 8, 8 ], [ 2, 0, 1, 5, 5, 5, 5, 5, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 4, 4, 4, 4, 4, 6, 6, 
          6, 6, 6, 3, 3, 3, 3, 3 ], 
      [ 1, 2, 0, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6, 3, 3, 3, 3, 3, 7, 7, 7, 7, 7, 4, 4, 4, 4, 4, 5, 5, 
          5, 5, 5 ], [ 4, 6, 7, 0, 3, 3, 4, 4, 3, 3, 3, 4, 4, 2, 5, 5, 7, 7, 6, 6, 8, 8, 8, 5, 5, 
          5, 7, 7, 1, 6, 6, 8, 8 ], 
      [ 4, 6, 7, 4, 0, 3, 3, 4, 3, 4, 4, 3, 3, 7, 2, 5, 5, 7, 8, 8, 6, 6, 8, 5, 7, 7, 5, 5, 6, 6, 
          8, 1, 8 ], [ 4, 6, 7, 4, 4, 0, 3, 3, 4, 3, 3, 3, 4, 7, 7, 2, 5, 5, 6, 8, 8, 8, 6, 7, 5, 
          5, 5, 7, 6, 8, 8, 6, 1 ], 
      [ 4, 6, 7, 3, 4, 4, 0, 3, 3, 3, 4, 4, 3, 5, 7, 7, 2, 5, 8, 6, 6, 8, 8, 5, 5, 7, 7, 5, 8, 8, 
          1, 6, 6 ], [ 4, 6, 7, 3, 3, 4, 4, 0, 4, 4, 3, 3, 3, 5, 5, 7, 7, 2, 8, 8, 8, 6, 6, 7, 7, 
          5, 5, 5, 8, 1, 6, 8, 6 ], 
      [ 3, 8, 5, 4, 4, 3, 4, 3, 0, 4, 3, 4, 3, 7, 7, 5, 7, 5, 8, 6, 8, 6, 1, 2, 7, 5, 7, 5, 6, 8, 
          6, 6, 8 ], [ 3, 8, 5, 4, 3, 4, 4, 3, 3, 0, 4, 3, 4, 7, 5, 7, 7, 5, 6, 8, 6, 1, 8, 5, 2, 
          7, 5, 7, 6, 8, 6, 8, 6 ], 
      [ 3, 8, 5, 4, 3, 4, 3, 4, 4, 3, 0, 4, 3, 7, 5, 7, 5, 7, 8, 6, 1, 8, 6, 7, 5, 2, 7, 5, 6, 6, 
          8, 8, 6 ], [ 3, 8, 5, 3, 4, 4, 3, 4, 3, 4, 3, 0, 4, 5, 7, 7, 5, 7, 6, 1, 8, 6, 8, 5, 7, 
          5, 2, 7, 8, 6, 8, 6, 6 ], 
      [ 3, 8, 5, 3, 4, 3, 4, 4, 4, 3, 4, 3, 0, 5, 7, 5, 7, 7, 1, 8, 6, 8, 6, 7, 5, 7, 5, 2, 8, 6, 
          6, 6, 8 ], [ 6, 7, 4, 1, 8, 8, 6, 6, 8, 8, 8, 6, 6, 0, 3, 3, 4, 4, 7, 7, 5, 5, 5, 3, 3, 
          3, 4, 4, 2, 7, 7, 5, 5 ], 
      [ 6, 7, 4, 6, 1, 8, 8, 6, 8, 6, 6, 8, 8, 4, 0, 3, 3, 4, 5, 5, 7, 7, 5, 3, 4, 4, 3, 3, 7, 7, 
          5, 2, 5 ], [ 6, 7, 4, 6, 6, 1, 8, 8, 6, 8, 8, 8, 6, 4, 4, 0, 3, 3, 7, 5, 5, 5, 7, 4, 3, 
          3, 3, 4, 7, 5, 5, 7, 2 ], 
      [ 6, 7, 4, 8, 6, 6, 1, 8, 8, 8, 6, 6, 8, 3, 4, 4, 0, 3, 5, 7, 7, 5, 5, 3, 3, 4, 4, 3, 5, 5, 
          2, 7, 7 ], [ 6, 7, 4, 8, 8, 6, 6, 1, 6, 6, 8, 8, 8, 3, 3, 4, 4, 0, 5, 5, 5, 7, 7, 4, 4, 
          3, 3, 3, 5, 2, 7, 5, 7 ], 
      [ 5, 3, 8, 5, 7, 5, 7, 7, 7, 5, 7, 5, 2, 8, 6, 8, 6, 6, 0, 3, 4, 3, 4, 6, 8, 6, 8, 1, 3, 4, 
          4, 4, 3 ], [ 5, 3, 8, 5, 7, 7, 5, 7, 5, 7, 5, 2, 7, 8, 6, 6, 8, 6, 4, 0, 3, 4, 3, 8, 6, 
          8, 1, 6, 3, 4, 3, 4, 4 ], 
      [ 5, 3, 8, 7, 5, 7, 5, 7, 7, 5, 2, 7, 5, 6, 8, 6, 8, 6, 3, 4, 0, 3, 4, 6, 8, 1, 6, 8, 4, 4, 
          3, 3, 4 ], [ 5, 3, 8, 7, 5, 7, 7, 5, 5, 2, 7, 5, 7, 6, 8, 6, 6, 8, 4, 3, 4, 0, 3, 8, 1, 
          6, 8, 6, 4, 3, 4, 3, 4 ], 
      [ 5, 3, 8, 7, 7, 5, 7, 5, 2, 7, 5, 7, 5, 6, 6, 8, 6, 8, 3, 4, 3, 4, 0, 1, 6, 8, 6, 8, 4, 3, 
          4, 4, 3 ], [ 8, 5, 3, 6, 6, 8, 6, 8, 1, 6, 8, 6, 8, 4, 4, 3, 4, 3, 5, 7, 5, 7, 2, 0, 4, 
          3, 4, 3, 7, 5, 7, 7, 5 ], 
      [ 8, 5, 3, 6, 8, 6, 6, 8, 8, 1, 6, 8, 6, 4, 3, 4, 4, 3, 7, 5, 7, 2, 5, 3, 0, 4, 3, 4, 7, 5, 
          7, 5, 7 ], [ 8, 5, 3, 6, 8, 6, 8, 6, 6, 8, 1, 6, 8, 4, 3, 4, 3, 4, 5, 7, 2, 5, 7, 4, 3, 
          0, 4, 3, 7, 7, 5, 5, 7 ], 
      [ 8, 5, 3, 8, 6, 6, 8, 6, 8, 6, 8, 1, 6, 3, 4, 4, 3, 4, 7, 2, 5, 7, 5, 3, 4, 3, 0, 4, 5, 7, 
          5, 7, 7 ], [ 8, 5, 3, 8, 6, 8, 6, 6, 6, 8, 6, 8, 1, 3, 4, 3, 4, 4, 2, 5, 7, 5, 7, 4, 3, 
          4, 3, 0, 5, 7, 7, 7, 5 ], 
      [ 7, 4, 6, 2, 5, 5, 7, 7, 5, 5, 5, 7, 7, 1, 8, 8, 6, 6, 4, 4, 3, 3, 3, 8, 8, 8, 6, 6, 0, 4, 
          4, 3, 3 ], [ 7, 4, 6, 5, 5, 7, 7, 2, 7, 7, 5, 5, 5, 8, 8, 6, 6, 1, 3, 3, 3, 4, 4, 6, 6, 
          8, 8, 8, 3, 0, 4, 3, 4 ], 
      [ 7, 4, 6, 5, 7, 7, 2, 5, 5, 5, 7, 7, 5, 8, 6, 6, 1, 8, 3, 4, 4, 3, 3, 8, 8, 6, 6, 8, 3, 3, 
          0, 4, 4 ], [ 7, 4, 6, 7, 2, 5, 5, 7, 5, 7, 7, 5, 5, 6, 1, 8, 8, 6, 3, 3, 4, 4, 3, 8, 6, 
          6, 8, 8, 4, 4, 3, 0, 3 ], 
      [ 7, 4, 6, 7, 7, 2, 5, 5, 7, 5, 5, 5, 7, 6, 6, 1, 8, 8, 4, 3, 3, 3, 4, 6, 8, 8, 8, 6, 4, 3, 
          3, 4, 0 ] ] )