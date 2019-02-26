#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
#############################################################################



#
# AssociationSchemes: A GAP package for working with association schemes
#

DeclareCategory( "IsHomogeneousCoherentConfiguration", IsObject );

DeclareRepresentation( "IsHomogeneousCoherentConfigurationRep",
                       IsHomogeneousCoherentConfiguration and IsAttributeStoringRep,
                       [ ] );

BindGlobal( "HomogeneousCoherentConfigurationFamily",
        NewFamily( "HomogeneousCoherentConfigurationFamily" ) );

BindGlobal( "TheTypeHomogeneousCoherentConfiguration",
        NewType( HomogeneousCoherentConfigurationFamily,
                IsHomogeneousCoherentConfigurationRep ) );

#BindGlobal("TheTypeAssociationScheme", NewType( AssociationSchemeFamily, IsAssociationScheme ));

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments M
#! @Returns coherent configuration
#! @Description
#!	Takes the relationship matrix, $M$, describing a coherent configuration and returns a CoherentConfiguration object.
#!	The matrix $M = \sum_{i=0}^d i A_i$, where $A_i$ are the adjacency matrices describing a coherent configuration.
#!	Checks that the matrix satisfies the coherent configuration axioms.
DeclareOperation( "HomogeneousCoherentConfiguration", [ IsMatrix ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments M
#! @Returns coherent configuration
#! @Description
#!	Same as CoherentConfiguration but without performing any checks. Use this method only if you know with certainty
#!	that $M$ describes a coherent configuration.
DeclareOperation( "HomogeneousCoherentConfigurationNC", [ IsMatrix ] );

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns relation matrix $M$
#! @Description
#!	Takes a coherent configuration and returns the underlying relation matrix $M = \sum_{i=0}^d i A_i$, where $A_i$ are
#!	the adjacency matrices of the coherent configuration
DeclareOperation( "RelationMatrix", [ IsHomogeneousCoherentConfiguration ] );

#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a commutative coherent configuration.
DeclareProperty( "IsCommutative", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a symmetric coherent configuration.
DeclareProperty( "IsSymmetricCoherentConfiguration", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for IsSymmetricCoherentConfiguration
DeclareOperation( "IsAssociationScheme", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC
#! @Returns d
#! @Description
#!	Returns $d$ for a $d$-class association scheme.
DeclareAttribute( "ClassOfAssociationScheme", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Check if a coherent configuration is a strongly regular graph.
DeclareProperty( "IsStronglyRegularGraph", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list $L$, where the $i$-th entry of $L$ is the adjacency matrix $A_{i-1}$,
#!	where $(A_i)_{xy} =1$ if $(x,y) \in R_i$ and $(A_i)_{xy} =0$ otherwise.
DeclareAttribute( "AdjacencyMatrices", IsHomogeneousCoherentConfiguration );

DeclareOperation( "AdjacencyMatricesOfMatrix", [IsMatrix] );
DeclareOperation( "IsAssociationSchemeMatrix", [ IsMatrix ]);
DeclareOperation( "IsHomogeneousCoherentConfigurationMatrix", [ IsMatrix ]);


#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC
#! @Returns n
#! @Description
#!	Returns the order $n$ (number of vertices) of the coherent configuration.
DeclareAttribute( "Order", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC, L
#! @Returns coherent configuration
#! @Description
#!	Takes a $d$-class coherent configuration CC and returns a fusion scheme corresponding to L,
#!	where L is a partion of $\{0, \ldots, d\}$. Returns fail if $L$ is not a valid partition.
DeclareOperation( "FusionScheme", [IsHomogeneousCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC, i, j, k
#! @Returns $p_{ij}^k$
#! @Description
#!	Returns the intersection number $p_{ij}^k$ for a coherent configuration CC.
DeclareOperation( "IntersectionNumber", [IsHomogeneousCoherentConfiguration, IsInt, IsInt, IsInt]);


#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of valencies of a coherent configuration CC. The $i$-th entry of $L$ is $k_{i-1}$. (Check this for nonsymmetric CCs)
DeclareAttribute( "Valencies", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of the intersection matrices of a coherent configuration $CC$, where the $i$-th entry of $L$
#!	is $B_{i-1}$ and $B_{i}_{jk} = p_{ji}^k$.
DeclareAttribute("IntersectionMatrices", IsHomogeneousCoherentConfiguration);

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns P
#! @Description
#!	Returns a the matrix of eigenvalues (or character table), $P$, for a coherent configuration CC.
DeclareAttribute( "MatrixOfEigenvalues", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns Q
#! @Description
#!	Returns a the dual matrix of eigenvalues, $Q$, for a coherent configuration CC.
DeclareAttribute( "DualMatrixOfEigenvalues", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list $L$ which is a basis of minimal idempotents for the adjacency algebra of a coherent configuration CC.
#!	The $i$-th entry of $L$ is $E_{i-1}$.
DeclareAttribute( "MinimalIdempotents", IsHomogeneousCoherentConfiguration );

DeclareOperation("BinaryExpansion", [IsPosInt]);

#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC
#! @Returns G
#! @Description
#!	Returns the automorphism group $G$ of the coherent configuration CC.
#!	$G$ is a permutation group acting on the index set of the veritices.
#!	If $G$ is not already known and must be computed, then the package "Digraphs" is required.
DeclareAttribute( "AutomorphismGroup", IsHomogeneousCoherentConfiguration );


#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments CC
#! @Returns G
#! @Description
#!	Returns the coherent configuration CC is P-polynomial.
DeclareProperty( "IsPPolynomial", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC
#! @Returns G
#! @Description
#!	Calculate all P-polynomial orderings of a homogeneous coherent configuration.
DeclareAttribute( "AllPPolynomialOrderings", IsHomogeneousCoherentConfiguration );

DeclareOperation("SchemeToGraph", [IsHomogeneousCoherentConfiguration]);
DeclareOperation("IsIsomorphicScheme", [IsHomogeneousCoherentConfiguration, IsHomogeneousCoherentConfiguration]);

DeclareOperation( "IsCharacterTableOfHomogeneousCoherentConfiguration", [ IsHomogeneousCoherentConfiguration, IsMatrix ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments file, A, L
#! @Returns true
#! @Description
#!	Saves A to file with the attributes listed in L. Note that L must be a list of strings, where
#!  each entry is an attribute known for A.
DeclareOperation( "SaveHomogeneousCoherentConfigurationWithCertainAttributes", [ IsString, IsHomogeneousCoherentConfiguration, IsList ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments file, A, L
#! @Returns homogeneous coherent configuration
#! @Description
#!	Reads in a homogenous coherent configuration from file and sets it to have the attributes
#!	stored in the file.
DeclareOperation( "ReadHomogeneousCoherentConfigurationWithCertainAttributes", [ IsString ] );
