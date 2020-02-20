Class {
	#name : #CharacterArray,
	#superclass : #ArrayedCollection,
	#category : #Kernel
}

{ #category : #'instance creation' }
CharacterArray class >> fromSubstrings: substrings separatedBy: separatorChar [
	| stream |
]

{ #category : #'named characters' }
CharacterArray class >> lf [
	^self with: Lf
]

{ #category : #operations }
CharacterArray >> / aString [
	| string tail |
]

{ #category : #operations }
CharacterArray >> \ aString [
	| filename |
]

{ #category : #comparing }
CharacterArray >> < aString [
	^(aString <= self) not
]

{ #category : #comparing }
CharacterArray >> << aString [
	| min |
]

{ #category : #comparing }
CharacterArray >> <= aString [
	| iterations |
]

{ #category : #comparing }
CharacterArray >> > aString [
	^(self <= aString) not
]

{ #category : #comparing }
CharacterArray >> >= aString [
	aString isString ifFalse: [^self error: 'argument is not a String'].
]

{ #category : #copying }
CharacterArray >> abbreviatedTo: n [
	"
]

{ #category : #services }
CharacterArray >> article [
	| article first letter second |
]

{ #category : #converting }
CharacterArray >> asDate [
	^Date fromString: self
]

{ #category : #converting }
CharacterArray >> asFilename [
	^Filename fromString: self
]

{ #category : #converting }
CharacterArray >> asFloat [
	^Float fromString: self
]

{ #category : #converting }
CharacterArray >> asInteger [
	^Integer fromString: self
]

{ #category : #converting }
CharacterArray >> asLowercase [
	| changed size lowercase |
]

{ #category : #converting }
CharacterArray >> asNumber [
	^Number fromString: self
]

{ #category : #converting }
CharacterArray >> asString [
	^self
]

{ #category : #converting }
CharacterArray >> asTime [
	^Time fromString: self
]

{ #category : #converting }
CharacterArray >> asUnicode [
	self ASSERT: false.
]

{ #category : #converting }
CharacterArray >> asUppercase [
	| changed answer size c uc |
]

{ #category : #converting }
CharacterArray >> asWideString [
	| n wide |
]

{ #category : #accessing }
CharacterArray >> at: anInteger [
	anInteger _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
CharacterArray >> basicAt: anInteger [
	anInteger _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
CharacterArray >> basicAt: anInteger put: aCharacter [
	anInteger _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
CharacterArray >> byteAt: anInteger [
	anInteger _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #accessing }
CharacterArray >> byteAt: position put: asciiValue [
	position _isSmallInteger ifFalse: [^self error: 'Non integer index'].
]

{ #category : #printing }
CharacterArray >> canBePrintedAsLiteral [
	^true
]

{ #category : #converting }
CharacterArray >> capitalized [
	| c |
]

{ #category : #private }
CharacterArray >> characterAtValid: index [
	| value |
]

{ #category : #validation }
CharacterArray >> checkCharacter: aCharacter [
	aCharacter isCharacter
]

{ #category : #private }
CharacterArray >> codeAt: i [
	^self byteAt: i
]

{ #category : #inquiries }
CharacterArray >> codePage [
	^KernelLibrary GetACP
]

{ #category : #services }
CharacterArray >> copyToGlobalMemory [
	^GlobalMemory fromString: self
]

{ #category : #services }
CharacterArray >> doubleQuoted [
	"
]

{ #category : #private }
CharacterArray >> eol [
	| n code |
]

{ #category : #comparing }
CharacterArray >> equals: aString [
	| size |
]

{ #category : #comparing }
CharacterArray >> equalsCaseInsensitive: aString [
	self size = aString size ifFalse: [^false].
]

{ #category : #services }
CharacterArray >> externalCopy [
	^UTF16 current externalCopyOf: self
]

{ #category : #filenames }
CharacterArray >> fileExtension [
	^self asFilename extension
]

{ #category : #filenames }
CharacterArray >> fileName [
	^self asFilename withoutExtension asString
]

{ #category : #services }
CharacterArray >> fileNameOnly [
	"
]

{ #category : #comparing }
CharacterArray >> hash [
	| hash |
]

{ #category : #inquiries }
CharacterArray >> includes: aCharacter [
	aCharacter isCharacter ifFalse: [^false].
]

{ #category : #testing }
CharacterArray >> includesString: aString [
	^aString isEmpty or: [(self indexOfString: aString) > 0]
]

{ #category : #parsing }
CharacterArray >> indexOfLastChar: aCharacter [
	self size
]

{ #category : #parsing }
CharacterArray >> indexOfLastString: aString [
	^self indexOfLastString: aString before: self size
]

{ #category : #parsing }
CharacterArray >> indexOfLastString: aString before: anInteger [
	^self indexOfLastString: aString from: 1 to: anInteger
]

{ #category : #parsing }
CharacterArray >> indexOfLastString: aString from: start to: stop [
	| n limit base i |
]

{ #category : #parsing }
CharacterArray >> indexOfString: aString [
	^self indexOfString: aString startingAt: 1
]

{ #category : #parsing }
CharacterArray >> indexOfString: aString from: start to: stop [
	| n limit base i |
]

{ #category : #parsing }
CharacterArray >> indexOfString: aString startingAt: anInteger [
	^self indexOfString: aString from: anInteger to: self size
]

{ #category : #parsing }
CharacterArray >> indexOfSubcollection: aString
	^self indexOfString: aString from: start to: stop td1: anArray
]

{ #category : #testing }
CharacterArray >> isAnsiCompliant [
	1 to: self size do: [:i | | char |
]

{ #category : #testing }
CharacterArray >> isString [
	^true
]

{ #category : #testing }
CharacterArray >> isUnicode [
	^false
]

{ #category : #testing }
CharacterArray >> isWideString [
	^false
]

{ #category : #services }
CharacterArray >> lineAt: index [
	| read start line |
]

{ #category : #filenames }
CharacterArray >> pathName [
	"
]

{ #category : #private }
CharacterArray >> primitiveSize [
	^self _size
]

{ #category : #converting }
CharacterArray >> reduced [
	^self
]

{ #category : #replacing }
CharacterArray >> replaceAll: aString with: anotherString [
	| string strm index fragment n |
]

{ #category : #replacing }
CharacterArray >> replaceAllChar: aCharacter with: aString [
	| index writer string n |
]

{ #category : #replacing }
CharacterArray >> replaceAllChar: aCharacter withChar: anotherCharacter [
	| copy |
]

{ #category : #marshalling }
CharacterArray >> shortAtOffset: offset [
	| integer |
]

{ #category : #accessing }
CharacterArray >> size [
	^self _size
]

{ #category : #services }
CharacterArray >> split: aString [
	"
]

{ #category : #printing }
CharacterArray >> storeOn: aStream [
	self printOn: aStream
]

{ #category : #comparing }
CharacterArray >> stringHash [
	| hash |
]

{ #category : #parsing }
CharacterArray >> substrings [
	| substrings start size |
]

{ #category : #parsing }
CharacterArray >> substringsSplitBy: aCharacter [
	| substrings start size |
]

{ #category : #parsing }
CharacterArray >> subwords [
	| i0 starting |
]

{ #category : #operations }
CharacterArray >> trimBlanks [
	| start end |
]

{ #category : #parsing }
CharacterArray >> trimComments [
	| input result |
]

{ #category : #operations }
CharacterArray >> trimNullEnd [
	| index |
]

{ #category : #copying }
CharacterArray >> trimPrefix: aString [
	^(self beginsWith: aString)
]

{ #category : #copying }
CharacterArray >> trimTail: aString [
	^(self endsWith: aString)
]

{ #category : #accessing }
CharacterArray >> uLongAtOffset: offset [
	| low high |
]

{ #category : #converting }
CharacterArray >> uLongAtOffset: offset put: anInteger [
	anInteger < 0
]

{ #category : #converting }
CharacterArray >> unaccented [
	"
]

{ #category : #converting }
CharacterArray >> unformatted [
	^self
]

{ #category : #parsing }
CharacterArray >> upTo: aCharacter [
	| index |
]

{ #category : #private }
CharacterArray >> uShortAtOffset: anInteger [
	| size index lo hi |
]

{ #category : #services }
CharacterArray >> withArticle [
	^self article , ' ' , self
]

{ #category : #'gui support' }
CharacterArray >> withCrs [
	| copy |
]

{ #category : #copying }
CharacterArray >> withoutCrLf [
	| read blank |
]

{ #category : #copying }
CharacterArray >> withoutLineEndings [
	| read blank |
]

{ #category : #copying }
CharacterArray >> withoutSeparators [
	^self reject: [:c | c isBlank]
]

{ #category : #unix }
CharacterArray >> withUnixEOL [
	| size left replace right |
]
