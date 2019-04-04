#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################

InstallMethod(FusionScheme,
			[IsHomogeneousCoherentConfiguration, IsList],
	function( a, fuse )
		local mat, m, i, j, m2, d, inds;
		if not [0] in fuse then
			return fail;
		fi;
		mat :=  NullMat(Order(a), Order(a));
		m:=RelationMatrix(a);;
		d:=ClassOfAssociationScheme(a);;
		inds := ListWithIdenticalEntries(d+1,0);;
		for i in [1.. Size(fuse)] do
			for j in fuse[i] do
				inds[j+1]:=i-1;
			od;
		od;
		for i in [1 .. Order(a)] do
			for j in [1 .. Order(a)] do
				mat[i][j]:=inds[m[i][j]+1];
			od;
		od;
		m2 := HomogeneousCoherentConfiguration(mat);
		# set IsFusionScheme := true;
		return m2;
	end);

InstallMethod(FusionScheme,
			[IsHomogeneousCoherentConfiguration and IsCommutative, IsList],
	function( a, fuse )
		local mat, m, i, j, m2, d, inds, s, NewIntersectionMatrices,
		u, v, w, h, check, inter, adjMats, rel, assoc_rec;
		if not [0] in fuse then
			return fail;
		fi;

		s := Size(fuse) - 1;;

		NewIntersectionMatrices := List([0 .. s], t -> NullMat(s+1, s+1));;
		for u in [0 .. s] do
			for v in [0 .. s] do
				for w in [0 .. s] do
					check := [];
					for h in fuse[w+1] do
						inter := 0;
						for i in fuse[u+1] do
							for j in fuse[v+1] do
								inter := inter + IntersectionNumber(a, i, j, h);
							od;
						od;
						Add(check, inter);;
						check:=Set(check);;
						if Size(check) <> 1 then
							return fail;
						fi;
					od;
					NewIntersectionMatrices[v+1][u+1, w+1] := check[1];
				od;
			od;
		od;

		mat :=  NullMat(Order(a), Order(a));
		m:=RelationMatrix(a);;
		d:=ClassOfAssociationScheme(a);;
		inds := ListWithIdenticalEntries(d+1,0);;
		for i in [1.. Size(fuse)] do
			for j in fuse[i] do
				inds[j+1]:=i-1;
			od;
		od;
		for i in [1 .. Order(a)] do
			for j in [1 .. Order(a)] do
				mat[i][j]:=inds[m[i][j]+1];
			od;
		od;

		adjMats := AdjacencyMatricesOfMatrix(mat);;
		for rel in adjMats do
			if not TransposedMat(rel) in adjMats then
				return fail;
			fi;
		od;
		assoc_rec := rec( matrix := mat);
		m2 := ObjectifyWithAttributes(assoc_rec, TheTypeHomogeneousCoherentConfiguration, AdjacencyMatrices, adjMats,
			IntersectionMatrices, NewIntersectionMatrices);
		# set IsFusionScheme := true;
		return m2;
	end);

InstallMethod(DirectProductScheme,
			[IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(M, N)
	    local L, i, j, MM, NM, A;
	    
	    MM := AdjacencyMatrices(M);
	    NM := AdjacencyMatrices(N);
	    A := [];
	    for i in MM do
	        for j in NM do
	            Add(A, KroneckerProduct(i, j));
	        od;
	    od;

	    L := A[1] * 0;
	    for i in [1..Length(A)] do
	        L := L + A[i] * (i-1);
	    od;
	  
	    return HomogeneousCoherentConfigurationNC(L);
	end);


InstallMethod(WreathProductScheme,
			[IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration],
	function(M, N)
	    local L, i, j, MM, NM, A, J;

	    MM := AdjacencyMatrices(M);
	    NM := AdjacencyMatrices(N);
	    A := [];
	    for i in MM do
	        Add(A, KroneckerProduct(NM[1], i));
	    od;

	    J := NullMat(Order(M), Order(M));
	    for i in [1..Length(J)] do
	        for j in [1..Length(J)] do
	            J[i][j] := 1;
	        od;
	    od;

	    for i in [2..Length(NM)] do
	        Add(A, KroneckerProduct(NM[i], J));
	    od;

	    L := A[1] * 0;
	    for i in [1..Length(A)] do
	        L := L + A[i] * (i-1);
	    od;
	  
	    return HomogeneousCoherentConfigurationNC(L);
	end);

