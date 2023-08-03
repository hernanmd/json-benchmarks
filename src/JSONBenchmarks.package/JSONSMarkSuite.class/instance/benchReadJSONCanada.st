benchmarking
benchReadJSONCanada

	| bench problemSize |

	bench := JSONSMarkReader canada.
	problemSize := self problemSize 
		ifNotNil: [ : ps | ps ]
		ifNil:    [ self class defaultProblemSize ].
	^ bench read: problemSize