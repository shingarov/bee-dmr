Class {
	#name : #Exception,
	#superclass : #Object,
	#instVars : [
		'#description',
		'#activeHandler',
		'#signalContext',
		'#resumeBlock',
		'#resignaledException'
	],
	#category : #Kernel
}

{ #category : #composition }
Exception class >> , aClass [
	^ExceptionSet with: self with: aClass
]

{ #category : #inquiries }
Exception class >> includesException: anException [
	^anException isKindOf: self
]

{ #category : #inquiries }
Exception class >> isHandled [
	^self basicNew isHandled
]

{ #category : #inquiries }
Exception class >> shouldBeHidden: aSymbol [
	^#(#pass #signal) includes: aSymbol
]

{ #category : #services }
Exception class >> signal [
	^self new signal
]

{ #category : #services }
Exception class >> signal: aString [
	^self new description: aString; signal
]

{ #category : #accessing }
Exception >> activeHandler [
	^activeHandler
]

{ #category : #accessing }
Exception >> activeHandler: anExceptionHandler [
	activeHandler := anExceptionHandler
]

{ #category : #actions }
Exception >> defaultAction [
	Processor activeProcess
]

{ #category : #accessing }
Exception >> defaultDescription [
	^self class name
]

{ #category : #accessing }
Exception >> defaultValue [
	^nil
]

{ #category : #accessing }
Exception >> description [
	^description ifNil: [self defaultDescription]
]

{ #category : #accessing }
Exception >> description: aString [
	description := aString
]

{ #category : #'process flow' }
Exception >> doDefaultAction [
	^self defaultAction
]

{ #category : #signaling }
Exception >> doSignal [
	self isActive ifTrue: [^self ASSERT: false].
]

{ #category : #handling }
Exception >> evaluateHandler: anExceptionHandler [
	| prev result |
]

{ #category : #handling }
Exception >> evaluateHandlers [
	| handler |
]

{ #category : #handling }
Exception >> exit [
	self exit: self defaultValue
]

{ #category : #handling }
Exception >> exit: value [
	self isResumable ifTrue: [self resume: value] ifFalse: [self return: value]
]

{ #category : #testing }
Exception >> hasNextHandler [
	^self nextHandler notNil
]

{ #category : #testing }
Exception >> isActive [
	^activeHandler notNil
]

{ #category : #testing }
Exception >> isHandled [
	| handler |
]

{ #category : #testing }
Exception >> isResumable [
	^true
]

{ #category : #'process flow' }
Exception >> nextHandler [
	^activeHandler notNil ifTrue: [activeHandler nextHandlerFor: self]
]

{ #category : #handling }
Exception >> outer [
	| prev result |
]

{ #category : #handling }
Exception >> pass [
	self resume: self evaluateHandlers
]

{ #category : #handling }
Exception >> reset [
	activeHandler := signalContext := nil
]

{ #category : #handling }
Exception >> resignal [
	self resignalAs: self shallowCopy reset
]

{ #category : #signaling }
Exception >> resignalAs: anException [
	resignaledException := anException.
]

{ #category : #handling }
Exception >> resume [
	self resume: self defaultValue
]

{ #category : #handling }
Exception >> resume: value [
	self isResumable
]

{ #category : #handling }
Exception >> retry [
	activeHandler retry
]

{ #category : #handling }
Exception >> retryUsing: aBlock [
	activeHandler retryUsing: aBlock
]

{ #category : #handling }
Exception >> return [
	self return: self defaultValue
]

{ #category : #handling }
Exception >> return: value [
	signalContext := nil.
]

{ #category : #signaling }
Exception >> signal [
	| signaller result |
]

{ #category : #services }
Exception >> stacktrace [
	^signalContext backtrace.

{ #category : #sunit }
Exception >> sunitRetry [
	
]
