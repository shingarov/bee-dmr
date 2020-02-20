Class {
	#name : #ExceptionHandler,
	#superclass : #Object,
	#instVars : [
		'#filter',
		'#previous',
		'#handlerBlock',
		'#protectedBlock',
		'#return'
	],
	#category : #Kernel
}

{ #category : #'instance creation' }
ExceptionHandler class >> handle: exceptionClass with: handlerBlock during: userBlock [
	^self new handle: exceptionClass with: handlerBlock during: userBlock
]

{ #category : #inquiries }
ExceptionHandler class >> shouldBeHidden: aSymbol [
	^true
]

{ #category : #handling }
ExceptionHandler >> evaluateFor: anException [
	^handlerBlock argumentCount = 0
]

{ #category : #activation }
ExceptionHandler >> evaluateProtectedBlock [
	return := [:result | ^result].
]

{ #category : #handling }
ExceptionHandler >> findHandlerFor: anException [
	| handler |
]

{ #category : #handling }
ExceptionHandler >> handle: anException [
	| result |
]

{ #category : #activation }
ExceptionHandler >> handle: exceptionClass with: hBlock during: pBlock [
	| result |
]

{ #category : #testing }
ExceptionHandler >> handles: anException [
	^filter includesException: anException
]

{ #category : #services }
ExceptionHandler >> nextHandler [
	^previous
]

{ #category : #services }
ExceptionHandler >> nextHandlerFor: anException [
	^previous notNil ifTrue: [previous findHandlerFor: anException]
]

{ #category : #handling }
ExceptionHandler >> retry [
	self return: self retryToken
]

{ #category : #accessing }
ExceptionHandler >> retryToken [
	^return
]

{ #category : #handling }
ExceptionHandler >> retryUsing: aBlock [
	protectedBlock := aBlock.
]

{ #category : #handling }
ExceptionHandler >> return: result [
	return value: result
]

{ #category : #handling }
ExceptionHandler >> shouldRetry: anObject [
	^anObject == self retryToken
]
