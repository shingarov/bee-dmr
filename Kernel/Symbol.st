Class {
	#name : #Symbol,
	#superclass : #CharacterArray,
	#type : #bytes,
	#classVars : [
		'#SymbolTable'
	],
	#category : #Kernel
}

{ #category : #accessing }
Symbol class >> findInterned: aString [
	| symbol |
]

{ #category : #'instance creation' }
Symbol class >> fromBytes: aByteArray [
	| n string |
]

{ #category : #accessing }
Symbol class >> intern: aString [
	| symbol existing |
]

{ #category : #'instance creation' }
Symbol class >> new: ignoreArgument [
	^self shouldNotImplement
]

{ #category : #private }
Symbol class >> startUp [
	SymbolTable beWeak
]

{ #category : #private }
Symbol class >> symbolTable [
	^SymbolTable
]

{ #category : #operations }
Symbol >> , aString [
	^self asString , aString
]

{ #category : #comparing }
Symbol >> <= aSymbol [
	aSymbol isSymbol ifFalse: [^self error: 'cannot compare'].
]

{ #category : #accessing }
Symbol >> arity [
	| last first |
]

{ #category : #converting }
Symbol >> asAnsi [
	^self
]

{ #category : #converting }
Symbol >> asByteArray [
	| array |
]

{ #category : #converting }
Symbol >> asSelector [
	^self
]

{ #category : #converting }
Symbol >> asString [
	| string |
]

{ #category : #converting }
Symbol >> asSymbol [
	^self
]

{ #category : #converting }
Symbol >> asWideString [
	^self asString asWideString
]

{ #category : #accessing }
Symbol >> at: anInteger put: aCharacter [
	^self shouldNotImplement
]

{ #category : #accessing }
Symbol >> atValid: anInteger [
	^self characterAtValid: anInteger
]

{ #category : #comparing }
Symbol >> basicHash [
	^self hash
]

{ #category : #converting }
Symbol >> capitalized [
	^self asString capitalized
]

{ #category : #accessing }
Symbol >> characterSize [
	^1
]

{ #category : #private }
Symbol >> codeAt: i [
	^self byteAt: i
]

{ #category : #copying }
Symbol >> deepCopy [
	^self
]

{ #category : #services }
Symbol >> doubleQuoted [
	^self asString doubleQuoted
]

{ #category : #evaluating }
Symbol >> evaluateFor: anObject [
	^anObject perform: self
]

{ #category : #evaluating }
Symbol >> evaluateWith: anObject [
	^anObject perform: self
]

{ #category : #evaluating }
Symbol >> evaluateWithArguments: anArray [
	| n args |
]

{ #category : #converting }
Symbol >> existingSymbol [
	^self
]

{ #category : #private }
Symbol >> hash [
	| pseudoindex first second third begin middle end current new |
]

{ #category : #private }
Symbol >> hash16 [
	| seed hash |
]

{ #category : #private }
Symbol >> hashDJB [
	| hash |
]

{ #category : #parsing }
Symbol >> indexOfString: aString
	| m k |
]

{ #category : #testing }
Symbol >> isSymbol [
	^true
]

{ #category : #parsing }
Symbol >> keywords [
	"
]

{ #category : #testing }
Symbol >> normalizeToC [
	"
]

{ #category : #converting }
Symbol >> nullTerminated [
	^self asString nullTerminated
]

{ #category : #private }
Symbol >> primitiveReplaceFrom: start to: stop withObject: aCharacter [
	self checkCharacter: aCharacter.
]

{ #category : #printing }
Symbol >> printOn: aStream [
	aStream nextPutAll: self asString
]

{ #category : #replacing }
Symbol >> replaceBytesFrom: byteStart
	^self shouldNotImplement
]

{ #category : #replacing }
Symbol >> replaceFirst: count with: aCollection [
	^self shouldNotImplement
]

{ #category : #replacing }
Symbol >> replaceFrom: start
	^self shouldNotImplement
]

{ #category : #replacing }
Symbol >> replaceFrom: start to: stop withObject: aCharacter [
	^self shouldNotImplement
]

{ #category : #copying }
Symbol >> shallowCopy [
	^self
]

{ #category : #accessing }
Symbol >> sizeInBytes [
	^self size
]

{ #category : #private }
Symbol >> species [
	^String
]

{ #category : #printing }
Symbol >> storeOn: aStream [
	aStream nextPut: $#.
]

{ #category : #private }
Symbol >> td1 [
	"
]

{ #category : #evaluating }
Symbol >> value: a value: b [
	^(a perform: self) <= (b perform: self)
]

{ #category : #converting }
Symbol >> writeStream [
	^WriteStringStream on: self
]
