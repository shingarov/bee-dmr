Class {
	#name : #Dictionary,
	#superclass : #HashedCollection,
	#category : #Kernel
}

{ #category : #comparing }
Dictionary >> = aCollection [
	self == aCollection ifTrue: [^true].
]

{ #category : #adding }
Dictionary >> add: anAssociation [
	^self basicAdd: anAssociation
]

{ #category : #adding }
Dictionary >> addAll: aCollection [
	aCollection isDictionary
]

{ #category : #accessing }
Dictionary >> anyone [
	self associationsDo: [:assoc | ^assoc value].
]

{ #category : #accessing }
Dictionary >> associationAt: key [
	^self associationAt: key ifAbsent: [self keyNotFound: key]
]

{ #category : #accessing }
Dictionary >> associationAt: key ifAbsent: aBlock [
	| assoc |
]

{ #category : #private }
Dictionary >> associationClass [
	^Association
]

{ #category : #accessing }
Dictionary >> associations [
	^Array
]

{ #category : #enumerating }
Dictionary >> associationsDo: aBlock [
	table elementsDo: aBlock count: self size
]

{ #category : #enumerating }
Dictionary >> associationsSelect: aBlock [
	| selection |
]

{ #category : #accessing }
Dictionary >> at: key [
	^table lookupValue: key
]

{ #category : #accessing }
Dictionary >> at: key ifAbsent: aBlock [
	^table lookupValue: key ifAbsent: aBlock
]

{ #category : #accessing }
Dictionary >> at: key ifAbsent: aBlock ifPresent: pBlock [
	^table lookUpValue: key ifAbsent: aBlock ifPresent: pBlock
]

{ #category : #accessing }
Dictionary >> at: key ifAbsentPut: aBlock [
	^self at: key ifAbsent: [self at: key put: aBlock value]
]

{ #category : #accessing }
Dictionary >> at: key ifPresent: aBlock [
	^table lookupValue: key ifPresent: aBlock
]

{ #category : #accessing }
Dictionary >> at: key put: element [
	| assoc |
]

{ #category : #accessing }
Dictionary >> at: key put: anObject ifPresent: aBlock [
	| assoc existing answer |
]

{ #category : #arithmetic }
Dictionary >> at: key sum: aNumber [
	| prev |
]

{ #category : #private }
Dictionary >> basicAdd: anAssociation [
	| assoc |
]

{ #category : #private }
Dictionary >> basicAt: key put: element for: aDictionary [
	table basicAtKey: key put: element.
]

{ #category : #removing }
Dictionary >> basicRemoveKey: key ifAbsent: aBlock [
	table removeKey: key ifAbsent: [^aBlock value].
]

{ #category : #enumerating }
Dictionary >> collect: aBlock [
	| answer |
]

{ #category : #enumerating }
Dictionary >> collect: collectBlock thenDo: actionBlock [
	self associationsDo: [:x | | fx |
]

{ #category : #enumerating }
Dictionary >> collect: collectBlock thenSelect: selectBlock [
	| answer |
]

{ #category : #copying }
Dictionary >> deepCopy [
	| copy |
]

{ #category : #private }
Dictionary >> defaultPolicy [
	^super defaultPolicy associationClass: self associationClass
]

{ #category : #enumerating }
Dictionary >> do: aBlock [
	super do: [:assoc | aBlock evaluateWith: assoc value]
]

{ #category : #system }
Dictionary >> doesNotUnderstand: aMessage [
	^self
]

{ #category : #private }
Dictionary >> equates: key with: association [
	^key = association key
]

{ #category : #inquiries }
Dictionary >> includesKey: key [
	^(table lookupKey: key) !== nil
]

{ #category : #testing }
Dictionary >> isDictionary [
	^true
]

{ #category : #testing }
Dictionary >> isOrderedDictionary [
	^false
]

{ #category : #inquiries }
Dictionary >> keyAtValue: anObject [
	^self keyAtValue: anObject ifAbsent: nil
]

{ #category : #inquiries }
Dictionary >> keyAtValue: anObject ifAbsent: aBlock [
	self associationsDo: [:assoc | assoc value = anObject ifTrue: [^assoc key]].
]

{ #category : #private }
Dictionary >> keyCollector [
	^Set new: self size
]

{ #category : #private }
Dictionary >> keyFor: anObject [
	^anObject key
]

{ #category : #errors }
Dictionary >> keyNotFound: anObject [
	KeyNotFound signalFor: anObject
]

{ #category : #accessing }
Dictionary >> keys [
	| keys |
]

{ #category : #enumerating }
Dictionary >> keysAndElementsDo: aBlock [
	self associationsDo: [:assoc | aBlock evaluateWith: assoc key with: assoc]
]

{ #category : #enumerating }
Dictionary >> keysAndValuesDo: aBlock [
	self associationsDo: [:assoc | aBlock value: assoc key value: assoc value]
]

{ #category : #enumerating }
Dictionary >> keysDo: aBlock [
	self associationsDo: [:assoc | aBlock evaluateWith: assoc key]
]

{ #category : #inquiries }
Dictionary >> occurrencesOf: anObject [
	| count |
]

{ #category : #copying }
Dictionary >> postCopy [
	super postCopy.
]

{ #category : #private }
Dictionary >> rebuildOn: aDictionary [
	self
]

{ #category : #removing }
Dictionary >> remove: anObject ifAbsent: aBlock [
	^self shouldNotImplement
]

{ #category : #removing }
Dictionary >> removeAssociation: anAssociation [
	self removeKey: anAssociation key
]

{ #category : #removing }
Dictionary >> removeKey: key [
	self removeKey: key ifAbsent: [self keyNotFound: key]
]

{ #category : #removing }
Dictionary >> removeKey: key ifAbsent: aBlock [
	^self basicRemoveKey: key ifAbsent: aBlock
]

{ #category : #enumerating }
Dictionary >> select: aBlock [
	| selection |
]

{ #category : #enumerating }
Dictionary >> select: selectBlock thenCollect: collectBlock [
	| answer |
]

{ #category : #printing }
Dictionary >> storeOn: aStream [
	| first |
]

{ #category : #testing }
Dictionary >> storesAssociations [
	^true
]

{ #category : #accessing }
Dictionary >> values [
	| values |
]
