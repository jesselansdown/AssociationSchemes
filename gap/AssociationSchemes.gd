#############################################################################
##
##                                AssociationSchemes package
##
##  Copyright 2019, Jesse Lansdown, 	UWA
##                  John Bamberg,    	UWA
##                  Akihide Hanaki    Shinshu
##
##  This program is free software; you can redistribute it and/or
##  modify it under the terms of the GNU General Public License
##  as published by the Free Software Foundation; either version 2
##  of the License, or (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License
##  along with this program; if not, write to the Free Software
##  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
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
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes the relationship matrix, $M$, describing a homogensous coherent configuration and returns a HomogeneousCoherentConfiguration object.
#!	The matrix $M = \sum_{i=0}^d i A_i$, where $A_i$ are the adjacency matrices describing a coherent configuration.
#!	Checks that the matrix satisfies the axioms of a homogeneous coherent configuration. (Note that this accepts a matrix of the form
#!	$M = \sum_{i=0}^d a_i A_i$ where $a_i$ is not equal to $i$, however, it will first convert to the form $M = \sum_{i=0}^d i A_i$).
DeclareOperation( "HomogeneousCoherentConfiguration", [ IsMatrix ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments M
#! @Returns homogeneous coherent configuration
#! @Description
#!	Same as HomogeneousCoherentConfiguration but without performing any checks. Use this method only if you know with certainty
#!	that $M$ describes a coherent configuration.
DeclareOperation( "HomogeneousCoherentConfigurationNC", [ IsMatrix ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments M
#! @Returns homogeneous coherent configuration
#! @Description
#!	Takes the relationship matrix, $M$, describing an associatioin scheme and returns a association scheme (symmetric coherent configuration).
#!  This is simply a HomogeneousCoherentConfiguration object, but with the known property of being symmetric.
#!	The matrix $M = \sum_{i=0}^d i A_i$, where $A_i$ are the adjacency matrices describing an association scheme.
#!	Checks that the matrix satisfies the association scheme axioms. (Note that this accepts a matrix of the form
#!	$M = \sum_{i=0}^d a_i A_i$ where $a_i$ is not equal to $i$, however, it will first convert to the form $M = \sum_{i=0}^d i A_i$).
DeclareOperation( "AssociationScheme", [ IsMatrix ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments M
#! @Returns homogeneous coherent configuration
#! @Description
#!	Same as AssociationScheme but without performing any checks. Use this method only if you know with certainty
#!	that $M$ describes an association scheme (symmetric coherent configuration).
DeclareOperation( "AssociationSchemeNC", [ IsMatrix ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC, L
#! @Returns coherent configuration
#! @Description
#!	Takes a homogeneous coherent configuration CC and a list L, where L is a reordering of the relations.
#!	Returns a homogeneous coherent configuration where the $i$-th relation of the CC becomes the $j$-th relation in 
#!	the new homogeneous coherent configuration, where $j = L_i$. Note that $L_i$ must be equal to $\{0, \ldots, d \}$
#!	as a set, and additionally requires that $L_1 = 0$.
DeclareOperation( "ReorderRelations", [ IsHomogeneousCoherentConfiguration, IsList ] );

#! @Chapter Functionality
#! @Section Matrices Describing Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns $M$
#! @Description
#!	Takes a homogeneous coherent configuration and returns the underlying relation matrix $M = \sum_{i=0}^d i A_i$, where $A_i$ are
#!	the adjacency matrices of the coherent configuration
DeclareOperation( "RelationMatrix", [ IsHomogeneousCoherentConfiguration ] );

#! @Chapter Functionality
#! @Section Methods
#! @Arguments CC, x, y
#! @Returns i
#! @Description
#!	Takes a CC and two points, x and y, and returns i such that $(x, y) \in R_i$.
DeclareOperation( "Relation", [ IsHomogeneousCoherentConfiguration, IsPosInt, IsPosInt] );

#! @Chapter Functionality
#! @Section Methods
#! @Arguments CC, p, k
#! @Returns L
#! @Description
#!	Returns a list $L$ of all the points $y$ of CC such that $(p,y) \in R_k$.
DeclareOperation( "Neighbours", [ IsHomogeneousCoherentConfiguration, IsPosInt, IsInt] );

#! @Chapter Functionality
#! @Section Methods
#! @Arguments CC, p, L
#! @Returns L
#! @Description
#!	Returns a list $L$ of all the points $y$ of CC such that $(p,y) \in R_k$ for some $k \in L$.
DeclareOperation( "Neighbours", [IsHomogeneousCoherentConfiguration, IsInt, IsList] );


#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a commutative coherent configuration.
DeclareProperty( "IsCommutative", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Checks if the input is a symmetric coherent configuration.
DeclareProperty( "IsSymmetricCoherentConfiguration", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for IsSymmetricCoherentConfiguration
DeclareOperation( "IsAssociationScheme", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns d
#! @Description
#!	Returns $d$ for a $d$-class association scheme.
DeclareAttribute( "NumberOfClasses", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Check if a coherent configuration is a strongly regular graph (a $2$-class homogeneous coherent configuration).
DeclareProperty( "IsStronglyRegularGraph", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices Describing Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list $L$, where the $i$-th entry of $L$ is the adjacency matrix $A_{i-1}$,
#!	where $(A_i)_{xy} =1$ if $(x,y) \in R_i$ and $(A_i)_{xy} =0$ otherwise.
DeclareAttribute( "AdjacencyMatrices", IsHomogeneousCoherentConfiguration );

DeclareOperation( "AdjacencyMatricesOfMatrix", [IsMatrix] );
DeclareOperation( "IsAssociationSchemeMatrix", [ IsMatrix ]);
DeclareOperation( "IsHomogeneousCoherentConfigurationMatrix", [ IsMatrix ]);
DeclareOperation( "IsHomogeneousCoherentConfigurationMatrix2", [ IsMatrix ]);


#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns n
#! @Description
#!	Returns the order $n$ (number of vertices) of the coherent configuration.
DeclareAttribute( "Order", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Methods
#! @Arguments CC, i, j, k
#! @Returns $p_{ij}^k$
#! @Description
#!	Returns the intersection number $p_{ij}^k$ for a coherent configuration CC.
DeclareOperation( "IntersectionNumber", [IsHomogeneousCoherentConfiguration, IsInt, IsInt, IsInt]);


#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of valencies of a coherent configuration CC. The $i$-th entry of $L$ is $k_{i-1}$.
DeclareAttribute( "Valencies", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices Describing Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list L of the intersection matrices of a homogeneous coherent configuration $CC$, where the $i$-th entry of $L$
#!	is $B_{i-1}$ and $(B_{i})_{jk} = p_{ji}^k$.
DeclareAttribute("IntersectionMatrices", IsHomogeneousCoherentConfiguration);


#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns n
#! @Description
#!	Returns the number $n$ of characters of CC.
DeclareAttribute("NumberOfCharacters", IsHomogeneousCoherentConfiguration);

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns P
#! @Description
#!	Returns a the matrix of eigenvalues (or character table), $P$, for a homogeneous coherent configuration CC.
DeclareAttribute( "MatrixOfEigenvalues", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns P
#! @Description
#!	Alias for MatrixOfEigenvalues.
DeclareOperation( "CharacterTable", [IsHomogeneousCoherentConfiguration] );

DeclareAttribute( "MatrixOfEigenvaluesSquare", IsHomogeneousCoherentConfiguration );
DeclareAttribute( "MatrixOfEigenvaluesNonSquare", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns Q
#! @Description
#!	Returns a the dual matrix of eigenvalues, $Q$, for a homogeneous coherent configuration CC.
DeclareAttribute( "DualMatrixOfEigenvalues", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Matrices Describing Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Returns a list $L$ which is a basis of minimal idempotents for the adjacency algebra of a homogeneous coherent configuration CC.
#!	The $i$-th entry of $L$ is $E_{i-1}$.
DeclareAttribute( "MinimalIdempotents", IsHomogeneousCoherentConfiguration );

DeclareOperation("BinaryExpansion", [IsPosInt]);

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns G
#! @Description
#!	Returns the automorphism group $G$ of the coherent configuration CC.
#!	$G$ is a permutation group acting on the index set of the vertices.
DeclareAttribute( "AutomorphismGroup", IsHomogeneousCoherentConfiguration );


#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC is P-polynomial.
DeclareProperty( "IsPPolynomial", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC admits a P-polynomial ordering.
DeclareProperty( "AdmitsPPolynomialOrdering", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for IsPPolynomial.
DeclareOperation( "IsMetric", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for AdmitsPPolynomialOrdering.
DeclareOperation( "AdmitsMetricOrdering", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for IsQPolynomial.
DeclareOperation( "IsCoetric", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for AdmitsQPolynomialOrdering.
DeclareOperation( "AdmitsCometricOrdering", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Calculate the list $L$ of all P-polynomial orderings of a homogeneous coherent configuration.
DeclareAttribute( "AllPPolynomialOrderings", IsHomogeneousCoherentConfiguration );


#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Alias for AllPPolynomialOrderings.
DeclareOperation( "AllMetricOrderings", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Alias for AllQPolynomialOrderings.
DeclareOperation( "AllCometricOrderings", [IsHomogeneousCoherentConfiguration] );


#! @Chapter Functionality
#! @Section Methods
#! @Arguments CC, i, j, k
#! @Returns $q_{i,j}^k$
#! @Description
#!	Compute the krein parameter $q_{i,j}^k$ of a commutative homogeneous coherent configuration.
DeclareOperation( "KreinParameter", [ IsHomogeneousCoherentConfiguration, IsInt, IsInt, IsInt ] );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Return a list $L$ of all Krein parameters of a commutative homogeneous coherent configuration,
#!	where $L[i][j,k] = q_{i,j}^k$.
DeclareAttribute( "KreinParameters", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC admits a Q-polynomial ordering.
DeclareProperty( "AdmitsQPolynomialOrdering", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the commutative coherent configuration CC is Q-polynomial.
DeclareProperty( "IsQPolynomial", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Alias for is Q-polynomial.
DeclareOperation( "IsCometric", [IsHomogeneousCoherentConfiguration] );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns L
#! @Description
#!	Calculate a list $L$ of all Q-polynomial orderings of a homogeneous coherent configuration.
DeclareAttribute( "AllQPolynomialOrderings", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC is Q-bipartite.
DeclareProperty( "IsQBipartite", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Returns if the homogeneous coherent configuration CC is bipartite.
DeclareProperty( "IsPBipartite", IsHomogeneousCoherentConfiguration );

DeclareOperation("SchemeToGraph", [IsHomogeneousCoherentConfiguration]);

DeclareOperation( "IsCharacterTableOfHomogeneousCoherentConfiguration", [ IsHomogeneousCoherentConfiguration, IsMatrix ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments file, A, L
#! @Returns true
#! @Description
#!	Saves homogeneous coherent configuration A to file F with the attributes listed in L. Note that L must be a list of strings, where
#!	each entry is an attribute known for A. Note that Print or PrintTo will only return the relation
#!	matrix of a homogeneous coherent configuration, which contains all necessary information about
#!	the homogeneous coherent configuration, but may require a lot of computation to reobtain its attributes. Hence this
#!	method is intended to alow saving of computationally difficult or time consuming attributes directly.
#!	It also alows the user to choose which attributes to save, since some attributes are very large, but easily
#!	recomputed. For example, it is often desirable to save the matrix of eigenvalues, and perhaps the 
#!	automorphism group and intersection matrices, while it is not generally desirable to also save the
#!	adjacency matrices or minimal idempotents.
DeclareOperation( "SaveHomogeneousCoherentConfigurationWithCertainAttributes", [ IsString, IsHomogeneousCoherentConfiguration, IsList ] );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments file, A, L
#! @Returns homogeneous coherent configuration
#! @Description
#!	Reads in a homogenous coherent configuration from file and sets it to have the attributes
#!	stored in the file. This reads files of the type formed by SaveHomogeneousCoherentConfigurationWithCertainAttributes.
DeclareOperation( "ReadHomogeneousCoherentConfigurationWithCertainAttributes", [ IsString ] );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Check if the homogeneous coherent configuration is thin.
DeclareProperty( "IsThin", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Check if the homogeneous coherent configuration is quasi thin.
DeclareProperty( "IsQuasiThin", IsHomogeneousCoherentConfiguration );


#! @Chapter Functionality
#! @Section Properties Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns true or false
#! @Description
#!	Check if the homogeneous coherent configuration is primitve.
DeclareProperty( "IsPrimitive", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Constructor Methods
#! @Arguments CC, L
#! @Returns coherent configuration
#! @Description
#!	Takes a homogeneous coherent configuration CC and a list L, where L is a reordering of the minimal idempotents.
#!	Returns a homogeneous coherent configuration where the $i$-th idempotent of the CC becomes the $j$-th idempotent in 
#!	the new homogeneous coherent configuration, where $j = L_i$. Note that $L_i$ must be equal to $\{0, \ldots, d \}$
#!	as a set, and additionally requires that $L_1 = 0$.
DeclareOperation( "ReorderMinimalIdempotents", [ IsHomogeneousCoherentConfiguration, IsList ] );


#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns List
#! @Description
#!	Returns the intersection array if CC is P-polynomial.
DeclareAttribute( "IntersectionArray", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns List
#! @Description
#!	Returns the Krein (or dual intersection) array if CC is Q-polynomial.
DeclareAttribute( "KreinArray", IsHomogeneousCoherentConfiguration );

#! @Chapter Functionality
#! @Section Attributes Of Homogeneous Coherent Configurations
#! @Arguments CC
#! @Returns List
#! @Description
#!	Alias for KreinArray.
DeclareOperation( "DualIntersectionArray", [IsHomogeneousCoherentConfiguration] );
