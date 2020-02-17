Class {
	#name : #Integer,
	#superclass : #Number,
	#category : #Kernel
}

{ #category : #inspecting }
Integer class >> aspects [
	^#(#hex #bin #oct)
]

{ #category : #'instance creation' }
Integer class >> fromString: aString [
	^self readFrom: aString readStream
]

{ #category : #'instance creation' }
Integer class >> readFrom: aStream [
	| pos value string |
]

{ #category : #'instance creation' }
Integer class >> readFrom: aStream radix: radix [
	| integer positive digit |
]

{ #category : #arithmetic }
Integer >> / aNumber [
	| gcd |
]

{ #category : #accessing }
Integer >> : mm [
	(mm between: 0 and: 59)
]

{ #category : #bits }
Integer >> << bits [
	bits < 0 ifTrue: [self error: 'negative arg'].
]

{ #category : #bits }
Integer >> >> bits [
	bits < 0 ifTrue: [self error: 'negative arg'].
]

{ #category : #arithmetic }
Integer >> alignedTo: anInteger [
	^self + anInteger - 1 // anInteger * anInteger
]

{ #category : #testing }
Integer >> anyMask: bits [
	^(self bitAnd: bits) != 0
]

{ #category : #converting }
Integer >> asBoolean [
	^self != 0
]

{ #category : #converting }
Integer >> asByteArray [
	| size array |
]

{ #category : #converting }
Integer >> asCharacter [
	^Character value: self
]

{ #category : #converting }
Integer >> asExternalHandle [
	^ExternalHandle fromInteger: self
]

{ #category : #converting }
Integer >> asExternalInt32 [
	^ExternalInt32 fromInteger: self
]

{ #category : #converting }
Integer >> asExternalPointer [
	^ExternalPointer fromInteger: self
]

{ #category : #converting }
Integer >> asFloat [
	^Float fromInteger: self
]

{ #category : #converting }
Integer >> asFraction [
	^self
]

{ #category : #converting }
Integer >> asInteger [
	^self
]

{ #category : #converting }
Integer >> asLong [
	^ByteArray fromBytes: self length: 4
]

{ #category : #converting }
Integer >> asScaledDecimal [
	"
]

{ #category : #converting }
Integer >> asShort [
	| ushort |
]

{ #category : #converting }
Integer >> asUnsigned [
	^self positive
]

{ #category : #bits }
Integer >> bitAt: anInteger [
	^self >= 0
]

{ #category : #bits }
Integer >> bitInvert [
	^-1 - self
]

{ #category : #bits }
Integer >> bitsAt: aStretch [
	"
]

{ #category : #bits }
Integer >> bitsAt: aStretch put: anInteger [
	"
]

{ #category : #bits }
Integer >> bitsClear: aStretch [
	"
]

{ #category : #bits }
Integer >> bitShift: anInteger [
	| factor |
]

{ #category : #bits }
Integer >> bitShiftRight: anInteger [
	^self bitShift: 0 - anInteger
]

{ #category : #arithmetic }
Integer >> ceiling [
	^self
]

{ #category : #private }
Integer >> coerce: aNumber [
	^aNumber asInteger
]

{ #category : #private }
Integer >> digitsBase: anInteger [
	"
]

{ #category : #services }
Integer >> externalBytes [
	^ExternalMemory allocate: self
]

{ #category : #services }
Integer >> externalCharacters [
	^ExternalMemory allocate: self + 1 * 2
]

{ #category : #arithmetic }
Integer >> factorial [
	self > 1 ifTrue: [^(self - 1) factorial * self].
]

{ #category : #arithmetic }
Integer >> floor [
	^self
]

{ #category : #converting }
Integer >> gbytes [
	^self mbytes * 1024
]

{ #category : #arithmetic }
Integer >> gcd: anInteger [
	"
]

{ #category : #private }
Integer >> hashMultiply [
	^(self bitAnd: 16rFFFFFFF) hashMultiply
]

{ #category : #accessing }
Integer >> highWord [
	^(self bitAnd: 16rFFFFFFFF) bitShift: -16
]

{ #category : #testing }
Integer >> isInteger [
	^true
]

{ #category : #testing }
Integer >> isOnBit: n [
	^(self bitAnd: n) = n
]

{ #category : #converting }
Integer >> kbytes [
	^self * 1024
]

{ #category : #arithmetic }
Integer >> lcm: anInteger [
	| gcd |
]

{ #category : #'bit operations' }
Integer >> low32 [
	^self bitAnd: 0xFFFFFFFF
]

{ #category : #bits }
Integer >> lowBit [
	| count mask |
]

{ #category : #accessing }
Integer >> lowWord [
	^self bitAnd: 16rFFFF
]

{ #category : #converting }
Integer >> mbytes [
	^self kbytes * 1024
]

{ #category : #printing }
Integer >> oct [
	"
]

{ #category : #converting }
Integer >> pointedMemory [
	^ExternalMemory at: self
]

{ #category : #printing }
Integer >> printDigitsOn: aStream base: anInteger [
	self printDigitsOn: aStream base: anInteger paddedTo: 0 with: $0
]

{ #category : #printing }
Integer >> printDigitsOn: aStream
	| digits |
]

{ #category : #printing }
Integer >> printOn: aStream base: anInteger [
	self printOn: aStream base: anInteger paddedTo: 0
]

{ #category : #printing }
Integer >> printOn: aStream base: bInteger paddedTo: dInteger [
	self printOn: aStream base: bInteger paddedTo: dInteger with: $0
]

{ #category : #printing }
Integer >> printOn: aStream
	self < 0 ifTrue: [
]

{ #category : #printing }
Integer >> printPaddedTo: anInteger [
	^self printPaddedWith: $  to: anInteger base: 10
]

{ #category : #printing }
Integer >> printPaddedWith: aCharacter to: anInteger [
	"
]

{ #category : #printing }
Integer >> printPaddedWith: aCharacter to: anInteger base: radix [
	^String
]

{ #category : #printing }
Integer >> radix: anInteger [
	| digits |
]

{ #category : #arithmetic }
Integer >> reciprocal [
	^1 / self
]

{ #category : #private }
Integer >> reduced [
	^self
]

{ #category : #arithmetic }
Integer >> rem: aNumber [
	aNumber = 0 ifTrue: [^self zeroDivisorOn: #rem:].
]

{ #category : #arithmetic }
Integer >> rounded [
	^self
]

{ #category : #arithmetic }
Integer >> sqrt [
	| float guess |
]

{ #category : #arithmetic }
Integer >> sqrtFloor [
	| guess square delta |
]

{ #category : #testing }
Integer >> strictlyPositive [
	^self > 0
]

{ #category : #converting }
Integer >> thru: anInteger [
	^Stretch from: self thru: anInteger
]

{ #category : #enumerating }
Integer >> timesRepeat: aBlock [
	| n |
]

{ #category : #arithmetic }
Integer >> truncated [
	^self
]
