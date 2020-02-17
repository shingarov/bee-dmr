Class {
	#name : #Fraction,
	#superclass : #Number,
	#instVars : [
		'#numerator',
		'#denominator'
	],
	#category : #Kernel
}

{ #category : #'instance creation' }
Fraction class >> fromString: aString [
	| parts num den gcd |
]

{ #category : #'instance creation' }
Fraction class >> numerator: anInteger denominator: anotherInteger [
	^self basicNew numerator: anInteger denominator: anotherInteger
]

{ #category : #arithmetic }
Fraction >> - aNumber [
	^self + aNumber negated
]

{ #category : #arithmetic }
Fraction >> * aNumber [
	| d1 d2 |
]

{ #category : #arithmetic }
Fraction >> / aNumber [
	^self * aNumber reciprocal
]

{ #category : #arithmetic }
Fraction >> // aNumber [
	aNumber isInteger ifTrue: [^numerator // (denominator * aNumber)].
]

{ #category : #arithmetic }
Fraction >> + aNumber [
	| n d d1 d2 |
]

{ #category : #comparing }
Fraction >> < aNumber [
	aNumber isInteger ifTrue: [^numerator < (denominator * aNumber)].
]

{ #category : #comparing }
Fraction >> <= aNumber [
	aNumber isInteger ifTrue: [^numerator <= (denominator * aNumber)].
]

{ #category : #comparing }
Fraction >> = aNumber [
	aNumber isNumber ifFalse: [^false].
]

{ #category : #comparing }
Fraction >> > aNumber [
	aNumber isInteger ifTrue: [^numerator > (denominator * aNumber)].
]

{ #category : #comparing }
Fraction >> >= aNumber [
	aNumber isInteger ifTrue: [^numerator >= (denominator * aNumber)].
]

{ #category : #converting }
Fraction >> asFloat [
	"
]

{ #category : #converting }
Fraction >> asFraction [
	^self
]

{ #category : #converting }
Fraction >> asScaledDecimal [
	| pow2 pow5 q q5 |
]

{ #category : #private }
Fraction >> coerce: aNumber [
	^aNumber asFraction
]

{ #category : #accessing }
Fraction >> denominator [
	^denominator
]

{ #category : #comparing }
Fraction >> hash [
	^numerator hashWith: denominator
]

{ #category : #testing }
Fraction >> isFraction [
	^true
]

{ #category : #private }
Fraction >> negate [
	numerator := numerator negated
]

{ #category : #arithmetic }
Fraction >> negated [
	^self class numerator: numerator negated denominator: denominator
]

{ #category : #accessing }
Fraction >> numerator [
	^numerator
]

{ #category : #accessing }
Fraction >> numerator: n denominator: d [
	d = 0 ifTrue: [^self zeroDivisorOn: #numerator:denominator:].
]

{ #category : #printing }
Fraction >> printOn: aStream [
	numerator printOn: aStream.
]

{ #category : #arithmetic }
Fraction >> raisedToInteger: anInteger [
	| num den |
]

{ #category : #arithmetic }
Fraction >> reciprocal [
	^numerator abs = 1
]

{ #category : #arithmetic }
Fraction >> sqrt [
	| d n |
]

{ #category : #arithmetic }
Fraction >> squared [
	^self class numerator: numerator squared denominator: denominator squared
]

{ #category : #arithmetic }
Fraction >> truncated [
	^numerator quo: denominator
]
