Class {
	#name : #CTBasicBinaryTree,
	#superclass : #Object,
	#instVars : [
		'object',
		'parent',
		'leftChild',
		'rightChild'
	],
	#category : #'Containers-BinarySearchTree'
}

{ #category : #examples }
CTBasicBinaryTree class >> binaryTree [
	<sampleInstance>
	| aTree  |
	aTree := CTBasicBinaryTree with: 1.
	aTree leftChild: (CTBasicBinaryTree with: 2).
	aTree rightChild: (CTBasicBinaryTree with: 3).
	aTree leftChild leftChild: (CTBasicBinaryTree with: 4).
	aTree leftChild rightChild: (CTBasicBinaryTree with: 5).
	^ aTree
]

{ #category : #examples }
CTBasicBinaryTree class >> binaryTreeEmpty [
	<sampleInstance>
 	^ self new
]

{ #category : #'instance creation' }
CTBasicBinaryTree class >> with: anObject [
	"Return a new tree with one node whose object is anObject and which does not have any children"

	^ self new 
		object: anObject
]

{ #category : #traversing }
CTBasicBinaryTree >> findDeepFirst: anObject startingFromANode: aNode [
	"comment stating purpose of message"
	
	| node |
	
	aNode object == anObject
		ifTrue: [ node := aNode ].
	
	aNode leftChild isNotNil & node isNil
		ifTrue: [node := self findDeepFirst: anObject startingFromANode: aNode leftChild].
		
	aNode rightChild isNotNil & node isNil
		ifTrue: [node := self findDeepFirst: anObject startingFromANode: aNode rightChild].
	
	^ node
		
	

	
	
	
]

{ #category : #testing }
CTBasicBinaryTree >> hasLeftChild [

	^ leftChild isNotNil
]

{ #category : #testing }
CTBasicBinaryTree >> hasObject [
	^ object isNotNil
]

{ #category : #testing }
CTBasicBinaryTree >> hasParent [
	
	^ parent isNotNil 
]

{ #category : #testing }
CTBasicBinaryTree >> hasRightChild [

	^ rightChild isNotNil
]

{ #category : #initialize }
CTBasicBinaryTree >> initialize [

	super initialize.
]

{ #category : #accessing }
CTBasicBinaryTree >> leftChild [
	^ leftChild
]

{ #category : #accessing }
CTBasicBinaryTree >> leftChild: aTree [
	leftChild := aTree
]

{ #category : #accessing }
CTBasicBinaryTree >> object [
	^ object
]

{ #category : #accessing }
CTBasicBinaryTree >> object: anObject [
	object := anObject
]

{ #category : #accessing }
CTBasicBinaryTree >> parent [
	^ parent
]

{ #category : #accessing }
CTBasicBinaryTree >> parent: aParent [
	parent := aParent
]

{ #category : #accessing }
CTBasicBinaryTree >> rightChild [
	^ rightChild
]

{ #category : #accessing }
CTBasicBinaryTree >> rightChild: aTree [
	rightChild := aTree
]