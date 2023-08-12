reading
resolveUntyped: unNamedType of: aDictionary
	" Answer a <Class> matching unNamedType "

	^ (GitHubUntypedObject allSubclasses reject: #isAbstract)
		detect: [ : c | c untypedName = unNamedType ]
