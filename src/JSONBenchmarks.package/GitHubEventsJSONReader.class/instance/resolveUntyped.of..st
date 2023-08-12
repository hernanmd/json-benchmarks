reading
resolveUntyped: unNamedType of: aDictionary
	" Answer a <Class> matching unNamedType "

	^ (GitHubUntypedObject allSubclasses reject: #isAbstract)
		detect: [ : c | c untypedName = unNamedType ]
		ifNone: [ 
			| newClassName classPrefix |
			classPrefix := 'GitHubEvent'.
			newClassName := (classPrefix , unNamedType capitalized) asSymbol.
			NeoJSONBuilder new 
				createUntypedClassesPrefix: classPrefix
				observedType: unNamedType
				fromJSON: aDictionary
				superclass: GitHubUntypedObject.
			Smalltalk at: newClassName ]

