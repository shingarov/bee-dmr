"
    Copyright (c) 2020 Aucerna.
	Copyright (c) 2009-2018 Stefan Marr <git@stefan-marr.de>
    See license in root and /Performance/Benchmarks directories.
"

Class {
	#name : #BGPair,
	#superclass : #Object,
	#instVars : [
		'partner',
		'me',
		'sema'
	],
	#category : #Game
}

{ #category : #'instance creation' }
BGPair class >> new [
   "Answer a newly created and initialized instance."
   ^super new initialize.
]

{ #category : #'instance creation' }
BGPair class >> with: me [
   "Answer a newly created and initialized instance."
self halt.
   ^super new initialize me: me
]

{ #category : #'initialize-release' }
BGPair >> initialize [
   "Initialize a newly created instance. This method must answer the receiver."

   partner := nil.
   me := nil.
   sema := Semaphore new.
   ^self
]

{ #category : #accessing }
BGPair >> me [
   ^me
]

{ #category : #accessing }
BGPair >> me: anObject [
   me := anObject
]

{ #category : #accessing }
BGPair >> partner [
   ^partner
]

{ #category : #accessing }
BGPair >> partner: anObject [
   partner := anObject
]

{ #category : #'initialize-release' }
BGPair >> release [
partner:=nil.
]

{ #category : #'initialize-release' }
BGPair >> signal [
   sema signal
]

{ #category : #'initialize-release' }
BGPair >> wait [
   sema wait
]

