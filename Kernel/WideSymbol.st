Class {
	#name : #WideSymbol,
	#superclass : #Symbol,
	#type : #bytes,
	#category : #Kernel
}

{ #category : #accessing }
WideSymbol class >> findInterned: aString [
	| symbol string |
]

{ #category : #accessing }
WideSymbol class >> intern: aString [
	| symbol canonical |
]

{ #category : #comparing }
WideSymbol >> <= aString [
	^UTF16 current isString: self lessThanOrEqualTo: aString
]

{ #category : #converting }
WideSymbol >> asAnsi [
	^self asString asAnsi asSymbol
]

{ #category : #converting }
WideSymbol >> asLowercase [
	^UTF16 current lowercaseOf: self
]

{ #category : #converting }
WideSymbol >> asSelector [
	^self isAnsiCompliant
]

{ #category : #converting }
WideSymbol >> asString [
	| n string |
]

{ #category : #converting }
WideSymbol >> asUppercase [
	^UTF16 current uppercaseOf: self
]

{ #category : #converting }
WideSymbol >> asWideSymbol [
	^self
]

{ #category : #accessing }
WideSymbol >> at: index [
	| cp |
]

{ #category : #accessing }
WideSymbol >> at: index putCode: codePoint [
	^self
]

{ #category : #accessing }
WideSymbol >> atValid: index [
	| cp |
]

{ #category : #private }
WideSymbol >> codeAt: index [
	^self uLongAtOffset: index - 1 * 4
]

{ #category : #testing }
WideSymbol >> isUnicode [
	^true
]

{ #category : #testing }
WideSymbol >> isUnicodeSymbol [
	^true
]

{ #category : #accessing }
WideSymbol >> size [
	^super size // 4
]

{ #category : #accessing }
WideSymbol >> sizeInBytes [
	^self size * 4
]

{ #category : #private }
WideSymbol >> species [
	^WideString
]

{ #category : #private }
WideSymbol >> td1 [
	| m td1 |
]
