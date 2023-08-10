meta-object-protocol
read

	^ ZnBufferedReadStream 
		on: self jsonStream 
		do: [ :stream | ((Smalltalk at: self readerClass) on: stream) next ]