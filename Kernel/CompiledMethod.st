Class {
	#name : #CompiledMethod,
	#superclass : #Array,
	#type : #variable,
	#instVars : [
		'#bytecodes',
		'#nativeCode',
		'#class',
		'#selector',
		'#source',
		'#format'
	],
	#classVars : [
		'#Flags'
	],
	#category : #Kernel
}

{ #category : #inspecting }
CompiledMethod class >> aspects [
	^#(#bytecodeString #disassembledText)
]

{ #category : #initialization }
CompiledMethod class >> initializeFlags [
	Flags := PoolDictionary newConstantPool.
]

{ #category : #initialization }
CompiledMethod class >> maxArgCount [
	^(2 raisedTo: ArgCount length) - 1
]

{ #category : #initialization }
CompiledMethod class >> maxBlockCount [
	^(2 raisedTo: BlockCount length) - 1
]

{ #category : #initialization }
CompiledMethod class >> maxBytecodeCount [
	^10000
]

{ #category : #initialization }
CompiledMethod class >> maxTempCount [
	^(2 raisedTo: TempCount length) - 1
]

{ #category : #'instance creation' }
CompiledMethod class >> new: anInteger [
	| cm |
]

{ #category : #comparing }
CompiledMethod >> ~ aCompiledMethod [
	self literals = aCompiledMethod literals ifFalse: [^false].
]

{ #category : #comparing }
CompiledMethod >> = anObject [
	^self == anObject
]

{ #category : #queries }
CompiledMethod >> addSymbolsIn: anArray to: aSet [
	anArray do: [:elem | 
]

{ #category : #accessing }
CompiledMethod >> argumentCount [
	^format bitsAt: ArgCount
]

{ #category : #accessing }
CompiledMethod >> argumentCount: anInteger [
	format := format bitsAt: ArgCount put: anInteger
]

{ #category : #converting }
CompiledMethod >> asOverridden [
	^self
]

{ #category : #accessing }
CompiledMethod >> beDMRVersion [
	format := format bitOr: DMR
]

{ #category : #accessing }
CompiledMethod >> blockCount [
	^format bitsAt: BlockCount
]

{ #category : #accessing }
CompiledMethod >> blockCount: anInteger [
	anInteger > 0 ifTrue: [format := format bitOr: HasBlock].
]

{ #category : #enumerating }
CompiledMethod >> blocks [
	self hasBlocks ifFalse: [^#()].
]

{ #category : #enumerating }
CompiledMethod >> blocksDo: aBlock [
	self
]

{ #category : #accessing }
CompiledMethod >> bytecodes [
	^bytecodes
]

{ #category : #accessing }
CompiledMethod >> bytecodes: aByteArray [
	bytecodes := aByteArray
]

{ #category : #testing }
CompiledMethod >> canBeInstalled [
	^self isExpression not
]

{ #category : #accessing }
CompiledMethod >> classBinding [
	^class
]

{ #category : #accessing }
CompiledMethod >> classBinding: aClass [
	class := aClass
]

{ #category : #queries }
CompiledMethod >> currentVersion [
	^class compiledMethodAt: selector
]

{ #category : #private }
CompiledMethod >> dmrVersion [
	^nil
]

{ #category : #accessing }
CompiledMethod >> environmentSize [
	"
]

{ #category : #evaluation }
CompiledMethod >> executeOn: receiver withArguments: anArray [
	| size |
]

{ #category : #accessing }
CompiledMethod >> format [
	^format
]

{ #category : #accessing }
CompiledMethod >> format: anInteger [
	format := anInteger
]

{ #category : #testing }
CompiledMethod >> hasBlocks [
	^self blockCount > 0
]

{ #category : #services }
CompiledMethod >> hasEnvironment [
	^bytecodes notEmpty and: [bytecodes first = 0]
]

{ #category : #comparing }
CompiledMethod >> hash [
	^selector hashWith: class
]

{ #category : #accessing }
CompiledMethod >> hasNativeCode [
	^nativeCode != nil
]

{ #category : #initialization }
CompiledMethod >> initialize [
	super initialize.
]

{ #category : #actions }
CompiledMethod >> install [
	class addSelector: selector withMethod: self
]

{ #category : #accessing }
CompiledMethod >> invalidateNativeCode [
	nativeCode := nil.
]

{ #category : #testing }
CompiledMethod >> isCallback [
	^false
]

{ #category : #testing }
CompiledMethod >> isCompiledMethod [
	^true
]

{ #category : #testing }
CompiledMethod >> isCurrentVersion [
	^class notNil and: [self == (class compiledMethodAt: selector)]
]

{ #category : #testing }
CompiledMethod >> isDebuggable [
	^format isOnBit: Debuggable
]

{ #category : #accessing }
CompiledMethod >> isDMRVersion [
	^format isOnBit: DMR
]

{ #category : #accessing }
CompiledMethod >> isDoit [
	^false
]

{ #category : #testing }
CompiledMethod >> isExpression [
	^false
]

{ #category : #testing }
CompiledMethod >> isFFIMethod [
	^false
]

{ #category : #unclassified }
CompiledMethod >> isNativized [
	^false == (nativeCode == nil)
]

{ #category : #testing }
CompiledMethod >> isOverridden [
	^false
]

{ #category : #accessing }
CompiledMethod >> literalIndexFrom: grossIndex [
	| instVars index |
]

{ #category : #accessing }
CompiledMethod >> literals [
	^Array withAll: self
]

{ #category : #accessing }
CompiledMethod >> method [
	^self
]

{ #category : #accessing }
CompiledMethod >> nativeCode [
	^nativeCode
]

{ #category : #accessing }
CompiledMethod >> nativeCode: code [
	nativeCode := code
]

{ #category : #accessing }
CompiledMethod >> nativeCodeAddress [
	nativeCode isNil ifTrue: [self nativize].
]

{ #category : #services }
CompiledMethod >> nativize [
	nativeCode := Smalltalk nativizer nativeCodeFor: self
]

{ #category : #copying }
CompiledMethod >> postCopy [
	super postCopy.
]

{ #category : #unclassified }
CompiledMethod >> prepareForExecution [
	self isNativized ifFalse: [self nativize].
]

{ #category : #accessing }
CompiledMethod >> primitiveNumber [
	^0
]

{ #category : #printing }
CompiledMethod >> printOn: aStream [
	aStream
]

{ #category : #unclassified }
CompiledMethod >> refreshBlocks [
	| blocks |
]

{ #category : #accessing }
CompiledMethod >> selector [
	^selector
]

{ #category : #accessing }
CompiledMethod >> selector: aSymbol [
	selector := aSymbol.
]

{ #category : #accessing }
CompiledMethod >> selectorAt: index [
	^self at: self size - index + 1
]

{ #category : #accessing }
CompiledMethod >> sendSites [
	^nativeCode sendSites
]

{ #category : #'source code support' }
CompiledMethod >> sourceObject [
	^source
]

{ #category : #accessing }
CompiledMethod >> tempCount [
	^format bitsAt: TempCount
]

{ #category : #accessing }
CompiledMethod >> tempCount: anInteger [
	format := format bitsAt: TempCount put: anInteger
]

{ #category : #accessing }
CompiledMethod >> timestamp [
	| s |
]

{ #category : #accessing }
CompiledMethod >> type [
	self ASSERT: false.
]

{ #category : #accessing }
CompiledMethod >> type: anInteger [
	self ASSERT: false.
]

{ #category : #accessing }
CompiledMethod >> updateNativeCode [
	nativeCode ifNil: [^self].
]

{ #category : #unclassified }
CompiledMethod >> validNativeCodeAddress [
	^nativeCode code _asSmallInteger
]
