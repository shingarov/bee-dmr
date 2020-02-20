Class {
	#name : #Object,
	#superclass : #ProtoObject,
	#category : #Kernel
}

{ #category : #inspecting }
Object class >> aspects [
	^#()
]

{ #category : #initialization }
Object class >> availableEvents [
	^Set with: #changed with: #changed:
]

{ #category : #testing }
Object class >> hasRegisteredEvent: aSymbol [
	^self registeredEvents includes: aSymbol asSymbol
]

{ #category : #accessing }
Object class >> registeredEvents [
	| events |
]

{ #category : #initialization }
Object class >> registerEvents [
	Smalltalk register: self availableEvents for: self
]

{ #category : #converting }
Object >> -> anObject [
	^Association key: self value: anObject
]

{ #category : #comparing }
Object >> != anObject [
	^(self = anObject) not
]

{ #category : #unclassified }
Object >> _basicAt: anInteger put: anObject [
	^self at: anInteger put: anObject
]

{ #category : #unclassified }
Object >> _replaceFrom: start to: end with: other [
	^self _basicCopyFrom: start to: end with: other
]

{ #category : #comparing }
Object >> ~ anObject [
	^self isCloseTo: anObject
]

{ #category : #comparing }
Object >> ~= anObject [
	^(self = anObject) not
]

{ #category : #'event handling' }
Object >> actionForEvent: aSymbol [
	^self eventAt: aSymbol ifAbsent: nil
]

{ #category : #'event handling' }
Object >> actionsForEvent: aSymbol [
	| action |
]

{ #category : #'instance behavior' }
Object >> addInstanceMethods: aMethodDictionary [
	| behavior |
]

{ #category : #'event handling' }
Object >> asActionSequence [
	^ActionSequence with: self
]

{ #category : #inspecting }
Object >> aspects [
	^self class aspects
]

{ #category : #debugging }
Object >> ASSERT: aBoolean [
	aBoolean value ifFalse: [AssertionFailure signal].
]

{ #category : #converting }
Object >> asString [
	^self printString
]

{ #category : #private }
Object >> at: anInteger [
	^self primitiveAt: anInteger
]

{ #category : #private }
Object >> at: anInteger put: anObject [
	^self primitiveAt: anInteger put: anObject
]

{ #category : #private }
Object >> atValid: anInteger [
	^self at: anInteger
]

{ #category : #private }
Object >> basicAt: anInteger put: anObject [
	^self primitiveAt: anInteger put: anObject
]

{ #category : #unclassified }
Object >> basicByteAt: index [
	index _isSmallInteger ifFalse: [^self outOfBoundsIndex: index].
]

{ #category : #unclassified }
Object >> basicByteAt: index put: value [
	index _isSmallInteger ifFalse: [^self outOfBoundsIndex: index].
]

{ #category : #unclassified }
Object >> basicObjectAt: grossIndex [
	| index |
]

{ #category : #unclassified }
Object >> basicObjectAt: grossIndex put: anObject [
	| index |
]

{ #category : #unclassified }
Object >> basicObjectIndexOf: grossIndex [
	| instVars index |
]

{ #category : #private }
Object >> beWeak [
	self _beSpecial
]

{ #category : #private }
Object >> beWeak: aBoolean [
	aBoolean ifTrue: [self _beSpecial] ifFalse: [self _beNotSpecial]
]

{ #category : #private }
Object >> bindEventTable: aDictionary [
	^Smalltalk bindEventTable: aDictionary to: self
]

{ #category : #accessing }
Object >> byteAt: anInteger [
	^self basicAt: anInteger
]

{ #category : #accessing }
Object >> byteAt: anInteger put: byte [
	^self basicAt: anInteger put: byte
]

{ #category : #unclassified }
Object >> byteAtValid: anInteger [
	^self _byteAt: anInteger
]

{ #category : #unclassified }
Object >> byteAtValid: anInteger put: value [
	^self _byteAt: anInteger put: value
]

{ #category : #testing }
Object >> canBePrintedAsLiteral [
	^false
]

{ #category : #errors }
Object >> cannotReturn [
	self error: 'Closure cannot return'
]

{ #category : #'instance behavior' }
Object >> changeClassTo: aClass [
	self class == aClass ifFalse: [self behavior: aClass instanceBehavior]
]

{ #category : #'event handling' }
Object >> changed [
	self triggerEvent: #changed
]

{ #category : #'event handling' }
Object >> changed: argument [
	self triggerEvent: #changed: with: argument
]

{ #category : #copying }
Object >> copy [
	^self shallowCopy postCopy
]

{ #category : #copying }
Object >> deepCopy [
	^self objectDeepCopy postCopy
]

{ #category : #debugging }
Object >> disableCode: aBlock [
	"do not evaluate the code inside the block"
]

{ #category : #private }
Object >> ensurePropertyTable [
	^Smalltalk ensurePropertyTableFor: self
]

{ #category : #unclassified }
Object >> error: message resumable: resumable [
	^self error: message title: 'Error' resumable: resumable
]

{ #category : #evaluating }
Object >> evaluate [
	^self
]

{ #category : #evaluating }
Object >> evaluateWith: anObject [
	^self evaluateWithArguments: {anObject}
]

{ #category : #evaluating }
Object >> evaluateWith: arg1 with: arg2 [
	^self evaluateWithArguments: {arg1. arg2}
]

{ #category : #evaluating }
Object >> evaluateWithArguments: anArray [
	^self evaluate
]

{ #category : #private }
Object >> eventAt: aSymbol ifAbsent: aBlock [
	| table |
]

{ #category : #private }
Object >> eventAt: aSymbol put: action [
	| table |
]

{ #category : #private }
Object >> eventTable [
	^Smalltalk eventTableFor: self
]

{ #category : #finalization }
Object >> finalize: anObject [
	
]

{ #category : #debugging }
Object >> halt: errorMessage [
	Halt signal: errorMessage
]

{ #category : #'event handling' }
Object >> handledEvents [
	| table |
]

{ #category : #'event handling' }
Object >> hasActionForEvent: aSymbol [
	| table |
]

{ #category : #testing }
Object >> hasClassBehavior [
	^self behavior == self class instanceBehavior
]

{ #category : #private }
Object >> hash: anInteger [
	self basicHash: anInteger
]

{ #category : #services }
Object >> hashedWith: a
	| hash |
]

{ #category : #services }
Object >> hashWith: a [
	^self
]

{ #category : #services }
Object >> hashWith: a with: b [
	^self
]

{ #category : #services }
Object >> hashWith: a with: b with: c [
	^self
]

{ #category : #services }
Object >> hashWith: a
	^self
]

{ #category : #services }
Object >> hashWith: a
	^self
]

{ #category : #services }
Object >> hashWith: a
	^self
]

{ #category : #testing }
Object >> hasRegisteredEvent: aSymbol [
	^self class hasRegisteredEvent: aSymbol
]

{ #category : #testing }
Object >> ifNil: aBlock ifNotNil: anotherBlock [
	"
]

{ #category : #testing }
Object >> ifNotNil: aBlock ifNil: anotherBlock [
	"
]

{ #category : #accessing }
Object >> imageSegment [
	^ImageSegment segmentAt: self _oop
]

{ #category : #initialization }
Object >> initialize [
	
]

{ #category : #testing }
Object >> isArray [
	^false
]

{ #category : #testing }
Object >> isAssociation [
	^false
]

{ #category : #testing }
Object >> isBlock [
	^false
]

{ #category : #testing }
Object >> isBlockClosure [
	^false
]

{ #category : #testing }
Object >> isBoolean [
	^false
]

{ #category : #testing }
Object >> isByteArray [
	^false
]

{ #category : #testing }
Object >> isCharacter [
	^false
]

{ #category : #testing }
Object >> isClass [
	^false
]

{ #category : #testing }
Object >> isClosure [
	^false
]

{ #category : #testing }
Object >> isCollection [
	^false
]

{ #category : #testing }
Object >> isCompiledMethod [
	^false
]

{ #category : #testing }
Object >> isDate [
	^false
]

{ #category : #testing }
Object >> isDictionary [
	^false
]

{ #category : #testing }
Object >> isDirectory [
	^false
]

{ #category : #testing }
Object >> isEmptyOrNil [
	^false
]

{ #category : #testing }
Object >> isExternalHandle [
	^false
]

{ #category : #testing }
Object >> isExternalMemory [
	^false
]

{ #category : #testing }
Object >> isFile [
	^false
]

{ #category : #testing }
Object >> isFilename [
	^false
]

{ #category : #testing }
Object >> isFileStream [
	^false
]

{ #category : #testing }
Object >> isFixedObject [
	^false
]

{ #category : #testing }
Object >> isFloat [
	^false
]

{ #category : #testing }
Object >> isFraction [
	^false
]

{ #category : #testing }
Object >> isInKernel [
	^ImageSegment kernel includesAddress: self _oop
]

{ #category : #testing }
Object >> isInSegment [
	^self imageSegment ifNil: [false] ifNotNil: [:bsl | bsl ordinal > 1]
]

{ #category : #testing }
Object >> isInteger [
	^false
]

{ #category : #testing }
Object >> isKindOf: aClass [
	^self class inheritsFrom: aClass
]

{ #category : #testing }
Object >> isLargeInteger [
	^false
]

{ #category : #testing }
Object >> isMemberOf: aClass [
	^self class == aClass
]

{ #category : #testing }
Object >> isMemoryBuffer [
	^false
]

{ #category : #testing }
Object >> isMessage [
	^false
]

{ #category : #testing }
Object >> isMetaclass [
	^false
]

{ #category : #testing }
Object >> isMethodDictionary [
	^false
]

{ #category : #testing }
Object >> isNativeCode [
	^false
]

{ #category : #testing }
Object >> isNumber [
	^false
]

{ #category : #testing }
Object >> isPoint [
	^false
]

{ #category : #testing }
Object >> isRectangle [
	^false
]

{ #category : #testing }
Object >> isSequenceableCollection [
	^false
]

{ #category : #testing }
Object >> isSmallInteger [
	^false
]

{ #category : #testing }
Object >> isSpecies [
	^false
]

{ #category : #testing }
Object >> isStream [
	^false
]

{ #category : #testing }
Object >> isString [
	^false
]

{ #category : #testing }
Object >> isSymbol [
	^false
]

{ #category : #testing }
Object >> isTime [
	^false
]

{ #category : #testing }
Object >> isTimestamp [
	^false
]

{ #category : #testing }
Object >> isUnicodeString [
	^false
]

{ #category : #testing }
Object >> isUnicodeSymbol [
	^false
]

{ #category : #errors }
Object >> literalString [
	^self canBePrintedAsLiteral ifTrue: [self storeString]
]

{ #category : #errors }
Object >> marshalOn: aStream [
	| s |
]

{ #category : #'instance behavior' }
Object >> methodFor: aSymbol [
	^self behavior findMethodFor: aSymbol
]

{ #category : #services }
Object >> methodFor: aSymbol in: aClass [
	^self behavior findMethodFor: aSymbol in: aClass
]

{ #category : #errors }
Object >> mustBeBoolean [
	^Error signal: 'not a Boolean receiver'
]

{ #category : #copying }
Object >> objectDeepCopy [
	| class ivars copy |
]

{ #category : #copying }
Object >> objectShallowCopy [
	| copy class |
]

{ #category : #private }
Object >> onEvent: aSymbol do: anActionSequence [
	anActionSequence compressed
]

{ #category : #accessing }
Object >> oop [
	^self _oop
]

{ #category : #services }
Object >> perform: aSymbol with: firstObject with: secondObject [
	^self perform: aSymbol withArguments: {firstObject. secondObject}
]

{ #category : #services }
Object >> perform: aSymbol
	^self perform: aSymbol withArguments: {arg1. arg2. arg3}
]

{ #category : #copying }
Object >> postCopy [
	
]

{ #category : #unclassified }
Object >> primitiveAt: i put: anObject [
	self _isSmallInteger ifTrue: [^self shouldNotImplement].
]

{ #category : #printing }
Object >> printOn: aStream [
	aStream nextPutAll: self class name withArticle
]

{ #category : #accessing }
Object >> propertyAt: aSymbol [
	^self propertyTable at: aSymbol ifAbsent: nil
]

{ #category : #accessing }
Object >> propertyAt: aSymbol ifAbsent: aBlock [
	^self propertyTable at: aSymbol ifAbsent: aBlock
]

{ #category : #accessing }
Object >> propertyAt: aSymbol ifAbsentPut: aBlock [
	self ensurePropertyTable.
]

{ #category : #accessing }
Object >> propertyAt: aSymbol put: anObject [
	self ensurePropertyTable.
]

{ #category : #private }
Object >> propertyTable [
	^(Smalltalk propertiesFor: self) ifNil: [IdentityDictionary new]
]

{ #category : #'event handling' }
Object >> registeredEvents [
	^self class registeredEvents
]

{ #category : #finalization }
Object >> release [
	self releaseEventTable
]

{ #category : #'event handling' }
Object >> releaseEventTable [
	self bindEventTable: nil
]

{ #category : #'event handling' }
Object >> removeAction: anAction forEvent: aSymbol [
	self
]

{ #category : #'event handling' }
Object >> removeActionsForEvent: eventName [
	| table |
]

{ #category : #'event handling' }
Object >> removeActionsSatisfying: aBlock forEvent: aSymbol [
	| actions |
]

{ #category : #'event handling' }
Object >> removeActionsWithReceiver: anObject forEvent: aSymbol [
	self
]

{ #category : #'event handling' }
Object >> removeAllActionsFor: anObject [
	self handledEvents
]

{ #category : #'event handling' }
Object >> removeDependent: anObject [
	self removeActionsWithReceiver: anObject forEvent: #changed
]

{ #category : #'instance behavior' }
Object >> removeInstanceBehavior [
	self behavior: self class instanceBehavior
]

{ #category : #'instance behavior' }
Object >> removeMethods: aMethodDictionary [
	| behavior copy |
]

{ #category : #'accessing-properties' }
Object >> removeProperty: aSymbol [
	self
]

{ #category : #'accessing-properties' }
Object >> removeProperty: aSymbol ifAbsent: aBlock [
	| t |
]

{ #category : #replacing }
Object >> replaceBytesBackwardFrom: stop
	| i j |
]

{ #category : #replacing }
Object >> replaceBytesForwardFrom: start
	| i j |
]

{ #category : #replacing }
Object >> replaceBytesFrom: start
	| end |
]

{ #category : #services }
Object >> respondsTo: aSymbol [
	| cm |
]

{ #category : #private }
Object >> sender [
	^StackFrameCursor top moveNext moveNext receiver
]

{ #category : #finalization }
Object >> sessionShutdown [
	"
]

{ #category : #startup }
Object >> sessionStartup [
	^self
]

{ #category : #copying }
Object >> shallowCopy [
	^self objectShallowCopy
]

{ #category : #copying }
Object >> shallowCopyTo: anObject [
	| n |
]

{ #category : #errors }
Object >> shouldNotImplement [
	self error: 'inappropriate message for this object'
]

{ #category : #accessing }
Object >> size [
	^self primitiveSize
]

{ #category : #accessing }
Object >> sizeInBytes [
	self _isBytes ifFalse: [^nil].
]

{ #category : #private }
Object >> species [
	^self class
]

{ #category : #printing }
Object >> storeOn: aStream [
	| class yourself |
]

{ #category : #converting }
Object >> storeString [
	| stream |
]

{ #category : #errors }
Object >> subclassResponsibility [
	^self error: 'subclass responsibility'
]

{ #category : #'event handling' }
Object >> triggerEvent: aSymbol [
	^self triggerEvent: aSymbol withArguments: #() defaultHandler: nil
]

{ #category : #'event handling' }
Object >> triggerEvent: aSymbol defaultHandler: aBlock [
	^self triggerEvent: aSymbol withArguments: #() defaultHandler: aBlock
]

{ #category : #'event handling' }
Object >> triggerEvent: aSymbol with: anObject [
	^self triggerEvent: aSymbol withArguments: {anObject} defaultHandler: nil
]

{ #category : #'event handling' }
Object >> triggerEvent: aSymbol with: anObject defaultHandler: aBlock [
	^self
]

{ #category : #'event handling' }
Object >> triggerEvent: aSymbol with: anObject with: anotherObject [
	^self triggerEvent: aSymbol withArguments: {anObject. anotherObject}
]

{ #category : #'event handling' }
Object >> triggerEvent: aSymbol
	^self
]

{ #category : #'event handling' }
Object >> triggerEvent: aSymbol withArguments: aCollection [
	^self triggerEvent: aSymbol withArguments: aCollection defaultHandler: nil
]

{ #category : #'event handling' }
Object >> triggerEvent: aSymbol withArguments: aCollection defaultHandler: aBlock [
	| action |
]

{ #category : #'event handling' }
Object >> unregisteredEvent: aSymbol [
	^self error: 'Unregistered event ' , aSymbol storeString
]

{ #category : #evaluating }
Object >> value [
	^self
]

{ #category : #'event handling' }
Object >> when: aSymbol do: aBlock [
	self when: aSymbol evaluate: aBlock
]

{ #category : #'event handling' }
Object >> when: aSymbol evaluate: action [
	| actions |
]

{ #category : #'event handling' }
Object >> when: event send: selector to: receiver [
	| args msg |
]

{ #category : #'event handling' }
Object >> when: event
	| arguments msg |
]
