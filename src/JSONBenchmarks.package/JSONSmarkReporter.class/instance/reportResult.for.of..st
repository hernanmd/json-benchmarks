reporting
reportResult: aResultsArray for: aCriterion of: benchmark
	| benchmarkGlobalName benchmarkDataset |

	benchmarkGlobalName := benchmark copyUpTo: $(.
	benchmarkDataset := (benchmark findTokens: $#) last allButLast trimBoth.
	stream
		<< benchmarkGlobalName;
		space;
		<< benchmarkDataset;
		<< $,;
		<< 'OK'; 
		<< $,.
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
	Smalltalk vm interpreterClass substrings first printOn: stream.
	stream flush.