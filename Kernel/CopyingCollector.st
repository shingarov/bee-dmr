Class {
	#name : #CopyingCollector,
	#superclass : #Object,
	#instVars : [
		'#fromSpace',
		'#toSpace',
		'#workSpace',
		'#forwarders',
		'#scan',
		'#externals',
		'#weakContainers',
		'#uncheckedEphemerons',
		'#unreachedEphemerons',
		'#rescuedEphemerons',
		'#tombstone',
		'#memory',
		'#stacks'
	],
	#category : #Kernel
}

{ #category : #'instance creation' }
CopyingCollector class >> on: aMemory [
	^self new memory: aMemory
]

{ #category : #'adding / removing' }
CopyingCollector >> addExternal: object [
	object _hasBeenSeen ifFalse: [
]

{ #category : #ephemerons }
CopyingCollector >> checkEphemerons [
	| done |
]

{ #category : #ephemerons }
CopyingCollector >> checkReachablePropertyOf: ephemeron [
	| key |
]

{ #category : #cleaning }
CopyingCollector >> collect [
	self
]

{ #category : #cleaning }
CopyingCollector >> copyOf: anObject [
	^anObject _isProxy
]

{ #category : #cleaning }
CopyingCollector >> currentSpace: aSpace [
	Memory current eden: aSpace
]

{ #category : #cleaning }
CopyingCollector >> doCollect [
	self
]

{ #category : #cleaning }
CopyingCollector >> fixReturnAddressIn: frame sized: size [
	| return method original moved |
]

{ #category : #cleaning }
CopyingCollector >> followClosure [
	[scan < toSpace nextFree or: [self unscannedExternalsRemain]]
]

{ #category : #ephemerons }
CopyingCollector >> followEphemerons [
	[| done |
]

{ #category : #ephemerons }
CopyingCollector >> followEphemeronWeaks: ephemeron [
	self
]

{ #category : #ephemerons }
CopyingCollector >> followLiveEphemerons [
	| done |
]

{ #category : #cleaning }
CopyingCollector >> followNativeCodeObject: offset from: bytes [
	| object moved |
]

{ #category : #cleaning }
CopyingCollector >> followRoots [
	self scanThreadLocalStorages; followClosure; followEphemerons
]

{ #category : #cleaning }
CopyingCollector >> forward: object to: copy [
	| index |
]

{ #category : #cleaning }
CopyingCollector >> forwardersSize [
	^memory youngLimit - memory youngBase * 2
]

{ #category : #cleaning }
CopyingCollector >> forwardingIndexOf: anObject [
	^(anObject _asPointer - fromSpace base bitShift: 0 - WordSizeShift + 1) + 1
]

{ #category : #cleaning }
CopyingCollector >> initialize [
	
]

{ #category : #cleaning }
CopyingCollector >> initializeLocals [
	fromSpace := GCSpace copyFrom: memory from.
]

{ #category : #accessing }
CopyingCollector >> memory: aMemory [
	memory := aMemory.
]

{ #category : #cleaning }
CopyingCollector >> newspaceIncludes: object [
	^fromSpace includes: object
]

{ #category : #cleaning }
CopyingCollector >> nextEden [
	^memory from
]

{ #category : #cleaning }
CopyingCollector >> postInitialize [
	| space |
]

{ #category : #cleaning }
CopyingCollector >> proxeeOf: object [
	| index |
]

{ #category : #cleaning }
CopyingCollector >> releaseLocals [
	"
]

{ #category : #ephemerons }
CopyingCollector >> rememberIfWeak: object [
	| collection |
]

{ #category : #ephemerons }
CopyingCollector >> rememberSpecial: object [
	| collection class |
]

{ #category : #ephemerons }
CopyingCollector >> rescuedEphemerons [
	^rescuedEphemerons
]

{ #category : #ephemerons }
CopyingCollector >> rescueEphemeron: ephemeron [
	self followEphemeronWeaks: ephemeron.
]

{ #category : #ephemerons }
CopyingCollector >> rescueUnreacheableEphemerons [
	| done |
]

{ #category : #cleaning }
CopyingCollector >> resetWorkspace [
	workSpace reset
]

{ #category : #cleaning }
CopyingCollector >> saveEnvironmentAndFollowRoots [
	"
]

{ #category : #cleaning }
CopyingCollector >> scan: current [
	current behavior == NativeCode instanceBehavior
]

{ #category : #cleaning }
CopyingCollector >> scan: current from: start to: limit [
	| index |
]

{ #category : #cleaning }
CopyingCollector >> scanBehavior: current [
	| behavior moved |
]

{ #category : #cleaning }
CopyingCollector >> scanExternals [
	[externals isEmpty] whileFalse: [| object |
]

{ #category : #cleaning }
CopyingCollector >> scanInternals [
	[scan < toSpace nextFree] whileTrue: [| current |
]

{ #category : #cleaning }
CopyingCollector >> scanNativeCode: nativeCode [
	| code |
]

{ #category : #cleaning }
CopyingCollector >> scanNativeStack: stackWrapper [
	stackWrapper
]

{ #category : #cleaning }
CopyingCollector >> scanNativeStackFrame: framePointer sized: size [
	self fixReturnAddressIn: framePointer _asObject sized: size.
]

{ #category : #cleaning }
CopyingCollector >> scanReifiedStack: stackWrapper [
	| top size |
]

{ #category : #cleaning }
CopyingCollector >> scanSpecialSlots: special [
	self scan: special from: 1 to: special _size
]

{ #category : #cleaning }
CopyingCollector >> scanStack: aStackWrapper [
	aStackWrapper isValid ifFalse: [^self].
]

{ #category : #cleaning }
CopyingCollector >> scanStackFrameObjects: framePointer sized: size [
	self scan: framePointer _asObject from: 1 to: size
]

{ #category : #cleaning }
CopyingCollector >> scanStacks [
	[stacks isEmpty] whileFalse: [| s |
]

{ #category : #cleaning }
CopyingCollector >> scanThreadLocalStorage: thread [
	thread localStorageIndices do: [:index | | object moved |
]

{ #category : #cleaning }
CopyingCollector >> scanThreadLocalStorages [
	Thread registeredInstances
]

{ #category : #cleaning }
CopyingCollector >> scanTopSlotIfInactive: stackWrapper [
	stackWrapper isActive
]

{ #category : #private }
CopyingCollector >> scanWeakContainers [
	weakContainers
]

{ #category : #private }
CopyingCollector >> scanWeakReferencesOf: weakContainer [
	1 to: weakContainer _size do: [:index | | object moved |
]

{ #category : #ephemerons }
CopyingCollector >> strenghtenAndMigrateEphemerons [
	rescuedEphemerons := toSpace shallowCopy: rescuedEphemerons.
]

{ #category : #cleaning }
CopyingCollector >> swapMemoryFromAndTo [
	memory from wipeOut; copyFrom: toSpace.
]

{ #category : #ephemerons }
CopyingCollector >> swapUncheckedWithUnreached [
	| aux |
]

{ #category : #cleaning }
CopyingCollector >> unmarkAll [
	memory spaces do: #unmarkAll
]

{ #category : #cleaning }
CopyingCollector >> unscannedExternalsRemain [
	^externals isEmpty not
]

{ #category : #cleaning }
CopyingCollector >> update: current at: index [
	| object moved |
]

{ #category : #cleaning }
CopyingCollector >> updateActiveStack [
	ActiveProcess stack update
]

{ #category : #cleaning }
CopyingCollector >> workSpace [
	^workSpace
]

{ #category : #private }
CopyingCollector >> workSpaceSize [
	^self forwardersSize * 2
]
