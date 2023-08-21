reporting
reportResult: aResultsArray for: aCriterion of: benchmark
	| benchmarkGlobalName |

	benchmarkGlobalName := benchmark copyUpTo: $(.
	stream
		<< benchmarkGlobalName; << $,;
		<< 'OK'; << $,.
	"Report duration"
	aResultsArray size < 2 ifTrue: [
		aResultsArray average printOn: stream.
		stream << 'ms'; << $, ].
	"Report iterations count"	
	aResultsArray size printOn: stream.
	stream << $,.
	"Report image name"
	Smalltalk image version printOn: stream.
	stream << $,.
	"Report VM name"
	Smalltalk vm interpreterClass substrings printOn: stream.