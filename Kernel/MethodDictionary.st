Class {
	#name : #MethodDictionary,
	#superclass : #IdentityDictionary,
	#category : #Kernel
}

{ #category : #constants }
MethodDictionary class >> defaultSize [
	^4
]

{ #category : #private }
MethodDictionary class >> reserveSlot [
	self allInstances do: [:md | | selector cm |
]

{ #category : #accessing }
MethodDictionary >> at: aSymbol put: aCompiledMethod [
	^Smalltalk put: aCompiledMethod at: aSymbol in: self
]

{ #category : #private }
MethodDictionary >> basicAt: aSymbol put: aCompiledMethod [
	[
]

{ #category : #private }
MethodDictionary >> basicRemoveKey: aSymbol ifAbsent: aBlock [
	| copy |
]

{ #category : #private }
MethodDictionary >> contentOfSize: anInteger [
	| modulo |
]

{ #category : #copying }
MethodDictionary >> copy [
	^self objectShallowCopy postCopy
]

{ #category : #private }
MethodDictionary >> flushCache [
	self keysDo: [:selector | self flushCache: selector]
]

{ #category : #private }
MethodDictionary >> flushCache: aSymbol [
	GlobalDispatchCache current flush: aSymbol forSpecies: class.
]

{ #category : #private }
MethodDictionary >> hashFor: object [
	^object basicHash
]

{ #category : #testing }
MethodDictionary >> isMethodDictionary [
	^true
]

{ #category : #private }
MethodDictionary >> moduloFor: size [
	| last powers |
]

{ #category : #copying }
MethodDictionary >> postCopy [
	table := table copy owner: self
]

{ #category : #removing }
MethodDictionary >> removeKey: aSymbol ifAbsent: aBlock [
	^Smalltalk removeKey: aSymbol from: self ifAbsent: aBlock
]
