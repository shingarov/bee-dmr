"
    Copyright (c) 2020 Aucerna.
	Copyright (c) 2009-2018 Stefan Marr <git@stefan-marr.de>
    See license in root and /Performance/Benchmarks directories.
"

Class {
	#name : #SMarkSlopstone,
	#superclass : #SMarkSuite,
	#instVars : [
		'slopstone'
	],
	#category : #Suites
}

{ #category : #benchmarking }
SMarkSlopstone >> benchArrayCreation [
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n do: [:i | slopstone doArrayCreation]
]

{ #category : #benchmarking }
SMarkSlopstone >> benchBlockValue [
	"
	Using the SlopStone benchmarks, but not doing the
	 old style Stone performance number reporting
	"
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n do: [:i | slopstone doBlockValue]
]

{ #category : #benchmarking }
SMarkSlopstone >> benchByteArrayCreation [
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n do: [:i | slopstone doByteArrayCreation]
]

{ #category : #benchmarking }
SMarkSlopstone >> benchFloat [
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n * 10 do: [:i | slopstone doFloatAdd]
]

{ #category : #benchmarking }
SMarkSlopstone >> benchFloatCreation [
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n do: [:i | slopstone doFloatCreation]
]

{ #category : #benchmarking }
SMarkSlopstone >> benchInt [
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n * 100 do: [:i | slopstone doIntAdd]
]

{ #category : #benchmarking }
SMarkSlopstone >> benchObjectCopy [
	"
	Using the SlopStone benchmarks, but not doing the
	 old style Stone performance number reporting
	"
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n do: [:i | slopstone doObjectCopy]
]

{ #category : #benchmarking }
SMarkSlopstone >> benchObjectCreation [
	"
	Using the SlopStone benchmarks, but not doing the
	 old style Stone performance number reporting
	"
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n do: [:i | slopstone doObjectCreation]
]

{ #category : #benchmarking }
SMarkSlopstone >> benchPerform [
	"
	Using the SlopStone benchmarks, but not doing the
	 old style Stone performance number reporting
	"
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n do: [:i | slopstone doPerform]
]

{ #category : #benchmarking }
SMarkSlopstone >> benchPolimorphicCreation [
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n do: [:i | slopstone doPolimorphicCreation]
]

{ #category : #benchmarking }
SMarkSlopstone >> benchStringAccess [
	"
	Using the SlopStone benchmarks, but not doing the
	 old style Stone performance number reporting
	"
	| n |
	n := self problemSize.
	n > SmallInteger maxVal
		ifTrue: [self error: 'Count exceeded max small int.'].
	1 to: n do: [:i | slopstone doStringAccess]
]

{ #category : #defaults }
SMarkSlopstone >> defaultProblemSize [
	^10000
]

{ #category : #benchmarking }
SMarkSlopstone >> problemSize [
	| ps |
	#omniUnenforced "Hint for the OMOP that it is part of the meta infrastructure".
	ps := super problemSize.
	ps isInteger ifFalse: [^self defaultProblemSize].
	^ps
]

{ #category : #benchmarking }
SMarkSlopstone >> readme [
   "STEFAN: use the original benchmarks, but do not use original way
            of reporting results. Rely on the SMark reporting instead."

	"INTRODUCTION 
	 
	Slopstone: Smalltalk Low level OPeration Stones 
	Portable Low Level Benchmarks for ST80 and ST/V (using 16-bit 
	SmallIntegers) Placed in public domain January 1993  (c) Bruce 
	Samuelson Permission is given to place this in public Smalltalk archives 
	 
	Use monospaced fonts if possible to view the methods in this class. 
	 
	(1) Collect garbage if supported (2) do 'SlopstoneBenchmark new 
	runBenchmark'. Results are printed in the Transcript window. 
	Post results for your machines to comp.lang.smalltalk or 
	mail them to bruce@ling.uta.edu or bruce@utafll.uta.edu. 
	 
	DISCUSSION 
	    
	This readme method would normally be in the class comment for ST80. 
	ST/V-DOS doesn't support class comments. 
	  
	The benchmarks test strictly low level operations. They do not test 
	higher level operations such as forming sets, sorting, or streaming, nor 
	do they test 
	applications. They also do not test user interface operations because of 
	the non-portability of this area of Smalltalk and its sensitivity to the 
	performance of the video subsystem. The tests are cpu bound. They do 
	not access files and should not cause disk paging. 
	 
	The benchmarks use loop counts of 16000 because SmallIntegers cannot 
	exceed 16383 for ST/V-DOS. 16-bit implementions would perform worse 
	with large loop 
	counts. The benchmarks are also suitable for testing 32-bit versions of 
	Smalltalk. 
	 
	DEFINITION OF REFERENCE MACHINE (ONE SLOPSTONE) 
	 
	The following machine is the one on which I developed these 
	benchmarks. By 
	convention it is defined to operate at one slopstone. It's a mid range 
	performer for current ParcPlace versions of Smalltalk. 
	 
	Hardware: Amax 486DX/33 (includes internal floating point processor 
	and internal 8K cache), 256K external cache, 16MB RAM. 
	 
	Software: ParcPlace VisualWorks 1.0, Windows 3.1, DOS 5.0 (plain vanilla 
	setup). 
	 
	COMPARISON TO XEROX DORADO 
	 
	For reference, the machine runs at 649% of a Dorado on ParcPlace 
	benchmarks for ST80 4.1. Its fast video card helps on these PPS 
	benchmarks. I didn't run 
	them for VisualWorks 1.0. It would be somewhat slower because there 
	are vastly 
	more classes. 
	 
	EXAMPLE RESULTS FOR REFERENCE MACHINE 
	 
	1000s    time    1000s of 
	itera-   sec-    iterations   slop- 
	tions    onds    per sec      stones   explanation 
	 
	3808     0.577   6600         1.0      add integers 
	 544     2.262    240         1.0      add floats 
	 960     1.088    882         1.0      access strings 
	 320     0.908    352         1.0      create objects 
	 160     1.49     107         1.0      copy objects 
	 480     1.129    425         1.0      perform selectors 
	 896     1.237    724         1.0      evaluate blocks 
	 
	 640     1.151    555         1.0      geometric mean"
	^ self
]

{ #category : #'initialize-release' }
SMarkSlopstone >> setUp [
	slopstone := (Smalltalk at: #Slopstone) new
]

