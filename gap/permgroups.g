DeclareOperation("IsGenerouslyTransitive", [IsPermGroup]);
InstallMethod( IsGenerouslyTransitive, [ IsPermGroup ],
  function(G) 
  	# For each suborbit O, we check to see if
  	# it is equal to its "paired" suborbit
  	local n, G1, IsPairedSuborbit, suborbits;
  	if not IsTransitive(G) then
  		return false;
  	fi;
  	if IsTrivial(G) then 
  		return true; 
  	fi;
  	n := DegreeAction(G);
  	G1 := Stabilizer(G,1);
  	suborbits := Orbits(G1, [2..n]);
  	IsPairedSuborbit := function( o )
  		local x;
  		x := o[1];
  		return RepresentativeAction(G, [1,x], [x,1], OnTuples) <> fail;
  	end;
  	return ForAll(suborbits, IsPairedSuborbit);
  end);

DeclareOperation("IsSchurian", [IsAssociationScheme]);
InstallMethod( IsSchurian, [ IsAssociationScheme ], 
	function( sch )
    local n, aut;
 	aut := AutomorphismGroupOfScheme( sch );
 	n := NrVertices(sch);;
 	return IsGenerouslyTransitive(aut, [1..n]);
end;

DeclareOperation("BinaryExpansion", [IsPosInt]);
InstallMethod(BinaryExpansion, [IsPosInt],
function(n)
	local vec, number, pos;
	vec := ListWithIdenticalEntries(Log2Int(n)+1, 0);
	number := n;
	while number > 0 do
		pos := Log2Int(number);
		vec[pos+1] := 1;
		number := number - 2^pos;
	od;
	return Reversed(vec);
end);

DeclareOperation("AutomorphismGroupOfScheme", [IsAssociationScheme]);
InstallMethod( AutomorphismGroupOfScheme, [IsAssociationScheme],
function( sch )
    local n, edges, colours, c, d, newedges, newvertices, 
    		i, e, ce, onesare, j, graph, aut;
    n := NrVertices(sch);
	edges := Combinations([1..n], 2);;
	colours := List(edges, t -> sch!.matrix[t[1]][t[2]]);;
	c := Length(Set(colours));
	# c <= 2^d-1
	d := Log2Int(c)+1;
	# make d layers
	newedges := [];;
	newvertices := Cartesian([1..d],[1..n]);
	for i in [1..Size(edges)] do
		e := edges[i];
		ce := Reversed(BinaryExpansion(colours[i]));
		onesare := Filtered([1..Length(ce)],i->IsOne(ce[i]));
		# put edge in layer according to where 1's are
		for j in onesare do
			Add(newedges, [[j,e[1]],[j,e[2]]]);
		od;
	od;
	graph := Graph(Group(()), newvertices, OnTuples,
		function(x,y) return Set([x,y]) in newedges; end);;	
    aut := AutomorphismGroup(graph); 
    return Action(aut,[1..n]);
end);


# wee example
m := NullMat(10,10);;
combs := Combinations([1..5],2);;
for i in [1..10] do
	for j in [i+1..10] do
		if IsEmpty(Intersection(combs[i],combs[j])) then
			m[i][j]:=1;
			m[j][i]:=1;
		else
			m[i][j]:=2;
			m[j][i]:=2;
		fi;
	od;
od;
sch := AssociationScheme( m );
aut := AutomorphismGroupOfScheme(sch);
StructureDescription(aut);  # should be S_5 acting on 10 elements


