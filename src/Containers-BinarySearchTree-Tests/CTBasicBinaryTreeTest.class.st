Class {
	#name : #CTBasicBinaryTreeTest,
	#superclass : #TestCase,
	#category : #'Containers-BinarySearchTree-Tests'
}

{ #category : #'tests - testing' }
CTBasicBinaryTreeTest >> testCreationHasNoChildren [

	| aTree |
	aTree := CTBasicBinaryTree new.
	self assert: aTree hasLeftChild & aTree hasRightChild equals: false.
]

{ #category : #'tests - testing' }
CTBasicBinaryTreeTest >> testCreationHasNoLeftChild [

	| aTree |
	aTree := CTBasicBinaryTree new.
	self assert: aTree hasLeftChild equals: false.
]

{ #category : #'tests - testing' }
CTBasicBinaryTreeTest >> testCreationHasNoObject [

	| aTree |
	aTree := CTBasicBinaryTree new.
	self assert: aTree hasObject equals: false.
]

{ #category : #'tests - testing' }
CTBasicBinaryTreeTest >> testCreationHasNoParent [

	| aTree |
	aTree := CTBasicBinaryTree new.
	self assert: aTree hasParent equals: false.
]

{ #category : #'tests - testing' }
CTBasicBinaryTreeTest >> testCreationHasNoRightChild [

	| aTree |
	aTree := CTBasicBinaryTree new.
	self assert: aTree hasRightChild equals: false.
]

{ #category : #'test - traversing' }
CTBasicBinaryTreeTest >> testFindDeepFirst [
	"comment stating purpose of message"
	
	| aTree node |
	aTree := CTBasicBinaryTree  binaryTreeEmpty. 
	
	node := aTree findDeepFirst: 7 startingFromANode: aTree.
	self assert: node isNil.
]

{ #category : #'tests - testing' }
CTBasicBinaryTreeTest >> testHasLeftChild [

	| aTree |
	aTree := CTBasicBinaryTree with: 1.
	aTree leftChild: (CTBasicBinaryTree with: 2).
	self assert: aTree hasLeftChild equals: true.
]

{ #category : #'tests - testing' }
CTBasicBinaryTreeTest >> testHasObject [

	| aTree |
	aTree := CTBasicBinaryTree with: 'node'.
	self assert: aTree hasObject equals: true.
]

{ #category : #'tests - testing' }
CTBasicBinaryTreeTest >> testHasParent [

	| aTree |
	aTree := CTBasicBinaryTree with: 1.
	aTree leftChild: (CTBasicBinaryTree with: 2).
	aTree leftChild parent: aTree.
	self assert: aTree leftChild hasParent equals: true.
]

{ #category : #'tests - testing' }
CTBasicBinaryTreeTest >> testHasRightChild [
	"comment stating purpose of message"

	| aTree |
	aTree := CTBasicBinaryTree with: 1.
	aTree rightChild: (CTBasicBinaryTree with: 3).
	self assert: aTree hasRightChild equals: true.
]

{ #category : #'tests - instance creation' }
CTBasicBinaryTreeTest >> testInitialize [ 

	| aTree |
	aTree := CTBasicBinaryTree new.
	self assert: aTree parent isNil.
	self assert: aTree object isNil.
	self assert: aTree leftChild isNil.
	self assert: aTree rightChild isNil.
]

{ #category : #'tests - instance creation' }
CTBasicBinaryTreeTest >> testInstantiateWith [

	| aTree |
	aTree := CTBasicBinaryTree with: 5.
	self assert: aTree object equals: 5.

]

{ #category : #'test accessing' }
CTBasicBinaryTreeTest >> testLeftChild [ 

	| aTree |
	aTree := CTBasicBinaryTree with: 1.
	aTree leftChild: (CTBasicBinaryTree with: 2).
	self assert: aTree leftChild object equals: 2.
]

{ #category : #'test accessing' }
CTBasicBinaryTreeTest >> testObject [

	| aTree |
	aTree := CTBasicBinaryTree new.
	aTree object: 7.
	self assert: aTree object equals: 7.
]

{ #category : #'test accessing' }
CTBasicBinaryTreeTest >> testParent [

	| aTree |
	aTree := CTBasicBinaryTree with: 1.
	aTree rightChild: (CTBasicBinaryTree with: 3).
	aTree rightChild parent: aTree.
	self assert: aTree rightChild parent object equals: 1.
]

{ #category : #'test accessing' }
CTBasicBinaryTreeTest >> testRightChild [ 

	| aTree |
	aTree := CTBasicBinaryTree with: 1.
	aTree rightChild: (CTBasicBinaryTree with: 3).
	self assert: aTree rightChild object equals: 3.
]