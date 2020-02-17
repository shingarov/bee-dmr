Class {
	#name : #LargeNegativeInteger,
	#superclass : #LargeInteger,
	#type : #bytes,
	#classVars : [
		'#LeftLimit'
	],
	#category : #Kernel
}

{ #category : #initialization }
LargeNegativeInteger class >> initialize [
	LeftLimit := self basicNew: WordSize.
]

{ #category : #accessing }
LargeNegativeInteger class >> leftLimit [
	^LeftLimit
]

{ #category : #'instance creation' }
LargeNegativeInteger class >> new: anInteger [
	| large |
]

{ #category : #arithmetic }
LargeNegativeInteger >> abs [
	^self negated
]

{ #category : #converting }
LargeNegativeInteger >> asFloat [
	^self negated asFloat negated
]

{ #category : #private }
LargeNegativeInteger >> at: index [
	(index _isSmallInteger and: [index >= 1])
]

{ #category : #bits }
LargeNegativeInteger >> bitInvert [
	| mask integer |
]

{ #category : #private }
LargeNegativeInteger >> copyOfSize: n [
	| copy |
]

{ #category : #comparing }
LargeNegativeInteger >> hash [
	-16r20000000000000 <= self ifTrue: [^self asFloat hash].
]

{ #category : #bits }
LargeNegativeInteger >> highBit [
	"
]

{ #category : #testing }
LargeNegativeInteger >> negative [
	^true
]

{ #category : #testing }
LargeNegativeInteger >> positive [
	^false
]

{ #category : #printing }
LargeNegativeInteger >> printOn: aStream [
	aStream nextPut: $-.
]

{ #category : #arithmetic }
LargeNegativeInteger >> quo: divisor [
	| data quo rem |
]

{ #category : #private }
LargeNegativeInteger >> quoRem: divisor [
	| data quo rem s |
]

{ #category : #private }
LargeNegativeInteger >> reduced [
	| n mask |
]

{ #category : #private }
LargeNegativeInteger >> reducedTo: n [
	| hi sign result integer |
]

{ #category : #accessing }
LargeNegativeInteger >> sign [
	^-1
]

{ #category : #testing }
LargeNegativeInteger >> strictlyPositive [
	^false
]

{ #category : #private }
LargeNegativeInteger >> wideDigitAt: index [
	^(super wideDigitAt: index) ifNil: [Base - 1]
]
