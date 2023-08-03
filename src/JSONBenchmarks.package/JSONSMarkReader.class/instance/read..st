meta-object-protocol
read: problemSize

	self jsonStream readStreamDo: [ :fstream |
		ZnBufferedReadStream on: fstream do: [ :stream |
			(NeoJSONReader on: stream) next ] ]