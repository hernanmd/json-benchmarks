reading
readDictionary: aDictionary untyped: unNamedType

	| object |

	object := (aDictionary 
		at: #type 
		ifPresent: [ : typeName | self resolveType: typeName ]
		ifAbsent: [ self resolveUntyped: unNamedType of: aDictionary]) new.

	aDictionary keysAndValuesDo: [ :selector :rawValue |
		(selector = #type) ifFalse: [ 
			| selSymbol |
			selSymbol := self disambiguateSelector: selector.
			(object class lookupSelector: selSymbol)
				ifNotNil: [ 
					object perform: selSymbol asMutator with: (rawValue readJSONObjectFrom: self untyped: selSymbol) ]
				ifNil: [   
					object
						perform: selSymbol asMutator
						with: (rawValue readJSONObjectFrom: self untyped: selSymbol) ] ] ].
	^ object