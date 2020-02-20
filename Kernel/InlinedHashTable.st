Class {
	#name : #InlinedHashTable,
	#superclass : #HashTable,
	#type : #variable,
	#category : #Kernel
}

{ #category : #'instance creation' }
InlinedHashTable class >> new: anInteger [
	| n |
]

{ #category : #accessing }
InlinedHashTable >> at: index key: key put: element [
	(self at: index) ifNil: [
]

{ #category : #accessing }
InlinedHashTable >> atKey: key hash: hash sum: magnitude [
	| index v k |
]

{ #category : #private }
InlinedHashTable >> basicAtKey: key put: element [
	| index |
]

{ #category : #removing }
InlinedHashTable >> clearSlot: anInteger with: emptySlot [
	self
]

{ #category : #private }
InlinedHashTable >> copyFromBucket: bucket [
	| count |
]

{ #category : #accessing }
InlinedHashTable >> count [
	| n empty |
]

{ #category : #enumerating }
InlinedHashTable >> elementsDo: aBlock count: n [
	| count |
]

{ #category : #private }
InlinedHashTable >> indexOfHash: integer [
	^integer \\ (self size // 2) * 2 + 1
]

{ #category : #testing }
InlinedHashTable >> isCapacityGreaterThan: count [
	^self size * 3 > (count * 8)
]

{ #category : #enumerating }
InlinedHashTable >> keysAndValuesDo: aBlock [
	1 to: self size by: 2 do: [:index | | key value |
]

{ #category : #private }
InlinedHashTable >> lookupValue: key [
	^self lookupValue: key ifAbsent: [self keyNotFound: key]
]

{ #category : #removing }
InlinedHashTable >> moveSlot: anInteger to: targetInteger [
	| k v empty |
]

{ #category : #removing }
InlinedHashTable >> slotsPerElement [
	^2
]

{ #category : #private }
InlinedHashTable >> valueAt: index ifAbsent: aBlock [
	| k value |
]
