writing
write: data

	self fileReference writeStreamDo: [ :stream |
		(NeoJSONWriter on: stream) nextPut: data ]