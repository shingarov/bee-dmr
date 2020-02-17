Class {
	#name : #LargeInteger,
	#superclass : #Integer,
	#type : #bytes,
	#classVars : [
		'#Base',
		'#Bits',
		'#DigitLength'
	],
	#category : #Kernel
}

{ #category : #inspecting }
LargeInteger class >> aspects [
	^super aspects copyWith: #digits
]

{ #category : #accessing }
LargeInteger class >> base [
	^Base
]

{ #category : #accessing }
LargeInteger class >> digitBits [
	^Bits
]

{ #category : #'instance creation' }
LargeInteger class >> fromInteger: anInteger [
	| int integer size n large i |
]

{ #category : #'instance creation' }
LargeInteger class >> fromInteger: anInteger byteShiftLeft: shift [
	| size bytes result start |
]

{ #category : #initialization }
LargeInteger class >> initializeBase [
	Bits := 16.
]

{ #category : #private }
LargeInteger class >> nbDigitsFor: anInteger [
	"
]

{ #category : #'instance creation' }
LargeInteger class >> new: anInteger [
	^self basicNew: anInteger + DigitLength - 1 // DigitLength * DigitLength
]

{ #category : #arithmetic }
LargeInteger >> - aNumber [
	^self + aNumber negated
]

{ #category : #bits }
LargeInteger >> & anInteger [
	^self bitAnd: anInteger
]

{ #category : #arithmetic }
LargeInteger >> * aNumber [
	| product |
]

{ #category : #arithmetic }
LargeInteger >> / aNumber [
	aNumber isInteger ifFalse: [^(aNumber / self) reciprocal].
]

{ #category : #arithmetic }
LargeInteger >> // aNumber [
	| data |
]

{ #category : #arithmetic }
LargeInteger >> \\ aNumber [
	| data |
]

{ #category : #bits }
LargeInteger >> | anInteger [
	^self bitOr: anInteger
]

{ #category : #arithmetic }
LargeInteger >> + aNumber [
	aNumber isInteger ifFalse: [^aNumber + self].
]

{ #category : #private }
LargeInteger >> += anInteger [
	| carry |
]

{ #category : #comparing }
LargeInteger >> < aNumber [
	| n m |
]

{ #category : #comparing }
LargeInteger >> <= aNumber [
	| n m |
]

{ #category : #comparing }
LargeInteger >> = aNumber [
	| n |
]

{ #category : #comparing }
LargeInteger >> > aNumber [
	^(self <= aNumber) not
]

{ #category : #comparing }
LargeInteger >> >= aNumber [
	^(self < aNumber) not
]

{ #category : #private }
LargeInteger >> adc: integer at: index [
	| s carry |
]

{ #category : #private }
LargeInteger >> add: anInteger fromDigit: index [
	| integer i shift |
]

{ #category : #private }
LargeInteger >> addDigits: anInteger [
	| n integer |
]

{ #category : #converting }
LargeInteger >> asLargeInteger [
	^self
]

{ #category : #converting }
LargeInteger >> asParameter [
	self ASSERT: self sizeInBytes = WordSize.
]

{ #category : #bits }
LargeInteger >> bitAnd: anInteger [
	| n m class s integer |
]

{ #category : #bits }
LargeInteger >> bitAt: anInteger [
	| i digit |
]

{ #category : #bits }
LargeInteger >> bitOr: anInteger [
	| n m class s integer |
]

{ #category : #bits }
LargeInteger >> bitShift: delta [
	| count bits m result q carry i |
]

{ #category : #bits }
LargeInteger >> bitXor: anInteger [
	| n class integer |
]

{ #category : #accessing }
LargeInteger >> byteAt: i [
	^self at: i
]

{ #category : #copying }
LargeInteger >> deepCopy [
	| copy |
]

{ #category : #private }
LargeInteger >> digitAt: index put: integer [
	| valid |
]

{ #category : #private }
LargeInteger >> digits [
	^(1 to: self nbDigits) collect: [:i | (self wideDigitAt: i) hex]
]

{ #category : #copying }
LargeInteger >> from: aLargeInteger [
	| n |
]

{ #category : #comparing }
LargeInteger >> hash [
	| hash |
]

{ #category : #accessing }
LargeInteger >> highWideDigit [
	^self wideDigitAt: self nbDigits
]

{ #category : #testing }
LargeInteger >> isLargeInteger [
	^true
]

{ #category : #testing }
LargeInteger >> isOnBit: bits [
	1 to: bits sizeInBytes + DigitLength - 1 // DigitLength do: [:i | | digit n |
]

{ #category : #private }
LargeInteger >> nbDigits [
	^self sizeInBytes // DigitLength
]

{ #category : #private }
LargePositiveInteger >> outOfBoundsIndex: anInteger [
	^self
		error: 'index: ' , anInteger printString
			, ' is outside of large integer bounds'
]

{ #category : #arithmetic }
LargeInteger >> negated [
	^self bitInvert + 1
]

{ #category : #replacing }
LargeInteger >> replaceFrom: start
	^self
]

{ #category : #unclassified }
LargeInteger >> primitiveShortAtOffset: [
offset
]

{ #category : #unclassified }
LargeInteger >> shortAtValidOffset: offset [
	| lo hi sign |
]

{ #category : #accessing }
LargeInteger >> sizeInBytes [
	^self size
]

{ #category : #private }
LargeInteger >> primitiveUShortAtOffset: [
offset
]

{ #category : #private }
LargeInteger >> primitiveUShortAtOffset: offset [
put: anInteger
]

{ #category : #unclassified }
LargeInteger >> uShortAtValidOffset: offset [
	^(self byteAtValid: offset + 2) * 16r100 + (self byteAtValid: offset + 1)
]

{ #category : #unclassified }
LargeInteger >> uShortAtValidOffset: offset put: anInteger [
	anInteger size > 2 ifTrue: [self error: 'does not fit in 16 bits'].
]

{ #category : #private }
LargeInteger >> wideDigitAt: index [
	| offset |
]
