accessing
asSelector: aString 

	| validSelector |
	((validSelector := aString) includes: $_)
		ifTrue: [ 
			| tokenized capitalized |
			tokenized := aString findTokens: $_.
			capitalized := tokenized allButFirst collect: [ : m | m capitalized ].
			validSelector := tokenized first , capitalized first ].
	^ validSelector asSymbol