Class {
	#name : #Ansi,
	#superclass : #Unicode,
	#category : #Kernel
}

{ #category : #services }
Ansi class >> isAnsi: anInteger [
	anInteger < 128 ifTrue: [^true].
]

{ #category : #'encoding / decoding' }
Ansi >> decodeFrom: aStream [
	^self decodeInteger: aStream nextByte
]

{ #category : #'encoding / decoding' }
Ansi >> decodeInteger: anInteger [
	| code |
]

{ #category : #'encoding / decoding' }
Ansi >> encode: aCharacter on: aStream [
	| value index |
]

{ #category : #'encoding / decoding' }
Ansi >> encodeInteger: anInteger [
	| index |
]

{ #category : #services }
Ansi >> parameterFrom: aString [
	| n param |
]

{ #category : #private }
Ansi >> reduce: aString [
	| bytes |
]

{ #category : #services }
Ansi >> sizeOfCharacter: aCharacter [
	^1
]
