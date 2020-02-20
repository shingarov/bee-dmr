Class {
	#name : #Bag,
	#superclass : #Collection,
	#instVars : [
		'#contents'
	],
	#category : #Kernel
}

{ #category : #'instance creation' }
Bag class >> new: anInteger [
	^self basicNew initialize: anInteger
]

{ #category : #'instance creation' }
Bag class >> withAll: aCollection [
	| bag |
]

{ #category : #comparing }
Bag >> = aBag [
	(aBag isKindOf: Bag) ifFalse: [^false].
]

{ #category : #adding }
Bag >> add: anObject [
	contents at: anObject sum: 1.
]

{ #category : #adding }
Bag >> add: anObject withOccurrences: anInteger [
	contents at: anObject sum: anInteger.
]

{ #category : #accessing }
Bag >> anyone [
	contents keysDo: [:k | ^k].
]

{ #category : #converting }
Bag >> asBag [
	^self
]

{ #category : #converting }
Bag >> asIdentitySet [
	^contents keys asIdentitySet
]

{ #category : #converting }
Bag >> asSet [
	^contents keys
]

{ #category : #accessing }
Bag >> at: anObject [
	^self errorNotKeyed
]

{ #category : #accessing }
Bag >> at: anInteger put: anObject [
	self errorNotKeyed
]

{ #category : #initialization }
Bag >> contentsClass [
	^Dictionary
]

{ #category : #accessing }
Bag >> defaultPolicy [
	^contents defaultPolicy
]

{ #category : #enumerating }
Bag >> do: aBlock [
	contents
]

{ #category : #enumerating }
Bag >> doWithOccurrences: aBlock [
	contents keysAndValuesDo: [:k :v | aBlock value: k value: v]
]

{ #category : #accessing }
Bag >> elements [
	^contents
]

{ #category : #inquiries }
Bag >> frequencies [
	^contents
]

{ #category : #inquiries }
Bag >> includes: anObject [
	^contents includesKey: anObject
]

{ #category : #initialization }
Bag >> initialize [
	super initialize.
]

{ #category : #initialization }
Bag >> initialize: anInteger [
	contents := self contentsClass new: anInteger
]

{ #category : #testing }
Bag >> isEmpty [
	^contents isEmpty
]

{ #category : #enumerating }
Bag >> keysAndValuesDo: aBlock [
	contents keysAndValuesDo: [:k :v | aBlock value: k value: v]
]

{ #category : #inquiries }
Bag >> occurrencesOf: anObject [
	^contents at: anObject ifAbsent: 0
]

{ #category : #copying }
Bag >> postCopy [
	super postCopy.
]

{ #category : #removing }
Bag >> remove: anObject ifAbsent: aBlock [
	| count |
]

{ #category : #removing }
Bag >> removeAll [
	contents removeAll
]

{ #category : #accessing }
Bag >> size [
	| tally |
]

{ #category : #private }
Bag >> sortedCounts [
	| counts |
]

{ #category : #accessing }
Bag >> usePolicy: aHashTablePolicy [
	^contents usePolicy: aHashTablePolicy
]
