rec(
  ct := [ [ 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1 ], 
      [ 1, -1, 3, 3, -3, -3, 3, 3, -3, -3, 3, 3, -3, -3, 1 ], 
      [ 1, -1, E(19)^4+E(19)^6+E(19)^9, E(19)^10+E(19)^13+E(19)^15, -E(19)^4-E(19)^6-E(19)^9, 
          -E(19)^10-E(19)^13-E(19)^15, E(19)^2+E(19)^3+E(19)^14, E(19)^5+E(19)^16+E(19)^17, 
          -E(19)^2-E(19)^3-E(19)^14, -E(19)^5-E(19)^16-E(19)^17, E(19)+E(19)^7+E(19)^11, 
          E(19)^8+E(19)^12+E(19)^18, -E(19)-E(19)^7-E(19)^11, -E(19)^8-E(19)^12-E(19)^18, 3 ], 
      [ 1, -1, E(19)+E(19)^7+E(19)^11, E(19)^8+E(19)^12+E(19)^18, -E(19)-E(19)^7-E(19)^11, 
          -E(19)^8-E(19)^12-E(19)^18, E(19)^10+E(19)^13+E(19)^15, E(19)^4+E(19)^6+E(19)^9, 
          -E(19)^10-E(19)^13-E(19)^15, -E(19)^4-E(19)^6-E(19)^9, E(19)^5+E(19)^16+E(19)^17, 
          E(19)^2+E(19)^3+E(19)^14, -E(19)^5-E(19)^16-E(19)^17, -E(19)^2-E(19)^3-E(19)^14, 3 ], 
      [ 1, -1, E(19)^2+E(19)^3+E(19)^14, E(19)^5+E(19)^16+E(19)^17, -E(19)^2-E(19)^3-E(19)^14, 
          -E(19)^5-E(19)^16-E(19)^17, E(19)+E(19)^7+E(19)^11, E(19)^8+E(19)^12+E(19)^18, 
          -E(19)-E(19)^7-E(19)^11, -E(19)^8-E(19)^12-E(19)^18, E(19)^10+E(19)^13+E(19)^15, 
          E(19)^4+E(19)^6+E(19)^9, -E(19)^10-E(19)^13-E(19)^15, -E(19)^4-E(19)^6-E(19)^9, 3 ], 
      [ 1, -1, E(19)^10+E(19)^13+E(19)^15, E(19)^4+E(19)^6+E(19)^9, -E(19)^10-E(19)^13-E(19)^15, 
          -E(19)^4-E(19)^6-E(19)^9, E(19)^5+E(19)^16+E(19)^17, E(19)^2+E(19)^3+E(19)^14, 
          -E(19)^5-E(19)^16-E(19)^17, -E(19)^2-E(19)^3-E(19)^14, E(19)^8+E(19)^12+E(19)^18, 
          E(19)+E(19)^7+E(19)^11, -E(19)^8-E(19)^12-E(19)^18, -E(19)-E(19)^7-E(19)^11, 3 ], 
      [ 1, -1, E(19)^5+E(19)^16+E(19)^17, E(19)^2+E(19)^3+E(19)^14, -E(19)^5-E(19)^16-E(19)^17, 
          -E(19)^2-E(19)^3-E(19)^14, E(19)^8+E(19)^12+E(19)^18, E(19)+E(19)^7+E(19)^11, 
          -E(19)^8-E(19)^12-E(19)^18, -E(19)-E(19)^7-E(19)^11, E(19)^4+E(19)^6+E(19)^9, 
          E(19)^10+E(19)^13+E(19)^15, -E(19)^4-E(19)^6-E(19)^9, -E(19)^10-E(19)^13-E(19)^15, 3 ], 
      [ 1, -1, E(19)^8+E(19)^12+E(19)^18, E(19)+E(19)^7+E(19)^11, -E(19)^8-E(19)^12-E(19)^18, 
          -E(19)-E(19)^7-E(19)^11, E(19)^4+E(19)^6+E(19)^9, E(19)^10+E(19)^13+E(19)^15, 
          -E(19)^4-E(19)^6-E(19)^9, -E(19)^10-E(19)^13-E(19)^15, E(19)^2+E(19)^3+E(19)^14, 
          E(19)^5+E(19)^16+E(19)^17, -E(19)^2-E(19)^3-E(19)^14, -E(19)^5-E(19)^16-E(19)^17, 3 ], 
      [ 1, 1, E(19)^4+E(19)^6+E(19)^9, E(19)^10+E(19)^13+E(19)^15, E(19)^4+E(19)^6+E(19)^9, 
          E(19)^10+E(19)^13+E(19)^15, E(19)^2+E(19)^3+E(19)^14, E(19)^5+E(19)^16+E(19)^17, 
          E(19)^2+E(19)^3+E(19)^14, E(19)^5+E(19)^16+E(19)^17, E(19)+E(19)^7+E(19)^11, 
          E(19)^8+E(19)^12+E(19)^18, E(19)+E(19)^7+E(19)^11, E(19)^8+E(19)^12+E(19)^18, 3 ], 
      [ 1, 1, E(19)+E(19)^7+E(19)^11, E(19)^8+E(19)^12+E(19)^18, E(19)+E(19)^7+E(19)^11, 
          E(19)^8+E(19)^12+E(19)^18, E(19)^10+E(19)^13+E(19)^15, E(19)^4+E(19)^6+E(19)^9, 
          E(19)^10+E(19)^13+E(19)^15, E(19)^4+E(19)^6+E(19)^9, E(19)^5+E(19)^16+E(19)^17, 
          E(19)^2+E(19)^3+E(19)^14, E(19)^5+E(19)^16+E(19)^17, E(19)^2+E(19)^3+E(19)^14, 3 ], 
      [ 1, 1, E(19)^2+E(19)^3+E(19)^14, E(19)^5+E(19)^16+E(19)^17, E(19)^2+E(19)^3+E(19)^14, 
          E(19)^5+E(19)^16+E(19)^17, E(19)+E(19)^7+E(19)^11, E(19)^8+E(19)^12+E(19)^18, 
          E(19)+E(19)^7+E(19)^11, E(19)^8+E(19)^12+E(19)^18, E(19)^10+E(19)^13+E(19)^15, 
          E(19)^4+E(19)^6+E(19)^9, E(19)^10+E(19)^13+E(19)^15, E(19)^4+E(19)^6+E(19)^9, 3 ], 
      [ 1, 1, E(19)^10+E(19)^13+E(19)^15, E(19)^4+E(19)^6+E(19)^9, E(19)^10+E(19)^13+E(19)^15, 
          E(19)^4+E(19)^6+E(19)^9, E(19)^5+E(19)^16+E(19)^17, E(19)^2+E(19)^3+E(19)^14, 
          E(19)^5+E(19)^16+E(19)^17, E(19)^2+E(19)^3+E(19)^14, E(19)^8+E(19)^12+E(19)^18, 
          E(19)+E(19)^7+E(19)^11, E(19)^8+E(19)^12+E(19)^18, E(19)+E(19)^7+E(19)^11, 3 ], 
      [ 1, 1, E(19)^5+E(19)^16+E(19)^17, E(19)^2+E(19)^3+E(19)^14, E(19)^5+E(19)^16+E(19)^17, 
          E(19)^2+E(19)^3+E(19)^14, E(19)^8+E(19)^12+E(19)^18, E(19)+E(19)^7+E(19)^11, 
          E(19)^8+E(19)^12+E(19)^18, E(19)+E(19)^7+E(19)^11, E(19)^4+E(19)^6+E(19)^9, 
          E(19)^10+E(19)^13+E(19)^15, E(19)^4+E(19)^6+E(19)^9, E(19)^10+E(19)^13+E(19)^15, 3 ], 
      [ 1, 1, E(19)^8+E(19)^12+E(19)^18, E(19)+E(19)^7+E(19)^11, E(19)^8+E(19)^12+E(19)^18, 
          E(19)+E(19)^7+E(19)^11, E(19)^4+E(19)^6+E(19)^9, E(19)^10+E(19)^13+E(19)^15, 
          E(19)^4+E(19)^6+E(19)^9, E(19)^10+E(19)^13+E(19)^15, E(19)^2+E(19)^3+E(19)^14, 
          E(19)^5+E(19)^16+E(19)^17, E(19)^2+E(19)^3+E(19)^14, E(19)^5+E(19)^16+E(19)^17, 3 ] ],
  matrix := 
   [ [ 0, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 
          11, 11, 11, 12, 12, 12, 13, 13, 13 ], 
      [ 1, 0, 4, 4, 4, 5, 5, 5, 2, 2, 2, 3, 3, 3, 8, 8, 8, 9, 9, 9, 6, 6, 6, 7, 7, 7, 12, 12, 12, 
          13, 13, 13, 10, 10, 10, 11, 11, 11 ], 
      [ 3, 5, 0, 6, 7, 2, 2, 10, 1, 8, 9, 4, 4, 12, 3, 7, 11, 3, 10, 11, 5, 9, 13, 5, 12, 13, 6, 
          7, 10, 2, 6, 11, 8, 9, 12, 4, 8, 13 ], 
      [ 3, 5, 7, 0, 6, 2, 10, 2, 9, 1, 8, 4, 12, 4, 11, 3, 7, 10, 11, 3, 13, 5, 9, 12, 13, 5, 10, 
          6, 7, 6, 11, 2, 12, 8, 9, 8, 13, 4 ], 
      [ 3, 5, 6, 7, 0, 10, 2, 2, 8, 9, 1, 12, 4, 4, 7, 11, 3, 11, 3, 10, 9, 13, 5, 13, 5, 12, 7, 
          10, 6, 11, 2, 6, 9, 12, 8, 13, 4, 8 ], 
      [ 2, 4, 3, 3, 11, 0, 6, 7, 5, 5, 13, 1, 8, 9, 2, 10, 11, 10, 6, 2, 4, 12, 13, 12, 8, 4, 7, 
          3, 10, 7, 11, 6, 9, 5, 12, 9, 13, 8 ], 
      [ 2, 4, 3, 11, 3, 7, 0, 6, 5, 13, 5, 9, 1, 8, 10, 11, 2, 2, 10, 6, 12, 13, 4, 4, 12, 8, 3, 
          10, 7, 6, 7, 11, 5, 12, 9, 8, 9, 13 ], 
      [ 2, 4, 11, 3, 3, 6, 7, 0, 13, 5, 5, 8, 9, 1, 11, 2, 10, 6, 2, 10, 13, 4, 12, 8, 4, 12, 10, 
          7, 3, 11, 6, 7, 12, 9, 5, 13, 8, 9 ], 
      [ 5, 3, 1, 8, 9, 4, 4, 12, 0, 6, 7, 2, 2, 10, 5, 9, 13, 5, 12, 13, 3, 7, 11, 3, 10, 11, 8, 
          9, 12, 4, 8, 13, 6, 7, 10, 2, 6, 11 ], 
      [ 5, 3, 9, 1, 8, 4, 12, 4, 7, 0, 6, 2, 10, 2, 13, 5, 9, 12, 13, 5, 11, 3, 7, 10, 11, 3, 12, 
          8, 9, 8, 13, 4, 10, 6, 7, 6, 11, 2 ], 
      [ 5, 3, 8, 9, 1, 12, 4, 4, 6, 7, 0, 10, 2, 2, 9, 13, 5, 13, 5, 12, 7, 11, 3, 11, 3, 10, 9, 
          12, 8, 13, 4, 8, 7, 10, 6, 11, 2, 6 ], 
      [ 4, 2, 5, 5, 13, 1, 8, 9, 3, 3, 11, 0, 6, 7, 4, 12, 13, 12, 8, 4, 2, 10, 11, 10, 6, 2, 9, 
          5, 12, 9, 13, 8, 7, 3, 10, 7, 11, 6 ], 
      [ 4, 2, 5, 13, 5, 9, 1, 8, 3, 11, 3, 7, 0, 6, 12, 13, 4, 4, 12, 8, 10, 11, 2, 2, 10, 6, 5, 
          12, 9, 8, 9, 13, 3, 10, 7, 6, 7, 11 ], 
      [ 4, 2, 13, 5, 5, 8, 9, 1, 11, 3, 3, 6, 7, 0, 13, 4, 12, 8, 4, 12, 11, 2, 10, 6, 2, 10, 12, 
          9, 5, 13, 8, 9, 10, 7, 3, 11, 6, 7 ], 
      [ 7, 9, 2, 10, 6, 3, 11, 10, 4, 12, 8, 5, 13, 12, 0, 10, 11, 6, 3, 6, 1, 12, 13, 8, 5, 8, 
          11, 2, 7, 3, 2, 7, 13, 4, 9, 5, 4, 9 ], 
      [ 7, 9, 6, 2, 10, 11, 10, 3, 8, 4, 12, 13, 12, 5, 11, 0, 10, 3, 6, 6, 13, 1, 12, 5, 8, 8, 7, 
          11, 2, 2, 7, 3, 9, 13, 4, 4, 9, 5 ], 
      [ 7, 9, 10, 6, 2, 10, 3, 11, 12, 8, 4, 12, 5, 13, 10, 11, 0, 6, 6, 3, 12, 13, 1, 8, 8, 5, 2, 
          7, 11, 7, 3, 2, 4, 9, 13, 9, 5, 4 ], 
      [ 6, 8, 2, 11, 10, 11, 3, 7, 4, 13, 12, 13, 5, 9, 7, 2, 7, 0, 10, 11, 9, 4, 9, 1, 12, 13, 2, 
          6, 3, 3, 10, 6, 4, 8, 5, 5, 12, 8 ], 
      [ 6, 8, 11, 10, 2, 7, 11, 3, 13, 12, 4, 9, 13, 5, 2, 7, 7, 11, 0, 10, 4, 9, 9, 13, 1, 12, 6, 
          3, 2, 6, 3, 10, 8, 5, 4, 8, 5, 12 ], 
      [ 6, 8, 10, 2, 11, 3, 7, 11, 12, 4, 13, 5, 9, 13, 7, 7, 2, 10, 11, 0, 9, 9, 4, 12, 13, 1, 3, 
          2, 6, 10, 6, 3, 5, 4, 8, 12, 8, 5 ], 
      [ 9, 7, 4, 12, 8, 5, 13, 12, 2, 10, 6, 3, 11, 10, 1, 12, 13, 8, 5, 8, 0, 10, 11, 6, 3, 6, 
          13, 4, 9, 5, 4, 9, 11, 2, 7, 3, 2, 7 ], 
      [ 9, 7, 8, 4, 12, 13, 12, 5, 6, 2, 10, 11, 10, 3, 13, 1, 12, 5, 8, 8, 11, 0, 10, 3, 6, 6, 9, 
          13, 4, 4, 9, 5, 7, 11, 2, 2, 7, 3 ], 
      [ 9, 7, 12, 8, 4, 12, 5, 13, 10, 6, 2, 10, 3, 11, 12, 13, 1, 8, 8, 5, 10, 11, 0, 6, 6, 3, 4, 
          9, 13, 9, 5, 4, 2, 7, 11, 7, 3, 2 ], 
      [ 8, 6, 4, 13, 12, 13, 5, 9, 2, 11, 10, 11, 3, 7, 9, 4, 9, 1, 12, 13, 7, 2, 7, 0, 10, 11, 4, 
          8, 5, 5, 12, 8, 2, 6, 3, 3, 10, 6 ], 
      [ 8, 6, 13, 12, 4, 9, 13, 5, 11, 10, 2, 7, 11, 3, 4, 9, 9, 13, 1, 12, 2, 7, 7, 11, 0, 10, 8, 
          5, 4, 8, 5, 12, 6, 3, 2, 6, 3, 10 ], 
      [ 8, 6, 12, 4, 13, 5, 9, 13, 10, 2, 11, 3, 7, 11, 9, 9, 4, 12, 13, 1, 7, 7, 2, 10, 11, 0, 5, 
          4, 8, 12, 8, 5, 3, 2, 6, 10, 6, 3 ], 
      [ 11, 13, 7, 11, 6, 6, 2, 11, 9, 13, 8, 8, 4, 13, 10, 6, 3, 3, 7, 2, 12, 8, 5, 5, 9, 4, 0, 
          3, 2, 10, 10, 7, 1, 5, 4, 12, 12, 9 ], 
      [ 11, 13, 6, 7, 11, 2, 11, 6, 8, 9, 13, 4, 13, 8, 3, 10, 6, 7, 2, 3, 5, 12, 8, 9, 4, 5, 2, 
          0, 3, 10, 7, 10, 4, 1, 5, 12, 9, 12 ], 
      [ 11, 13, 11, 6, 7, 11, 6, 2, 13, 8, 9, 13, 8, 4, 6, 3, 10, 2, 3, 7, 8, 5, 12, 4, 5, 9, 3, 
          2, 0, 7, 10, 10, 5, 4, 1, 9, 12, 12 ], 
      [ 10, 12, 3, 7, 10, 6, 7, 10, 5, 9, 12, 8, 9, 12, 2, 3, 6, 2, 7, 11, 4, 5, 8, 4, 9, 13, 11, 
          11, 6, 0, 3, 2, 13, 13, 8, 1, 5, 4 ], 
      [ 10, 12, 7, 10, 3, 10, 6, 7, 9, 12, 5, 12, 8, 9, 3, 6, 2, 11, 2, 7, 5, 8, 4, 13, 4, 9, 11, 
          6, 11, 2, 0, 3, 13, 8, 13, 4, 1, 5 ], 
      [ 10, 12, 10, 3, 7, 7, 10, 6, 12, 5, 9, 9, 12, 8, 6, 2, 3, 7, 11, 2, 8, 4, 5, 9, 13, 4, 6, 
          11, 11, 3, 2, 0, 8, 13, 13, 5, 4, 1 ], 
      [ 13, 11, 9, 13, 8, 8, 4, 13, 7, 11, 6, 6, 2, 11, 12, 8, 5, 5, 9, 4, 10, 6, 3, 3, 7, 2, 1, 
          5, 4, 12, 12, 9, 0, 3, 2, 10, 10, 7 ], 
      [ 13, 11, 8, 9, 13, 4, 13, 8, 6, 7, 11, 2, 11, 6, 5, 12, 8, 9, 4, 5, 3, 10, 6, 7, 2, 3, 4, 
          1, 5, 12, 9, 12, 2, 0, 3, 10, 7, 10 ], 
      [ 13, 11, 13, 8, 9, 13, 8, 4, 11, 6, 7, 11, 6, 2, 8, 5, 12, 4, 5, 9, 6, 3, 10, 2, 3, 7, 5, 
          4, 1, 9, 12, 12, 3, 2, 0, 7, 10, 10 ], 
      [ 12, 10, 5, 9, 12, 8, 9, 12, 3, 7, 10, 6, 7, 10, 4, 5, 8, 4, 9, 13, 2, 3, 6, 2, 7, 11, 13, 
          13, 8, 1, 5, 4, 11, 11, 6, 0, 3, 2 ], 
      [ 12, 10, 9, 12, 5, 12, 8, 9, 7, 10, 3, 10, 6, 7, 5, 8, 4, 13, 4, 9, 3, 6, 2, 11, 2, 7, 13, 
          8, 13, 4, 1, 5, 11, 6, 11, 2, 0, 3 ], 
      [ 12, 10, 12, 5, 9, 9, 12, 8, 10, 3, 7, 7, 10, 6, 8, 4, 5, 9, 13, 4, 6, 2, 3, 7, 11, 2, 8, 
          13, 13, 5, 4, 1, 6, 11, 11, 3, 2, 0 ] ] )