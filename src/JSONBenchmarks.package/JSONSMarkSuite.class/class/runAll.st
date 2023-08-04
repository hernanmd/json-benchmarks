running
runAll

	| jsonSuite |

	jsonSuite := JSONSMarkSuite new.
	(JSONSMarkSuite selectorsInProtocol: #benchmarking)
		do: [ : sel | 
			sel asString traceCr.
			jsonSuite perform: sel ].