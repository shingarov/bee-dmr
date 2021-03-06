"
    Copyright (c) 2020 Aucerna.
	Copyright (c) 2009-2018 Stefan Marr <git@stefan-marr.de>
    See license in root and /Performance/Benchmarks directories.
"

Class {
	#name : #DBUnaryConstraint,
	#superclass : #DBAbstractConstraint,
	#instVars : [
		'output',
		'satisfied'
	],
	#category : #SMDeltaBlue
}

{ #category : #adding }
DBUnaryConstraint >> addToGraph [
	"Add myself to the constraint graph."

	output addConstraint: self.
	satisfied := false.
]

{ #category : #planning }
DBUnaryConstraint >> chooseMethod: mark [
	"Decide if I can be satisfied and record that decision."

	satisfied :=
		output mark ~= mark and:
		[strength stronger: output walkStrength].
]

{ #category : #planning }
DBUnaryConstraint >> execute [
	"Enforce this constraint. Assume that it is satisfied."

	self subclassResponsibility
]

{ #category : #planning }
DBUnaryConstraint >> inputsDo: aBlock [
	"I have no input variables."
]

{ #category : #testing }
DBUnaryConstraint >> isSatisfied [
	"Answer true if this constraint is satisfied in the current solution."

	^satisfied
]

{ #category : #planning }
DBUnaryConstraint >> markUnsatisfied [
	"Record the fact that I am unsatisfied."

	satisfied := false.
]

{ #category : #planning }
DBUnaryConstraint >> output [
	"Answer my current output variable."

	^ output
]

{ #category : #planning }
DBUnaryConstraint >> recalculate [
	"Calculate the walkabout strength, the stay flag, and, if it is 'stay',
	 the value for the current output of this constraint. Assume this
	 constraint is satisfied."

	output walkStrength: strength.
	output stay: self isInput not.
	output stay ifTrue: [self execute].	"stay optimization"
]

{ #category : #adding }
DBUnaryConstraint >> removeFromGraph [
	"Remove myself from the constraint graph."

	(output == nil) ifFalse: [output removeConstraint: self].
	satisfied := false.
]

{ #category : #initialize }
DBUnaryConstraint >> var: aVariable strength: strengthSymbol [
	"Initialize myself with the given variable and strength."

	strength := DBStrength of: strengthSymbol.
	output := aVariable.
	satisfied := false.
	self addConstraint.
]

