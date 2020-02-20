Class {
	#name : #Set,
	#superclass : #HashedCollection,
	#category : #Kernel
}

{ #category : #comparing }
Set >> = aSet [
	self == aSet ifTrue: [^true].
]

{ #category : #copying }
Set >> copyWithout: anObject [
	^self copy remove: anObject ifAbsent: nil; yourself
]

{ #category : #testing }
Set >> includes: element [
	tally = 0 ifTrue: [^false].
]

{ #category : #operations }
Set >> intersection: aCollection [
	| n set |
]

{ #category : #inquiries }
Set >> lookup: anObject [
	^table lookupKey: anObject
]

{ #category : #private }
Set >> rebuildOn: aSet [
	self basicDo: [:element | aSet basicAdd: element].
]
