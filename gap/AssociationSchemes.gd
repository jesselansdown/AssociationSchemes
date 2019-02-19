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
#! @Chapter Introduction
#!
#! AssociationSchemes is a GAP package for working with association schemes and coherent configurations. Currently only
#! methods for homogeneous coherent configurations are implemented.
#! @Section Installation
#!	To install AssociationSchemes, simply copy to the "pkg" directory of your GAP installation.
#! @Section Prerequisite packages
#!	"Digraphs" is needed if automorphism groups are to be computed.


DeclareCategory( "IsCoherentConfiguration", IsObject );

DeclareRepresentation( "IsCoherentConfigurationRep",
                       IsCoherentConfiguration and IsAttributeStoringRep,
                       [ ] );

BindGlobal( "CoherentConfigurationFamily",
        NewFamily( "CoherentConfigurationFamily" ) );

BindGlobal( "TheTypeCoherentConfiguration",
        NewType( CoherentConfigurationFamily,
                IsCoherentConfigurationRep ) );

#BindGlobal("TheTypeAssociationScheme", NewType( AssociationSchemeFamily, IsAssociationScheme ));

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments M
#! @Returns coherent configuration
#! @Description
#!	Takes the relationship matrix, $M$, describing a coherent configuration and returns a CoherentConfiguration object.
#!	The matrix $M = \sum_{i=0}^d i A_i$, where $A_i$ are the adjacency matrices describing a coherent configuration.
#!	Checks that the matrix satisfies the coherent configuration axioms.
DeclareOperation( "CoherentConfiguration", [ IsMatrix ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments M
#! @Returns coherent configuration
#! @Description
#!	Same as CoherentConfiguration but without performing any checks. Use this method only if you know with certainty
#!	that $M$ describes a coherent configuration.
DeclareOperation( "CoherentConfigurationNC", [ IsMatrix ] );

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns relation matrix $M$
#! @Description
#!	Takes a coherent configuration and returns the underlying relation matrix $M = \sum_{i=0}^d i A_i$, where $A_i$ are
#!	the adjacency matrices of the coherent configuration
DeclareOperation( "RelationMatrix", [ IsCoherentConfiguration ] );

#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a homogeneous coherent configuration.
DeclareProperty( "IsHomogeneous", IsCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a commutative coherent configuration.
DeclareProperty( "IsCommutative", IsCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a symmetric coherent configuration.
DeclareProperty( "IsSymmetricCoherentConfiguration", IsCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC
#! @Returns d
#! @Description
#!	Returns $d$ for a $d$-class association scheme.
DeclareAttribute( "ClassOfAssociationScheme", IsCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties of coherent configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Check if a coherent configuration is a strongly regular graph.
DeclareProperty( "IsStronglyRegularGraph", IsCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list $L$, where the $i$-th entry of $L$ is the adjacency matrix $A_{i-1}$,
#!	where $(A_i)_{xy} =1$ if $(x,y) \in R_i$ and $(A_i)_{xy} =0$ otherwise.
DeclareAttribute( "AdjacencyMatrices", IsCoherentConfiguration );

DeclareOperation( "AdjacencyMatricesOfMatrix", [IsMatrix] );
DeclareOperation( "IsAssociationSchemeMatrix", [ IsMatrix ]);
DeclareOperation( "IsHomogeneousCoherentConfigurationMatrix", [ IsMatrix ]);
DeclareOperation( "IsCoherentConfigurationMatrix", [ IsMatrix ]);

#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC
#! @Returns n
#! @Description
#!	Returns the order $n$ (number of vertices) of the coherent configuration.
DeclareAttribute( "Order", IsCoherentConfiguration );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC, L
#! @Returns coherent configuration
#! @Description
#!	Takes a $d$-class coherent configuration CC and returns a fusion scheme corresponding to L,
#!	where L is a partion of $\{0, \ldots, d\}$. Returns fail if $L$ is not a valid partition.
DeclareOperation( "FusionScheme", [IsCoherentConfiguration, IsList]);

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC, i, j, k
#! @Returns $p_{ij}^k$
#! @Description
#!	Returns the intersection number $p_{ij}^k$ for a coherent configuration CC.
DeclareOperation( "IntersectionNumber", [IsCoherentConfiguration, IsInt, IsInt, IsInt]);


#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of valencies of a coherent configuration CC. The $i$-th entry of $L$ is $k_{i-1}$. (Check this for nonsymmetric CCs)
DeclareAttribute( "Valencies", IsCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of the intersection matrices of a coherent configuration $CC$, where the $i$-th entry of $L$
#!	is $B_{i-1}$ and $B_{i}_{jk} = p_{ji}^k$.
DeclareAttribute("IntersectionMatrices", IsCoherentConfiguration);

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns P
#! @Description
#!	Returns a the matrix of eigenvalues (or character table), $P$, for a coherent configuration CC.
DeclareAttribute( "MatrixOfEigenvalues", IsCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns Q
#! @Description
#!	Returns a the dual matrix of eigenvalues, $Q$, for a coherent configuration CC.
DeclareAttribute( "DualMatrixOfEigenvalues", IsCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices describing coherent configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list $L$ which is a basis of minimal idempotents for the adjacency algebra of a coherent configuration CC.
#!	The $i$-th entry of $L$ is $E_{i-1}$.
DeclareAttribute( "MinimalIdempotents", IsCoherentConfiguration );

DeclareOperation("BinaryExpansion", [IsPosInt]);

#! @Chapter Functionality
#! @Section Attributes of coherent configurations
#! @Arguments CC
#! @Returns G
#! @Description
#!	Returns the automorphism group $G$ of the coherent configuration CC.
#!	$G$ is a permutation group acting on the index set of the veritices.
#!	If $G$ is not already known and must be computed, then the package "Digraphs" is required.
DeclareAttribute( "AutomorphismGroup", IsCoherentConfiguration );


DeclareOperation("SchemeToGraph", [IsCoherentConfiguration]);
DeclareOperation("IsIsomorphicScheme", [IsCoherentConfiguration, IsCoherentConfiguration]);
