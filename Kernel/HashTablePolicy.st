Class {
	#name : #HashTablePolicy,
	#superclass : #Object,
	#instVars : [
		'#associationClass',
		'#bucketClass',
		'#maxSlots',
		'#weak',
		'#hasher',
		'#comparison',
		'#storesAssociations'
	],
	#classVars : [
		'#EmptySlot'
	],
	#category : #Kernel
}

{ #category : #accessing }
HashTablePolicy class >> emptySlot [
	^EmptySlot
]

{ #category : #initialization }
HashTablePolicy class >> initialize [
	super initialize.
]

{ #category : #services }
HashTablePolicy >> associationClass [
	^associationClass
]

{ #category : #accessing }
HashTablePolicy >> associationClass: aClass [
	associationClass := aClass
]

{ #category : #accessing }
HashTablePolicy >> bucketClass: aClass [
	bucketClass := aClass
]

{ #category : #services }
HashTablePolicy >> bucketOfSize: anInteger [
	| bucket |
]

{ #category : #accessing }
HashTablePolicy >> comparison: evaluableObject [
	comparison := evaluableObject
]

{ #category : #private }
HashTablePolicy >> contentOfSize: anInteger [
	| table |
]

{ #category : #accessing }
HashTablePolicy >> emptySlot [
	^weak ifTrue: [EmptySlot]
]

{ #category : #services }
HashTablePolicy >> equates: key with: anObject [
	| item |
]

{ #category : #accessing }
HashTablePolicy >> hasher: evaluableObject [
	hasher := evaluableObject
]

{ #category : #services }
HashTablePolicy >> hashFor: anObject [
	^hasher notNil
]

{ #category : #initialization }
HashTablePolicy >> initialize [
	associationClass := Association.
]

{ #category : #services }
HashTablePolicy >> keyFor: anObject [
	^storesAssociations ifTrue: [anObject key] ifFalse: [anObject]
]

{ #category : #accessing }
HashTablePolicy >> maxSlots [
	^maxSlots
]

{ #category : #accessing }
HashTablePolicy >> maxSlots: anInteger [
	maxSlots := anInteger
]

{ #category : #accessing }
HashTablePolicy >> storesAssociations: aBoolean [
	storesAssociations := aBoolean
]

{ #category : #accessing }
HashTablePolicy >> useIdentityHash [
	self
]

{ #category : #accessing }
HashTablePolicy >> useStringHash [
	self
]

{ #category : #accessing }
HashTablePolicy >> usesWeakSlots [
	^weak
]

{ #category : #services }
HashTablePolicy >> useWeakSlots [
	weak := true
]

{ #category : #accessing }
HashTablePolicy >> weak: aBoolean [
	weak := aBoolean
]
