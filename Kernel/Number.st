Class {
	#name : #Number,
	#superclass : #Magnitude,
	#category : #Kernel
}

{ #category : #'instance creation' }
Number class >> fromString: aString [
	^self fromString: aString decimalSeparator: '.'
]

{ #category : #'instance creation' }
Number class >> fromString: aString decimalSeparator: anotherString [
	| string special |
]

{ #category : #constants }
Number class >> multiplicativeIdentity [
	^1
]

{ #category : #constants }
Number class >> nan [
	^Float nan
]

{ #category : #'instance creation' }
Number class >> new [
	^self shouldNotImplement
]

{ #category : #'instance creation' }
Number class >> new: anInteger [
	^self shouldNotImplement
]

{ #category : #constants }
Number class >> zero [
	^0
]

{ #category : #arithmetic }
Number >> - aNumber [
	^self + aNumber negated
]

{ #category : #arithmetic }
Number >> * aNumber [
	self subclassResponsibility
]

{ #category : #arithmetic }
Number >> / aNumber [
	self subclassResponsibility
]

{ #category : #arithmetic }
Number >> // aNumber [
	self subclassResponsibility
]

{ #category : #geometry }
Number >> @ aNumber [
	^Point x: self y: aNumber
]

{ #category : #geometry }
Number >> @- aNumber [
	^Point x: self y: aNumber negated
]

{ #category : #arithmetic }
Number >> \\ aNumber [
	^self - (self // aNumber * aNumber)
]

{ #category : #arithmetic }
Number >> + aNumber [
	self subclassResponsibility
]

{ #category : #comparing }
Number >> <~ aNumber [
	aNumber isFloat ifTrue: [^self asFloat <~ aNumber].
]

{ #category : #comparing }
Number >> >~ aNumber [
	aNumber isFloat ifTrue: [^self asFloat >~ aNumber].
]

{ #category : #arithmetic }
Number >> abs [
	^self < self class zero ifTrue: [self negated] ifFalse: [self]
]

{ #category : #trigonometry }
Number >> arcCos [
	^Float pi / 2.0 - self arcSin
]

{ #category : #trigonometry }
Number >> arcSin [
	| y |
]

{ #category : #trigonometry }
Number >> arcTan [
	^self asFloat arcTan
]

{ #category : #converting }
Number >> asInteger [
	^self rounded
]

{ #category : #converting }
Number >> asParameter [
	^self
]

{ #category : #converting }
Number >> asPoint [
	^self @ self
]

{ #category : #converting }
Number >> asScaledDecimal [
	"
]

{ #category : #printing }
Number >> canBePrintedAsLiteral [
	^true
]

{ #category : #arithmetic }
Number >> ceiling [
	| integer |
]

{ #category : #trigonometry }
Number >> cos [
	^self asFloat cos
]

{ #category : #copying }
Number >> deepCopy [
	^self
]

{ #category : #trigonometry }
Number >> degreesToRadians [
	^self asFloat degreesToRadians
]

{ #category : #accessing }
Number >> denominator [
	^1
]

{ #category : #testing }
Number >> even [
	^self \\ 2 = 0
]

{ #category : #logarithms }
Number >> exp [
	^self asFloat exp
]

{ #category : #arithmetic }
Number >> floor [
	^self // 1
]

{ #category : #accessing }
Number >> fractionPart [
	^self - self truncated
]

{ #category : #testing }
Number >> isInfinite [
	^false
]

{ #category : #testing }
Number >> isInfinity [
	^false
]

{ #category : #testing }
Number >> isMinusInfinity [
	^false
]

{ #category : #testing }
Number >> isNaN [
	^false
]

{ #category : #testing }
Number >> isNumber [
	^true
]

{ #category : #testing }
Number >> isZero [
	^self = self class zero
]

{ #category : #logarithms }
Number >> ln [
	^self asFloat ln
]

{ #category : #logarithms }
Number >> log [
	^self log: 10
]

{ #category : #logarithms }
Number >> log: aNumber [
	^self ln / aNumber ln
]

{ #category : #arithmetic }
Number >> negated [
	^0 - self
]

{ #category : #testing }
Number >> negative [
	^self < self class zero
]

{ #category : #accessing }
Number >> numerator [
	^self
]

{ #category : #testing }
Number >> odd [
	^self even not
]

{ #category : #testing }
Number >> positive [
	^self >= self class zero
]

{ #category : #printing }
Number >> printDecimals: decimals separatedBy: aString [
	| writer fraction integer |
]

{ #category : #printing }
Number >> printFraction: decimals [
	^self printDecimals: decimals separatedBy: ActiveLocale decimalSeparator
]

{ #category : #printing }
Number >> printOn: aStream [
	self subclassResponsibility
]

{ #category : #printing }
Number >> printWithDecimalPlaces: digits [
	| power rounded |
]

{ #category : #arithmetic }
Number >> quo: aNumber [
	^(self / aNumber) truncated
]

{ #category : #trigonometry }
Number >> radiansToDegrees [
	^self asFloat radiansToDegrees
]

{ #category : #arithmetic }
Number >> raisedTo: aNumber [
	| n |
]

{ #category : #arithmetic }
Number >> raisedToInteger: anInteger [
	| answer multiplier binary |
]

{ #category : #arithmetic }
Number >> rem: aNumber [
	| quo |
]

{ #category : #arithmetic }
Number >> rounded [
	^self + self + self sign quo: 2
]

{ #category : #arithmetic }
Number >> roundTo: aNumber [
	^self < 0
]

{ #category : #copying }
Number >> shallowCopy [
	^self
]

{ #category : #accessing }
Number >> sign [
	self > 0 ifTrue: [^1].
]

{ #category : #trigonometry }
Number >> sin [
	^self asFloat sin
]

{ #category : #arithmetic }
Number >> sqrt [
	^self asFloat sqrt
]

{ #category : #arithmetic }
Number >> squared [
	^self * self
]

{ #category : #printing }
Number >> storeOn: aStream [
	self printOn: aStream
]

{ #category : #testing }
Number >> strictlyPositive [
	^self > self class zero
]

{ #category : #trigonometry }
Number >> tan [
	^self asFloat tan
]

{ #category : #arithmetic }
Number >> timesTwoPower: anInteger [
	^self asFloat timesTwoPower: anInteger
]

{ #category : #converting }
Number >> to: stop [
	^Interval from: self to: stop
]

{ #category : #converting }
Number >> to: stop by: step [
	^Interval from: self to: stop by: step
]

{ #category : #enumerating }
Number >> to: stop by: step do: aBlock [
	| index |
]

{ #category : #enumerating }
Number >> to: stop do: aBlock [
	| index |
]

{ #category : #arithmetic }
Number >> truncated [
	^self truncateTo: 1
]

{ #category : #arithmetic }
Number >> truncateTo: aNumber [
	^(self quo: aNumber) * aNumber
]

{ #category : #converting }
Number >> withPrecision: scale [
	^ScaledDecimal fromNumber: self scale: scale
]

{ #category : #errors }
Number >> zeroDivisorOn: aSymbol [
	^ZeroDivide new operation: aSymbol; dividend: self; signal
]
