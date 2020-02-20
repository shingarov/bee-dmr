Class {
	#name : #WideString,
	#superclass : #String,
	#type : #bytes,
	#category : #Kernel
}

{ #category : #instances }
WideString class >> basicNew: anInteger [
	^self primitiveNewBytes: anInteger
]

{ #category : #'instance creation' }
WideString class >> fromBytes: aByteArray [
	^UTF16 current
]

{ #category : #'instance creation' }
WideString class >> fromCodePoints: aCollection [
	| string |
]

{ #category : #'instance creation' }
WideString class >> fromExternalUTF16: anExternalMemory [
	^UTF16 current decodeStringFrom: anExternalMemory readStream
]

{ #category : #'instance creation' }
WideString class >> fromExternalUTF16: anExternalMemory length: anInteger [
	| stream |
]

{ #category : #'instance creation' }
WideString class >> fromExternalUTF8: anExternalMemory [
	^UTF8 current decodeStringFrom: anExternalMemory readStream
]

{ #category : #'instance creation' }
WideString class >> fromMemory: anExternalMemory [
	| s i |
]

{ #category : #'instance creation' }
WideString class >> fromMemory: anExternalMemory length: anInteger [
	| bytes |
]

{ #category : #'instance creation' }
WideString class >> fromModule: aString id: anInteger [
	| handle buffer result |
]

{ #category : #'instance creation' }
WideString class >> fromMultiByte: aByteArray codePage: anInteger [
	"
]

{ #category : #'instance creation' }
WideString class >> fromMultiByteAddress: anExternalMemory codePage: anInteger size: length [
	| characters buffer n utf16 |
]

{ #category : #'instance creation' }
WideString class >> fromString: aString [
	aString class == String ifTrue: [^aString asWideString].
]

{ #category : #'instance creation' }
WideString class >> fromUTF8: aByteArray [
	^UTF8 current
]

{ #category : #instances }
WideString class >> new: anInteger [
	^self basicNew: anInteger * 4
]

{ #category : #gs }
WideString class >> newFrom: aByteArray [
	^aByteArray copy changeClassTo: self
]

{ #category : #'instance creation' }
WideString class >> stringFromMemory: anExternalMemory [
	| s i |
]

{ #category : #services }
WideString class >> stringsFromAddress: anExternalMemory [
	| strings memory |
]

{ #category : #operations }
WideString >> , aString [
	| n string |
]

{ #category : #comparing }
WideString >> <= aString [
	^UTF16 current isString: self lessThanOrEqualTo: aString
]

{ #category : #converting }
WideString >> asAnsi [
	^Ansi current reduce: self
]

{ #category : #converting }
WideString >> asLowercase [
	^UTF16 current lowercaseOf: self
]

{ #category : #converting }
WideString >> asSymbol [
	self isAnsiCompliant ifTrue: [^self reduced asSymbol].
]

{ #category : #converting }
WideString >> asUnicode [
	self ASSERT: false.
]

{ #category : #converting }
WideString >> asUppercase [
	^UTF16 current uppercaseOf: self
]

{ #category : #converting }
WideString >> asWideString [
	^self
]

{ #category : #private }
WideString >> at: index [
	| cp |
]

{ #category : #accessing }
WideString >> at: anInteger put: aCharacter [
	self
]

{ #category : #private }
WideString >> at: index putCode: codePoint [
	^self
]

{ #category : #private }
WideString >> atValid: index [
	| cp |
]

{ #category : #private }
WideString >> atValid: anInteger put: aCharacter [
	self at: anInteger putCode: aCharacter codePoint.
]

{ #category : #private }
WideString >> atValid: index putCode: codePoint [
	^self uLongAtOffset: index - 1 * 4 put: codePoint
]

{ #category : #accessing }
WideString >> basicAt: anInteger [
	^self basicByteAt: anInteger
]

{ #category : #accessing }
WideString >> basicAt: anInteger put: anObject [
	^self basicByteAt: anInteger put: anObject
]

{ #category : #accessing }
WideString >> basicSize [
	^self _size
]

{ #category : #accessing }
WideString >> byteAt: anInteger [
	anInteger _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
WideString >> byteAt: position put: asciiValue [
	position _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
WideString >> characterSize [
	^4
]

{ #category : #private }
WideString >> checkByteIndex: index [
	index isInteger ifFalse: [self error: 'strings are indexed by integers'].
]

{ #category : #private }
WideString >> codeAt: index [
	^self uLongAtOffset: index - 1 * 4
]

{ #category : #services }
WideString >> composeCharacters [
	^UTF16 current compose: self
]

{ #category : #services }
WideString >> decomposeCharacters [
	^UTF16 current decompose: self
]

{ #category : #converting }
WideString >> existingSymbol [
	^WideSymbol findInterned: self
]

{ #category : #services }
WideString >> foldDigits [
	^UTF16 current foldDigitsOf: self
]

{ #category : #private }
WideString >> fromCodePoints: aCollection [
	1 to: aCollection size do: [:i | | ci |
]

{ #category : #comparing }
WideString >> hash [
	| hash |
]

{ #category : #private }
WideString >> indexAt: anInteger [
	^anInteger
]

{ #category : #parsing }
WideString >> indexOfString: aString
	| m k |
]

{ #category : #testing }
WideString >> isCNormal [
	^UTF16 current isCNormal: self
]

{ #category : #testing }
WideString >> isDNormal [
	^UTF16 current isDNormal: self
]

{ #category : #testing }
WideString >> isKCNormal [
	^UTF16 current isKCNormal: self
]

{ #category : #testing }
WideString >> isKDNormal [
	^UTF16 current isKDNormal: self
]

{ #category : #testing }
WideString >> isUnicode [
	^true
]

{ #category : #testing }
WideString >> isUnicodeString [
	^true
]

{ #category : #testing }
WideString >> isWideString [
	^true
]

{ #category : #inquires }
WideString >> length [
	^UTF16 current lengthOf: self
]

{ #category : #services }
WideString >> normalizeToC [
	^UTF16 current normalizeToC: self
]

{ #category : #services }
WideString >> normalizeToD [
	^(UTF16 current normalizeToD: self) reduced
]

{ #category : #services }
WideString >> normalizeToKC [
	^UTF16 current normalizeToKC: self
]

{ #category : #services }
WideString >> normalizeToKD [
	^UTF16 current normalizeToKD: self
]

{ #category : #printing }
WideString >> printChunkOn: aStream from: anInteger [
	^self printUTF8ChunkOn: aStream from: anInteger
]

{ #category : #converting }
WideString >> reduced [
	^self isAnsiCompliant ifTrue: [self asAnsi] ifFalse: [self]
]

{ #category : #replacing }
WideString >> replace: anInteger with: aString [
	1 to: anInteger do: [:i | | char |
]

{ #category : #replacing }
WideString >> replaceFirst: anInteger with: aString [
	1 to: anInteger do: [:i | | char |
]

{ #category : #replacing }
WideString >> replaceFrom: start
	| string |
]

{ #category : #replacing }
WideString >> replaceFrom: start to: stop withObject: aCharacter [
	self checkIndex: start; checkIndex: stop.
]

{ #category : #replacing }
WideString >> replacementFrom: aString [
	| n wide |
]

{ #category : #accessing }
WideString >> size [
	^self basicSize // 4
]

{ #category : #converting }
WideString >> sizeInBytes [
	^self basicSize
]

{ #category : #private }
WideString >> td1 [
	| m td1 |
]

{ #category : #private }
WideString >> primitiveULongAtOffset: offset [
put: anInteger
]

{ #category : #unclassified }
WideString >> uLongAtValidOffset: offset put: anInteger [
	anInteger size > 4 ifTrue: [self error: 'does not fit in 32 bits'].
]

{ #category : #services }
WideString >> unaccented [
	^self normalizeToD reject: [:ch | ch isNonSpacingMark]
]

{ #category : #converting }
WideString >> utf8Bytes [
	^UTF8 current encode: self
]
