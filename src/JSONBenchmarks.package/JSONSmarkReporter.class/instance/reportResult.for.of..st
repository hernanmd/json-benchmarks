reporting
reportResult: aResultsArray for: aCriterion of: benchmark
	| benchmarkGlobalName |

	benchmarkGlobalName := benchmark copyUpTo: $(.
	self outputStream 
		<< benchmarkGlobalName; << $,;
		<< 'OK'; << $,.
	"Report duration"
	aResultsArray size < 2 ifTrue: [
		aResultsArray average printOn: self outputStream .
		self outputStream  << 'ms'; << $, ].
	"Report iterations count"	
	aResultsArray size printOn: self outputStream .
	self outputStream  << $,.
	"Report image name"
	Smalltalk image version printOn: self outputStream .
	self outputStream  << $,.
	"Report VM name"
	Smalltalk vm interpreterClass substrings printOn: self outputStream .