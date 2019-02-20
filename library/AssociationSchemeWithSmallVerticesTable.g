# Table of small association schemes. Contains "orders" which lists the orders that are
# currently in the database, as well as information on the association schemes of the given
# order. Schemes are indexed by their orders. The flag is_complete indicates if the 
# database contains a classificatio of the schemes of that order. The number indicates how
# many are inthe database, and the remaining are lists givig the index of the corresponding
# schemes. The number of these can be obtained by the sizes of the lists.
# Write code to extract numerical informtion from these tables, and also to read in the
# corresponding schemes from the library.

rec(
  3 := rec(
      finite_groups := [1],
      noncommutative := [],
      nonschurian := [],
      number := 2,
      primitive := [1,2],
      is_complete := true
       ) 
  )