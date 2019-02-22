rec(
  ct := [ [ 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 ], 
      [ 1, -1, E(4), -E(4), 2, -2, 2, -2, 2, -2, -2*E(4), 2*E(4), -2*E(4), 2*E(4), -2*E(4), 
          2*E(4), 1 ], [ 1, -1, -E(4), E(4), 2, -2, 2, -2, 2, -2, 2*E(4), -2*E(4), 2*E(4), 
          -2*E(4), 2*E(4), -2*E(4), 1 ], 
      [ 1, 1, -1, -1, 2, 2, 2, 2, 2, 2, -2, -2, -2, -2, -2, -2, 1 ], 
      [ 1, -1, E(4), -E(4), E(7)^3+E(7)^4, -E(7)^3-E(7)^4, E(7)+E(7)^6, -E(7)-E(7)^6, 
          E(7)^2+E(7)^5, -E(7)^2-E(7)^5, -E(28)^19-E(28)^23, E(28)^19+E(28)^23, -E(28)^3-E(28)^11, 
          E(28)^3+E(28)^11, -E(28)^15-E(28)^27, E(28)^15+E(28)^27, 2 ], 
      [ 1, -1, E(4), -E(4), E(7)^2+E(7)^5, -E(7)^2-E(7)^5, E(7)^3+E(7)^4, -E(7)^3-E(7)^4, 
          E(7)+E(7)^6, -E(7)-E(7)^6, -E(28)^15-E(28)^27, E(28)^15+E(28)^27, -E(28)^19-E(28)^23, 
          E(28)^19+E(28)^23, -E(28)^3-E(28)^11, E(28)^3+E(28)^11, 2 ], 
      [ 1, -1, E(4), -E(4), E(7)+E(7)^6, -E(7)-E(7)^6, E(7)^2+E(7)^5, -E(7)^2-E(7)^5, 
          E(7)^3+E(7)^4, -E(7)^3-E(7)^4, -E(28)^3-E(28)^11, E(28)^3+E(28)^11, -E(28)^15-E(28)^27, 
          E(28)^15+E(28)^27, -E(28)^19-E(28)^23, E(28)^19+E(28)^23, 2 ], 
      [ 1, -1, -E(4), E(4), E(7)^3+E(7)^4, -E(7)^3-E(7)^4, E(7)+E(7)^6, -E(7)-E(7)^6, 
          E(7)^2+E(7)^5, -E(7)^2-E(7)^5, E(28)^19+E(28)^23, -E(28)^19-E(28)^23, E(28)^3+E(28)^11, 
          -E(28)^3-E(28)^11, E(28)^15+E(28)^27, -E(28)^15-E(28)^27, 2 ], 
      [ 1, -1, -E(4), E(4), E(7)^2+E(7)^5, -E(7)^2-E(7)^5, E(7)^3+E(7)^4, -E(7)^3-E(7)^4, 
          E(7)+E(7)^6, -E(7)-E(7)^6, E(28)^15+E(28)^27, -E(28)^15-E(28)^27, E(28)^19+E(28)^23, 
          -E(28)^19-E(28)^23, E(28)^3+E(28)^11, -E(28)^3-E(28)^11, 2 ], 
      [ 1, -1, -E(4), E(4), E(7)+E(7)^6, -E(7)-E(7)^6, E(7)^2+E(7)^5, -E(7)^2-E(7)^5, 
          E(7)^3+E(7)^4, -E(7)^3-E(7)^4, E(28)^3+E(28)^11, -E(28)^3-E(28)^11, E(28)^15+E(28)^27, 
          -E(28)^15-E(28)^27, E(28)^19+E(28)^23, -E(28)^19-E(28)^23, 2 ], 
      [ 1, 1, -1, -1, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)+E(7)^6, E(7)+E(7)^6, E(7)^2+E(7)^5, 
          E(7)^2+E(7)^5, -E(7)^3-E(7)^4, -E(7)^3-E(7)^4, -E(7)-E(7)^6, -E(7)-E(7)^6, 
          -E(7)^2-E(7)^5, -E(7)^2-E(7)^5, 2 ], 
      [ 1, 1, -1, -1, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)+E(7)^6, 
          E(7)+E(7)^6, -E(7)^2-E(7)^5, -E(7)^2-E(7)^5, -E(7)^3-E(7)^4, -E(7)^3-E(7)^4, 
          -E(7)-E(7)^6, -E(7)-E(7)^6, 2 ], 
      [ 1, 1, -1, -1, E(7)+E(7)^6, E(7)+E(7)^6, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^3+E(7)^4, 
          E(7)^3+E(7)^4, -E(7)-E(7)^6, -E(7)-E(7)^6, -E(7)^2-E(7)^5, -E(7)^2-E(7)^5, 
          -E(7)^3-E(7)^4, -E(7)^3-E(7)^4, 2 ], 
      [ 1, 1, 1, 1, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)+E(7)^6, E(7)+E(7)^6, E(7)^2+E(7)^5, 
          E(7)^2+E(7)^5, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)+E(7)^6, E(7)+E(7)^6, E(7)^2+E(7)^5, 
          E(7)^2+E(7)^5, 2 ], 
      [ 1, 1, 1, 1, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)+E(7)^6, 
          E(7)+E(7)^6, E(7)^2+E(7)^5, E(7)^2+E(7)^5, E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)+E(7)^6, 
          E(7)+E(7)^6, 2 ], [ 1, 1, 1, 1, E(7)+E(7)^6, E(7)+E(7)^6, E(7)^2+E(7)^5, E(7)^2+E(7)^5, 
          E(7)^3+E(7)^4, E(7)^3+E(7)^4, E(7)+E(7)^6, E(7)+E(7)^6, E(7)^2+E(7)^5, E(7)^2+E(7)^5, 
          E(7)^3+E(7)^4, E(7)^3+E(7)^4, 2 ] ],
  matrix := 
   [ [ 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 
          15 ], [ 1, 0, 3, 2, 5, 5, 4, 4, 7, 7, 6, 6, 9, 9, 8, 8, 11, 11, 10, 10, 13, 13, 12, 12, 
          15, 15, 14, 14 ], [ 3, 2, 0, 1, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 5, 5, 4, 
          4, 7, 7, 6, 6, 9, 9, 8, 8 ], 
      [ 2, 3, 1, 0, 11, 11, 10, 10, 13, 13, 12, 12, 15, 15, 14, 14, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 
          9, 9 ], [ 4, 5, 11, 10, 0, 6, 1, 7, 4, 8, 5, 9, 6, 8, 7, 9, 3, 12, 2, 13, 10, 14, 11, 
          15, 12, 14, 13, 15 ], [ 4, 5, 11, 10, 6, 0, 7, 1, 8, 4, 9, 5, 8, 6, 9, 7, 12, 3, 13, 2, 
          14, 10, 15, 11, 14, 12, 15, 13 ], 
      [ 5, 4, 10, 11, 1, 7, 0, 6, 5, 9, 4, 8, 7, 9, 6, 8, 2, 13, 3, 12, 11, 15, 10, 14, 13, 15, 
          12, 14 ], [ 5, 4, 10, 11, 7, 1, 6, 0, 9, 5, 8, 4, 9, 7, 8, 6, 13, 2, 12, 3, 15, 11, 14, 
          10, 15, 13, 14, 12 ], [ 6, 7, 13, 12, 4, 8, 5, 9, 0, 8, 1, 9, 4, 6, 5, 7, 10, 14, 11, 
          15, 3, 14, 2, 15, 10, 12, 11, 13 ], 
      [ 6, 7, 13, 12, 8, 4, 9, 5, 8, 0, 9, 1, 6, 4, 7, 5, 14, 10, 15, 11, 14, 3, 15, 2, 12, 10, 
          13, 11 ], [ 7, 6, 12, 13, 5, 9, 4, 8, 1, 9, 0, 8, 5, 7, 4, 6, 11, 15, 10, 14, 2, 15, 3, 
          14, 11, 13, 10, 12 ], [ 7, 6, 12, 13, 9, 5, 8, 4, 9, 1, 8, 0, 7, 5, 6, 4, 15, 11, 14, 
          10, 15, 2, 14, 3, 13, 11, 12, 10 ], 
      [ 8, 9, 15, 14, 6, 8, 7, 9, 4, 6, 5, 7, 0, 4, 1, 5, 12, 14, 13, 15, 10, 12, 11, 13, 3, 10, 
          2, 11 ], [ 8, 9, 15, 14, 8, 6, 9, 7, 6, 4, 7, 5, 4, 0, 5, 1, 14, 12, 15, 13, 12, 10, 13, 
          11, 10, 3, 11, 2 ], [ 9, 8, 14, 15, 7, 9, 6, 8, 5, 7, 4, 6, 1, 5, 0, 4, 13, 15, 12, 14, 
          11, 13, 10, 12, 2, 11, 3, 10 ], 
      [ 9, 8, 14, 15, 9, 7, 8, 6, 7, 5, 6, 4, 5, 1, 4, 0, 15, 13, 14, 12, 13, 11, 12, 10, 11, 2, 
          10, 3 ], [ 11, 10, 5, 4, 2, 13, 3, 12, 11, 15, 10, 14, 13, 15, 12, 14, 0, 6, 1, 7, 4, 8, 
          5, 9, 6, 8, 7, 9 ], [ 11, 10, 5, 4, 13, 2, 12, 3, 15, 11, 14, 10, 15, 13, 14, 12, 6, 0, 
          7, 1, 8, 4, 9, 5, 8, 6, 9, 7 ], 
      [ 10, 11, 4, 5, 3, 12, 2, 13, 10, 14, 11, 15, 12, 14, 13, 15, 1, 7, 0, 6, 5, 9, 4, 8, 7, 9, 
          6, 8 ], [ 10, 11, 4, 5, 12, 3, 13, 2, 14, 10, 15, 11, 14, 12, 15, 13, 7, 1, 6, 0, 9, 5, 
          8, 4, 9, 7, 8, 6 ], [ 13, 12, 7, 6, 11, 15, 10, 14, 2, 15, 3, 14, 11, 13, 10, 12, 4, 8, 
          5, 9, 0, 8, 1, 9, 4, 6, 5, 7 ], 
      [ 13, 12, 7, 6, 15, 11, 14, 10, 15, 2, 14, 3, 13, 11, 12, 10, 8, 4, 9, 5, 8, 0, 9, 1, 6, 4, 
          7, 5 ], [ 12, 13, 6, 7, 10, 14, 11, 15, 3, 14, 2, 15, 10, 12, 11, 13, 5, 9, 4, 8, 1, 9, 
          0, 8, 5, 7, 4, 6 ], [ 12, 13, 6, 7, 14, 10, 15, 11, 14, 3, 15, 2, 12, 10, 13, 11, 9, 5, 
          8, 4, 9, 1, 8, 0, 7, 5, 6, 4 ], 
      [ 15, 14, 9, 8, 13, 15, 12, 14, 11, 13, 10, 12, 2, 11, 3, 10, 6, 8, 7, 9, 4, 6, 5, 7, 0, 4, 
          1, 5 ], [ 15, 14, 9, 8, 15, 13, 14, 12, 13, 11, 12, 10, 11, 2, 10, 3, 8, 6, 9, 7, 6, 4, 
          7, 5, 4, 0, 5, 1 ], [ 14, 15, 8, 9, 12, 14, 13, 15, 10, 12, 11, 13, 3, 10, 2, 11, 7, 9, 
          6, 8, 5, 7, 4, 6, 1, 5, 0, 4 ], 
      [ 14, 15, 8, 9, 14, 12, 15, 13, 12, 10, 13, 11, 10, 3, 11, 2, 9, 7, 8, 6, 7, 5, 6, 4, 5, 1, 
          4, 0 ] ] )