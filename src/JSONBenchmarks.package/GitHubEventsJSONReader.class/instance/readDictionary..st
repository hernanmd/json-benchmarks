reading
readDictionary: aDictionary
	| object |
	object := (self resolveType: (aDictionary at: #type)) new.
	aDictionary keysAndValuesDo: [ :selector :rawValue |
		(selector = #type) ifFalse: [ 
			(object setters includes: selector)
				ifTrue: [ object perform: selector with: rawValue ]
				ifFalse: [   
					object
						perform: selector asSymbol asMutator
						with: (rawValue readJSONObjectFrom: self) ] ] ].
	^ object