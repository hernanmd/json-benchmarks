benchmarking
benchReadJSON

	| bench problemSize |

	bench := JSONSMarkReader new.
	problemSize := self problemSize 
		ifNotNil: [ : ps | ps ]
		ifNil:    [ self class defaultProblemSize ].
	^ bench read: problemSize