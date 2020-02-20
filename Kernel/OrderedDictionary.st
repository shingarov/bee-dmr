Class {
	#name : #OrderedDictionary,
	#superclass : #Dictionary,
	#category : #Kernel
}

{ #category : #comparing }
OrderedDictionary >> = aCollection [
	super = aCollection ifFalse: [^false].
]

{ #category : #'adding / removing' }
OrderedDictionary >> add: anAssociation at: anInteger [
	^self at: anAssociation key index: anInteger put: anAssociation value
]

{ #category : #accessing }
OrderedDictionary >> at: key index: anInteger put: anObject [
	| assoc |
]

{ #category : #accessing }
OrderedDictionary >> bucketClass [
	^OrderedHashTable
]

{ #category : #services }
OrderedDictionary >> compress [
	table compressTo: tally
]

{ #category : #enumerating }
OrderedDictionary >> do: aBlock [
	(tally > 10 and: [1.5 * tally < table totalSize]) ifTrue: [self compress].
]

{ #category : #accessing }
OrderedDictionary >> first [
	^table first value
]

{ #category : #services }
OrderedDictionary >> indexAtKey: key [
	^table indexAtKey: key
]

{ #category : #accessing }
OrderedDictionary >> indexOf: anObject [
	^table indexOfElement: anObject
]

{ #category : #testing }
OrderedDictionary >> isOrderedDictionary [
	^true
]

{ #category : #accessing }
OrderedDictionary >> keyCollector [
	^OrderedCollection new: self size
]

{ #category : #accessing }
OrderedDictionary >> last [
	^table last value
]

{ #category : #removing }
OrderedDictionary >> remove: anObject ifAbsent: aBlock [
	table removeObject: anObject ifAbsent: aBlock.
]

{ #category : #enumerating }
OrderedDictionary >> reverseDo: aBlock [
	table valuesReverseDo: aBlock
]

{ #category : #accessing }
OrderedDictionary >> values [
	| values |
]

{ #category : #enumerating }
OrderedDictionary >> withIndexDo: aBlock [
	| i |
]
