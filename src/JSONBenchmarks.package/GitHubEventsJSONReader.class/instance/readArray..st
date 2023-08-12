private
readArray: anArray

	^ anArray collect: [ :each |
		each readJSONObjectFrom: self ]