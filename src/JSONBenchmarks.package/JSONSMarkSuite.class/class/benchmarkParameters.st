benchmarking
benchmarkParameters

	| parameterMatrix |
	parameterMatrix := super benchmarkParameters.
	parameterMatrix
		forSelector: #dataset addOptions: {
				(#GeoJSONReader -> #canada).
				(#NeoJSONReader -> #citmCatalog).
				(#NeoJSONReader -> #twitter).
				(#NeoJSONReader -> #fgo).
				(#GitHubEventsJSONReader -> #githubEvents).
				(#NeoJSONReader -> #gsoc2018).
				(#NeoJSONReader -> #lottie).
				(#NeoJSONReader -> #otfcc).
				(#NeoJSONReader -> #poet).
				(#NeoJSONReader -> #twitterEscaped) };
		forSelector: #benchmarkOperation addOptions: { #read }.
	^ parameterMatrix