"
This concrete class adds the 'superTree' variable to its superclass as explained in TreeLW. The 'SKP' in the name comes from the 's' in subTrees, the 'k' in key and the 'p' in superTree.
"
Class {
	#name : #CTKeyedParentedTree,
	#superclass : #CTSubtreedtKeyedTree,
	#instVars : [
		'superTree'
	],
	#category : #'Trees-Main'
}

{ #category : #examples }
CTKeyedParentedTree class >> readMe [
	
	"TreeLW contains examples for this class."
]

{ #category : #'private accessing' }
CTKeyedParentedTree >> basicSuperTree [
	
	"Return the contents of the superTree variable. Do not redefine in subclasses."

	

	^superTree
]

{ #category : #'private accessing' }
CTKeyedParentedTree >> basicSuperTree: aTree [ 
	"Set the superTree variable to aTree and return the receiver. If the argument is a 
	tree, it becomes the superTree of the receiver. If the argument is something 
	else (except nil, which is not allowed), the receiver becomes a root node. Do not 
	redefine in subclasses."

	superTree := aTree
]
