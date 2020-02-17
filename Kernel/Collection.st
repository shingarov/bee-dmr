Class {
	#name : #Collection,
	#superclass : #Object,
	#category : #Kernel
}

{ #category : #'instance creation' }
Collection class >> with: anObject [
	^self new add: anObject; yourself
]

{ #category : #'instance creation' }
Collection class >> with: object1 with: object2 [
	^self new add: object1; add: object2; yourself
]

{ #category : #'instance creation' }
Collection class >> with: object1 with: object2 with: object3 [
	^self new
]

{ #category : #'instance creation' }
Collection class >> with: object1
	^self new
]

{ #category : #'instance creation' }
Collection class >> with: anObject withAll: aCollection [
	^self new add: anObject; addAll: aCollection; yourself
]

{ #category : #operations }
Collection >> & collection [
	^CompositeCollection with: self with: collection
]

{ #category : #operations }
Collection >> && anObject [
	^CompositeCollection with: self with: {anObject}
]

{ #category : #adding }
Collection >> add: anObject [
	self subclassResponsibility
]

{ #category : #adding }
Collection >> addAll: aCollection [
	aCollection do: [:element | self add: element].
]

{ #category : #accessing }
Collection >> anyone [
	^self detect: [:one | true] ifNone: nil
]

{ #category : #inquiries }
Collection >> anySatisfy: aBlock [
	self detect: aBlock ifNone: [^false].
]

{ #category : #converting }
Collection >> asArray [
	^Array withAll: self
]

{ #category : #converting }
Collection >> asBag [
	^Bag withAll: self
]

{ #category : #converting }
Collection >> asIdentitySet [
	^IdentitySet withAll: self
]

{ #category : #converting }
Collection >> asOrderedCollection [
	^OrderedCollection withAll: self
]

{ #category : #converting }
Collection >> asSet [
	^Set withAll: self
]

{ #category : #converting }
Collection >> asSortedCollection [
	^SortedCollection withAll: self
]

{ #category : #converting }
Collection >> asSortedCollection: aBlock [
	^SortedCollection withAll: self sortingBy: aBlock
]

{ #category : #printing }
Collection >> basicPrintOn: aStream [
	Recursion
]

{ #category : #enumerating }
Collection >> collect: evaluable [
	| collector |
]

{ #category : #enumerating }
Collection >> collect: evaluable in: aCollection [
	self do: [:x | | fx |
]

{ #category : #enumerating }
Collection >> collect: aBlock thenDetect: anotherBlock [
	self do: [:x | | fx |
]

{ #category : #enumerating }
Collection >> collect: aBlock thenDo: anotherBlock [
	self do: [:x | | fx |
]

{ #category : #enumerating }
Collection >> collect: aBlock thenSelect: anotherBlock [
	| collector |
]

{ #category : #enumerating }
Collection >> collect: aBlock thenSelect: anotherBlock in: aCollection [
	self do: [:x | | fx |
]

{ #category : #inquiries }
Collection >> conform: evaluable [
	self
]

{ #category : #copying }
Collection >> copyWith: anObject [
	^self copy add: anObject; yourself
]

{ #category : #copying }
Collection >> copyWithout: anObject [
	^self reject: [:element | element = anObject]
]

{ #category : #inquiries }
Collection >> count: evaluable [
	| count |
]

{ #category : #copying }
Collection >> deepCopy [
	^self collect: [:element | element copy] in: self species new
]

{ #category : #inquiries }
Collection >> detect: evaluable [
	^self detect: evaluable ifNone: [self errorNotFound]
]

{ #category : #inquiries }
Collection >> detect: evaluable ifFound: aBlock [
	self detect: evaluable ifFound: aBlock ifNone: nil
]

{ #category : #inquiries }
Collection >> detect: aBlock ifFound: foundBlock ifNone: exceptionBlock [
	self do: [:element | | found |
]

{ #category : #inquiries }
Collection >> detect: aBlock ifNone: anotherBlock [
	^self detect: aBlock ifFound: [:element | element] ifNone: anotherBlock
]

{ #category : #enumerating }
Collection >> do: aBlock [
	self subclassResponsibility
]

{ #category : #enumerating }
Collection >> do: aBlock separatedBy: separatorBlock [
	| separate |
]

{ #category : #comparing }
Collection >> equalsTo: aCollection [
	self size = aCollection size ifFalse: [^false].
]

{ #category : #errors }
Collection >> errorNotFound [
	^self error: 'object not found in the collection'
]

{ #category : #errors }
Collection >> errorNotIndexable [
	^self error: 'instances of ' , self class name , ' are not indexable'
]

{ #category : #errors }
Collection >> errorNotKeyed [
	self
]

{ #category : #enumerating }
Collection >> gather: aBlock [
	^self gather: aBlock in: (OrderedCollection new: self size)
]

{ #category : #enumerating }
Collection >> gather: aBlock in: collection [
	self do: [:each | | things |
]

{ #category : #enumerating }
Collection >> gather: aBlock thenSelect: anotherBlock in: aCollection [
	self do: [:each | | things |
]

{ #category : #inquiries }
Collection >> includes: anObject [
	^self anySatisfy: [:element | anObject = element]
]

{ #category : #inquiries }
Collection >> includesIdentical: anObject [
	self do: [:each | each == anObject ifTrue: [^true]].
]

{ #category : #enumerating }
Collection >> inject: anObject into: aBlock [
	| result |
]

{ #category : #testing }
Collection >> isCollection [
	^true
]

{ #category : #testing }
Collection >> isEmpty [
	^self size = 0
]

{ #category : #testing }
Collection >> isEmptyOrNil [
	^self isEmpty
]

{ #category : #enumerating }
Collection >> noneSatisfy: evaluable [
	self do: [:item | (evaluable evaluateWith: item) ifTrue: [^false]].
]

{ #category : #testing }
Collection >> notEmpty [
	^self isEmpty not
]

{ #category : #inquiries }
Collection >> occurrencesOf: anObject [
	| count |
]

{ #category : #printing }
Collection >> printElementText: element on: rtf position: i [
	element printOn: rtf
]

{ #category : #printing }
Collection >> printLimit [
	^4000
]

{ #category : #printing }
Collection >> printOn: aStream [
	self basicPrintOn: aStream
]

{ #category : #printing }
Collection >> printOn: aStream limit: aNumber [
	| limit |
]

{ #category : #enumerating }
Collection >> reject: aBlock [
	^self select: [:x | (aBlock evaluateWith: x) not]
]

{ #category : #enumerating }
Collection >> reject: aBlock thenDo: anotherBlock [
	self
]

{ #category : #removing }
Collection >> remove: anObject [
	^self remove: anObject ifAbsent: [self errorNotFound]
]

{ #category : #removing }
Collection >> remove: anObject ifAbsent: aBlock [
	self subclassResponsibility
]

{ #category : #removing }
Collection >> removeAll [
	self isEmpty ifTrue: [^self].
]

{ #category : #removing }
Collection >> removeAll: aCollection [
	aCollection do: [:x | self remove: x].
]

{ #category : #removing }
Collection >> removeAllSuchThat: aBlock [
	self copy do: [:each | (aBlock value: each) ifTrue: [self remove: each]]
]

{ #category : #enumerating }
Collection >> select: aBlock [
	^self select: aBlock in: self species new
]

{ #category : #enumerating }
Collection >> select: evaluable in: aCollection [
	self select: evaluable thenDo: [:x | aCollection add: x].
]

{ #category : #enumerating }
Collection >> select: aBlock thenCollect: anotherBlock [
	| collection |
]

{ #category : #errors }
Collection >> select: aBlock thenCollect: anotherBlock in: aCollection [
	self select: aBlock thenDo: [:x | | fx |
]

{ #category : #enumerating }
Collection >> select: aBlock thenDo: anotherBlock [
	self
]

{ #category : #printing }
Collection >> storeOn: aStream [
	Recursion checkOn: self while: [
]

{ #category : #arithmetic }
Collection >> sum [
	^self sum: [:x | x] ifNone: 0
]

{ #category : #functions }
Collection >> sum: aBlock [
	^self sum: aBlock ifNone: 0
]

{ #category : #functions }
Collection >> sum: aBlock ifNone: exceptionBlock [
	| sum |
]
