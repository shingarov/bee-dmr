Class {
	#name : #InternalReadStream,
	#superclass : #ReadStream,
	#instVars : [
		'#contents',
		'#position',
		'#limit',
		'#eol'
	],
	#category : #Kernel
}

{ #category : #'instance creation' }
InternalReadStream class >> on: aCollection from: anInteger to: anotherInteger [
	^self new on: aCollection from: anInteger to: anotherInteger
]

{ #category : #converting }
InternalReadStream >> asPetitStream [
	^contents asPetitStream
]

{ #category : #testing }
InternalReadStream >> atEnd [
	^limit <= position
]

{ #category : #configuration }
InternalReadStream >> beUnicode [
	self isUnicode ifTrue: [^self].
]

{ #category : #accessing }
InternalReadStream >> characterSize [
	^contents isString ifTrue: [contents characterSize] ifFalse: [1]
]

{ #category : #accessing }
InternalReadStream >> collection [
	^contents
]

{ #category : #accessing }
InternalReadStream >> collectorClass [
	^contents class
]

{ #category : #private }
InternalReadStream >> collectorOfSize: anInteger [
	| collector |
]

{ #category : #accessing }
InternalReadStream >> contents [
	^contents
]

{ #category : #private }
InternalReadStream >> eol [
	^eol
]

{ #category : #accessing }
InternalReadStream >> eol: aString [
	eol := aString
]

{ #category : #initialization }
InternalReadStream >> initialize [
	super initialize.
]

{ #category : #testing }
InternalReadStream >> isBinary [
	^contents isByteArray
]

{ #category : #testing }
InternalReadStream >> isEmpty [
	^self size = 0
]

{ #category : #testing }
InternalReadStream >> isUnicode [
	^contents isString and: [contents isUnicode]
]

{ #category : #accessing }
InternalReadStream >> lineDelimiter [
	^eol first
]

{ #category : #accessing }
InternalReadStream >> lineDelimiter: aCharacter [
	eol := (aCharacter isCharacter and: [aCharacter isCr])
]

{ #category : #accessing }
InternalReadStream >> lineDelimiters: aString [
	self lineDelimiter: aString
]

{ #category : #reading }
InternalReadStream >> next [
	limit notNil ifTrue: [
]

{ #category : #reading }
InternalReadStream >> next: n [
	| end result |
]

{ #category : #reading }
InternalReadStream >> nextByte [
	self atEnd ifTrue: [self readingError].
]

{ #category : #reading }
InternalReadStream >> nextLine [
	| delimiter line |
]

{ #category : #reading }
InternalReadStream >> nextOrNil [
	^self atEnd ifFalse: [
]

{ #category : #marshalling }
InternalReadStream >> nextULong [
	(self isBinary or: [contents class == String]) ifTrue: [
]

{ #category : #private }
InternalReadStream >> on: aCollection [
	contents := aCollection.
]

{ #category : #private }
InternalReadStream >> on: aCollection from: anInteger to: anotherInteger [
	| n |
]

{ #category : #peeking }
InternalReadStream >> peek [
	^self atEnd ifFalse: [contents at: position + 1]
]

{ #category : #peeking }
InternalReadStream >> peekFor: token [
	^self peek = token ifTrue: [position := position + 1]; yourself
]

{ #category : #accessing }
InternalReadStream >> position [
	^position
]

{ #category : #positioning }
InternalReadStream >> position: anInteger [
	position := anInteger
]

{ #category : #services }
InternalReadStream >> readInto: aByteArray from: start to: stop [
	| end |
]

{ #category : #accessing }
InternalReadStream >> readLimit: anInteger [
	limit := anInteger
]

{ #category : #positioning }
InternalReadStream >> setToEnd [
	limit := contents size.
]

{ #category : #accessing }
InternalReadStream >> size [
	^limit
]

{ #category : #positioning }
InternalReadStream >> skipTo: token [
	| index |
]

{ #category : #private }
InternalReadStream >> updateEol [
	eol := contents eol ifNil: [String with: Cr]
]

{ #category : #reading }
InternalReadStream >> upTo: token [
	| pos found offset |
]

{ #category : #parsing }
InternalReadStream >> upToAll: aCollection [
	"
]

{ #category : #parsing }
InternalReadStream >> upToAll: aCollection td1: td1 [
	"
]

{ #category : #reading }
InternalReadStream >> upToSeparator [
	| writer ch |
]
