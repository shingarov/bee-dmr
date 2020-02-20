Class {
	#name : #UTF16,
	#superclass : #Unicode,
	#category : #Kernel
}

{ #category : #services }
UTF16 class >> decodeFromAddress: externalAddress length: anInteger [
	| stream |
]

{ #category : #accessing }
UTF16 class >> prefix [
	^#[16rFE 16rFF]
]

{ #category : #services }
UTF16 >> characterIndexesOf: aString from: start to: end [
	"
]

{ #category : #services }
UTF16 >> characterIndexOf: aString at: anInteger [
	(self isDBS: aString upTo: anInteger - 1) ifTrue: [^anInteger].
]

{ #category : #private }
UTF16 >> compareStringiW: aString1 with: aString2 [
	| string1 string2 result |
]

{ #category : #services }
UTF16 >> compose: aString [
	| source chars utf destination composed |
]

{ #category : #'encoding / decoding' }
UTF16 >> decodeFrom: aStream [
	| b1 b2 hi b3 b4 lo |
]

{ #category : #services }
UTF16 >> decompose: aString [
	| source chars utf destination decomposed |
]

{ #category : #'encoding / decoding' }
UTF16 >> encode: aCharacter on: aStream [
	| code c20 hi lo |
]

{ #category : #services }
UTF16 >> foldDigitsOf: aString [
	"
]

{ #category : #services }
UTF16 >> indexesOf: aString from: start to: end [
	| e stretch delta |
]

{ #category : #services }
UTF16 >> is: aString normalized: form [
	| memory normalized |
]

{ #category : #services }
UTF16 >> isCNormal: aString [
	^self is: aString normalized: CNORMALIZATION
]

{ #category : #services }
UTF16 >> isDBS: aString [
	^self isDBS: aString upTo: aString size
]

{ #category : #services }
UTF16 >> isDBS: aString upTo: anInteger [
	aString isUnicode ifFalse: [^true].
]

{ #category : #services }
UTF16 >> isDNormal: aString [
	^self is: aString normalized: DNORMALIZATION
]

{ #category : #services }
UTF16 >> isKCNormal: aString [
	^self is: aString normalized: KCNORMALIZATION
]

{ #category : #services }
UTF16 >> isKDNormal: aString [
	^self is: aString normalized: KDNORMALIZATION
]

{ #category : #services }
UTF16 >> lengthOf: aString [
	^(self encode: aString) size // 2
]

{ #category : #services }
UTF16 >> lowercaseOf: aString [
	| buffer lowercase |
]

{ #category : #private }
UTF16 >> minBytesPerChar [
	^2
]

{ #category : #services }
UTF16 >> normalize: aString to: normalization [
	| string dll chars memory uc |
]

{ #category : #services }
UTF16 >> normalizeToC: aString [
	"
]

{ #category : #services }
UTF16 >> normalizeToD: aString [
	^self normalize: aString to: DNORMALIZATION
]

{ #category : #services }
UTF16 >> normalizeToKC: aString [
	^self normalize: aString to: KCNORMALIZATION
]

{ #category : #services }
UTF16 >> normalizeToKD: aString [
	^self normalize: aString to: KDNORMALIZATION
]

{ #category : #services }
UTF16 >> parameterFrom: aString [
	| strm |
]

{ #category : #services }
UTF16 >> sizeInBytesOf: aString [
	aString isWideString ifFalse: [^aString size + 1 * 2].
]

{ #category : #'encoding / decoding' }
UTF16 >> sizeOfCharacter: aCharacter [
	^aCharacter codePoint < 16r10000 ifTrue: [2] ifFalse: [4]
]

{ #category : #services }
UTF16 >> uppercaseOf: aString [
	| buffer uppercase |
]
