Class {
	#name : #String,
	#superclass : #CharacterArray,
	#type : #bytes,
	#category : #Kernel
}

{ #category : #'instance creation' }
String class >> basicNew: anInteger [
	^self primitiveNewBytes: anInteger + 1
]

{ #category : #'named characters' }
String class >> cr [
	^self with: Cr
]

{ #category : #'named characters' }
String class >> crlf [
	^self with: Cr with: Lf
]

{ #category : #'instance creation' }
String class >> fromBytes: aByteArray [
	| n string |
]

{ #category : #'instance creation' }
String class >> fromMemory: anExternalMemory [
	| length |
]

{ #category : #'instance creation' }
String class >> fromMemory: anExternalMemory length: anInteger [
	| string |
]

{ #category : #'instance creation' }
String class >> fromModule: aString id: anInteger [
	| handle buffer result |
]

{ #category : #'instance creation' }
String class >> fromUTF8: aByteArray [
	^(aByteArray conform: [:byte | byte asInteger < 128])
]

{ #category : #'instance creation' }
String class >> new: anInteger [
	^self primitiveNewBytes: anInteger + 1
]

{ #category : #gs }
String class >> newFrom: aByteArray [
	| string |
]

{ #category : #'instance creation' }
String class >> readFrom: aStream [
	| writer |
]

{ #category : #'instance creation' }
String class >> with: aCharacter [
	self == String ifFalse: [^super with: aCharacter].
]

{ #category : #'instance creation' }
String class >> with: ch1 with: ch2 [
	self == String ifFalse: [^super with: ch1 with: ch2].
]

{ #category : #'instance creation' }
String class >> with: ch1 with: ch2 with: ch3 [
	self == String ifFalse: [^super with: ch1 with: ch2 with: ch3].
]

{ #category : #'instance creation' }
String class >> with: ch1
	self == String ifFalse: [^super with: ch1 with: ch2 with: ch3 with: ch4].
]

{ #category : #'instance creation' }
String class >> with: ch1
	self == String ifFalse: [
]

{ #category : #'instance creation' }
String class >> with: ch1
	self == String ifFalse: [
]

{ #category : #'instance creation' }
String class >> with: ch1
	self == String ifFalse: [
]

{ #category : #'instance creation' }
String class >> with: ch1 with: ch2 withAll: collection [
	self == String ifFalse: [^super with: ch1 with: ch2 withAll: collection].
]

{ #category : #'instance creation' }
String class >> with: aCharacter withAll: aCollection [
	self == String ifFalse: [^super with: aCharacter withAll: aCollection].
]

{ #category : #'instance creation' }
String class >> withAll: aCollection [
	self == String ifFalse: [^super withAll: aCollection].
]

{ #category : #'instance creation' }
String class >> withAll: aCollection with: aCharacter [
	self == String ifFalse: [^super withAll: aCollection with: aCharacter].
]

{ #category : #'instance creation' }
String class >> withAll: collection with: ch1 with: ch2 [
	self == String ifFalse: [^super withAll: collection with: ch1 with: ch2].
]

{ #category : #operations }
String >> , aString [
	aString isString ifFalse: [^super , aString].
]

{ #category : #comparing }
String >> = aString [
	| n |
]

{ #category : #converting }
String >> ansiz [
	^Ansi current parameterFrom: self
]

{ #category : #converting }
String >> asAnsi [
	^self
]

{ #category : #converting }
String >> asByteArray [
	| array |
]

{ #category : #converting }
String >> asParameter [
	self ASSERT: false.
]

{ #category : #converting }
String >> asSymbol [
	^Symbol intern: self
]

{ #category : #converting }
String >> asWideSymbol [
	^WideSymbol intern: self
]

{ #category : #accessing }
String >> at: anInteger [
	anInteger _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
String >> at: anInteger put: aCharacter [
	^self basicAt: anInteger put: aCharacter
]

{ #category : #accessing }
String >> at: index putCode: codePoint [
	self byteAt: index put: codePoint
]

{ #category : #accessing }
String >> atValid: anInteger [
	^self characterAtValid: anInteger
]

{ #category : #accessing }
String >> basicAt: anInteger [
	anInteger _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
String >> basicAt: anInteger put: aCharacter [
	anInteger _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
String >> basicSize [
	^self _size - 1
]

{ #category : #accessing }
String >> byteAt: anInteger [
	anInteger _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
String >> byteAt: position put: asciiValue [
	position _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
String >> characterSize [
	^1
]

{ #category : #private }
String >> eol [
	| n code |
]

{ #category : #converting }
String >> existingSymbol [
	^Symbol findInterned: self
]

{ #category : #comparing }
String >> goodHash [
	| hash |
]

{ #category : #inquiries }
String >> indexOf: anObject
	| index cp |
]

{ #category : #parsing }
String >> indexOfString: aString
	| m k |
]

{ #category : #accessing }
String >> length [
	^self size
]

{ #category : #services }
String >> normalizeToC [
	"
]

{ #category : #converting }
String >> nullTerminated [
	^self class withAll: self with: Character null
]

{ #category : #private }
String >> primitiveReplaceFrom: start to: stop withObject: aCharacter [
	self checkCharacter: aCharacter.
]

{ #category : #printing }
String >> printOn: aStream [
	aStream nextPut: $'.
]

{ #category : #printing }
String >> printUTF8ChunkOn: aStream from: anInteger [
	| token encoder lf |
]

{ #category : #replacing }
String >> replaceFirst: count with: aCollection [
	^self replaceFrom: 1 to: count with: aCollection startingAt: 1
]

{ #category : #replacing }
String >> replaceFrom: start
	(aString class isBytes
]

{ #category : #replacing }
String >> replaceFrom: start to: stop withObject: aCharacter [
	start > 0 ifFalse: [
]

{ #category : #accessing }
String >> size [
	^self _size - 1
]

{ #category : #accessing }
String >> sizeInBytes [
	^self size
]

{ #category : #private }
String >> td1 [
	"
]

{ #category : #converting }
String >> utf16 [
	^UTF16 current encode: self
]

{ #category : #converting }
String >> utf16z [
	^UTF16 current parameterFrom: self
]

{ #category : #converting }
String >> utf8 [
	"
]

{ #category : #converting }
String >> utf8Bytes [
	^self utf8
]

{ #category : #converting }
String >> utf8z [
	"
]

{ #category : #converting }
String >> utf8z: aBoolean [
	^aBoolean
]

{ #category : #private }
String >> withCrLf [
	| index char |
]

{ #category : #copying }
String >> withoutBlanks [
	^self reject: [:c | c = Space]
]

{ #category : #converting }
String >> writeStream [
	^WriteStringStream on: self
]

{ #category : #copying }
String >> zapLfs [
	^self reject: [:c | c isLf]
]
