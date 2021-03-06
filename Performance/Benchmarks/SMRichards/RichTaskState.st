"
    Copyright (c) 2020 Aucerna.
	Copyright (c) 2009-2018 Stefan Marr <git@stefan-marr.de>
    See license in root and /Performance/Benchmarks directories.
"

Class {
	#name : #RichTaskState,
	#superclass : #RichObject,
	#instVars : [
		'packetPending',
		'taskHolding',
		'taskWaiting'
	],
	#category : #SMRichards
}

{ #category : #'instance creation' }
RichTaskState class >> packetPending [
    ^super new packetPending
]

{ #category : #'instance creation' }
RichTaskState class >> running [
    ^super new running
]

{ #category : #'instance creation' }
RichTaskState class >> waiting [
    ^super new waiting
]

{ #category : #'instance creation' }
RichTaskState class >> waitingWithPacket [
    ^super new waitingWithPacket
]

{ #category : #testing }
RichTaskState >> isPacketPending [
    ^packetPending
]

{ #category : #testing }
RichTaskState >> isRunning [
    ^ packetPending not and: [taskWaiting not and: [taskHolding not]]
]

{ #category : #testing }
RichTaskState >> isTaskHolding [
    ^taskHolding
]

{ #category : #testing }
RichTaskState >> isTaskHoldingOrWaiting [
    ^taskHolding or: [packetPending not and: [taskWaiting]]
]

{ #category : #testing }
RichTaskState >> isTaskWaiting [
    ^taskWaiting
]

{ #category : #testing }
RichTaskState >> isWaiting [
    ^packetPending not and: [taskWaiting and: [taskHolding not]]
]

{ #category : #testing }
RichTaskState >> isWaitingWithPacket [
    ^packetPending and: [taskWaiting and: [taskHolding not]]
]

{ #category : #initialize }
RichTaskState >> packetPending [
    packetPending := true.
    taskWaiting := false.
    taskHolding := false
]

{ #category : #initialize }
RichTaskState >> packetPending: aBoolean [
	packetPending := aBoolean
]

{ #category : #initialize }
RichTaskState >> running [
    packetPending := taskWaiting := taskHolding := false
]

{ #category : #accessing }
RichTaskState >> taskHolding: aBoolean [
	^ taskHolding := aBoolean
]

{ #category : #accessing }
RichTaskState >> taskWaiting: aBoolean [
	^ taskWaiting := aBoolean
]

{ #category : #initialize }
RichTaskState >> waiting [
    packetPending := taskHolding := false.
    taskWaiting := true
]

{ #category : #initialize }
RichTaskState >> waitingWithPacket [
    taskHolding := false.
    taskWaiting := packetPending := true
]

