reading
readArray: anArray untyped: unNamedType

	^ anArray collect: [ :each |
		each readJSONObjectFrom: self untyped: unNamedType ]