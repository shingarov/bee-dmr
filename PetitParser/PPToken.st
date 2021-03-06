"
    Copyright (c) 2020 Aucerna. 
    Copyright (c) 2008-2019 The Pharo Project, and Contributors.
    See (MIT) license in root directory.
"

Class {
	#name : #PPToken,
	#superclass : #Object,
	#instVars : [
		'collection',
		'start',
		'stop'
	],
	#category : #PetitParser
}

{ #category : #'instance creation' }
PPToken class >> new [
	self error: 'Token can only be created using a dedicated constructor.'
]

{ #category : #'instance creation' }
PPToken class >> on: aSequenceableCollection [
	^ self on: aSequenceableCollection start: 1 stop: aSequenceableCollection size
]

{ #category : #'instance creation' }
PPToken class >> on: aSequenceableCollection start: aStartInteger stop: aStopInteger [
	^ self basicNew 
		initializeOn: aSequenceableCollection
		start: aStartInteger stop: aStopInteger
]

{ #category : #comparing }
PPToken >> = anObject [
	^ self class = anObject class and: [ self value = anObject value ]
]

{ #category : #accessing }
PPToken >> collection [
	"Answer the underlying collection of this token."

	^ collection
]

{ #category : #querying }
PPToken >> column [
	"Answer the column number of this token in the underlying collection."
	
	| position |
	position := 0.
	(self newline , [ :stream |
		start <= stream position
			ifTrue: [ ^ start - position ].
		position := stream position ] asParser
		/ #any asParser) star
			parse: collection.
	^ start - position
]

{ #category : #copying }
PPToken >> copyFrom: aStartInteger to: aStopInteger [
	^ self class on: collection start: start + aStartInteger - 1 stop: stop + aStopInteger - 3
]

{ #category : #comparing }
PPToken >> hash [
	^ self value hash
]

{ #category : #initialization }
PPToken >> initializeOn: aSequenceableCollection start: aStartInteger stop: aStopInteger [
	collection := aSequenceableCollection.
	start := aStartInteger.
	stop := aStopInteger
]

{ #category : #querying }
PPToken >> line [
	"Answer the line number of this token in the underlying collection."
	
	| line |
	line := 1.
	(self newline , [ :stream |
		start <= stream position
			ifTrue: [ ^ line ].
		line := line + 1 ] asParser
		/ #any asParser) star
			parse: collection.
	^ line
]

{ #category : #private }
PPToken >> newline [
	"Parser a platform independent newline sequence. LF: Unix, CR+LF: Windows, and CR: Apple."

	^ (Character lf asParser)
	/ (Character cr asParser , Character lf asParser optional)
]

{ #category : #printing }
PPToken >> printOn: aStream [
	super printOn: aStream.
	aStream nextPut: $(; nextPutAll: self value; nextPut: $)
]

{ #category : #accessing }
PPToken >> size [
	"Answer the size of this token."

	^ stop - start + 1
]

{ #category : #accessing }
PPToken >> start [
	"Answer the start position of this token in the underlying collection."

	^ start
]

{ #category : #accessing }
PPToken >> stop [
	"Answer the stop position of this token in the underlying collection."
	
	^ stop
]

{ #category : #accessing }
PPToken >> value [
	"Answer the contents of this token."

	^ collection copyFrom: start to: stop
]

