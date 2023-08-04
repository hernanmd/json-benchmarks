meta-object-protocol
read

	^ ZnBufferedReadStream 
		on: self jsonStream 
		do: [ :stream | (NeoJSONReader on: stream) next ]